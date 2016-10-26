/*
+----------------------------------------------------------+
|                                                          |
| This script was produced by the OpenDataForge Stata      |
| Script Generator.                                        |
|                                                          |
| To ensure the successful import into Stata be sure to    |
| double check the following lines.                        |
|                                                          |
| 1) "local dat_name" - This should point the data file    |
|    that you will be importing into Stata, ensure that    |
|    the path points to the correct file. If you move the  |
|    data to another folder, ensure that you change the    |
|    path to reflect the new location of the data file.    |
|                                                          |
| 2) "local dct_name" - This should point to the           |
|    dictionary file that hs been generated along with     |
|    this file. By default it is assumed that the          |
|    dictionary file is held in the same folder as this do |
|    file. Because of this only the file name is           |
|    specified. If you move the dictionary file to another |
|    folder, ensure that you change the path to reflect    |
|    the new location of the dictionary.                   |
|                                                          |
|                                                          |
| For more information on our products or services visit   |
| http://www.mtna.us.                                      |
|                                                          |
+----------------------------------------------------------+
*/

local dat_name "NIJ_CFS_PORTLAND.fixed.dat"

local dct_name "NIJ_CFS_PORTLAND.dct"

infile using "`dct_name'", using("`dat_name'") clear

#delimit ;
	label define final_case_type
		77 "77";

	label values final_case_type final_case_type ;

