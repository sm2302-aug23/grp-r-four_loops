library(ggplot2)

ggplot(data = collatz_df,
       mapping = aes(x = start,
                     y = length)) +
  geom_point() + 
  labs(
    x = "Starting Integer",
    y = "Length of the sequence"
  )

