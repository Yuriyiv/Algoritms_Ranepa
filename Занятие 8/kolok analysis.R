library(openxlsx)
setwd("C:/studying/допы/Занятие 8")
df <- read.xlsx('anch-21-22.xlsx',startRow = FALSE)
df <- df[,c(2,6)]
group_pos <- grep('группа',df[,1])
df1 <- as.data.frame( df[1:(group_pos[1]-1),] )
df2 <- as.data.frame( df[(group_pos[1]+1):(group_pos[2]-1),] )
df3 <- as.data.frame( df[(group_pos[2]+1):(group_pos[3]-1),] )
df4 <- as.data.frame( df[(group_pos[3]+1):length(df[,1]),] )
rm(group_pos)

stat_fun <- function(df,stat='mean',verbose=T){
  df = df[!is.na(df[,2]),]
  df_t <- as.vector(df[,2])
  for (x in 1:length(df_t)) {
    if(grepl("-",df_t[x])){
      df_t[x] <- unlist(strsplit(df_t[x],'-'))[[1]][1]
      # minus <- minus + 1
    }
    if(grepl("+",df_t[x])){
      df_t[x] <- unlist(strsplit(df_t[x],'+'))[[1]][1]
    }
  }
  df_t <- as.numeric(df_t)
  hist(df_t)
  if(verbose==T){
    print(df_t)
  }
  if(stat=='mean'){
    return(mean(df_t))
  }
  else if(stat=='median'){
    return(median(df_t))
  }
  
}

stat_fun(df)
