 rm(list = ls())
library(Rmpfr)
# N  <- mpfr(2000, 8192)   # liczba o precyzji 1MB to 8388608 i 1kB to 8192
Erlang  <- mpfr(1, 1024)
one <- mpfr(1, 2048)
N=800
# ilość użytkowników
S=5000

# średni czas rozmowy 
srt = 180

# ilość chwil - dla doby to 86400
t=86400

# zadeklarowanie wektorów X, Y
x = 0:(t-1)
y=x*0
x1 = x/3600


#########################################################################

# lambda - w kolejnej wersji będzie to funkcja


# wpisywanie lambdy w każdej godzinie z palca

 h=c(0.6,0.3,0.2,0.1,0.6,1,1.2,1.9,2.5,3,3.3,3.5,3.9,4.2,4,3.7,3.5,3.2,2.9,2.5,2.1,1.9,1.4,1.1,0.8)
 lam <- c(1:3600*0+h[1], 1:3600*0+h[2],1:3600*0+h[3],1:3600*0+h[4],1:3600*0+h[5],1:3600*0+h[6],
 1:3600*0+h[7], 1:3600*0+h[8],1:3600*0+h[9],1:3600*0+h[10],1:3600*0+h[11],1:3600*0+h[12],
 1:3600*0+h[13], 1:3600*0+h[14],1:3600*0+h[15],1:3600*0+h[16],1:3600*0+h[17],1:3600*0+h[18],
 1:3600*0+h[19], 1:3600*0+h[20],1:3600*0+h[21],1:3600*0+h[22],1:3600*0+h[23],1:3600*0+h[24])


# funkcja kwadratowa
# lam <- ((24*x/3600-(x/3600)^2)/15)






#tab=matrix(0,5,5)


#przejście po wszystkich X
for ( i in x) {
	p = rpois(1,lam[i+1])  #losowanie ilości połączeń w danej chwili

	# przejście po ilości połączeń
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie dłogości połączenia

			# dodawanie do każdej chwili X ilości połączeń
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

# setwd("D:/") #ścieżka zapisu

# png(file="obrazek.png" , width = 90000, height=2500)
# plot(x,y, type='h', ylim=c(0,2000))
# dev.off()


# blokada Erlanga
Erlang0  <- mpfr(1, 2048)		#trzeba zadeklatrowac obiekt Erlang0 w mpfr
for (i in x) {
	Erlang0[i+1] <- ((one*y[i+1])^N/factorialMpfr(N, 2048)) / sum( (one*y[i+1])^(0:N) / factorialMpfr(0:N, 2048))
}
ye=round(Erlang0,5)
plot(x,ye, type='h')
# abline(1,0)



# Dla N<170
# for (i in x) {
#	Erlang[i+1]= ((y[1+i])^N/factorial(N)) / sum( (y[1+i])^(0:N) / factorial(0:N))
#
# }


# AN = gamma(as(86400,"mpfr"))


####################### Engset
Engset0 <- mpfr(1, 2048)
for (i in x) {
	Engset0[i+1] <- ( chooseMpfr(S-1,N)*(one*y[i+1])^N ) / sum( chooseMpfr(S-1,0:N)*(one*y[i+1])^(0:N) )
}

yegset0=round(Engset0,5)





