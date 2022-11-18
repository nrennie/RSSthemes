#' Plotting with RSS palettes for fill with ggplot2
#' @param palette name of palette. Run \code{names(RSSPalettes)} to view options.
#' @param direction Sets order of colors. Default palette_choice is 1. If direction is -1,
#' palette_choice color order is reversed
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_fill_gradientn}}
#' @return A ggproto object defining a continuous colour scale for use with ggplot2.
#' @export

scale_fill_rss_c <- function(palette, direction = 1, ...) {
  `%notin%` <- Negate(`%in%`)
  palette_choice <- RSSPalettes[[palette]]
  if (is.null(palette_choice) || is.numeric(palette)) {
    stop("Palette does not exist.")
  }
  if (direction %notin% c(1, -1)) {
    stop("Direction not valid. Please use 1 for standard palette_choice or -1 for reversed palette_choice.")
  }
  else {
    ggplot2::scale_fill_gradientn(colors = RSScols(palette = palette, direction = direction), ...)
  }
}
