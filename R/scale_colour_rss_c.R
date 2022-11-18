#' Plotting with RSS palettes for colour ggplot2
#' @param palette name of palette. Run \code{names(RSSPalettes)} to view options.
#' @param direction Sets order of colors. Default palette_choice is 1. If direction is -1,
#' palette_choice color order is reversed
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_color_gradientn}}
#' @return A ggproto object defining a continuous colour scale for use with ggplot2.
#' @export

scale_colour_rss_c <- scale_color_rss_c
