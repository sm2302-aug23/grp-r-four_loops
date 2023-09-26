library(tidyverse)
library(tibble)

gen_collatz <- function(n) {
  if (!is.numeric(n) || n <= 0 || !is.integer(n)) {
    warning("Invalid input. n must be positive integer.")
    return(NULL)
  }
  
  sequence <- c(n)
  while (n != 1) {
    if (n %% 2 == 0) {
      n <- n / 2
    } else {
      n <- 3 * n + 1
    }
    sequence <- c(sequence, n)
  }
  
  return(sequence)
}

collatz_df <- tibble(
  start = integer(0),
  seq = list()
)

for (i in 1:10000) {
  collatz_seq <- gen_collatz(i)
  if (!is.null(collatz_seq)) {
    collatz_df <- collatz_df %>%
      add_row(start = i, seq = list(collatz_seq))
  }
}

collatz_df <- collatz_df %>%
  mutate(
    length = lengths(seq),
    parity = ifelse(start %% 2 == 0, "Even", "Odd"),
  )

collatz_df
