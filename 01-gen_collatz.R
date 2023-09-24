library(tiddyverse)

n <- 10

gen_collatz <- function(n){
  if (n %% 2 == 0) {n/2}
  else {3 * n + 1}
}


n <- 10

while (n < 15) {
  n <- n + 1
  print (n)
}
