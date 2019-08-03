library(tidyverse)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, colour = drv), shape = 18, stroke = 10)
