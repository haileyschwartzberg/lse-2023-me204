#### SETUP ####
library(tidyverse)

df <- read_csv("Dec_lsoa_grocery.csv")

selectedcols <- c("area_id", "sugar", "alcohol", "population")

newdf <- df |> select(all_of(selectedcols)) 

# Choose two nutrients
nutrient1 <- newdf$alcohol
nutrient2 <- newdf$sugar

# Create scatterplot
ggplot(data = newdf, aes(x = nutrient1, y = nutrient2)) +
  geom_point() +
  labs(title = "Scatterplot of Alcohol vs Sugar",
       x = "Alcohol", y = "Sugar")
