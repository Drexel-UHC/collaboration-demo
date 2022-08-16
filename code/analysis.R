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
  plot_title = "Car weight (hp) vs car efficiency (mpg)"
  
  plot = data %>% 
    ggplot(aes( x = wt, y = mpg)) +
    geom_point()+
    labs(title = plot_title,
         x = "Weight (wt)",
         y = "Fuel efficiency (mpg)")
  
  ## 1.3 Save figure
  ggsave(plot, 
         file = "../outputs/figure1.png",
         units = 'px',
         scale = 4,
         width = 560,
         height = 400)
}




