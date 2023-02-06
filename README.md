R package to implement scale and theme functions for styling {ggplot2}
graphics for RSS publications.

```
library(RSSthemes)
```

# Colour palettes

## Using palettes with {ggplot2}

Let’s set up a basic data set.

```
library(ggplot2)
plot_df <- data.frame(x = LETTERS[1:3],
                      y = 1:3)
```

### Colouring geoms

### Discrete (fill) scale: `scale_fill_rss_d()`

```
ggplot(data = plot_df,
       mapping = aes(x = x, y = y, fill = x)) +
  geom_col() +
  scale_fill_rss_d(palette = "signif_qual")
```

### Discrete (colour) scale: `scale_colour_rss_d()`

```
ggplot(data = plot_df,
       mapping = aes(x = x, y = y, colour = x)) +
  geom_point(size = 4) +
  scale_colour_rss_d(palette = "signif_qual")
```

### Continuous (fill) scale: `scale_fill_rss_c()`

```
ggplot(data = plot_df,
       mapping = aes(x = x, y = y, fill = y)) +
  geom_col() +
  scale_fill_rss_c(palette = "signif_seq")
```

### Continuous (colour) scale: `scale_colour_rss_c()`

```
ggplot(data = plot_df,
       mapping = aes(x = x, y = y, colour = y)) +
  geom_point(size = 4) +
  scale_colour_rss_c(palette = "signif_seq")
```

# Theme functions

## Using themes with {ggplot2}

Apply styling to non-data elements using the `theme_significance()`
function:

```
ggplot(data = plot_df,
       mapping = aes(x = x, y = y, fill = x)) +
  geom_col() +
  theme_significance()
```
