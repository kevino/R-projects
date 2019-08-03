# ggplot(data = mpg) +
#   geom_point(mapping = aes(x = displ, y = hwy)) +
#   facet_wrap(. ~ cyl)

#1
# ggplot(data = mpg) +
#   geom_point(mapping = aes(x = displ, y = hwy)) +
#   facet_wrap(~ hwy)
# It will create facets for each value

#2 The empty cells don't appear in my testing. They would mean combinations of drv and cyl that do not exist in the data
# ggplot(data = mpg) +
#   geom_grid(mapping = aes(x = drv, y = cyl))
# the empty cells in the facets are intersections in the scatterplot with no values

#3 
# ggplot(data = mpg) + 
#   geom_point(mapping = aes(x = displ, y = hwy)) +
#   facet_grid(drv ~ .)
# This plots the drv facet so that the different facets are laid out as rows rather than columns
# ggplot(data = mpg) + 
#   geom_point(mapping = aes(x = displ, y = hwy)) +
#   facet_grid(.~cyl)
# The . forces ggplot to not facet in the dimension of the ., so (. ~ var) has one row, (var ~ .) has one column.

#4
# ggplot(data = mpg) + 
#   geom_point(mapping = aes(x = displ, y = hwy)) + 
#   facet_wrap(~ class, nrow = 2)
# The benefits of facets are that it clearly divides different classes while also showing that some classes may overlap (like compact and subcompact)
# As there are more facets, it will be harder for the viewer to spot patterns and differentiate between the different facets. The larger the number of distinguishing categories, the more appropriate something like colour or size is.

#5
# ggplot(data = mpg) + 
#   geom_point(mapping = aes(x = displ, y = hwy)) + 
#   facet_grid(drv ~ cyl)
# nrow and ncol sets the number of rows or columns to force wrapping
# other options to control the layout are: as.table, dir to change the direction

#6 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(class ~ drv)
# The larger number of levels should go into columns because y is typically the independent variable that is being examined, and it will be compressed if there are too many rows as opposed to columns.  
