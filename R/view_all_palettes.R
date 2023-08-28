#' Prints all available colour palettes
#'
#' @examples
#' view_all_palettes()
#' @return A plot of all colour palettes available in the package.
#' @export
view_all_palettes <- function() {
  oldpar <- par(no.readonly = TRUE)
  on.exit(par(oldpar))
  to_print <- RSSPalettes
  n_all <- length(to_print)
  n_col <- min(4, floor(sqrt(n_all)))
  n_row <- ceiling(n_all / n_col)
  graphics::par(mfrow = c(n_row, n_col))
  purrr::map(.x = names(to_print), .f = ~ print(RSScols(.x)))
}
