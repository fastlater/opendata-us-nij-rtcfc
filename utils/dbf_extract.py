#
# Utility to extract data from NIJ CFS ESRI dataset (DBF) and convert to CSV
#
# Copyright (c) 2016, Metadata Technology North America Inc. (http://www.mtna.us)
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
#
# * Neither the name of the copyright holder nor the names of its
#   contributors may be used to endorse or promote products derived from
#   this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

from __future__ import print_function

import csv
import datetime
from dbfread import DBF
import os
import shapefile
import re
import shutil
import sys
import tempfile
import zipfile
from zipfile import ZipFile


tempDir = tempfile.TemporaryDirectory()

def extract(zipPath,filePath,dirPath):
    "Extract file from ZIP into specified directory"
    zipFile = ZipFile(zipPath)
    print("Extracting",filePath,"into",dirPath)
    zipFile.extract(filePath, path=dirPath)
    return os.path.join(dirPath,filePath)

def findDbf(zipPath):
    "Return the name of the .dbf file in the ZIP"
    print("Opening",zipPath)
    zipFile = ZipFile(zipPath)
    zipFile.printdir()
    dbfName=None
    # dbfName = "NIJ2013_JAN01_DEC31.dbf"
    for info in zipFile.infolist():
        if info.filename.lower().endswith(".dbf"):
            dbfName=info.filename
            break
    print("DBase filename is",dbfName)
    return dbfName

def getDbf(dbfPath):
    dbf = DBF(dbfPath)
    for field in dbf.fields:
        print(field.name,field.type,field.length)
    return dbf

def dbf2csv(dbf,csvPath,names=None,namesOnFirst=True,iso8601=True,zip=True,limit=None,debug=False):
    print("Converting ",dbf.name,"to CSV")

    "Writes DBF file to CSV"
    if not names:
        # use dbf field names
        names = dbf.field_names

    tempCsv=tempfile.NamedTemporaryFile()
    print("Writing",tempCsv.name)
    with open(tempCsv.name,'w', newline='') as csvfile:
        csvWriter = csv.writer(csvfile,quoting=csv.QUOTE_NONNUMERIC)
        if(namesOnFirst):
            csvWriter.writerow(names)
        row=0
        for record in dbf:
            row += 1
            # Convert float to integer
            for field,value in record.items():
                if isinstance(value, float) and value.is_integer:
                    record[field] = int(value)
            if debug: print(row,record)
            csvWriter.writerow(record.values())
            if limit and row is limit: break

    if zip:
        # compress
        zipPath=csvPath+".zip"
        print("Writing "+zipPath)
        zipFile = ZipFile(csvPath+".zip","w")
        zipFile.write(tempCsv.name,arcname=dbf.name+".csv",compress_type=zipfile.ZIP_DEFLATED)
    else:
        # deliver file as is
        print("Writing"+csvPath)
        # using shutil.copy instead of os.rename to avoid
        # cross-device link error on OSX with external drive
        shutil.copy(tempCsv.name,csvPath)
    # close temp file (which also removes it)
    tempCsv.close()

if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("zipfile",help="The zip file holding the database")
    parser.add_argument("targetdir",help="The output directory where the data will be extracted")
    parser.add_argument("-nz","--nozip",action='store_true',help="Do not compress extracted CSV file")
    args = parser.parse_args()
    print(args)

    zipPath=args.zipfile
    zipName=os.path.basename(zipPath)
    targetPath=args.targetdir

    # validate
    if not os.path.isfile(zipPath):
        raise RuntimeError(zipPath+" not found or is not a file")

    if not os.path.isdir(targetPath):
        raise RuntimeError(targetPath+" not found or is not a directory")

    # setup time period
    m=re.search("([\\d]{2})([\\d]{2})([\\d]{2})_([\\d]{2})([\\d]{2})([\\d]{2}).*\.zip",zipName)
    if not m or len(m.groups()) is not 6:
        raise RuntimeError("Unexpected zip file name "+zipName+". Should match the pattern 'MMDDYY_MMDDYY_Data.zip'")

    print(m.groups())
    fromDate=datetime.date(2000+int(m.group(3)),int(m.group(1)),int(m.group(2)))
    toDate=datetime.date(2000+int(m.group(6)),int(m.group(4)),int(m.group(5)))
    print(fromDate.isoformat())
    print(toDate.isoformat())

    # get DBF file name
    dbfName=findDbf(zipPath)

    # extract dbf
    extract(zipPath, dbfName, tempDir.name)

    # open DBF
    dbf=getDbf(os.path.join(tempDir.name,dbfName))

    # Export to CSV
    csvName = "NIJ_CFS_PORTLAND_"+fromDate.isoformat().replace("-","")+"_"+toDate.isoformat().replace("-","")+".csv"
    csvPath = os.path.join(targetPath,csvName)
    dbf2csv(dbf,csvPath,zip=not(args.nozip))








