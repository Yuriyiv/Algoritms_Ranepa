number_1 = 12345
number_2 = 6789

karacuba <- function(number_1, number_2, razryad=10^3){
  
  a_1 <-  number_1 %% razryad 
  a_2 <- number_2 %% razryad
  b_1 <- number_1 %/% razryad
  b_2 <- number_2 %/% razryad
  c_0 = a_1*a_2
  c_2 = b_1*b_2
  c_1 = c_2 + c_0 - (a_1-b_1)*(a_2-b_2)
  x = c_2*razryad^2 + c_1*razryad + c_0
  return(x)
}
karacuba(12345,6789)
