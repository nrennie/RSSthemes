#' Significance theme
#'
#' Custom ggplot theme
#'
#' @param family Font used for all text elements. Default "Source Sans Pro".
#' @param base_size Base font size for text elements. Default 12.
#' @param hjust Horizontal alignment of title, subtitle, and caption. Default 0.
#' @param text_col Text colour. Default "black".
#' @param bg_col Background colour. Default "white".
#' @return A ggplot2 theme
#' @export

theme_significance <- function(family = "Source Sans Pro",
                               base_size = 13,
                               hjust = 0,
                               text_col = "black",
                               bg_col = "white") {
  ggplot2::theme_minimal(
    base_family = family,
    base_size = base_size
  ) +
    ggplot2::theme(
      # title
      plot.title = ggplot2::element_text(
        face = "bold",
        hjust = hjust,
        colour = text_col
      ),
      plot.title.position = "plot",
      # subtitle
      plot.subtitle = ggplot2::element_text(
        hjust = hjust,
        colour = text_col,
        margin = ggplot2::margin(b = 10)
      ),
      # caption
      plot.caption = ggplot2::element_text(
        hjust = hjust,
        colour = text_col
      ),
      plot.caption.position = "plot",
      # axis
      axis.title = ggplot2::element_text(
        colour = text_col
      ),
      axis.title.x = ggplot2::element_text(
        margin = ggplot2::margin(t = 10, b = -10),
        colour = text_col
      ),
      axis.title.y = ggplot2::element_text(
        margin = ggplot2::margin(r = 10),
        colour = text_col
      ),
      axis.text = ggplot2::element_text(
        colour = text_col
      ),
      # plot
      plot.margin = ggplot2::margin(10, 10, 10, 10),
      plot.background = ggplot2::element_rect(
        fill = bg_col,
        colour = bg_col
      ),
      panel.background = ggplot2::element_rect(
        fill = bg_col,
        colour = bg_col
      ),
      # legend
      legend.position = "bottom",
      legend.text = ggplot2::element_text(
        colour = text_col
      ),
      legend.title = ggplot2::element_text(
        colour = text_col
      ),
      legend.background = ggplot2::element_rect(
        fill = "transparent",
        colour = "transparent"
      ),
      legend.key = ggplot2::element_rect(
        fill = "transparent",
        colour = "transparent"
      ),
      # facets
      strip.background = ggplot2::element_rect(
        fill = "transparent",
        colour = "transparent"
      ),
      strip.text = ggplot2::element_text(
        colour = text_col
      )
    )
}
