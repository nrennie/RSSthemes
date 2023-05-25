#' Set RSS base R plotting palette
#'
#' @param palette Name of palette. See \code{names(RSSthemes::RSSPalettes)}.
#' @export

set_rss_palette <- function(palette, ...) {
  palette_choice <- RSSPalettes[[palette]]
  if (is.null(palette_choice) || is.numeric(palette)) {
    stop("Palette does not exist. Use names(RSSPalettes) to find valid palette.")
  }
  grDevices::palette(palette_choice[[1]])
}
