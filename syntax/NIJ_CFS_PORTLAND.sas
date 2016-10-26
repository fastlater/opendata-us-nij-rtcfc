/*
+----------------------------------------------------------+
|                                                          |
| This script was produced by the OpenDataForge SAS Script |
| Generator.                                               |
|                                                          |
| To ensure the successful import into SAS be sure to      |
| double check the following lines.                        |
|                                                          |
| 1) "FILENAME" - This should point the data file that     |
|    you will be importing into SAS, ensure that the path  |
|    points to the correct file. If you move the data file |
|    to another folder, ensure that you change the path to |
|    reflect the new location of the data file.            |
|                                                          |
| 2) "libname" - This should point the folder that holds   |
|    the data file. Ensure that this points to the correct |
|    folder. If you move the data file to another folder,  |
|    ensure that the libname reflects the location of the  |
|    folder the data file was moved to.                    |
|                                                          |
|                                                          |
| For more information on our products or services visit   |
| http://www.mtna.us.                                      |
|                                                          |
+----------------------------------------------------------+
*/

FILENAME dataFile 'NIJ_CFS_PORTLAND.fixed.dat' ;

/* Fill out the library as the path to the folder that holds the data file. Example: libname library 'C:\Mydata' */
libname library '' ;

%LET dataset = NIJ_CFS_PORTLAND ;

proc format library = library ;

	value category
		'STC' = 'STREET CRIMES'
		'OTH' = 'OTHER'
		'MVT' = 'MOTOR VEHICLE THEFT'
		'BUR' = 'BURGLARY' ;

	value call_group
		'DISORDER' = 'DISORDER'
		'PERSON CRIME' = 'PERSON CRIME'
		'SUSPICIOUS' = 'SUSPICIOUS'
		'NON CRIMINAL/ADMIN' = 'NON CRIMINAL/ADMIN'
		'PROPERTY CRIME' = 'PROPERTY CRIME'
		'TRAFFIC' = 'TRAFFIC' ;

	value final_case_type
		'DISTP' = 'DISTP'
		'DISTW' = 'DISTW'
		'VICE' = 'VICE'
		'ASSLTP' = 'ASSLTP'
		'ASSLTW' = 'ASSLTW'
		'ROBP' = 'ROBP'
		'ROBW' = 'ROBW'
		'SHOOTW' = 'SHOOTW'
		'SHOTS' = 'SHOTS'
		'STABW' = 'STABW'
		'THRETP' = 'THRETP'
		'THRETW' = 'THRETW'
		'GANG' = 'GANG'
		'AREACK' = 'AREACK'
		'PREMCK' = 'PREMCK'
		'SUSP' = 'SUSP'
		'SUSPP' = 'SUSPP'
		'SUSPW' = 'SUSPW'
		'ANIML' = 'ANIML'
		'ANIMLP' = 'ANIMLP'
		'BOMBTH' = 'BOMBTH'
		'DIST' = 'DIST'
		'ESCAPE' = 'ESCAPE'
		'FWB' = 'FWB'
		'FWH' = 'FWH'
		'FWI' = 'FWI'
		'CHEM' = 'CHEM'
		'FWN' = 'FWN'
		'NOISE' = 'NOISE'
		'PARK' = 'PARK'
		'PARTY' = 'PARTY'
		'POLINV' = 'POLINV'
		'SCHL' = 'SCHL'
		'SCHLP' = 'SCHLP'
		'SCHLW' = 'SCHLW'
		'THRET' = 'THRET'
		'TMET' = 'TMET'
		'TMETP' = 'TMETP'
		'TMETW' = 'TMETW'
		'TRASH' = 'TRASH'
		'TRASHP' = 'TRASHP'
		'UNWNT' = 'UNWNT'
		'FPURS' = 'FPURS'
		'UNWNTW' = 'UNWNTW'
		'W26' = 'W26'
		'77' = '77'
		'ASSIST' = 'ASSIST'
		'CIVIL' = 'CIVIL'
		'EVICT' = 'EVICT'
		'FLAG' = 'FLAG'
		'FOLLOW' = 'FOLLOW'
		'MSG' = 'MSG'
		'PROP' = 'PROP'
		'GREAT' = 'GREAT'
		'RED' = 'RED'
		'RIVPOL' = 'RIVPOL'
		'SCHLET' = 'SCHLET'
		'SERVE' = 'SERVE'
		'STNDBY' = 'STNDBY'
		'SUBSTP' = 'SUBSTP'
		'TRANS' = 'TRANS'
		'WARR' = 'WARR'
		'WELCK' = 'WELCK'
		'WARRC' = 'WARRC'
		'WELCKP' = 'WELCKP'
		'ASSLT' = 'ASSLT'
		'DEVICE' = 'DEVICE'
		'ROB' = 'ROB'
		'SHOOT' = 'SHOOT'
		'STAB' = 'STAB'
		'BURG' = 'BURG'
		'FRAUD' = 'FRAUD'
		'FRAUDP' = 'FRAUDP'
		'THEFT' = 'THEFT'
		'IDENT' = 'IDENT'
		'THEFTC' = 'THEFTC'
		'THEFTP' = 'THEFTP'
		'VAND' = 'VAND'
		'VANDP' = 'VANDP'
		'VEHST' = 'VEHST'
		'ACCHR' = 'ACCHR'
		'ACCHRP' = 'ACCHRP'
		'ACCINJ' = 'ACCINJ'
		'HOSTGE' = 'HOSTGE'
		'ACCNON' = 'ACCNON'
		'ACCUNK' = 'ACCUNK'
		'DUII' = 'DUII'
		'HAZARD' = 'HAZARD'
		'TRASTP' = 'TRASTP'
		'WRONG' = 'WRONG'
		'TPURS' = 'TPURS'
		'RSTLN' = 'RSTLN'
		'VEHREC' = 'VEHREC'
		'VEHSTP' = 'VEHSTP'
		'PROWLP' = 'PROWLP'
		'BURGP' = 'BURGP' ;


DATA library.&dataset ;
INFILE datafile LRECL=117;

INPUT
	category $ 1-19
	call_group $ 20-37
	final_case_type $ 38-43
	case_desc $ 44-88
	occ_date $ 89-98
	x_coordinate 99-105
	y_coordinate 106-111
	census_tract $ 112-117 ;

LABEL
	category = 'Category'
	call_group = 'Call group'
	final_case_type = 'Final case type'
	case_desc = 'Case description'
	occ_date = 'Occurrence date'
	x_coordinate = 'X coordinate'
	y_coordinate = 'Y coordinate'
	census_tract = 'Census tract' ;

FORMAT
	category category.
	call_group call_group.
	final_case_type final_case_type.
 ;

RUN ;