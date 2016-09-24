
# NIJ Real-Time Crime Forecasting Challenge Open Data

<div style="float:right;margin-left:10px">
<div><a href="http://nij.gov/funding/Pages/fy16-crime-forecasting-challenge.aspx" target="_blank"><img src="media/forecasting-challenge-for-page.png"</img></a></div>
</div>

This repository provides access to an **open data** packaged version of the calls-for-service (CFS) datasets published by the Portland Police Bureau (PPB) for the [National Institute of Justice Real-Time Crime Forecasting Challenge](http://nij.gov/funding/Pages/fy16-crime-forecasting-challenge.aspx). The Challenge, offering up to $1.2 million dollars in price, seeks to harness the advances in ​data science to address the challenges of crime and justice. It is open to  open to individuals and businesses and runs from Septenber 2016 to February 2017.

<a name="toc"></a>
## TOC
* [Why are we doing this?](#rationale)
* [What's available here?](#content)
* [Calls-for-service dataset](#cfs)
* [Other Resources](#resources)
* [Our Open Data Packaging Process](#odps)
* [Contribute & Support](#contribute)
* [License](#license)
* [Citation](#cite)

<a name="rationale"></a>
## Why are we doing this?
<div style="float:right;margin-left:10px" >
<div><a href="http://www.mtna.us" target="_blank"><img src="media/mtna_logo_200x82.png"</img></a></div>
</div>
Our company, [Metadata Technology North America](http://wwwm.mtna.us), provides products, services, expertise, and cloud infrastructure aiming at improving accessibility and usefulness of data by leveraging modern technologies and best practices. This is motivated by our vision that better data can create a better world. 

By repackaging the NIJ Challenge dataset into open formats, we hope to:

1. Support the initiative by making the daet easier to access, use, and analyze
2. Encourage data producers and publishers to modernize their data publication practices
3. Foster the adoption of open data formats, metadata standards, and best practices
3. Generate interest in our vision and other collaborative projects

See [Contribute & Support](#contribute) below for ways to support this work or [contact us[(http://www.mtna.us/contactus?subject=nij-challenge) for information.

<a name="contents"></a>
## What's made available here?
The following components are available:

* A cumulative version of the **calls-for-service (CFS) data** is available in **comma separated (CSV)** and **fixed ASCII** text tormats in the [```/data```](data)directory. This has been extracted from the dBase files in the ESRI package and combines the yearly data files publsihed by NIJ into a single dataset.
* **Programs** to read the text data into [**R**](http://www.r-project.com),  [**SAS**](http://www.sas.com), [**SPSS**](http://www.spss.com), [**Stata**](http://www.stata.com), [**Stat/Transfer**)[www.stattransfer.com/] are in the [```/syntax```](syntax) directory. These include when relevant syntax for value labels.
* **SQL scripts** to create and load the data in [**MS-SQL**](https://www.microsoft.com/en-us/cloud-platform/sql-server), [**MySql**](http://www.mysql.com), [**MonetDB**](http://www.monetdb.org), [**Oracle**](http://www.oracle.com), [**Vertica**](www.vertica.com) databases are in the [```/sql```](sql)directory. This includes code to generate the database schema and dimension/lookup tables. These scripts rely on the SQL friendly version of the text data (.sql.csv file).
* *Documentation*, mostly automatically generated from the data and metadata, is in the [```/docs``` directory. This includes PDF data dictionnaries.
* **Metadata** in [**DDI**](http://www.ddialliance.org) and [**Triple-S**](http://www.triple-s.org) is available in the [```/metadata```](metadata) directory . This also includes **descriptive statistics** (summary and frequencies) which are available in CSV files and embedded in DDI.

*Interested or need other outputs? [Contact us](http://www.mtna.us/contactus) with your needs and suggestion.* 

The information is made available under Creative Commons Universal or BSD licences. See [licenses](#license) and [suggested citation](#cite) below for details.


<a name="cfs"></a>
## The Calls-for-service dataset (CFS)
The Calls-for-service dataset and map is made available on the [National Institute of Justice Real-Time Crime Forecasting Challenge](http://nij.gov/funding/Pages/fy16-crime-forecasting-challenge.aspx). CFS records are being provided by the Portland Police Bureau (PPB) for the period of March 1, 2012 through February 28, 2017.

### Coverage Period
The initial data release covered the March 2012 to July 2016 period. This project will be updated as new data is made available by NIJ for subsequent months. 

*The current version is up to August 2016*.

### Data Dictionnary
The CFS record definition is based on the structure and content as described on the NIJ Challange web site. Note that we have preserved the original field names and casing to ensure compatibility with existing code. 

<a name="resources"></a>
## Other Resources
The following resources can be consulted to complement the information available here:

### Portland
* [City of Portalnd Police Bureau](https://www.portlandoregon.gov/police/29793?)<br/>This web sites provides additional statitics and information on 
* [CrimeReport Portland](https://preview.crimereports.com/agency/portland-police-bureau-or)<br/>An interactive dashboard to explore incidents. Use the Filter option to specifiy time period and other criteria. CAn be used for other agencies.
* [Socrata Portland Service Bureau Incidents](http://moto.data.socrata.com/d/mmpn-q6w2):<br/>Explore the Portland Police Bureau Incident Dataset using Socrata. Can be used to mine, subset, visualize, download data.

<a name="odps"></a>
## Our Open Data Packaging Approach
We have packaged this data product in accordance to our open data vision and principles, which aims at maximizing usability by (1) liberating data from proprietary formats, (2) capturing knowledge around the data in compliance with international best practices and metadata standards, and (3) facilitating immediate reuse in popular data management environments. See our [Open Data Packaging Services](http://www.mtna.us/odps) description for further information.

The following steps are taken to repackage and publish the data:

* We developped and maintain a Python utlity script ([```utils/utils.py```](utils/utils.py)) to extract the data from the DBase file embedded in the ZIP ESRI package and produce/update the text ASCII version of the dataset
* Metadata describing the variables, their code lists / classifications, and file record structures is maitained in a workbook. This is based on a standard template that we can read to produce various outputs for further processing purposes. This includes scripts to read data in SlegdeHemmer or publish in Google BigQuery (see below). This tool is at this time only avalable internally (panned for open source release in 2017). 
* We use our [SledgeHammer](http://www.mtna.us/sledgehammer) package to process the data and metadata, and generate all the programs, scripts, metadata, and compute descriptive statistics
* Using the Google BigQuery console and command line tools, we publish and make the datasets available for analysis in BigQuery. This is publlicy accessiible and can be use from your own Google projects.

<a name="contribute"></a>
## Contribute & Support
Putting this data product together and maintaining the repository takes time and resources. We appreciate your support in any shape or form, in particular:

* Let us know is you find any discrepancy or have suggestions towards enhancing the content or quality
* Donations are always appreciated and can be made through [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=GKAYVJSBLN92E)
* Contact us if you would like to formally fund this work and optionally be credited as a sponsor
* Visit us at [http://www.mtna.us](http://www.mtna.us) and consider using our products, services, expertise, or cloud solutions

*And if you win the Challenge, accept our congratulations and keep above suggestions in mind...*

<a name="license"></a>
## Licenses
The data and metadata published here are licensed under the [Creative Commons CC0 1.0 Universal License](http://creativecommons.org/publicdomain/zero/1.0/). Users are advised to futher check licensing and usage conditions for of underlying materials with the respective custodians/ publsihers. 

Programs, syntax, scripts and other software components are made available under the [BSD2 license](https://opensource.org/licenses/BSD-2-Clause).

<a name="cite"></a>
## Suggested Citation
When publishing, presenting, or in general sharing your work, results, and outputs, the following suggested citation is optional but appreciated:

*This work has been made possible with contributions and technical support from Metadata Technology North America Inc. (http://www.mtna.us)*


