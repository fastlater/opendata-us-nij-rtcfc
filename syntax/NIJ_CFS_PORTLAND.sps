
COMMENT 
 The following code was produced by the OpenDataForge
 SPSS Script Generator.

COMMENT
 To ensure the successful import into SPSS be sure to 
 review the following lines.

COMMENT
 1) "FILE HANDLE DATA" - This should point the data file
    that you will be importing into SPSS, ensure that the
    path points to the correct file; This path should
    include the folders containing the file as well; If
    the data file is moved to another folder, ensure that
    you change the path to reflect these changes.

COMMENT
 2) "SAVE OUTFILE / GET FILE" - These are the last two
    lines of the script and are commented out by
    default, They are useful if the data file contains
    date/time variables; These variables will be
    transferred by creating new variables that fit the
    SPSS data types; These new variable are added at the
    end of the script, To return these variables to their
    original order, simply un-comment the last two lines
    of the script.

COMMENT
 For more information on our products or services visit  
 http://www.mtna.us.   

FILE HANDLE DATA / NAME="NIJ_CFS_PORTLAND.fixed.dat" .

DATA LIST FILE=DATA/
	category 1-19(A)
	call_group 20-37(A)
	final_case_type 38-43(A)
	case_desc 44-88(A)
	occ_date 89-98(A)
	x_coordinate 99-105(F)
	y_coordinate 106-111(F)
	census_tract 112-117(A) .

VARIABLE LABELS
	category 'Category' 
	call_group 'Call group' 
	final_case_type 'Final case type' 
	case_desc 'Case description' 
	occ_date 'Occurrence date' 
	x_coordinate 'X coordinate' 
	y_coordinate 'Y coordinate' 
	census_tract 'Census tract' . 

VALUE LABELS
	category
		'STC' 'STREET CRIMES'
		'OTH' 'OTHER'
		'MVT' 'MOTOR VEHICLE THEFT'
		'BUR' 'BURGLARY'
			/
	call_group
		'DISORDER' 'DISORDER'
		'PERSON CRIME' 'PERSON CRIME'
		'SUSPICIOUS' 'SUSPICIOUS'
		'NON CRIMINAL/ADMIN' 'NON CRIMINAL/ADMIN'
		'PROPERTY CRIME' 'PROPERTY CRIME'
		'TRAFFIC' 'TRAFFIC'
			/
	final_case_type
		'DISTP' 'DISTP'
		'DISTW' 'DISTW'
		'VICE' 'VICE'
		'ASSLTP' 'ASSLTP'
		'ASSLTW' 'ASSLTW'
		'ROBP' 'ROBP'
		'ROBW' 'ROBW'
		'SHOOTW' 'SHOOTW'
		'SHOTS' 'SHOTS'
		'STABW' 'STABW'
		'THRETP' 'THRETP'
		'THRETW' 'THRETW'
		'GANG' 'GANG'
		'AREACK' 'AREACK'
		'PREMCK' 'PREMCK'
		'SUSP' 'SUSP'
		'SUSPP' 'SUSPP'
		'SUSPW' 'SUSPW'
		'ANIML' 'ANIML'
		'ANIMLP' 'ANIMLP'
		'BOMBTH' 'BOMBTH'
		'DIST' 'DIST'
		'ESCAPE' 'ESCAPE'
		'FWB' 'FWB'
		'FWH' 'FWH'
		'FWI' 'FWI'
		'CHEM' 'CHEM'
		'FWN' 'FWN'
		'NOISE' 'NOISE'
		'PARK' 'PARK'
		'PARTY' 'PARTY'
		'POLINV' 'POLINV'
		'SCHL' 'SCHL'
		'SCHLP' 'SCHLP'
		'SCHLW' 'SCHLW'
		'THRET' 'THRET'
		'TMET' 'TMET'
		'TMETP' 'TMETP'
		'TMETW' 'TMETW'
		'TRASH' 'TRASH'
		'TRASHP' 'TRASHP'
		'UNWNT' 'UNWNT'
		'FPURS' 'FPURS'
		'UNWNTW' 'UNWNTW'
		'W26' 'W26'
		77 '77'
		'ASSIST' 'ASSIST'
		'CIVIL' 'CIVIL'
		'EVICT' 'EVICT'
		'FLAG' 'FLAG'
		'FOLLOW' 'FOLLOW'
		'MSG' 'MSG'
		'PROP' 'PROP'
		'GREAT' 'GREAT'
		'RED' 'RED'
		'RIVPOL' 'RIVPOL'
		'SCHLET' 'SCHLET'
		'SERVE' 'SERVE'
		'STNDBY' 'STNDBY'
		'SUBSTP' 'SUBSTP'
		'TRANS' 'TRANS'
		'WARR' 'WARR'
		'WELCK' 'WELCK'
		'WARRC' 'WARRC'
		'WELCKP' 'WELCKP'
		'ASSLT' 'ASSLT'
		'DEVICE' 'DEVICE'
		'ROB' 'ROB'
		'SHOOT' 'SHOOT'
		'STAB' 'STAB'
		'BURG' 'BURG'
		'FRAUD' 'FRAUD'
		'FRAUDP' 'FRAUDP'
		'THEFT' 'THEFT'
		'IDENT' 'IDENT'
		'THEFTC' 'THEFTC'
		'THEFTP' 'THEFTP'
		'VAND' 'VAND'
		'VANDP' 'VANDP'
		'VEHST' 'VEHST'
		'ACCHR' 'ACCHR'
		'ACCHRP' 'ACCHRP'
		'ACCINJ' 'ACCINJ'
		'HOSTGE' 'HOSTGE'
		'ACCNON' 'ACCNON'
		'ACCUNK' 'ACCUNK'
		'DUII' 'DUII'
		'HAZARD' 'HAZARD'
		'TRASTP' 'TRASTP'
		'WRONG' 'WRONG'
		'TPURS' 'TPURS'
		'RSTLN' 'RSTLN'
		'VEHREC' 'VEHREC'
		'VEHSTP' 'VEHSTP'
		'PROWLP' 'PROWLP'
		'BURGP' 'BURGP'
			/
.

EXECUTE .


COMMENT SAVE OUTFILE='NIJ_CFS_PORTLAND.sav'/keep=category call_group final_case_type case_desc occ_date x_coordinate y_coordinate census_tract.
COMMENT GET FILE='NIJ_CFS_PORTLAND.sav'.