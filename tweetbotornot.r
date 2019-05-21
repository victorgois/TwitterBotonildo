## load package
library(tweetbotornot)
library(rtweet)
library(reticulate)
library (plyr)

## select users
source_python("script.py")

divided_list <- list(divide_chunks(convert_col(), 10))

#print(divided_list) #divided_list está dividindo e printando corretamente

df <- as.data.frame(divided_list) #transformando minha lista em um dataframe

for (i in 1:nrow(df)){ #tentativa de executar o botornot dentro de um loop

  tmls <- c(df[i])
  #print(tmls) ate aqui ta funcionando
  dfList <- lapply(tmls, get_timelines)
  data_list <- lapply(dfList, botornot)

  #data <- unlist(data_list)
  print(data_list)
  #data[order(data$prob_bot), ]

 }



#for (row in 1:nrow(divided_list)) {
#    divided_each <- stock[row]
    #divided_each = main(price)
#    print (divided_each)}


#for (each in divided_each){
#  users <- c(each)
#  print(users)
  #df <- ldply (users, data.frame)
  #unlist(users, use.names = FALSE)
  #data <- botornot(get_timeline( c(df), n=1000))
  #data <- tweetbotornot(users)
  #print(users)
  #data[order(data$prob_bot), ]
 #}
