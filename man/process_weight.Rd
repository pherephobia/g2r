% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graph.R
\name{process_weight}
\alias{process_weight}
\title{Process Weight}
\usage{
process_weight(g, src_wght_enquo, tgt_wght_enquo)
}
\arguments{
\item{g}{An object of class \code{g2r} or \code{g2Proxy} as returned by \code{\link[=g2]{g2()}} or
\code{\link[=g2_proxy]{g2_proxy()}}.}

\item{src_wght_enquo, tgt_wght_enquo}{Source and target
columns asq quosures.}
}
\description{
Process weights for \code{\link[=layout_arc]{layout_arc()}}.
}
\keyword{internal}
