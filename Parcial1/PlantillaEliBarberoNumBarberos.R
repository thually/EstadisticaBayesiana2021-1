a <- 1050
par(yaxt="n")
win.graph(12,7)
plot(c(1200,7000),c(0,1),type="n",ylab="",xlab='Número de barberos',
     main="Número de barberos en Medellín", xaxt = "n")
axis(1, at = seq(2000, 7000, 500))
abline(v=seq(2000, 7000, 250),lty=2,col="grey")
abline(h=0)
abline(h=c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1),lty=2,col="grey")
legend(a,2/50,"Esto nunca pasaría!",cex=0.75,bg="white")
legend(a,11.75/50,"No muy probable",cex=0.75,bg="white")
legend(a,21.75/50,"Dudosamente",cex=0.75,bg="white")
legend(a,31.75/50,"Algo posible",cex=0.75,bg="white")
legend(a,41.75/50,"Es aceptable",cex=0.75,bg="white")
legend(a,51.75/50,"Muy probable!",cex=0.75,bg="white")

# NOTA:
# - 1.336.250 hombres
# - Alrededor de 2000 peluquerías
# - 4500 agremiados

# Bibliografías
# https://www.eltiempo.com/archivo/documento/CMS-14657236
# https://noticias.caracoltv.com/antioquia/barberias-entre-el-arte-el-desempleo-y-la-violencia
