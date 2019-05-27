## load package
library(tweetbotornot)
library(rtweet)
library(reticulate)
library (plyr)

## select users
source_python("script.py")

divided_list <- divide_chunks(convert_col(), 10)
tam_list <- length(divided_list)


#print(divided_list) #divided_list está dividindo e printando corretamente

tamanho.name <- function(divided_list){

  #print(divided_list)

  #df <- as.data.frame(divided_list) #transformando minha lista em um dataframe
  #print(df)
  tam_total <- length(divided_list)
  tam_parcial <- 10

  #print(tam_total)
  res <- vector(mode = 'list', tam_parcial)
  botornot_list <- vector(mode = 'list', tam_total)

  for (i in 1:tam_total){

    res <- divided_list[i]
    #print(divided_list)
    res <- paste(unlist(res),collapse="\', \'")
    print(res)
    #botornot_list[i] <- bylapply(res, tweetbotornot(res))
    #print(botornot_list[i])

    #botornot_list <- vector('list',res)
    #for (j in 1:length(res)){

    botornot_list[i] <- by(res, 1:1, botornot(get_timelines(res)))
      #timelines <- get_timelines(res[j])
      #print(botornot_list[j])

      #print(botornot_list)
     #}
  }
  return(botornot_list)
}

#Aqui deve imprimir os dados do botornot <- lista

visual_estatistico <- function(principal){

  principal[order(principal$prob_bot), ]

  return()

}

 resultado <- tamanho.name(divided_list)

 resultado_estatistico <- visual_estatistico(resultado)

 print(resultado_estatistico)



#principal <-  botornot.resultado(tamanho.df)



#print(visual_estatistico) #Aqui deve imprimir
  #data <- unlist(data_list)
  #print(data_list)





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
