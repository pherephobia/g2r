% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/actions.R
\name{action_select_data}
\alias{action_select_data}
\title{Select Data}
\usage{
action_select_data(g, input, datasets)
}
\arguments{
\item{g}{An object of class \code{g2r} or \code{g2Proxy} as returned by \code{\link[=g2]{g2()}} or
\code{\link[=g2_proxy]{g2_proxy()}}.}

\item{input}{Id of the \code{\link[=input_select]{input_select()}} used to
choose the dataset.}

\item{datasets}{A key value pair \code{list} where the \code{key}
is the name of the dataset as listed in the \code{choices} of
the \code{\link[=input_select]{input_select()}}.}
}
\description{
Select a dataset with an \code{\link[=input_select]{input_select()}}.
}
\examples{
# works in Rmarkdown
input_select(
  "selector",
  "Select a dataset",
  c("Cars", "More Cars")
)

cars1 <- cars
cars2 <- cars + c(1, -4)

g2(cars, asp(dist, speed)) \%>\%
  fig_point() \%>\%
  action_select_data(
    "selector",
    datasets = list(
      "Cars" = cars1,
      "More Cars" = cars2
    )
  )
}
