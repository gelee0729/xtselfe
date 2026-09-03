### Installation

`xtselfe` is available from [SSC](https://ideas.repec.org/c/boc/bocode/s459713.html). It can be installed in Stata 16 or later by typing `ssc install xtselfe` in the Stata Command window.

After installation, type `help xtselfe` to view the help file.

Current SSC version: `1.0.1` (28may2026).


### Example

The example below uses `jeb_data_lat.dta`, which is provided in this repository. The data file can also be generated using the accompanying script `make_jeb_data_lat.do`.

```stata
use https://raw.githubusercontent.com/gelee0729/xtselfe/main/jeb_data_lat.dta, clear
xtset idnumber year
xtselfe lnr lns c.age##c.age i.year, select(playrapid = lns c.age##c.age female)
```


### References

For details on the Stata implementation of `xtselfe`, see:

  1. Han, C. and G. Lee, 2026, Bias Correction for the Within-Group Estimator for Panel-Data Sample-Selection Models, *The Stata Journal*, 26(3), 367--397.&nbsp;&nbsp;[[Published version](https://doi.org/10.1177/1536867X261477565)] [[Working-paper version](http://dx.doi.org/10.2139/ssrn.6791998)]

For the original methodological contribution, see:

  2. Han, C. and G. Lee, 2022, Bias Correction for Within-Group Estimation of Panel Data Models with Fixed Effects and Sample Selection, *Economics Letters*, 220, 110882.&nbsp;&nbsp;[[Published version](https://doi.org/10.1016/j.econlet.2022.110882)] [[Working-paper version](http://dx.doi.org/10.2139/ssrn.4071489)]
