## load package
library(tweetbotornot)
library(rtweet)
library(reticulate)

## select users
source_python("script.py")
divided_list = list(divide_chunks(convert_col(), 10))

for (each in divided_list:{
  users <- each
  unlist(users)
  data <- botornot(users)
  print(users)
  data[order(data$prob_bot), ]
 })
