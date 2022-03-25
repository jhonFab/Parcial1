#Parcial1
#Nelson Fabian Alzate Gutierrez

argentina <- c(29.66,7.61,6.35,4.10,3.80,2.75,2.70,2.69,2.51,2.44)

eeuu <- c(77.81,35.50,24.79,20.02,16.70,9.39,9.38,8.76,7.63,7.50)

holanda <- c(8.68,7.31,6.02,2.64,1.75,1.72,1.51,1.42,1.31,1.29)

japon <- c(110.21,32.14,18.88,16.38,13.37,11.92,10.71,7.80,7.70,7.00)

ti <- c("argentina", "usa", "holanda", "japon")

boxplot(argentina, eeuu, holanda, japon, names = ti, horizontal = TRUE, notch = FALSE)
stripchart(argentina, method = "jitter", pch = 19, add = TRUE, col = "blue")
stripchart(holanda, method = "jitter", pch = 19, add = TRUE, col = "blue")


boxplot(argentina,
        main = "Argentina",
        xlab = "Poblacion",
        ylab = "Poblacion",
        border = "brown",
        horizontal = TRUE,
        notch = FALSE
)

stripchart(holanda, method = "jitter", pch = 19, add = TRUE, col = "blue")

#x = numero de pasajeros / vuelo
#p(x<=180)
#2% no se presenta -> 3.6 personas (promedio de personas que no se presenta al vuelvo)
#98% se presenta -> 176.4 personas
1 - sum(dpois (0:180, 176.4))


#x = numero de botellas declaradas no conformes
# donde la medie es = 400 ml
#la desviacion estandar es = 5
media<-400
#media
desviacionEstandar<-5
#desviacionEstandar

1-pnorm(415,media,desviacionEstandar)

pnorm(415,media,desviacionEstandar, lower.tail = F)

x <- seq(380, 440, 0.01)
plot(x, dnorm(x, media, desviacionEstandar), type = "l",
     ylim = c(0, 0.01), xlab = "botellas", ylab = "Frecuencia", 
     main=expression(paste("Distribución normal ",mu==400," ", sigma==5)), 
     lwd = 2, col = "red")

x <- seq(380, 420, 0.01)
plot(x, dnorm(x, mean = 400, sd = 5), type = "l",
     ylim = c(0, 0.005), xlab = "botellas", ylab = "Frecuencia", 
     main=expression(paste("Distribución normal ",mu==400," ", sigma==5)), 
     lwd = 2, col = "red")
regionX=seq(415,420,0.01)            
xP <- c(415,regionX,420)  
yP <- c(0,dnorm(regionX,400,5),0)
polygon(xP,yP,col="orange1")

text(410, 0.0012, "P(x>415)")
text(410, 0.001, "0.135%")
abline(v = 400)





