
# plots one lift curve
lift.plot = function(phat, y.list) {
  if(is.factor(y.list)) y.list = as.numeric(y.list)-1
  oo = order(-phat)
  sy = cumsum(y.list[oo])/sum(y.list==1)
  
  ii = (1:length(sy))/length(sy)
  plot(ii, sy, 
       type='l', lwd=2, col='blue', 
       xlab='% tried',ylab='% of successes',
       cex.lab=2
       )
  abline(0, 1, lty=2)
}


# plots multiple lift curves
# phat.list is a list 
# each element of the list is a vector phat for different model
lift.many.plot = function(phat.list, y.list) {
  if(is.factor(y.list)) y.list = as.numeric(y.list)-1
  n = length(y.list)
  
  par(mai=c(.8, 1.2, .5, .5))
  plot(c(0,1), c(0,1), type="n", xlab='% tried', ylab='% of successes', cex.lab=2)
  abline(0, 1, lty=2)
  ii = (1:n) / n
  for(i in 1:length(phat.list)) {
    oo = order(-phat.list[[i]])
    sy = cumsum(y.list[oo])/sum(y.list==1)
    lines(ii,sy,type="l",lwd=2,col=i)
  }
}

lift.plot.alt = function(phat, y.list) {
    if(is.factor(y.list)) y.list = as.numeric(y.list)-1
    oo = order(-phat)
    sy = cumsum(y.list[oo])/sum(y.list==1)
    
    ii = (1:length(sy))/length(sy)
    plot(ii, sy/ii, 
         type='l', lwd=2, col='blue', 
         xlab='% tried',ylab='lift',
         cex.lab=2
    )
    abline(h=1, lty=2)
}
