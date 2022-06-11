library (rvest)
library(dplyr)

url <- 'https://www.amazon.in/Apple-MacBook-Chip-13-inch-512GB/dp/B08N5YD6NF/ref=sr_1_3?crid=26GLVVJX2X7WU&keywords=mac+bookair+apple&qid=1654963053&sprefix=mac%2Caps%2C201&sr=8-3'

my_html <- read_html(url)

my_table <- html_nodes(my_html,'table')

rating_table <- html_table(my_table)[[7]]

View(rating_table)

write.csv(rating_table, "ratingpercentage.csv")

