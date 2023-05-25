R package for styling graphics for RSS publications.

The package is currently available on [GitHub](https://github.com/nrennie/RSSthemes) and you can install it with:

```r
remotes::install_github("nrennie/RSSthemes")
```

You can then load the package using:

```r
library(RSSthemes)
```

# Colour palettes

There are currently three palettes available in {RSSthemes}, although we hope to add more in the future. 

## Using palettes with {ggplot2}

Let’s set up a basic data set.

```r
library(ggplot2)
plot_df <- data.frame(x = LETTERS[1:4],
                      y = 1:4)
```

### Single colour charts

If all of the bars, lines, points, etc. should have the same colour, you can set either the `fill` or `colour` arguments to have one of the RSS colours. The options are: `signif_red`, `signif_blue`, `signif_green`, `signif_orange`, or `signif_yellow`.

```r
ggplot(data = plot_df,
       mapping = aes(x = x, y = y)) +
  geom_col(fill = signif_yellow)
```

![](man/figures/yellow-bars.png)

### Qualitative palettes

For working with qualitative (discrete) data, the best palette to use is `"signif_qual"`. This palette currently only contains four colours.

#### Discrete (fill) scale: `scale_fill_rss_d()`

```r
ggplot(data = plot_df,
       mapping = aes(x = x, y = y, fill = x)) +
  geom_col() +
  scale_fill_rss_d(palette = "signif_qual")
```

![](man/figures/qual-bars.png)

#### Discrete (colour) scale: `scale_colour_rss_d()`

```r
ggplot(data = plot_df,
       mapping = aes(x = x, y = y, colour = x)) +
  geom_point(size = 4) +
  scale_colour_rss_d(palette = "signif_qual")
```

![](man/figures/qual-points.png)

### Sequential palettes

For working with sequential (continuous) data, the best palette to use is `"signif_seq"`.

#### Continuous (fill) scale: `scale_fill_rss_c()`

```r
ggplot(data = plot_df,
       mapping = aes(x = x, y = y, fill = y)) +
  geom_col() +
  scale_fill_rss_c(palette = "signif_seq")
```

![](man/figures/seq-bars.png)

#### Continuous (colour) scale: `scale_colour_rss_c()`

```r
ggplot(data = plot_df,
       mapping = aes(x = x, y = y, colour = y)) +
  geom_point(size = 4) +
  scale_colour_rss_c(palette = "signif_seq")
```

![](man/figures/seq-points.png)

### Diverging palettes

For working with diverging (continuous) data, the best palette to use is `"signif_div"`.

#### Continuous (fill) scale: `scale_fill_rss_c()`

```r
ggplot(data = plot_df,
       mapping = aes(x = x, y = y, fill = y)) +
  geom_col() +
  scale_fill_rss_c(palette = "signif_div")
```

![](man/figures/div-bars.png)

If you want to centre the diverging scale around a different value, you can alternatively pass the pre-defined colours into `scale_fill_gradient2()` from {ggplot2}:

```r
ggplot(data = plot_df,
       mapping = aes(x = x, y = y, fill = y)) +
  geom_col() +
  scale_fill_gradient2(low = signif_red, high = signif_blue, midpoint = 2)
```

![](man/figures/div-bars-grad.png)

## Using palettes with base R

If all of the bars, lines, points, etc. should have the same colour, you can set `col` arguments to have one of the RSS colours. The options are: `signif_red`, `signif_blue`, `signif_green`, `signif_orange`, or `signif_yellow`.

```r
barplot(table(mtcars$gear), col = signif_blue)
```

![](man/figures/blue-base.png)

You can use the `set_rss_palette()` function to change the default colours used in base R plotting:

```r
set_rss_palette("signif_qual")
plot(1:4, 1:4, col=1:4, pch=19, cex=3, xlab="", ylab="")
```

![](man/figures/qual-base.png)

Run `palette("default")` to reset to original base R colours.

# Theme functions

Theme functions style the non-data elements of plots, e.g. fonts, text colour, or background colour.

## Using themes with {ggplot2}

Apply styling to plots made with {ggplot2} using the `theme_significance()`
function:

```r
ggplot(data = plot_df,
       mapping = aes(x = x, y = y, fill = x)) +
  geom_col() +
  labs(title = "My Significance Plot",
       subtitle = "Some longer sentence explaining what is happening in the chart.",
       caption = "Source: name of data source") +
  scale_fill_rss_d(palette = "signif_qual") +
  theme_significance()
```

![](man/figures/theme.png)

## Using themes with base R

Apply styling to plots made with base R using the `set_signif_par()`
function. We also recommend adding reference lines using the `abline()` function:

```r
set_signif_par()
plot(1:4, 1:4, col=1:4, pch=19, cex=3, xlab="", ylab="",
     main = "My Significance Plot",
     sub = "Source: data source")
abline(h=1:4, v=1:4, col = "lightgrey")
```

![](man/figures/theme-base.png)
