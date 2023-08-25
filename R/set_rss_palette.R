#' Set RSS base R plotting palette
#'
#' @param palette Name of palette. See \code{names(RSSthemes::RSSPalettes)}.
#' @return Returns a character vector giving the colors from the palette which
#' was in effect. This is invisible unless the argument is omitted.
#' @examples
#' set_rss_palette("signif_qual")
#' @export

set_rss_palette <- function(palette) {
  palette_choice <- RSSPalettes[[palette]]
  if (is.null(palette_choice) || is.numeric(palette)) {
    stop("Palette does not exist. Use names(RSSPalettes) to find valid palette.")
  }
  grDevices::palette(palette_choice[[1]])
}
