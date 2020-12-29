#' Motif
#' 
#' Set the motif of the chart, defaults to `light`.
#' 
#' @inheritParams fig_point
#' @param name Name of the motif to apply to charts.
#' Out-of-the-box g2 provides `light`, and `dark`.
#' @param ... Key value pair defining style.
#' @param renderer Renderer to use, defaults to `canvas`.
#' @param padding An integer, or a vector of length 4.
#' @param visible Whether the chart is visible.
#' 
#' @details The styling options are poorly, if at all
#' documented online.
#' 
#' @examples
#' # mimic ggplot2
#' g2(iris, asp(Sepal.Width, Sepal.Length)) %>% 
#'  fig_point(
#'    asp(color = Species, shape = "circle")
#'  ) %>% 
#'  motif(
#'    background = "darkgrey",
#'    colors10 = c(
#'      "#F8766D", 
#'      "#7CAE00", 
#'      "#00BFC4", 
#'      "#C77CFF"
#'    )
#'  )
#' 
#' @export 
motif <- function(
  g, 
  ..., 
  renderer = c("canvas", "svg"),
  padding = "auto",
  visible = TRUE,
  name = "light"
){
  UseMethod("motif")
}

#' @method motif g2r
#' @export 
motif.g2r <- function(
  g, 
  ..., 
  renderer = c("canvas", "svg"),
  padding = "auto",
  visible = TRUE,
  name = "light"
){
  renderer <- match.arg(renderer)
  opts <- list(...)

  if(length(opts) == 0)
    opts <- NULL

  if(!is.null(opts) && name %in% c("light", "dark"))
    name <- "custom"

  # theme options
  g$x$theme <- opts

  # chart options
  g$x$chartOpts$theme <- name
  g$x$chartOpts$renderer <- renderer
  g$x$chartOpts$padding <- padding
  g$x$chartOpts$visible <- visible
  
  g
}