*! JEB_Data.dta (used in Dilmaghani, 2020) is available at https://data.mendeley.com/datasets/9vmgdgtmh4/1 (DOI: 10.17632/9vmgdgtmh4.1).

set more off
cd ""  // change directory in which JEB_Data.dta exists

use JEB_Data, clear

keep if fed == "LAT"
drop cdummies*

by idnumber: egen sdfem = sd(female)
drop if sdfem > 0
drop sdfem

keep if year >= 2014

save jeb_data_lat, replace

set more on
