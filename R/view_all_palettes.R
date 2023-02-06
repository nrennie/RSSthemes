#' Prints all available colour palettes
#'
#' @param colourblind_friendly Boolean whether or not to return only colourblind friendly
#' palettes. Default `FALSE`.
#' @examples
#' view_all_palettes()
#' view_all_palettes(colourblind_friendly = TRUE)
#' @return A plot of all colour palettes available in the package.
#' @export
view_all_palettes <- function(colourblind_friendly = FALSE) {
  `%notin%` <- Negate(`%in%`)
  if (colourblind_friendly %notin% c(TRUE, FALSE)) {
    stop("Invalid 'colourblind_friendly'. Must be one of c(FALSE, TRUE).")
  } else {
      if (colourblind_friendly == TRUE) {
        cbf <- unlist(lapply(RSSPalettes, `[[`, 3))
        to_print <- RSSPalettes[unname(which(cbf == TRUE))]
      } else {
        to_print <- RSSPalettes
      }
      n_all <- length(to_print)
      n_col <- min(4, floor(sqrt(n_all)))
      n_row <- ceiling(n_all / n_col)
      par(mfrow = c(n_row, n_col))
      purrr::map(.x = names(to_print), .f = ~print(RSScols(.x)))
      par(mfrow = c(1, 1))
  }
}
