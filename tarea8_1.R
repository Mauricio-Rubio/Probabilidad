# 1 Suponga que el número de accidentes que ocurren al día en un tramo carretero es una variable aleatoria Poisson de parametro λ = 3

## Calcule la probabilidad de que ocurran 2 o más accidentes en un día cualquiera.
### Dos o más días
# 1-dpois(0, lambda = 3)-dpois(1, lambda = 3)
dpois(0, lambda = 3)
dpois(1, lambda = 3)
### Conteste el inciso anterior bajo la suposición de que ha ocurrido al menos un accidente.
# 1-dpois(0, lambda = 3)-dpois(1, lambda = 3) /1-dpois(0, lambda = 3)




#Transformación.
# uniforme<- runif(10000, -1, 1)
# transformacion<-seq(1,10000, by=1)
# cont<-1
# for(i in uniforme){
# if(i<0){
# transformacion[cont]<-0
# }else{
# transformacion[cont]<-1
# }
# cont<-cont+1
# }
# #Valor esperado
# mean(transformacion)
# #Grafica
# plot(transformacion)