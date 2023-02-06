#' Complete list of palettes.
#'
#' Use names(RSSPalettes) to return all palette names.
#'
#' @export
RSSPalettes <- list(
  signif_seq = list(c("#2F0907", "#5F120E", "#8E1B15",
                      "#BE241C", "#EE2E24", "#F1574F",
                      "#F4817B", "#F8ABA7", "#FBD5D3"),
                    "seq",
                    FALSE),
  signif_div = list(c("#EE2E24", "#F1645D", "#F49A96",
                      "#F7D1CF", "#FaFaFa", "#C8D4E1",
                      "#85A1C1", "#426FA0", "#003D80"),
                    "div",
                    FALSE),
  signif_qual = list(c("#EE2E24", "#F1645D", "#F49A96",
                       "#F7D1CF", "#FaFaFa", "#C8D4E1",
                       "#85A1C1", "#426FA0", "#003D80"),
                     "div",
                     FALSE)
  )

#' Significance red hex colour
#' @export
signif_red <- "#EE2E24"