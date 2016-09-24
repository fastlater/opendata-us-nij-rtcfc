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

import csv
from dbfread import DBF
import os
import shutil
import sys
import tempfile
from zipfile import ZipFile

def extract(zipPath,filePath,dirPath=tempfile.TemporaryDirectory().name):
    "Extract file from ZIP into specified directory"
    zipFile = ZipFile(zipPath)
    print("Extracting", filePath, " into ", dirPath)
    zipFile.extract(filePath, path=dirPath)
    return os.path.join(dirPath,filePath)

def findDbf(zipPath):
    "Return the name of the .dbf file in the ZIP"
    print("Opening",zipPath)
    zipFile = ZipFile(zipPath)
    dbfFileName = "NIJ2013_JAN01_DEC31.dbf"
    return dbfFileName

def getDbf(zipPath):
    dbfPath = findDbf(zipPath)
    dbf = DBF(extract(zipPath,dbfPath))
    print("Version",dbf.dbversion)
    for field in dbf.fields:
        print(field.name,field.type,field.length)
    return dbf

def dbf2csv(dbf,csvPath,names=None,namesOnFirst=True,iso8601=True,zip=True):
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
                    print("Converting",value)
                    record[field] = int(value)
            print(row,record)
            csvWriter.writerow(record.values())
            if row is 10: break

    if zip:
        # compress
        zipPath=csvPath+".zip"
        zipFile = ZipFile(csvPath+".zip","w")
        zipFile.write(tempCsv.name,arcname=dbf.name+".csv")
    else:
        # deliver file as is
        print("Copying file to "+csvPath)
        # using shutil.copy instead of os.rename to avoid
        # cross-device link error on OSX with external drive
        shutil.copy(tempCsv.name,csvPath)
    # close temp file (which also removes it)
    tempCsv.close()

if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("zipfile")
    parser.add_argument("targetdir")
    parser.add_argument("-c", "--config", help="The configuration file to use (overrides default)")
    args = parser.parse_args()

    if not os.path.isfile(args.zipfile):
        raise RuntimeError(args.zipfile+" not found or is not a file")

    if not os.path.isdir(args.targetdir):
        raise RuntimeError(args.targetdir+" not found or is not a directory")

    dbf=getDbf(args.zipfile)
    dbf2csv(dbf,os.path.join(args.targetdir,"test.csv"),zip=False)







