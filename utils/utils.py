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
        csvWriter = csv.writer(csvfile)
        if(namesOnFirst):
            csvWriter.writerow(names)
        row=0
        for record in dbf:
            row += 1
            print(row,record)
            csvWriter.writerow(record.values())
            if row is 10: break

    if zip:
        # compress
        pass
    else:
        # deliver file as is
        print("Copying file to "+csvPath)
        # using shutil.copy instead of os.rename to avoid
        # cross-device link error on OSX with external drive
        shutil.copy(tempCsv.name,csvPath)

if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("zipfile")
    parser.add_argument("-c", "--config", help="The configuration file to use (overrides default)")
    args = parser.parse_args()

    dbf=getDbf(args.zipfile)
    dbf2csv(dbf,"test.csv",zip=False)

#    for record in dbFile:
#        print(record)
#        sys.exit(0)








