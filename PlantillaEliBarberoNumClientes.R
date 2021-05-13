a <- 30
par(yaxt="n")
win.graph(12,7)
plot(c(30,150),c(0,1),type="n",ylab="",xlab='Número de servicios',
     main="Número de servicios a clientes en un mes", xaxt = "n")
axis(1, at = seq(50, 150, 10))
abline(v=seq(50, 150, 5),lty=2,col="grey")
abline(h=0)
abline(h=c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),lty=2,col="grey")
legend(a,2/50,"Esto nunca pasaría!",cex=0.75,bg="white")
legend(a,11.75/50,"No muy probable",cex=0.75,bg="white")
legend(a,21.75/50,"Dudosamente",cex=0.75,bg="white")
legend(a,31.75/50,"Algo posible",cex=0.75,bg="white")
legend(a,41.75/50,"Es aceptable",cex=0.75,bg="white")
legend(a,51.75/50,"Muy probable!",cex=0.75,bg="white")

a <- 55
par(yaxt="n")
win.graph(12,7)
plot(c(55,175),c(0,1),type="n",ylab="",xlab='Número de servicios',
     main="Número de servicios a clientes en un mes", xaxt = "n")
axis(1, at = seq(75, 150+25, 10))
abline(v=seq(50+25, 150+25, 5),lty=2,col="grey")
abline(h=0)
abline(h=c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),lty=2,col="grey")
legend(a,2/50,"Esto nunca pasaría!",cex=0.75,bg="white")
legend(a,11.75/50,"No muy probable",cex=0.75,bg="white")
legend(a,21.75/50,"Dudosamente",cex=0.75,bg="white")
legend(a,31.75/50,"Algo posible",cex=0.75,bg="white")
legend(a,41.75/50,"Es aceptable",cex=0.75,bg="white")
legend(a,51.75/50,"Muy probable!",cex=0.75,bg="white")

a <- 55+25
par(yaxt="n")
win.graph(12,7)
plot(c(55+25,175+25),c(0,1),type="n",ylab="",xlab='Número de servicios',
     main="Número de servicios a clientes en un mes", xaxt = "n")
axis(1, at = seq(75+25, 150+25+25, 10))
abline(v=seq(50+25+25, 150+25+25, 5),lty=2,col="grey")
abline(h=0)
abline(h=c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),lty=2,col="grey")
legend(a,2/50,"Esto nunca pasaría!",cex=0.75,bg="white")
legend(a,11.75/50,"No muy probable",cex=0.75,bg="white")
legend(a,21.75/50,"Dudosamente",cex=0.75,bg="white")
legend(a,31.75/50,"Algo posible",cex=0.75,bg="white")
legend(a,41.75/50,"Es aceptable",cex=0.75,bg="white")
legend(a,51.75/50,"Muy probable!",cex=0.75,bg="white")

# NOTA: 
# - Se eligió elicitar a mano alzada cada 5 servicios, ya que en promedio 
# la posibilidad de ocurrencia del número de servicios por mes no varía significativamente 
# cada 5, es decir, por ejemplo un cambio de 10 a 15 servicios no cambia drásticamente
# la creencia del experto. 
# - El estudio se realiza sin tener en cuenta la pandemia.

