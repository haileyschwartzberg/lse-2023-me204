#### SETUP ####
df <- read.csv("Dec_lsoa_grocey.csv")

#Let's view the data
view(df)

#### FILTER ####

a <- df[df["area_id"] == "E01004735", ]
b <- df["area_id"]
c <- df[c("area_id", "avg_age")]
newdf <- df[c("area_id", "sugar", "alcohol", "population")]
df2 <- newdf[order(newdf$alcohol), ]

       