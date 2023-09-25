library(tidyverse)

top10longest <- collatz_df %>%
  arrange(desc(length)) %>%
  slice(1:10)

top10longest


max_val_int <- collatz_df %>%
  filter(max_val == max(max_val)) %>%
  select(start, max_val)

max_val_int


even_odd_avg_len <- collatz_df %>%
  group_by(parity) %>%
  summarise(even_odd_avg_len = mean(length))

even_odd_avg_len


even_odd_sd_len <- collatz_df %>%
  group_by(parity) %>%
  summarise(even_odd_sd_len = sd(length))

even_odd_sd_len

