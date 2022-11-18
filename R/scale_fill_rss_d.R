#' Plotting with RSS palettes for fill colour ggplot2
#' @param palette name of palette. Run \code{names(RSSPalettes)} to view options.
#' @param direction Sets order of colors. Default direction is 1. If direction is -1,
#' palette_choice color order is reversed
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#' @return A ggproto object defining a discrete fill scale for use with ggplot2.
#' @export

scale_fill_rss_d <- function(palette, direction = 1, ...) {
  RSScols_disc <- function(palette, direction = 1) {

    `%notin%` <- Negate(`%in%`)

    palette_choice <- RSSPalettes[[palette]]

    if (is.null(palette_choice) || is.numeric(palette)) {
      stop("palette_choice does not exist.")
    }

    if (direction %notin% c(1, -1)) {
      stop("Direction not valid. Please use 1 for standard palette_choice or -1 for reversed palette_choice.")
    }

    function(n) if (direction == 1) {
      palette_choice[[1]][1:n]
    } else {
      rev(palette_choice[[1]])[1:n]
    }

  }

    ggplot2::discrete_scale(aesthetics = "fill",
                            scale_name = "RSS_d",
                            palette = RSScols_disc(palette = palette, direction = direction), ...)

}
