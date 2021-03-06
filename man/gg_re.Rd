% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convenience-plots.R
\name{gg_re}
\alias{gg_re}
\title{Plot Normal QQ plots for random effects}
\usage{
gg_re(x, ...)
}
\arguments{
\item{x}{ a fitted \code{gam} object as produced by \code{gam()}.}

\item{...}{Further arguments passed to \code{\link[mgcv]{plot.gam}}}
}
\description{
Plot Normal QQ plots for random effects
}
\examples{
data("lung", package="survival")
lung$inst <- as.factor(lung$inst) # for mgcv
ped <- lung \%>\% as_ped(Surv(time, status)~ph.ecog + inst, id="id")
pam <- mgcv::gam(ped_status ~ s(tend) + ph.ecog + s(inst, bs="re"),
 data=ped, family=poisson(), offset=offset)
gg_re(pam)
}
\seealso{
\code{\link{tidy_re}}
}
