#Task 1 -----------------------------------

library(tidyverse)
library(tibble)

gen_collatz <- function(n) {
  if (n <= 0) {
    cat("Invalid input. Please enter a positive integer.\n")
    return(NULL)
  }
  
collatz_seq <- c(n)
while (n != 1) {
      if (n %% 2 == 0) {
        n <- n / 2
      } else {
        n <- 3 * n + 1
      }
      collatz_seq <- c(collatz_seq, n)
    }
    
    return(collatz_seq)
  }
  
start_values <- 1:10000
collatz_seqs <- lapply(start_values, gen_collatz)
  
collatz_df <- tibble(
    start = start_values,
    seq = collatz_seqs,
    length = sapply(collatz_seqs, length),
    max_val = sapply(collatz_seqs, max)
  )
  
collatz_df

