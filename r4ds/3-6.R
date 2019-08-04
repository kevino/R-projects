# ggplot(data = mpg) +
#   geom_smooth(mapping = aes(x = displ, y = hwy, color = drv)) +
#   geom_point(mapping = aes(x = displ, y = hwy, color = drv))
# 
# ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
#   geom_point(mapping = aes(color = class)) + 
#   geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE)

#1 geom_line, geom_boxplot, geom_histogram, geom_area

#2 I pictured a single line, but because the color = drv statement is in ggplot() it will cause each drivetrain to have different colours, necessitating multiple lines

#3 Turns off the legend for the plot. If the aes() parameters are set to have different values shown beyond x,y. To make each plot look the same to make them easier to compare.

#4 I think SE means standard error, and setting it to false turns off the SE visualization

#5 Yes. Top one saves code duplication

#6
#a
# ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
#   geom_point(size = 5) + 
#   geom_smooth(se = FALSE)

#b
# ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
#   geom_point(size = 5) + 
#   geom_smooth(mapping = aes(group = drv),se = FALSE, size = 2)

#c
# ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
#   geom_point() + 
#   geom_smooth(se = FALSE)

#d
# ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
#   geom_point(mapping = aes(color = drv)) +
#   geom_smooth(se = FALSE)

#e
# ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
#   geom_point(mapping = aes(color = drv) +
#   geom_smooth(mapping = aes(linetype = drv),se = FALSE)

#f
# ggplot(data = mpg, mapping = aes(x = displ, y = hwy, stroke = 2)) +
#   geom_point(mapping = aes(fill = drv), size = 3, shape = 21, colour = "white")

