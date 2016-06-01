dzielnik=10

N1=N/dzielnik
# iloœæ u¿ytkowników
S1=S/dzielnik
lam1=lam/dzielnik



y11=x*0
y12=x*0
y13=x*0
y14=x*0
y15=x*0
y16=x*0
y17=x*0
y18=x*0
y19=x*0
y110=x*0

#przejœcie po wszystkich X
for ( i in x) {
	p = rpois(1,lam1[i+1])  #losowanie iloœci po³¹czeñ w danej chwili

	# przejœcie po iloœci po³¹czeñ
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie d³ogoœci po³¹czenia

			# dodawanie do ka¿dej chwili X iloœci po³¹czeñ
			if (e>0) {
				for ( k in 0:(e-1)) {
					y11[1+(i+k)%%t] = y11[1+(i+k)%%t] + 1
				}
			}
		}
	}	
}

#przejœcie po wszystkich X
for ( i in x) {
	p = rpois(1,lam1[i+1])  #losowanie iloœci po³¹czeñ w danej chwili

	# przejœcie po iloœci po³¹czeñ
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie d³ogoœci po³¹czenia

			# dodawanie do ka¿dej chwili X iloœci po³¹czeñ
			if (e>0) {
				for ( k in 0:(e-1)) {
					y12[1+(i+k)%%t] = y12[1+(i+k)%%t] + 1
				}
			}
		}
	}	
}

#przejœcie po wszystkich X
for ( i in x) {
	p = rpois(1,lam1[i+1])  #losowanie iloœci po³¹czeñ w danej chwili

	# przejœcie po iloœci po³¹czeñ
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie d³ogoœci po³¹czenia

			# dodawanie do ka¿dej chwili X iloœci po³¹czeñ
			if (e>0) {
				for ( k in 0:(e-1)) {
					y13[1+(i+k)%%t] = y13[1+(i+k)%%t] + 1
				}
			}
		}
	}	
}

#przejœcie po wszystkich X
for ( i in x) {
	p = rpois(1,lam1[i+1])  #losowanie iloœci po³¹czeñ w danej chwili

	# przejœcie po iloœci po³¹czeñ
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie d³ogoœci po³¹czenia

			# dodawanie do ka¿dej chwili X iloœci po³¹czeñ
			if (e>0) {
				for ( k in 0:(e-1)) {
					y14[1+(i+k)%%t] = y14[1+(i+k)%%t] + 1
				}
			}
		}
	}	
}

#przejœcie po wszystkich X
for ( i in x) {
	p = rpois(1,lam1[i+1])  #losowanie iloœci po³¹czeñ w danej chwili

	# przejœcie po iloœci po³¹czeñ
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie d³ogoœci po³¹czenia

			# dodawanie do ka¿dej chwili X iloœci po³¹czeñ
			if (e>0) {
				for ( k in 0:(e-1)) {
					y15[1+(i+k)%%t] = y15[1+(i+k)%%t] + 1
				}
			}
		}
	}	
}

#przejœcie po wszystkich X
for ( i in x) {
	p = rpois(1,lam1[i+1])  #losowanie iloœci po³¹czeñ w danej chwili

	# przejœcie po iloœci po³¹czeñ
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie d³ogoœci po³¹czenia

			# dodawanie do ka¿dej chwili X iloœci po³¹czeñ
			if (e>0) {
				for ( k in 0:(e-1)) {
					y16[1+(i+k)%%t] = y16[1+(i+k)%%t] + 1
				}
			}
		}
	}	
}

#przejœcie po wszystkich X
for ( i in x) {
	p = rpois(1,lam1[i+1])  #losowanie iloœci po³¹czeñ w danej chwili

	# przejœcie po iloœci po³¹czeñ
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie d³ogoœci po³¹czenia

			# dodawanie do ka¿dej chwili X iloœci po³¹czeñ
			if (e>0) {
				for ( k in 0:(e-1)) {
					y17[1+(i+k)%%t] = y17[1+(i+k)%%t] + 1
				}
			}
		}
	}	
}

#przejœcie po wszystkich X
for ( i in x) {
	p = rpois(1,lam1[i+1])  #losowanie iloœci po³¹czeñ w danej chwili

	# przejœcie po iloœci po³¹czeñ
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie d³ogoœci po³¹czenia

			# dodawanie do ka¿dej chwili X iloœci po³¹czeñ
			if (e>0) {
				for ( k in 0:(e-1)) {
					y18[1+(i+k)%%t] = y18[1+(i+k)%%t] + 1
				}
			}
		}
	}	
}

#przejœcie po wszystkich X
for ( i in x) {
	p = rpois(1,lam1[i+1])  #losowanie iloœci po³¹czeñ w danej chwili

	# przejœcie po iloœci po³¹czeñ
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie d³ogoœci po³¹czenia

			# dodawanie do ka¿dej chwili X iloœci po³¹czeñ
			if (e>0) {
				for ( k in 0:(e-1)) {
					y19[1+(i+k)%%t] = y19[1+(i+k)%%t] + 1
				}
			}
		}
	}	
}

#przejœcie po wszystkich X
for ( i in x) {
	p = rpois(1,lam1[i+1])  #losowanie iloœci po³¹czeñ w danej chwili

	# przejœcie po iloœci po³¹czeñ
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie d³ogoœci po³¹czenia

			# dodawanie do ka¿dej chwili X iloœci po³¹czeñ
			if (e>0) {
				for ( k in 0:(e-1)) {
					y110[1+(i+k)%%t] = y110[1+(i+k)%%t] + 1
				}
			}
		}
	}	
}


