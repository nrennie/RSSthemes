#' Plotting with RSS palettes for colour ggplot2
#' @param palette Name of Palette. Run \code{names(RSSPalettes)} to view options.
#' @param direction Sets order of colors. Default direction is 1. If direction is -1,
#' palette color order is reversed
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#' @return A ggproto object defining a discrete colour scale for use with ggplot2.
#' @export

scale_colour_rss_d <- scale_color_rss_d
