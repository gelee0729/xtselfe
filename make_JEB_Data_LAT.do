*! JEB_Data.dta (used in Dilmaghani, 2020) is available at https://data.mendeley.com/datasets/9vmgdgtmh4/1 (DOI: 10.17632/9vmgdgtmh4.1).

set more off
cd ""  // change directory in which JEB_Data.dta exists

use JEB_Data, clear

keep if fed=="LAT"

by idnumber: egen sdfem = sd(female)
drop if sdfem > 0

drop sdfem cdummies*

save JEB_Data_LAT, replace

set more on
