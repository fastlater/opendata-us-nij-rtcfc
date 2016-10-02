
import shapefile

if __name__ == '__main__':
    # SHAPEFILE
    sf = shapefile.Reader("../temp/010113_123113_Data/NIJ2013_JAN01_DEC31")
    fields = sf.fields
    print(fields)
    shapeRecs = sf.shapeRecords()
    print(shapeRecs[0].record)
    print(shapeRecs[3].record[1:3])
    records = sf.records()
    print(len(records))

