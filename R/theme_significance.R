#' Significance theme
#'
#' Custom ggplot theme
#'
#' @param main_font Font used for all text elements except the title. Default "sans".
#' @param title_font Font used for the title. Default "sans".
#' @param hjust Horizontal alignment of title, subtitle, and caption. Default 0.
#' @param text_col Text colour. Default "black".
#' @param bg_col Background colour. Default "white".
#' @return A ggplot2 theme
#' @export

theme_significance <- function(main_font = "sans",
                               title_font = "sans",
                               hjust = 0,
                               text_col = "black",
                               bg_col = "white") {
  ggplot2::theme_minimal() +
    ggplot2::theme(
      # title
      plot.title = ggplot2::element_text(family = title_font,
                                face = "bold",
                                size = 16,
                                hjust = hjust,
                                colour = text_col),
      # subtitle
      plot.subtitle = ggplot2::element_text(family = main_font,
                                size = 14,
                                hjust = hjust,
                                colour = text_col),
      # caption
      plot.caption = ggplot2::element_text(family = main_font,
                                   size = 12,
                                   hjust = hjust,
                                   colour = text_col),
      # axis
      axis.title = ggplot2::element_text(family = main_font,
                                size = 12,
                                colour = text_col),
      axis.title.x = ggplot2::element_text(family = main_font,
                                  size = 12,
                                  margin = ggplot2::margin(t = 10, b = -10),
                                  colour = text_col),
      axis.title.y = ggplot2::element_text(family = main_font,
                                  size = 12,
                                  margin = ggplot2::margin(r = 10, l = -10),
                                  colour = text_col),
      axis.text = ggplot2::element_text(family = main_font,
                               size = 10,
                               colour = text_col),
      # plot
      plot.margin = ggplot2::unit(c(0.8, 0.8, 0.5, 0.5),
                         unit = "cm"),
      plot.background = ggplot2::element_rect(fill = bg_col,
                                              colour = bg_col),
      panel.background = ggplot2::element_rect(fill = bg_col,
                                               colour = bg_col),
      # legend
      legend.position = "bottom",
      legend.text = ggplot2::element_text(family = main_font,
                                 size = 10,
                                 colour = text_col),
      legend.title = ggplot2::element_text(family = main_font,
                                  size = 12,
                                  colour = text_col),
      legend.background = ggplot2::element_rect(fill = "transparent",
                                       colour = "transparent"),
      legend.key = ggplot2::element_rect(fill = "transparent",
                                colour = "transparent"),
      # facets
      strip.background = ggplot2::element_rect(fill = "transparent",
                                      colour = "transparent"),
      strip.text = ggplot2::element_text(family = main_font,
                                size = 14,
                                colour = text_col)
    )
}
