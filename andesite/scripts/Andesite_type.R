#___TOPICOS___ANDESITE___#

setwd("E:/Documentos/R/Topico_R/andesite/data") #Elija su directorio

library("readxl")
Andesite <- read_excel("ANDESITE.xlsx", col_types = c("text", "text", "text", "text", #1-4
                                                          "numeric","numeric", "numeric", "numeric",#5-8
                                                          "text", "numeric", "numeric", "text",#9-12
                                                          "text", "text", "text", "text", "text", #13-17
                                                          "numeric", "numeric", "numeric", #18-20
                                                          "text", "text", #21-22
                                                          "numeric", #23
                                                          "numeric", "text", "text", "text", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", #24-33
                                                          "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", #34-43
                                                          "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", #44-53
                                                          "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", #54-63
                                                          "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", #64-73
                                                          "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", #74-83
                                                          "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", #84-93
                                                          "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", #94-103
                                                          "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", #104-113
                                                          "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", #114-123
                                                          "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", #124-133
                                                          "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", #134-143
                                                          "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", #144-153
                                                          "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", #154-163
                                                          "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric","text")) #164-171                                                   

#Andesite1 <- Andesite[c("TECTONIC SETTING","LOCATION","ROCK NAME","GEOL.","AGE","ROCK TEXTURE","ALTERATION","MINERAL","CR(PPM)", "CO(PPM)", "NI(PPM)", "CU(PPM)", "ZN(PPM)", "AS(PPM)", "SE(PPM)", "MO(PPM)", "CD(PPM)", "SB(PPM)", "HG(PPM)", "TL(PPM)", "PB(PPM)", "BI(PPM)")]
Andesite1 <- Andesite[c("TECTONIC SETTING","LOCATION","ROCK NAME","GEOL.","AGE","ROCK TEXTURE","ALTERATION","MINERAL")]

#####Cr, Co, Ni, Cu, Zn, As, Se, Mo, Cd, Sb, Hg, Tl, Pb, Bi######



#Cr cromo
CR_PPM<-as.numeric(Andesite$"CR(PPM)")
CR_PPM[is.na(CR_PPM)]<-0
hist(log10(CR_PPM))
#qqnorm(log(CR_PPM))

#Co cobalto
CO_PPM<-as.numeric(Andesite$"CO(PPM)")
CO_PPM[is.na(CO_PPM)]<-0
hist(log10(CO_PPM))
#qqnorm(log10(CO_PPM))

#Ni niquel
NI_PPM<-as.numeric(Andesite$"NI(PPM)")
NI_PPM[is.na(NI_PPM)]<-0
hist(log10(NI_PPM))
#qqnorm(log10(NI_PPM))

#Cu cobre
CU_PPM<-as.numeric(Andesite$"CU(PPM)")
CU_PPM[is.na(CU_PPM)]<-0
hist(log10(CU_PPM))
#qqnorm(log10(CU_PPM))

#Zn zinc
ZN_PPM<-as.numeric(Andesite$"ZN(PPM)")
ZN_PPM[is.na(ZN_PPM)]<-0
hist(log10(ZN_PPM))
#qqnorm(log10(ZN_PPM))

#As arsenico
AS_PPM<-as.numeric(Andesite$"AS(PPM)")
AS_PPM[is.na(AS_PPM)]<-0
hist(log10(AS_PPM))
#qqnorm(log10(AS_PPM))

#Se selenio
SE_PPM<-as.numeric(Andesite$"SE(PPM)")
SE_PPM[is.na(SE_PPM)]<-0
hist(log10(SE_PPM))
#qqnorm(log10(SE_PPM))

#Mo molibdeno
MO_PPM<-as.numeric(Andesite$"MO(PPM)")
MO_PPM[is.na(MO_PPM)]<-0
hist(log10(MO_PPM))
#qqnorm(log10(MO_PPM))

#Cd cadmio
CD_PPM<-as.numeric(Andesite$"CD(PPM)")
CD_PPM[is.na(CD_PPM)]<-0
hist(log10(CD_PPM))
#qqnorm(log10(CD_PPM))

#Sb antimonio
SB_PPM<-as.numeric(Andesite$"SB(PPM)")
SB_PPM[is.na(SB_PPM)]<-0
hist(log10(SB_PPM))
#qqnorm(log10(SB_PPM))

#Hg mercurio
HG_PPM<-as.numeric(Andesite$"HG(PPM)")
HG_PPM[is.na(HG_PPM)]<-0
hist(log10(HG_PPM))
#qqnorm(log10(HG_PPM))

#Tl talio
TL_PPM<-as.numeric(Andesite$"TL(PPM)")
TL_PPM[is.na(TL_PPM)]<-0
hist(log10(TL_PPM))
#qqnorm(log10(TL_PPM))


#Pb plomo
PB_PPM<-as.numeric(Andesite$"PB(PPM)")
PB_PPM[is.na(PB_PPM)]<-0
hist(log10(PB_PPM))
#qqnorm(log10(PB_PPM))


#Bi bismuto
BI_PPM<-as.numeric(Andesite$"BI(PPM)")
BI_PPM[is.na(BI_PPM)]<-0
hist(log10(BI_PPM))
#qqnorm(log10(BI_PPM))


#__________PARA_INGRESARLOS_AL_DF___________#
Andesite1$Cr<-CR_PPM
Andesite1$Co<-CO_PPM
Andesite1$Ni<-NI_PPM
Andesite1$Cu<-CU_PPM
Andesite1$Zn<-ZN_PPM
Andesite1$As<-AS_PPM
Andesite1$Se<-SE_PPM
Andesite1$Mo<-MO_PPM
Andesite1$Cd<-CD_PPM
Andesite1$Sb<-SB_PPM
Andesite1$Hg<-HG_PPM
Andesite1$Tl<-TL_PPM
Andesite1$Pb<-PB_PPM
Andesite1$Bi<-BI_PPM

library("corrplot")
cor.mat <- round(cor(Andesite1[,c(9:20)]),2)
corrplot(cor.mat, type="upper", order="original", tl.col="black", tl.srt=45)

Andesite.pca <- prcomp(Andesite1[,c(9:20)], center = TRUE, scale. = TRUE )
plot(Andesite.pca, choix = "varcor")
Andesite.pca
summary(Andesite.pca)

library("FactoMineR")
Andesite.pca <- PCA(Andesite1[,c(9:20)])  
