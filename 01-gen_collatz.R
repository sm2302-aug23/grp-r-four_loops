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