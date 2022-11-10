# 1) El tiempo empleado, en horas, en hacer un determinado producto sigue una distribución N(10,2) . Se pide la probabilidad de que ese producto se tarde en hacer:

## (a) Menos de 7 horas 
a<-pnorm(7,10,2)
print("Menos de 7 horas: ")
print(a)
## (b) Entre 8 y 13 horas
b<-pnorm(13,10,2)-pnorm(8,10,2)
print("Entre 8 y 13 horas: ")
print(b)

# 2) Suponga que el número de accidentes que ocurren al día en un tramo carretero es una variable aleatoria Poisson de parametro λ = 3

## (a) Calcule la probabilidad de que ocurran 2 o más accidentes en un día cualquiera.
a1<- 1-dpois(0, lambda = 3)-dpois(1, lambda = 3)
print("2 o más accidentes en un día: ")
print(a1)

## b) Conteste el inciso anterior bajo la suposición de que ha ocurrido al menos un accidente.
aux<- 1-dpois(0, lambda = 3)
b1<- a1 / aux
print("2 o más accidentes en un día habiendo ocurrido al menos un accidente: ")
print(b1)

# 3) Graficando en R

## Grafica la densidad de la distribución Ji-cuadrada usando como parámetro x una lista del 1 al 20 y parámetro n = 5

#?list()
#x<- c(1:20)
#?curve
par(mfrow=c(1,2))
curve(dchisq(x, df=5), xlim=c(1,20), lwd=4,col="blue",ylab="Densidad de probabilidad", main="Densidad JI")
curve(dgamma(x,5/2,1/2),xlim=c(1,20), lwd=4,col="red",main="Densidad Gamma", ylab="Densidad Gamma")
print("La distribución gamma y la distribución JI tienen un comportamiento igual para determinados parámetros")

## b) Observa las siguiente gráfica de la densidad de una v.a. Normal y basado en lo observado encuentre el valor de la media y el número de simulaciones realizadas, también comenta que intervalo o intervalos de números tienen poca probabilidad de aparecer en las simulaciones.

# 4). Las siguientes líneas de código son para realizar la transformación de una variable aleatoria, comenta el código línea por línea, corre el código y justifica que distribución siguen las simulaciones observadas en la lista "transformación".

#Transformación.
uniforme<- runif(10000, -1, 1)
transformacion<-seq(1,10000, by=1)
cont<-1
for(i in uniforme){
if(i<0){
transformacion[cont]<-0
}else{
transformacion[cont]<-1
}
cont<-cont+1
}
#Valor esperado
mean(transformacion)
#Grafica
plot(transformacion)

