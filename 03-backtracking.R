library(tidyverse)
library(tibble)


backtracks <- function(seq, start) {
  for(value in seq) {if(value < start) {
    print("True")
  } %>%
    if(value > start) {
      print("super true")
    }
  }
}

f1 <- apply(X = collatz_df, 
            MARGIN = 1,
            FUN = backtracks)
  
f1  
  
  
backtracks_df <-
  filter(.data = collatz_df,
      seq == seq > start %>%
        
    
  )
