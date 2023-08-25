#' Plotting with RSS palettes for colour ggplot2
#' @param palette Name of Palette. Run \code{palettes(RSSPalettes)} to view options.
#' @param direction Sets order of colors. Default direction is 1. If direction is -1,
#' palette color order is reversed
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#' @return A ggproto object defining a discrete colour scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = mpg, y = disp, color = factor(cyl))) +
#'   geom_point() +
#'   scale_color_rss_d(palette = "signif_qual")
#' @export

scale_color_rss_d <- function(palette, direction = 1, ...) {
  RSScols_disc <- function(palette, direction = 1) {
    `%notin%` <- Negate(`%in%`)

    palette_choice <- RSSPalettes[[palette]]

    if (is.null(palette_choice) || is.numeric(palette)) {
      stop("Palette does not exist.")
    }

    if (direction %notin% c(1, -1)) {
      stop("Direction not valid. Please use 1 for standard palette_choice or -1 for reversed palette_choice.")
    }

    function(n) {
      if (direction == 1) {
        palette_choice[[1]][1:n]
      } else {
        rev(palette_choice[[1]])[1:n]
      }
    }
  }

  ggplot2::discrete_scale(
    aesthetics = "colour",
    scale_name = "RSS_d",
    palette = RSScols_disc(palette = palette, direction = direction), ...
  )
}
