# Function for printing palette
#' @importFrom grDevices rgb
#' @importFrom graphics rect par image text
#' @examples
#' print(RSScols("signif_qual"))
#' @return A plot of the specified colour palette.
#' @export

print.palette <- function(x, ...) {
  n <- length(x)
  old <- graphics::par(mar = c(0, 0, 0, 0))
  on.exit(graphics::par(old))
  graphics::image(1:n, 1, as.matrix(1:n),
    col = x,
    ylab = "", xaxt = "n", yaxt = "n", bty = "n"
  )
  graphics::rect(0, 0.80, n + 1, 1.20,
    col = grDevices::rgb(0, 0, 0, 0.6),
    border = NA
  )
  graphics::text((n + 1) / 2, 1,
    labels = attr(x, "palette"),
    cex = 1.5,
    family = "sans",
    col = grDevices::rgb(1, 1, 1, 1)
  )
}
