# This script produced by the OpenDataForge R Script
# Generator. To ensure the successful import into 
# R, be sure to double check the following lines.

# 1) NIJ_CFS_PORTLAND <- read.fwf("NIJ_CFS_PORTLAND.fixed.dat"
#		This should point to the data file that you 
#		will be importing into R. Ensure that the
#		path points to the correct file. If you move
#		the data file to another folder, ensure that
#		you change the path to reflect the new 
#		location of the data file.

# For more information on our products or services visit
# http://www.mtna.us.


NIJ_CFS_PORTLAND <- read.fwf("NIJ_CFS_PORTLAND.fixed.dat",
 widths = c(19,18,6,45,10,7,
6,6),
 col.names = c("category","call_group","final_case_type","case_desc","occ_date","x_coordinate",
"y_coordinate","census_tract"))

NIJ_CFS_PORTLANDCodes <- list(
	category=data.frame(code=c("STC", "OTH", "MVT", "BUR"), label=c("STREET CRIMES", "OTHER", "MOTOR VEHICLE THEFT", "BURGLARY")),
	call_group=data.frame(code=c("DISORDER", "PERSON CRIME", "SUSPICIOUS", "NON CRIMINAL/ADMIN", "PROPERTY CRIME", "TRAFFIC"), label=c("DISORDER", "PERSON CRIME", "SUSPICIOUS", "NON CRIMINAL/ADMIN", "PROPERTY CRIME", "TRAFFIC")),
	final_case_type=data.frame(code=c("DISTP", "DISTW", "VICE", "ASSLTP", "ASSLTW", "ROBP", "ROBW", "SHOOTW", "SHOTS", "STABW", "THRETP", "THRETW", "GANG", "AREACK", "PREMCK", "SUSP", "SUSPP", "SUSPW", "ANIML", "ANIMLP", "BOMBTH", "DIST", "ESCAPE", "FWB", "FWH", "FWI", "CHEM", "FWN", "NOISE", "PARK", "PARTY", "POLINV", "SCHL", "SCHLP", "SCHLW", "THRET", "TMET", "TMETP", "TMETW", "TRASH", "TRASHP", "UNWNT", "FPURS", "UNWNTW", "W26", 77, "ASSIST", "CIVIL", "EVICT", "FLAG", "FOLLOW", "MSG", "PROP", "GREAT", "RED", "RIVPOL", "SCHLET", "SERVE", "STNDBY", "SUBSTP", "TRANS", "WARR", "WELCK", "WARRC", "WELCKP", "ASSLT", "DEVICE", "ROB", "SHOOT", "STAB", "BURG", "FRAUD", "FRAUDP", "THEFT", "IDENT", "THEFTC", "THEFTP", "VAND", "VANDP", "VEHST", "ACCHR", "ACCHRP", "ACCINJ", "HOSTGE", "ACCNON", "ACCUNK", "DUII", "HAZARD", "TRASTP", "WRONG", "TPURS", "RSTLN", "VEHREC", "VEHSTP", "PROWLP", "BURGP"), label=c("DISTP", "DISTW", "VICE", "ASSLTP", "ASSLTW", "ROBP", "ROBW", "SHOOTW", "SHOTS", "STABW", "THRETP", "THRETW", "GANG", "AREACK", "PREMCK", "SUSP", "SUSPP", "SUSPW", "ANIML", "ANIMLP", "BOMBTH", "DIST", "ESCAPE", "FWB", "FWH", "FWI", "CHEM", "FWN", "NOISE", "PARK", "PARTY", "POLINV", "SCHL", "SCHLP", "SCHLW", "THRET", "TMET", "TMETP", "TMETW", "TRASH", "TRASHP", "UNWNT", "FPURS", "UNWNTW", "W26", "77", "ASSIST", "CIVIL", "EVICT", "FLAG", "FOLLOW", "MSG", "PROP", "GREAT", "RED", "RIVPOL", "SCHLET", "SERVE", "STNDBY", "SUBSTP", "TRANS", "WARR", "WELCK", "WARRC", "WELCKP", "ASSLT", "DEVICE", "ROB", "SHOOT", "STAB", "BURG", "FRAUD", "FRAUDP", "THEFT", "IDENT", "THEFTC", "THEFTP", "VAND", "VANDP", "VEHST", "ACCHR", "ACCHRP", "ACCINJ", "HOSTGE", "ACCNON", "ACCUNK", "DUII", "HAZARD", "TRASTP", "WRONG", "TPURS", "RSTLN", "VEHREC", "VEHSTP", "PROWLP", "BURGP"))
)

NIJ_CFS_PORTLAND$category <- factor(NIJ_CFS_PORTLAND$category,NIJ_CFS_PORTLANDCodes$category$code,NIJ_CFS_PORTLANDCodes$category$label)

NIJ_CFS_PORTLAND$call_group <- factor(NIJ_CFS_PORTLAND$call_group,NIJ_CFS_PORTLANDCodes$call_group$code,NIJ_CFS_PORTLANDCodes$call_group$label)

NIJ_CFS_PORTLAND$final_case_type <- factor(NIJ_CFS_PORTLAND$final_case_type,NIJ_CFS_PORTLANDCodes$final_case_type$code,NIJ_CFS_PORTLANDCodes$final_case_type$label)

