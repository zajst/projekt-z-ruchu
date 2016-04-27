 rm(list = ls())
library(Rmpfr)
# N  <- mpfr(2000, 8192)   # liczba o precyzji 1MB to 8388608 i 1kB to 8192
Erlang  <- mpfr(1, 2048)
one <- mpfr(1, 2048)
N=100

# œredni czas rozmowy 
srt = 180

# iloœæ chwil - dla doby to 86400
t=86400

# zadeklarowanie wektorów X, Y
x = 0:(t-1)
y=x*0
x1 = x/3600


#########################################################################

# lambda - w kolejnej wersji bêdzie to funkcja


# wpisywanie lambdy w ka¿dej godzinie z palca

 h=c(1,1,1,1,1,1,1,1,1,1,1,3,6,4,2,1,1,1,1,1,1,1,1,1)
 lam <- c(1:3600*0+h[1], 1:3600*0+h[2],1:3600*0+h[3],1:3600*0+h[4],1:3600*0+h[5],1:3600*0+h[6],
 1:3600*0+h[7], 1:3600*0+h[8],1:3600*0+h[9],1:3600*0+h[10],1:3600*0+h[11],1:3600*0+h[12],
 1:3600*0+h[13], 1:3600*0+h[14],1:3600*0+h[15],1:3600*0+h[16],1:3600*0+h[17],1:3600*0+h[18],
 1:3600*0+h[19], 1:3600*0+h[20],1:3600*0+h[21],1:3600*0+h[22],1:3600*0+h[23],1:3600*0+h[24])


# funkcja kwadratowa
# lam <- ((24*x/3600-(x/3600)^2)/15)






#tab=matrix(0,5,5)


#przejœcie po wszystkich X
for ( i in x) {
	p = rpois(1,lam[i+1])  #losowanie iloœci po³¹czeñ w danej chwili

	# przejœcie po iloœci po³¹czeñ
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie d³ogoœci po³¹czenia

			# dodawanie do ka¿dej chwili X iloœci po³¹czeñ
			if (e>0) {
				for ( k in 0:(e-1)) {
					y[1+(i+k)%%t] = y[1+(i+k)%%t] + 1
				}
			}
		}
	}	
}


# y1<- y

# y2<- y




#wykres

 plot(x1,y, type='h', ylim=c(0,2000))
abline(N,0)

setwd("D:/") #œcie¿ka zapisu

png(file="obrazek.png" , width = 90000, height=2500)
plot(x,y, type='h', ylim=c(0,2000))
dev.off()


# blokada Erlanga
E = ((one*max(y))^N/factorialMpfr(N, 1024)) / sum( (one*max(y))^(0:N) / factorialMpfr(0:N, 1024))
EroundMpfr(E, 16)
vec <- 1:100
Erlang1=vec*0

Erlang0  <- mpfr(1, 2048)		#trzeba zadeklatrowac obiekt Erlang0 w mpfr
for (i in vec) {
	Erlang0[i] <- roundMpfr( ((one*y[i])^N/factorialMpfr(N, 2048)) / sum( (one*y[i])^(0:N) / factorialMpfr(0:N, 2048)) , 10)
}

ye=round(Erlang,5)
plot(vec,Erlang0, type='h', ylim=c(0,1))
abline(1,0)


# Dla N<170
for (i in x) {
	Erlang[i+1]= ((y[1+i])^N/factorial(N)) / sum( (y[1+i])^(0:N) / factorial(0:N))

}


AN = gamma(as(86400,"mpfr"))



