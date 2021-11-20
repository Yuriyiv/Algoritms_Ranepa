x <- c(5, 2, 7, 7, 7, 2, 0, 0)

x <- sort(x)

chastota <- function(x){
  vec_chast <- c()
  for (i in 1:length(x)){
    count <- 0
    for(j in 1:length(x)){
      if(x[i]==x[j]){
        count <- count + 1
      }
    }
    vec_chast <- c(vec_chast,count)
  }
  for (i in 1:length(x)) {
    
  }
  return(rbind(x,vec_chast))
}
x <- chastota(x)
