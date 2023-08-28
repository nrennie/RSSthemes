#' Set Significance base R graphical parameters
#'
#' @param family Font used for all text elements. Default "Source Sans Pro".
#' @param adj Alignment of text for title. Default 0.
#' @param mar Margins. Default \code{c(5, 3, 3, 2.5)}.
#' @param bty Axis lines. Default "n".
#' @param ... Additional arguments passed to \code{par}
#' @return Returns an invisible named list.
#' @examples
#' # save user's current par values that this function will change
#' oldpar <- par("family", "adj", "mar", "bty")
#' set_signif_par()
#' plot(1:4, 1:4, col=1:4, main = "Title")
#' par(oldpar)
#' @export

set_signif_par <- function(family = "Source Sans Pro",
                           adj = 0,
                           mar = c(5, 3, 3, 2.5),
                           bty = "n",
                           ...) {
  graphics::par(
    family = family,
    adj = adj,
    mar = mar,
    bty = bty,
    ...
  )
}
