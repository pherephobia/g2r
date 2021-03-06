% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aspects.R
\name{combine_asp}
\alias{combine_asp}
\title{Combine Aspects}
\usage{
combine_asp(main_asp, asp, inherit_asp = TRUE)
}
\arguments{
\item{main_asp}{Main aspects as returned by \code{\link[=asp]{asp()}}.}

\item{asp}{Aspects passed to the serie, as returned by \code{\link[=asp]{asp()}}.}

\item{inherit_asp}{Whether the main aspects should be inherited/combined}
}
\description{
Combine aspects, generally used to combine parents with serie-level
aspects.
}
\examples{
\dontrun{
combine_asp(
  asp(dist),
  asp(y = speed)
)
}

}
\keyword{internal}
