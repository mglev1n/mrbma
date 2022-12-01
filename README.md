
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mrbma

<!-- badges: start -->

[![R-CMD-check](https://github.com/mglev1n/mrbma/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/mglev1n/mrbma/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of mrbma is to implement Mendelian Randomization Bayesian Model
Averaging. This is a form of multivariable Mendelian randomization which
can be useful for prioritizing likely-causal risk factors among a set of
highly-correlated exposures. This code adapts the approach described in:

> Zuber V, Colijn JM, Klaver C, Burgess S. Selecting likely causal risk
> factors from high-throughput experiments using multivariable Mendelian
> randomization. Nature Communications. 2020 Dec 1;11(1):1–11.

This code further implements an empirical permutation procedure to
derive p-values using the Nyholt procedure of effective tests to control
the false discovery rate. This approach was utilized in:

> Levin MG, Zuber V, Walker VM, Klarin D, Lynch J, Malik R, et
> al. Prioritizing the Role of Major Lipoproteins and Subfractions as
> Risk Factors for Peripheral Artery Disease. Circulation. 2021 Aug
> 3;144(5):353–64.

## Installation

You can install the development version of mrbma from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mglev1n/mrbma")
```
