### Installation

`xtselfe` is available from [SSC](https://ideas.repec.org/c/boc/bocode/s459713.html) and can be installed in Stata by typing `ssc install xtselfe` in the Stata Command window.

After installation, type `help xtselfe` to view the help file.


### Example

The example below uses `jeb_data_lat.dta`, which is provided in this repository. The data file can also be generated using the accompanying script `make_jeb_data_lat.do`.

```stata
. use https://raw.githubusercontent.com/gelee0729/xtselfe/main/jeb_data_lat.dta, clear
. xtset idnumber year
. xtselfe lnr lns c.age##c.age i.year, select(playrapid = lns c.age##c.age female)
```


### References

For details on the Stata implementation of `xtselfe`, see:

  1. Han, C. and G. Lee, 2026, Bias Correction for the Within-Group Estimator for Panel Data Sample-Selection Models, *The Stata Journal*, Forthcoming.&nbsp;&nbsp;[[Accepted author manuscript](https://drive.google.com/file/d/1Mim-5-jNMAnTD6HF1C-xKxJrV-9t_oJk/view?usp=sharing)]

For the original methodological contribution, see:

  2. Han, C. and G. Lee, 2022, Bias Correction for Within-Group Estimation of Panel Data Models with Fixed Effects and Sample Selection, *Economics Letters*, 220, 110882.&nbsp;&nbsp;[[DOI](https://doi.org/10.1016/j.econlet.2022.110882)]
