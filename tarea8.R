# El tiempo empleado, en horas, en hacer un determinado producto sigue una distribución N(10,2) . Se pide la probabilidad de que ese producto se tarde en hacer:

## (a) Menos de 7 horas 
a<-pnorm(7,10,2)
print("Menos de 7 horas: ")
print(a)
## (b) Entre 8 y 13 horas
b<-pnorm(13,10,2)-pnorm(8,10,2)
print("Entre 8 y 13 horas: ")
print(b)

# Suponga que el número de accidentes que ocurren al día en un tramo carretero es una variable aleatoria Poisson de parametro λ = 3

## (a) Calcule la probabilidad de que ocurran 2 o más accidentes en un día cualquiera.
a1<- 1-dpois(0, lambda = 3)-dpois(1, lambda = 3)
print("2 o más accidentes en un día: ")
print(a1)

## b) Conteste el inciso anterior bajo la suposición de que ha ocurrido al menos un accidente.
aux<- 1-dpois(0, lambda = 3)
b1<- a1 / aux
print("2 o más accidentes en un día habiendo ocurrido al menos un accidente: ")
print(b1)