Erlang1  <- mpfr(1, 2048)
Erlang2  <- mpfr(1, 2048)
Erlang3  <- mpfr(1, 2048)
Erlang4  <- mpfr(1, 2048)
Erlang5  <- mpfr(1, 2048)
Erlang6  <- mpfr(1, 2048)
Erlang7  <- mpfr(1, 2048)
Erlang8  <- mpfr(1, 2048)
Erlang9  <- mpfr(1, 2048)
Erlang10  <- mpfr(1, 2048)


for (i in x) {
	Erlang1[i+1] <- ((one*y11[i+1])^N1/factorialMpfr(N1, 2048)) / sum( (one*y11[i+1])^(0:N1) / factorialMpfr(0:N1, 2048))
}

# yErlang1=round(Erlang1,5)
# plot(x,yErlang1, type='h')


for (i in x) {
	Erlang2[i+1] <- ((one*y12[i+1])^N1/factorialMpfr(N1, 2048)) / sum( (one*y12[i+1])^(0:N1) / factorialMpfr(0:N1, 2048))
}

for (i in x) {
	Erlang3[i+1] <- ((one*y13[i+1])^N1/factorialMpfr(N1, 2048)) / sum( (one*y13[i+1])^(0:N1) / factorialMpfr(0:N1, 2048))
}

for (i in x) {
	Erlang4[i+1] <- ((one*y14[i+1])^N1/factorialMpfr(N1, 2048)) / sum( (one*y14[i+1])^(0:N1) / factorialMpfr(0:N1, 2048))
}

for (i in x) {
	Erlang5[i+1] <- ((one*y15[i+1])^N1/factorialMpfr(N1, 2048)) / sum( (one*y15[i+1])^(0:N1) / factorialMpfr(0:N1, 2048))
}

for (i in x) {
	Erlang6[i+1] <- ((one*y16[i+1])^N1/factorialMpfr(N1, 2048)) / sum( (one*y16[i+1])^(0:N1) / factorialMpfr(0:N1, 2048))
}

for (i in x) {
	Erlang7[i+1] <- ((one*y17[i+1])^N1/factorialMpfr(N1, 2048)) / sum( (one*y17[i+1])^(0:N1) / factorialMpfr(0:N1, 2048))
}

for (i in x) {
	Erlang8[i+1] <- ((one*y18[i+1])^N1/factorialMpfr(N1, 2048)) / sum( (one*y18[i+1])^(0:N1) / factorialMpfr(0:N1, 2048))
}

for (i in x) {
	Erlang9[i+1] <- ((one*y19[i+1])^N1/factorialMpfr(N1, 2048)) / sum( (one*y19[i+1])^(0:N1) / factorialMpfr(0:N1, 2048))
}

for (i in x) {
	Erlang10[i+1] <- ((one*y110[i+1])^N1/factorialMpfr(N1, 2048)) / sum( (one*y110[i+1])^(0:N1) / factorialMpfr(0:N1, 2048))
}

ErlangW = 1-(1-Erlang1)*(1-Erlang2)*(1-Erlang3)*(1-Erlang4)*(1-Erlang5)*(1-Erlang6)*(1-Erlang7)*(1-Erlang8)*(1-Erlang9)*(1-Erlang10)


wiazka=round(ErlangW,5)
plot(x1,wiazka, type='h')

 setwd("D:/") #œcie¿ka zapisu


 png(file="wiazka.png" , width = 1500, height=1000)
 plot(x1,wiazka, type='h', ylim=c(0,1))
 abline(1,0)
 dev.off()
 png(file="wiazkaHQ.png" , width = 90000, height=1000)
 plot(x1,wiazka, type='h', ylim=c(0,1))
 abline(1,0)
 dev.off()

##########################################################################

 yErlang1=round(Erlang1,5)
 png(file="Erlang1.png" , width = 1500, height=1000)
 plot(x1,yErlang1, type='h', ylim=c(0,1))
 abline(1,0)
 dev.off()
 png(file="Erlang1HQ.png" , width = 90000, height=1000)
 plot(x1,yErlang1, type='h', ylim=c(0,1))
 abline(1,0)
 dev.off()

 yErlang2=round(Erlang2,5)
 png(file="Erlang2.png" , width = 1500, height=1000)
 plot(x1,yErlang2, type='h', ylim=c(0,1))
 abline(1,0)
 dev.off()
 png(file="Erlang2HQ.png" , width = 90000, height=1000)
 plot(x1,yErlang2, type='h', ylim=c(0,1))
 abline(1,0)
 dev.off()

 yErlang3=round(Erlang3,5)
 png(file="Erlang3.png" , width = 1500, height=1000)
 plot(x1,yErlang3, type='h', ylim=c(0,1))
 abline(1,0)
 dev.off()
 png(file="Erlang3HQ.png" , width = 90000, height=1000)
 plot(x1,yErlang3, type='h', ylim=c(0,1))
 abline(1,0)
 dev.off()


 yErlang4=round(Erlang4,5)
 yErlang5=round(Erlang5,5)
 yErlang6=round(Erlang6,5)
 yErlang7=round(Erlang7,5)
 yErlang8=round(Erlang8,5)
 yErlang9=round(Erlang9,5)
 yErlang10=round(Erlang10,5)

