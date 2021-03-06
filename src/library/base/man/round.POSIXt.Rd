% File src/library/base/man/round.POSIXt.Rd
% Part of the R package, https://www.R-project.org
% Copyright 1995-2013 R Core Team
% Distributed under GPL 2 or later

\name{round.POSIXt}
\alias{round.POSIXt}
\alias{trunc.POSIXt}
\alias{round.Date}
\alias{trunc.Date}
\title{Round / Truncate Data-Time Objects}
\description{
  Round or truncate date-time objects.
}
\usage{
\method{round}{POSIXt}(x,
      units = c("secs", "mins", "hours", "days", "months", "years"))
\method{trunc}{POSIXt}(x,
      units = c("secs", "mins", "hours", "days", "months", "years"),
      \dots)

\method{round}{Date}(x, \dots)
\method{trunc}{Date}(x, \dots)
}
\arguments{
  \item{x}{an object inheriting from \code{"POSIXt"} or \code{"Date"}.}
  \item{units}{one of the units listed.  Can be abbreviated.}
  \item{\dots}{arguments to be passed to or from other methods, notably
    \code{digits} for \code{round}.}
}
\details{
  The time is rounded or truncated to the second, minute, hour, day,
  month or year.  Time zones are only relevant to days or more, when
  midnight in the current \link{time zone} is used.

  The methods for class \code{"Date"} are of little use except to remove
  fractional days.
}
\value{
  An object of class \code{"POSIXlt"} or \code{"Date"}.
}
\seealso{
  \code{\link{round}} for the generic function and default methods.

  \code{\link{DateTimeClasses}}, \code{\link{Date}}
}

\examples{
round(.leap.seconds + 1000, "hour")
\donttest{trunc(Sys.time(), "day")}
}
\keyword{chron}
