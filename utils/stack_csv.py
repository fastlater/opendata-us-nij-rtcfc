#
# Utility to stack multiple zipped CSV files to create cumulative dataset
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


def findCsv(zipPath):
    "Return the name of the first .csv file found in the ZIP"
    print("Opening",zipPath)
    zipFile = ZipFile(zipPath)
    #zipFile.printdir()
    csvName=None
    for info in zipFile.infolist():
        if info.filename.lower().endswith(".csv"):
            csvName=info.filename
            break
    print("CSV filename is",csvName)
    return csvName

if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("rootdir",help="The diretcory where the zip files are located")
    parser.add_argument("targetdir",help="The output directory where the data will be extracted")
    parser.add_argument("-nz","--nozip",action='store_true',help="Do not compress extracted CSV file")
    args = parser.parse_args()
    print(args)

    rootPath=args.rootdir
    targetPath=args.targetdir
    zip = not(args.nozip)

    zipregex="NIJ_CFS_PORTLAND_.*.csv.zip"
    csvregex=".*.csv"

    # validate
    if not os.path.isdir(rootPath):
        raise RuntimeError(rootPath+" not found or is not a directory")

    # prepare output file
    outFileName = "NIJ_CFS_PORTLAND.csv"
    outFilePath = os.path.join(tempDir.name,outFileName)
    outFile = open(outFilePath,'w', newline='')
    csvWriter = csv.writer(outFile,quoting=csv.QUOTE_NONNUMERIC)
    cumRow=0
    limit=None

    # iterate root directory
    for filename in os.listdir(rootPath):
        if re.match(zipregex,filename):
            zipPath = os.path.join(rootPath, filename)
            csvName = findCsv(zipPath)
            # extratc CSV from ZIP
            extract(zipPath, csvName, tempDir.name)
            # read / write records
            csvFilePath=os.path.join(tempDir.name, csvName)
            csvFile = open(csvFilePath)
            csvReader = csv.reader(csvFile)
            row=0
            for record in csvReader:
                if row==0 and cumRow!=0:
                    # skip the header row
                    row += 1
                    cumRow -= 1
                    print("Skipping header row")
                    continue
                csvWriter.writerow(record)
                row += 1
                if limit and row is limit:
                    print("Record limit reached")
                    break
            csvFile.close()
            os.remove(csvFilePath)
            print("Read "+str(row)+" records")
            cumRow += row
            print()

    print("Wrote " + str(cumRow) + " records")
    outFile.close()

    # Compress
    if zip:
        # compress
        zipPath = os.path.join(targetPath,outFileName+ ".zip")
        print("Writing " + zipPath)
        zipFile = ZipFile(zipPath, "w")
        zipFile.write(outFilePath, arcname=outFileName, compress_type=zipfile.ZIP_DEFLATED)
    else:
        # deliver file as is
        print("Copying" + outFilePath)
        # using shutil.copy instead of os.rename to avoid
        # cross-device link error on OSX with external drive
        shutil.copy(outFilePath, os.path.join(targetPath,outFileName))












