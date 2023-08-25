#' Plotting with RSS palettes for colour ggplot2
#' @param palette name of palette. Run \code{names(RSSPalettes)} to view options.
#' @param direction Sets order of colors. Default palette_choice is 1. If direction is -1,
#' palette_choice color order is reversed
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_color_gradientn}}
#' @return A ggproto object defining a continuous colour scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = mpg, y = disp, color = wt)) +
#'   geom_point() +
#'   scale_colour_rss_c(palette = "signif_seq")
#' @export

scale_colour_rss_c <- scale_color_rss_c
