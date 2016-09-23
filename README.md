
# NIJ Real-Time Crime Forecasting Challenge Open Data

<div style="float:right;margin-left:10px">
<div><a href="http://nij.gov/funding/Pages/fy16-crime-forecasting-challenge.aspx" target="_blank"><img src="media/forecasting-challenge-for-page.png"</img></a></div>
</div>

This repository provides access to an **open data** packaged version of the calls-for-service (CFS) datasets published by the Portland Police Bureau (PPB) for the [National Institute of Justice Real-Time Crime Forecasting Challenge](http://nij.gov/funding/Pages/fy16-crime-forecasting-challenge.aspx). The Challenge, offering up to $1.2 million dollars in price, seeks to harness the advances in ​data science to address the challenges of crime and justice. It is open to  open to individuals and businesses and runs from Septenber 2016 to February 2017.

<div style="float:right;margin-left:10px" >
<div><a href="http://www.mtna.us" target="_blank"><img src="media/mtna_logo_200x82.png"</img></a></div>
</div>
Our company, [Metadata Technology North America](http://wwwm.mtna.us), provides products, services, expertise, and cloud infrastructure aiming at imrproving access and usefulness of data by leveraging modern technologies and metadata. We believe that better data can create a better world. By repackaging the NIJ Challenge data into open formats, we hope to support the initiative by making the datasets easier to access, use, and analysis.

<a name="toc"></a>
## TOC
* [What's available here?](#content)
* [Calls-for-service dataset](#cfs)
* [Open Data Packaging Process](#odps)
* [Contribute & Support](#contribute)
* [License & Citation](#license)

<a name="contents"></a>
## What's made available here?
The following components are available:

* A cumulative version of the **calls-for-service (CFS) data** is available in **comma separated (CSV)** and **fixed ASCII** and fixed text tormats in the ```/data``` directory. This has been extracted from the dBase files and combines the yearly data files publsihed by NIJ into a single dataset.
* **Programs** to read the text data in [**SAS**](http://www.sas.com), [**SPSS**](http://www.spss.com), [**Stata**](http://www.stata.com), [**R**](http://www.r-project.com) are in the [```/syntax```](syntax) directory. These include when relevant syntax for value labels.
* **SQL scripts** to create and load the data in [**MS-SQL**](https://www.microsoft.com/en-us/cloud-platform/sql-server), [**MySql**](http://www.mysql.com), [**MonetDB**](http://www.monetdb.org), [**Oracle**](http://www.oracle.com), [**Vertica**](www.vertica.com) databases are in the ```/sql``` directory. This includes code to generate the database schema. These scripts rely on the SQL friendly version of the data (.sql.csv files).
* **Metadata** in [**DDI**](http://www.ddialliance.org) and [**Triple-S**](http://www.triple-s.org) are available in the [```/metadata```](metadata) directory . **Descriptive statistics** (summary and frequencies) are also available in CSV files.

This project will be updated as new data is made available by NIJ. See expected publication schedule on the Challenge web site.

*Interested or need other outputs? [Contact us](http://www.mtna.us/contactus) with your needs and suggestion.* 


<a name="cfs"></a>
## The Calls-for-service dataset (CFS)
The Calls-for-service dataset is made available . The 



<a name="odps"></a>
## Open Data Packaging Approach
The following steps were used to repackage the data. 

* Python utlity were developped to read the data in the DBase file and convert to 
* An excel spreadsheet capture the variable, classification and record layout metadata 


<a name="contribute"></a>
## Contribute & Support
Putting this data product together and maintaining the repository takes time and resources. We appreciate your support in any shape or form, in particular:

* Let us know is you find any discrepancy or have suggestions towards enhancing the content or quality
* Donations are always appreciated and can be made through [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=GKAYVJSBLN92E)
* Contact us if you would like to formally fund this work and optionally be credited as a sponsor
* Visit us at [http://www.mtna.us](http://www.mtna.us) and consider using our products, services, or expertise

*And if you win the Challenge, accept our congratulations and consider above suggestions*

<a name="license"></a>
## Licenses & Citation
The data and metadata published here are licensed under the [Creative Commons CC0 1.0 Universal License](http://creativecommons.org/publicdomain/zero/1.0/). Users are advised to futher check licensing and us conditions for of underlying materials with the respective custodians and publsihed. 

Programs, syntax, scripts and other files are made available under the [BSD2 license](https://opensource.org/licenses/BSD-2-Clause).

The following suggested citation is optional but appreciated:

*This work has been made possible with contributions and technical support from Metadata Technology North America (http://www.mtna.us)*

