.onLoad <- function(libname, pkgname) {
  sysfonts::font_add(
    family = "Source Sans Pro",
    regular = system.file("fonts", "Source_Sans_Pro", "SourceSansPro-Regular.ttf", package = "RSSthemes"),
    italic = system.file("fonts", "Source_Sans_Pro", "SourceSansPro-Italic.ttf", package = "RSSthemes"),
    bold = system.file("fonts", "Source_Sans_Pro", "SourceSansPro-Bold.ttf", package = "RSSthemes"),
    bolditalic = system.file("fonts", "Source_Sans_Pro", "SourceSansPro-BoldItalic.ttf", package = "RSSthemes")
  )
  showtext::showtext_auto()
}