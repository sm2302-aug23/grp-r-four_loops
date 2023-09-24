#Task 2 --------------------------------

library(tidyverse)

top10longest <- collatz_df %>%
  arrange(desc(length)) %>%
  slice(1:10)

top10longest

max_val_int <- collatz_df %>%
  filter(max_val == max(max_val)) %>%
  select(start, max_val)

max_val_int

