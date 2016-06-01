
EngsetN=80
# iloœæ u¿ytkowników
EngsetS=100

# iloœæ chwil - dla doby to 86400
t=86400

# zadeklarowanie wektorów X, Y
Engsetx = 0:(t-1)
Engsety=x*0


 Engsetlam = lam/50




#przejœcie po wszystkich X
for ( i in x) {
	p = rpois(1,Engsetlam[i+1])  #losowanie iloœci po³¹czeñ w danej chwili

	# przejœcie po iloœci po³¹czeñ
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie d³ogoœci po³¹czenia

			# dodawanie do ka¿dej chwili X iloœci po³¹czeñ
			if (e>0) {
				for ( k in 0:(e-1)) {
					Engsety[1+(i+k)%%t] = Engsety[1+(i+k)%%t] + 1
				}
			}
		}
	}	
}



#wykres

 plot(x1,Engsety, type='h', ylim=c(0,60))
abline(EngsetN,0)

# setwd("D:/") #œcie¿ka zapisu

 png(file="ruch_Engset.png" , width = 2000, height=1500)
 plot(x,y, type='h', ylim=c(0,1200))
 dev.off()
# png(file="ruchHQ_Engset.png" , width = 90000, height=2000)
# plot(x,y, type='h', ylim=c(0,1200))
# dev.off()


####################### Engset

for (i in x) {
	EngsetBlokada[i+1] <- ( choose(EngsetS-1,EngsetN)*(Engsety[i+1])^EngsetN ) / sum( choose(EngsetS-1,0:EngsetN)*(Engsety[i+1])^(0:EngsetN) )
}

plot(x,EngsetBlokada, type='h')

 png(file="EngsetBlokada80100.png" , width = 1500, height=1000)
 plot(x1,yegset0, type='h')
 abline(1,0)
 dev.off()
# png(file="EngsetBlokada80100HQ.png" , width = 90000, height=1000)
# plot(x1,yegset0, type='h')
# abline(1,0)
# dev.off()


############################ Wi¹zka

 EngsetlamW = Engsetlam/2
 EngsetN2=EngsetN/2
 EngsetS2=EngsetS/2

 Engsety1=x*0

#przejœcie po wszystkich X
for ( i in x) {
	p = rpois(1,EngsetlamW[i+1])  #losowanie iloœci po³¹czeñ w danej chwili

	# przejœcie po iloœci po³¹czeñ
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie d³ogoœci po³¹czenia

			# dodawanie do ka¿dej chwili X iloœci po³¹czeñ
			if (e>0) {
				for ( k in 0:(e-1)) {
					Engsety1[1+(i+k)%%t] = Engsety1[1+(i+k)%%t] + 1
				}
			}
		}
	}	
}

#wykres

 plot(x1,Engsety1, type='h', ylim=c(0,60))
abline(EngsetN2,0)

 png(file="ruch_Engset1.png" , width = 2000, height=1500)
 plot(x,y, type='h', ylim=c(0,1200))
 dev.off()

EngsetBlokada1=x*0
for (i in x) {
	EngsetBlokada1[i+1] <- ( choose(EngsetS2-1,EngsetN2)*(Engsety1[i+1])^EngsetN2 ) / sum( choose(EngsetS2-1,0:EngsetN2)*(Engsety1[i+1])^(0:EngsetN2) )
}

plot(x,EngsetBlokada1, type='h')

 png(file="EngsetBlokada1.png" , width = 1500, height=1000)
 plot(x1,yegset0, type='h')
 abline(1,0)
 dev.off()



 Engsety2=x*0

#przejœcie po wszystkich X
for ( i in x) {
	p = rpois(1,EngsetlamW[i+1])  #losowanie iloœci po³¹czeñ w danej chwili

	# przejœcie po iloœci po³¹czeñ
	if (p>0) {
		for (j in 0:(p-1)) {
			e = round(srt*rexp(1)) #losowanie d³ogoœci po³¹czenia

			# dodawanie do ka¿dej chwili X iloœci po³¹czeñ
			if (e>0) {
				for ( k in 0:(e-1)) {
					Engsety2[1+(i+k)%%t] = Engsety2[1+(i+k)%%t] + 1
				}
			}
		}
	}	
}

#wykres

 plot(x1,Engsety2, type='h', ylim=c(0,60))
abline(EngsetN2,0)

 png(file="ruch_Engset.png" , width = 2000, height=1500)
 plot(x,y, type='h', ylim=c(0,1200))
 dev.off()

EngsetBlokada2=x*0
for (i in x) {
	EngsetBlokada2[i+1] <- ( choose(EngsetS2-1,EngsetN2)*(Engsety2[i+1])^EngsetN2 ) / sum( choose(EngsetS2-1,0:EngsetN2)*(Engsety2[i+1])^(0:EngsetN2) )
}

plot(x,EngsetBlokada2, type='h')

 png(file="EngsetBlokada2.png" , width = 1500, height=1000)
 plot(x1,yegset0, type='h')
 abline(1,0)
 dev.off()

########################################################### Wi¹zk Engset

EngsetW = 1-(1-EngsetBlokada2)*(1-EngsetBlokada1)
plot(x1,EngsetW, type='h')
abline(1,0)

 png(file="wiazkaEngset.png" , width = 1500, height=1000)
 plot(x1,wiazka, type='h', ylim=c(0,1))
 abline(1,0)
 dev.off()
