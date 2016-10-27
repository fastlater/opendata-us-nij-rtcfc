# NIJ Real-Time Crime Forecasting Challenge Open Data
<div style="float:right;margin-left:10px">
<div><a href="http://nij.gov/funding/Pages/fy16-crime-forecasting-challenge.aspx" target="_blank"><img align="right" src="media/forecasting-challenge-for-page.png"</img></a></div>
</div>

This repository provides access to an **open data** repackaged and cloud queryable versions of the calls-for-service (CFS) datasets and related resources for the [National Institute of Justice Real-Time Crime Forecasting Challenge](http://nij.gov/funding/Pages/fy16-crime-forecasting-challenge.aspx). The initiative, offering up to $1.2 million dollars in price, seeks to harness the advances in ​data science to address the challenges of crime and justice. It is open to open to individuals and businesses and runs from September 2016 to February 2017.

*The Portal CFS dataset currenlty covers the March 2012 to September 2016 period.*

<a name="toc"></a>
## TOC
* [What's available here?](#content)
* [Cloud / Queryable Data Sources](#cloud)
* [Other Resources](#resources)
* [Calls-for-service dataset](#cfs)
* [Why are we doing this?](#rationale)
* [Our Open Data Packaging Process](#odps)
* [Contribute & Support](#contribute)
* [Licenses](#license)
* [Citation](#cite)

<a name="contents"></a>
## What's made available here?

* A cumulative version of the **calls-for-service (CFS) dataset** in **comma separated (CSV)** and **fixed ASCII** text formats in the [```/data```](#data)directory. This has been extracted from the dBase files in the distributed ESRI package and combines the annual/monthly data files published by NIJ into a single dataset. File have been ZIP compressed to preserve space.
* **Programs** to read the text data into [**R**](http://www.r-project.com),  [**SAS**](http://www.sas.com), [**SPSS**](http://www.spss.com), [**Stata**](http://www.stata.com), [**Stat/Transfer**)[http://www.stattransfer.com] are in the [```/syntax```](syntax) directory. These include when relevant code for value labels.
* **SQL scripts** to create and load the data in [**MS-SQL**](https://www.microsoft.com/en-us/cloud-platform/sql-server), [**MySql**](http://www.mysql.com), [**MonetDB**](http://www.monetdb.org), [**Oracle**](http://www.oracle.com), [**Vertica**](www.vertica.com) databases are in the [```/sql```](sql)directory. This includes code to generate the database schema and dimension/lookup tables. These scripts rely on the SQL friendly version of the text data (.sql.csv file).
* **Cloud** accessible and dynamically **queryable** instances of the data in [**Google BiqQuery**](https://cloud.google.com/bigquery/) or using our experimental [**Rich Data Service API**](http://www.richdataservice.com) ([see below](#cloud))
* **Metadata** in [**DDI**](http://www.ddialliance.org) and [**Triple-S**](http://www.triple-s.org) XML formats in the [```/metadata```](metadata) directory . This includes **descriptive statistics** (summary and frequencies) in CSV files format and embedded in DDI, along with a generated PDF data dictionnary.

*Interested or need other outputs? [Contact us](http://www.mtna.us/contactus?subject=nij-challenge) with your needs and suggestion.* 

The information is made available under Creative Commons Universal or BSD licenses. See [licenses](#license) and [suggested citation](#cite) below for details.

<a name="cloud"></a>
## Cloud / Queryable Data Sources
The data is published and accessible in the following cloud based data sources or APIs

<a name="bq"></a>
### Google BigQuery
[BigQuery](https://cloud.google.com/bigquery/) is a RESTful web service that enables interactive analysis of massively large dataset. See [product documentation](https://cloud.google.com/bigquery/docs/).

* The cumulative version of the CFS is publicly available at [https://bigquery.cloud.google.com/dataset/mtna-opendata:nij_rtcfc](https://bigquery.cloud.google.com/dataset/mtna-opendata:nij_rtcfc)

<a name="rds"></a>
### MTNA Rich Data Services (experimental)
We will in 2017 launch [Rich Data Service (RDS)](http://www.richdataservices.com), an innovative solution providing concurrent access to a data and metadata API and offering highly flexible and powerful querying, retrieval, knowledge capture, and open data packaging capabilities. This enables for example rapid access from R or Python, integration in web portals or application, visualizations, or analyzing the data without having to locally host the database.

Access to RDS is available on a experimental/beta release basis to individuals or organizations interested in previewing the technology and take advantage of its features. Contact us if you would like to access the CFS or other available datasets through such API.

<a name="resources"></a>
## Other Resources
The following resources can be consulted to complement the information available here:

* [City of Portland Police Bureau](https://www.portlandoregon.gov/police/29793?): This web sites provides access to statistics and information
* [CrimeReport Portland](https://preview.crimereports.com/agency/portland-police-bureau-or): An interactive map to explore incidents. Use the Filter option to specify time period and other selection criteria. Can be used for other agencies.
* [Socrata Portland Service Bureau Incidents](http://moto.data.socrata.com/d/mmpn-q6w2): Explore the Portland Police Bureau Incident Dataset with Socrata. Can be used to browse, subset, mine, visualize, and download data.

<a name="cfs"></a>
## The Calls-for-service dataset (CFS)
The Calls-for-service dataset and map is made available on the [National Institute of Justice Real-Time Crime Forecasting Challenge](http://nij.gov/funding/Pages/fy16-crime-forecasting-challenge.aspx). CFS records are being provided by the Portland Police Bureau (PPB) for the period of March 1, 2012 through February 28, 2017.

### Coverage Period
The current data release covers the March 2012 to September 2016 period. This project will be updated as new data is made available by NIJ for subsequent months. 

### Data Dictionary
The CFS record definition is based on the structure and content as described on the NIJ of web site. Note that we have preserved the original field names and casing to ensure compatibility with existing code. 

<a name="rationale"></a>
## Why are we doing this?
<div style="float:right;margin-left:10px" >
<div><a href="http://www.mtna.us" target="_blank"><img src="media/mtna_logo_200x82.png"</img></a></div>
</div>
We are not participating in the Challenge. Our company, [Metadata Technology North America](http://wwwm.mtna.us), provides products, services, expertise, and cloud infrastructure aiming at improving accessibility, quality, and usefulness of data by leveraging modern technologies, standards, and good practices. This is motivated by our vision that better data can create a better world. 

By repackaging the NIJ Challenge dataset into open formats, we hope to:

1. Support the Challenge by making the data easier to access, use, and analyze
2. Encourage data producers and publishers to modernize their data publication practices
3. Promote the adoption of open data formats, metadata standards, and best practices
4. Share our vision and showcase our products, services, and expertise

See [Contribute & Support](#contribute) below for ways to support these efforts or [contact us](http://www.mtna.us/contactus?subject=nij-challenge) for information.

<a name="odps"></a>
## Our Open Data Packaging Process
We have packaged this data product in accordance to our open data vision and principles, which aims at maximizing usability by (1) liberating data from proprietary formats, (2) capturing knowledge around the data in compliance with international best practices and metadata standards, and (3) facilitating immediate reuse in popular data management environments. See our [Open Data Packaging Services](http://www.mtna.us/odps) description for further information.

The following steps are taken to repackage and publish the data:

* We developed and maintain a Python utility script ([```utils/utils.py```](utils/utils.py)) to extract the data from the DBase file embedded in the ZIP ESRI package and produce/update the text ASCII version of the dataset
* Core metadata describing the variables,code lists / classifications, file record structure and other information is maintained in a workbook. This is based on a template that we can parse to produce various outputs for further processing purposes. This includes scripts to read data in SlegdeHammer or publish in Google BigQuery (see below). This tool is at this time only available internally (planned for open source release in 2017). 
* We are using our [SledgeHammer](http://www.mtna.us/sledgehammer) utility package to process the data and metadata and generate the open data, programs, scripts, metadata, and descriptive statistics
* Using the Google BigQuery console and command line tools, we publish and make the datasets available for analysis in BigQuery. This is publicly accessible and can be used in your own Google projects (fees may apply, check [Google BigQuery](https://cloud.google.com/bigquery/) documentation for more information).

<a name="contribute"></a>
## Contribute & Support
Putting this data product together and maintaining the repository takes time and resources. We appreciate your support in any shape or form, in particular:

* Let us know is you find any discrepancy or have suggestions towards enhancing the content or quality
* Submit your own contributions or fork the project and add to the ```/contribs``` directory
* Donations are always appreciated and can be made through [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=GKAYVJSBLN92E)
* Contact us if you would like to formally fund this work and optionally be credited as a sponsor
* Visit us at [http://www.mtna.us](http://www.mtna.us) and consider using our products, services, expertise, or cloud solutions

*And if you win the Challenge, accept our congratulations and keep above suggestions in mind...*

<a name="license"></a>
## Licenses
The data and metadata published here are licensed under the [Creative Commons CC0 1.0 Universal License](http://creativecommons.org/publicdomain/zero/1.0/). Users are advised to further check licensing and usage conditions of underlying materials with the respective custodians/ publishers. 

Programs, syntax, scripts and other software components are made available under the [BSD2 license](https://opensource.org/licenses/BSD-2-Clause).

<a name="cite"></a>
## Suggested Citation
When publishing, presenting, or in general sharing derivative work, results, and outputs, the following suggested citation is optional but appreciated:

*This work has been made possible with contributions and technical support from Metadata Technology North America Inc. (http://www.mtna.us)*


