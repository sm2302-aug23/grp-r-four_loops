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
  
  sequence <- c(n)
  while (n > 1) {
    if (n %% 2 == 0) {
      n <- n / 2
    } else{n <- 3 * n + 1}
    sequence <- c(sequence, n)
  }
  
  return(sequence)
}

collatz_df <- tibble(start = numeric(0), seq = list())

for (i in 1:10000) {
  collatz_seq <- gen_collatz(i)
  if (!is.null(collatz_seq)) {
    collatz_df <- collatz_df %>% add_row(start = i, seq = list(collatz_seq))
  }
}

collatz_df
