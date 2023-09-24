#Task 1 -----------------------------------

library(tidyverse)

n <- 3

gen_collatz <- function(n){
    if (n %% 2 == 0) {n/2}
    else {3 * n + 1}
}

while(n != 1) {
  n <- gen_collatz(n)
  print(n)
}

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

