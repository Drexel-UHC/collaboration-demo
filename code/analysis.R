{
  # 0. Setup -----
  
  ## 0.1 Dependencies -----
  library(tidyverse)
  library(rstudioapi)
  
  ## 0.2 Set working directory to current file-----
  setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
  
  ## 0.3 Load data -----
  data = read_csv("../public data/mtcars.csv")
}



{
  # 1. Analysis ---- 
  
  ## 1.1 EDA
  glimpse(data)
  
  ## 1.2 Visualization
  plot = data %>% 
    ggplot(aes( x = mpg, y = wt)) +
    geom_point()+
    labs(title = "Car Miles per gallon (mpg) vs weight (hp)")
  
  ## 1.3 Save figure
  ggsave(plot, file = "../outputs/figure1.jpg", height = 2, width = 2)
}




