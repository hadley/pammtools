% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lag-lead-utils.R
\name{get_laglead}
\alias{get_laglead}
\alias{get_laglead.default}
\alias{get_laglead.data.frame}
\title{Construct or extract data that represents a lag-lead window}
\usage{
get_laglead(x, ...)

\method{get_laglead}{default}(x, tz, ll_fun, ...)

\method{get_laglead}{data.frame}(x, ...)
}
\arguments{
\item{x}{Either a numeric vector of follow-up cut points or a suitable object.}

\item{...}{Further arguments passed to methods.}

\item{tz}{A vector of exposure times}

\item{ll_fun}{Function that specifies how the lag-lead matrix
should be constructed. First argument is the follow up time
second argument is the time of exposure.}
}
\description{
Constructs lag-lead window data set from raw inputs or from data objects
with suitable information stored in attributes, e.g., objects created
by \code{\link{as_ped}}.
}
\examples{
get_laglead(0:10, tz=-5:5, ll_fun=function(t, tz) { t >= tz + 2 & t <= tz + 2 + 3})
gg_laglead(0:10, tz=-5:5, ll_fun=function(t, tz) { t >= tz + 2 & t <= tz + 2 + 3})
}
