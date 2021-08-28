estimaNormal <- function(parametros, frecu = frecu, limites = limites){
    media <- parametros[1]
    vari <- parametros[2]
    dev.tip <- sqrt(vari)
    proba.esti <- frecu/sum(frecu)
    error <- 0.0
    for (i in 1:length(frecu)) {
        error <- error + (pnorm(limites[i+1], mean = media, sd = dev.tip) - 
                              pnorm(limites[i], mean = media, sd = dev.tip) -
                              proba.esti[i])^2
    }
    return(error)
}

histograma<-function(frecu,limi,...){
    probas<-frecu/sum(frecu)
    altura<-probas/(limi[-1]-limi[-length(limi)])
    cotax<-c(0.90*min(limi),1.1*max(limi))
    cotay<-c(0.0,1.2*max(altura))
    plot(cotax,cotay,type='n',...)
    for(i in 1:length(frecu)){
        #altura<-probas[i]/(limi[i+1]-limi[i])
        polygon(c(limi[i],limi[i],limi[i+1],limi[i+1]),c(0,altura[i],altura[i],0),col='gray')
    }
}

# Gráfico Histograma Decil
histo.decil<-function(x){
    
    if(length(x)<20) stop('Datos insuficientes!')
    
    deciles<-quantile(x,probs=1:9/10)
    xx<-c(min(x),deciles,max(x))
    base<-xx[-1]-xx[-length(xx)] # Negative indices mean "skip"
    area<-0.10
    altura<-area/base
    plot(NA,NA,ylim=c(0,max(altura)),xlim=c(min(x),max(x)),ylab='Densidad',xlab='x')
    title(main='Gr?fico Histograma Decil')
    for(i in 1:length(altura)){
        polygon(c(xx[i],xx[i],xx[i+1],xx[i+1],xx[i]),c(0,altura[i],altura[i],0,0),col='gray')
    }# Fin for i
}# Fin histo.decil

invGamma <- function(a, b, x){
    k <- (b**a)/gamma(a)
    w <- x**(-a-1)
    v <- exp(-b/x)
    k*w*v
}

genera.error<-function(s2) rnorm(1,0,sd=sqrt(s2))