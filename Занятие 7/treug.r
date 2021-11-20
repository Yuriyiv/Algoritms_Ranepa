f <- function(x){-(x-4)^2+10}
a <- (-5)
b <- 10
n <- 10

d <- (b-a)/n
ox <- seq(a, b, by=0.1)
plot.new()
plot(ox,f(ox),by=0.1,type='l')
abline(h=0,v=0)
abline(v=c(a,b),col='red')

for (i in 1:n) {
  # i = 7
  xl = a+(i-1)*d
  xr = a+i*d
  fxr=f(xr)
  fxl=f(xl)
  segments(xr,fxr,xr,0)
  polygon(c(xl,xl,xr,xr,xl),
          c(min(fxl,fxr),
            max(fxl,fxr),
            max(fxl,fxr),
            min(fxl,fxr),
            min(fxl,fxr)),
          col='green',density=10)
}