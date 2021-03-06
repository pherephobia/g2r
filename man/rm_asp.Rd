% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aspects.R
\name{rm_asp}
\alias{rm_asp}
\title{Discard Aspects}
\usage{
rm_asp(...)
}
\arguments{
\item{...}{Three dot passed from parent from which to \emph{remove} aspects.}
}
\description{
Given a arguments, remove \code{\link[=asp]{asp()}}, \link{state}, and \link{Animation}.
Used to remove aspects and only keep options that need
to make it to the serie.
}
\examples{
\dontrun{
foo <- function(...) {
  rm_asp(...)
}

foo(asp(speed), x = 1)
}

}
\keyword{internal}
