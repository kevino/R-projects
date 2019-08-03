#1 the color parameter is looking for data in the table to use different colours to categorize the values

#2 Categorical variables: manufacture, model, trans, drv, fl, class
#  Continuous variables: cyl, displ, year, cty, hwy
#  Categorical variables use character datatyes rather than int/dbl numerical data types

#3 
# library(tidyverse)
# ggplot(data = mpg) +
#  geom_point(mapping = aes(x = displ, y = hwy, colour = hwy))
# cat variables give discrete colours per value. cont variables give a spectrum

# #4
# library(tidyverse)
# ggplot(data = mpg) +
#  geom_point(mapping = aes(x = displ, y = hwy, colour = drv, size = drv, shape = drv))
# # the datapoints will take on multiple characteristics

#5
# Stroke draws a line over the existing line in a shape
# library(tidyverse)
# ggplot(data = mpg) +
#  geom_point(mapping = aes(x = displ, y = hwy, stroke = year-1999), shape = 22)
# stroke needs a cont.var. to work

# #6 
# library(tidyverse)
# ggplot(data = mpg) +
#   geom_point(mapping = aes(x = displ, y = hwy, color = year > 2000))
# ggplot evaluates the statement and assigns the aes based on the TRUE/FALSE value