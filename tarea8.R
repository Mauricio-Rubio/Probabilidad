# El tiempo empleado, en horas, en hacer un determinado producto sigue una distribución N(10,2) . Se pide la probabilidad de que ese producto se tarde en hacer:

## (a) Menos de 7 horas 
a<-pnorm(7,10,2)
## (b) Entre 8 y 13 horas
b<-pnorm(13,10,2)-pnorm(8,10,2)

# Suponga que el número de accidentes que ocurren al día en un tramo carretero es una variable aleatoria Poisson de parametro λ = 3

## (a) Calcule la probabilidad de que ocurran 2 o más accidentes en un día cualquiera.

a<-1-ppois(1,3)

## b) Conteste el inciso anterior bajo la suposición de que ha ocurrido al menos un accidente.

b<-1-ppois(0,3)