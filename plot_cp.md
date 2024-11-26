# Plot modern contraceptive use, mCPR, data and estimates

## Description

Plot modern contraceptive use, mCPR, data and estimates

## Usage

```r
plot_cp(dat, est, iso_code, CI = 95)
```

## Arguments

* `dat`: A tibble which contains mCPR observations.
* `est`: A tibble which contains mCPR estimates.
* `iso_code`: Country iso code
* `CI`: Confidence intervals. Options are: 80, 95, or NA.

## Value

A plot of mCPR of married women against time, in the indicated country, with the indicated confidence intervals. Dots represent observed data.

## Examples

```r
plot_cp <- function(dat, est, iso_code, CI = 95) {}
```

