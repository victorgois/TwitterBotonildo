## load package
library(tweetbotornot)
library(rtweet)
library(reticulate)
library (plyr)

## select users
source_python("script.py")

divided_list <- divide_chunks(convert_col(), 10)
tam_list <- length(divided_list)


print(divided_list) #divided_list está dividindo e printando corretamente

tamanho.name <- function(divided_list){

  df <- as.data.frame(divided_list) #transformando minha lista em um dataframe
  #print(df)
  tam <- length(df)

  #print(tam)
  for (j in 1:tam){

    for (i in 1:tam){

      as.character(df)

      botornot_list <- by(df, 1:tam, botornot(get_timelines(df)))

    }

   }



  return(botornot_list)
  #for (i in 1:tam){ #tentativa de executar o botornot dentro de um loop
  #  print(df[i])
  #  dfList <- get_timelines(df[i], n=100 ) #lapply(df[i], get_timelines)
  #  data_list <- botornot(df[i])

  #}
  #print(data_list) #ate aqui ta funcionando
  #precisa de função que transofrma df em um formato que de pra tirar o tamanho dele
  #tmls.df <- as.data.frame(tmls) #converto
  #print(tmls.df)
  #return(tmls.df)

}


#botornot.resultado <- function(df){

#    dfList <- lapply(df, get_timelines)
#    data_list <- lapply(dfList, botornot)
#    return(data_list)

 #}

 resultado <- tamanho.name(divided_list) #tamanho recebe dataframe
#   item.df <- c(df[i][j])

 print(resultado)



#principal <-  botornot.resultado(tamanho.df)

#Aqui deve imprimir os dados do botornot <- lista

#visual_estatistico <- function(principal){

#  principal[order(principal$prob_bot), ]

# return()
#}

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
