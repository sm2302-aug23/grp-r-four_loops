
library(ggplot2)

(p1 <- ggplot(data = collatz_df,
              mapping = aes(x = start,
                            y = length)) +
    geom_point() + 
    labs(
      x = "Starting Integer",
      y = "Length of the sequence"
    ))

identify(y ~ x, labels = paste0("(", round(1, y), ", ", round(y, 2), ")"))