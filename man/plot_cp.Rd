% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_cp.R
\name{plot_cp}
\alias{plot_cp}
\title{Plot modern contraceptive use, mCPR, data and estimates}
\usage{
plot_cp(dat, est, iso_code, CI = 95)
}
\arguments{
\item{dat}{A tibble which contains mCPR observations.}

\item{est}{A tibble which contains mCPR estimates.}

\item{iso_code}{Country iso code}

\item{CI}{Confidence intervals. Options are: 80, 95, or NA.}
}
\value{
A plot of mCPR of married women against time, in the indicated country, with the indicated confidence intervals. Dots represent observed data.
}
\description{
Plot modern contraceptive use, mCPR, data and estimates
}
\examples{
plot_cp <- function(dat, est, iso_code, CI = 95) {}

}
