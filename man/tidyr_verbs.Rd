% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidyverse-methods.R
\name{tidyr_verbs}
\alias{tidyr_verbs}
\alias{fill}
\alias{fill_}
\alias{fill.ped}
\alias{fill.nested_fdf}
\title{\code{tidyr} Verbs for \code{ped}-Objects}
\usage{
\method{fill}{ped}(
  data,
  ...,
  .direction = c("down", "up", "downup", "updown"),
  keep_attributes = TRUE
)

\method{fill}{nested_fdf}(data, ..., .direction = c("down", "up"), keep_attributes = TRUE)
}
\arguments{
\item{data}{an  object of class \code{ped}, see \code{\link{as_ped}}.}

\item{...}{A selection of columns. If empty, nothing happens. You can
supply bare variable names, select all variables between \code{x} and \code{z}
with \code{x:z}, exclude \code{y} with \code{-y}. For more selection options, see the
\code{\link[dplyr:select]{dplyr::select()}} documentation.}

\item{.direction}{Direction in which to fill missing values. Currently
either "down" (the default), "up", "downup" (i.e. first down and then up)
or "updown" (first up and then down).}

\item{keep_attributes}{conserve attributes? defaults to \code{TRUE}.}
}
\value{
A modified \code{ped} object.
}
\description{
See \code{tidyr} documentation of the respective functions for
  description and examples.
}
\keyword{internal}
