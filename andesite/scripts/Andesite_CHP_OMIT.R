#Andesita arco andino solo de CHILE Y PERU, omitiendo valores nulos

setwd("E:/Documentos/R/Topico_R/andesite/data") #Elija su directorio

library("readxl")
Andesite_CHP <- read_excel("Andesite_CHP.xlsx", col_types = c("text", "text", "text", "text", #1-4
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

#Andesite_CHP1 <- Andesite_CHP[c("TECTONIC SETTING","LOCATION","ROCK NAME","GEOL.","AGE","ROCK TEXTURE","ALTERATION","MINERAL","CR(PPM)", "CO(PPM)", "NI(PPM)", "CU(PPM)", "ZN(PPM)", "AS(PPM)", "SE(PPM)", "MO(PPM)", "CD(PPM)", "SB(PPM)", "HG(PPM)", "TL(PPM)", "PB(PPM)", "BI(PPM)")]
Andesite_CHP1 <- Andesite_CHP[c("TECTONIC SETTING","LOCATION","ROCK NAME","GEOL.","AGE","ROCK TEXTURE","ALTERATION","MINERAL")]


#####Cr, Co, Ni, Cu, Zn, As, Se, Mo, Cd, Sb, Hg, Tl, Pb, Bi######

#Cr cromo
CR_PPM<-as.numeric(Andesite_CHP$"CR(PPM)")
CR<-na.omit(CR_PPM)
hist(log10(CR))
#qqnorm(log(CR))

#Co cobalto
CO_PPM<-as.numeric(Andesite_CHP$"CO(PPM)")
CO<-na.omit(CO_PPM)
hist(log10(CO))
#qqnorm(log10(CO))

#Ni niquel
NI_PPM<-as.numeric(Andesite_CHP$"NI(PPM)")
NI<-na.omit(NI_PPM)
hist(log10(NI))
#qqnorm(log10(NI))

#Cu cobre
CU_PPM<-as.numeric(Andesite_CHP$"CU(PPM)")
CU<-na.omit(CU_PPM)
hist(log10(CU))
qqnorm(log10(CU))

#Zn zinc
ZN_PPM<-as.numeric(Andesite_CHP$"ZN(PPM)")
ZN<-na.omit(ZN_PPM)
hist(log10(ZN))
#qqnorm(log10(ZN))

#As arsenico
AS_PPM<-as.numeric(Andesite_CHP$"AS(PPM)")
AS<-na.omit(AS_PPM)
hist(log10(AS))
#qqnorm(log10(AS))

#Se selenio
#SE_PPM<-as.numeric(Andesite_CHP$"SE(PPM)")
#SE<-na.omit(SE_PPM)
#hist(log10(SE))
#qqnorm(log10(SE))

#Mo molibdeno
MO_PPM<-as.numeric(Andesite_CHP$"MO(PPM)")
MO<-na.omit(MO_PPM)
hist(log10(MO))
#qqnorm(log10(MO))

#Cd cadmio
CD_PPM<-as.numeric(Andesite_CHP$"CD(PPM)")
CD<-na.omit(CD_PPM)
hist(log10(CD))
#qqnorm(log10(CD))

#Sb antimonio
SB_PPM<-as.numeric(Andesite_CHP$"SB(PPM)")
SB<-na.omit(SB_PPM)
hist(log10(SB))
#qqnorm(log10(SB))

#Hg mercurio
#SE_PPM<-as.numeric(Andesite_CHP$"SE(PPM)")
#SE<-na.omit(SE_PPM)
#hist(log10(SE))
#qqnorm(log10(SE))

#Tl talio
TL_PPM<-as.numeric(Andesite_CHP$"TL(PPM)")
TL<-na.omit(TL_PPM)
hist(log10(TL))
#qqnorm(log10(TL))

#Pb plomo
PB_PPM<-as.numeric(Andesite_CHP$"PB(PPM)")
PB<-na.omit(PB_PPM)
hist(log10(PB))
#qqnorm(log10(TL))

#Bi bismuto
BI_PPM<-as.numeric(Andesite_CHP$"BI(PPM)")
BI<-na.omit(BI_PPM)
hist(log10(BI))
#qqnorm(log10(BI))

#_____SEÑAL_ADAKITICA?____#

#Sr estroncio
SR_PPM<-as.numeric(Andesite_CHP$"SR(PPM)")
SR<-na.omit(SR_PPM)
hist(SR_PPM)
#qqnorm(log10(SR_PPM))

#Y ytrio
Y_PPM<-as.numeric(Andesite_CHP$"Y(PPM)")
Y<-na.omit(Y_PPM)
hist(Y_PPM)
#qqnorm(log10(Y_PPM))

SRY <- (log10(SR_PPM)) / (log10(Y_PPM))
log_Y <- log10(Y_PPM)
plot(log_Y, SRY)

#__________PARA_INGRESARLOS_AL_DF___________#
Andesite_CHP1$Cr<-CR_PPM
Andesite_CHP1$Co<-CO_PPM
Andesite_CHP1$Ni<-NI_PPM
Andesite_CHP1$Cu<-CU_PPM
Andesite_CHP1$Zn<-ZN_PPM
Andesite_CHP1$As<-AS_PPM
#Andesite_CHP1$Se<-SE_PPM
Andesite_CHP1$Mo<-MO_PPM
Andesite_CHP1$Cd<-CD_PPM
Andesite_CHP1$Sb<-SB_PPM
#Andesite_CHP1$Hg<-HG_PPM
Andesite_CHP1$Tl<-TL_PPM
Andesite_CHP1$Pb<-PB_PPM
Andesite_CHP1$Bi<-BI_PPM
Andesite_CHP1$SR<-SR_PPM
Andesite_CHP1$Y<-Y_PPM

library("corrplot")
library("FactoMineR")
library("factoextra")

cor.mat <- cor((Andesite_CHP1[,c(9:20)]), use = "everything", method = c("kendall") )

#cor.mat <- (cor Andesite_CHP1, method='spearman')
corrplot(cor.mat, type="upper", order="original", tl.col="black", tl.srt=45)

Andesite_CHP.pca <- prcomp(Andesite_CHP1[,c(9:20)], center = TRUE, scale. = TRUE )
plot(Andesite_CHP.pca, choix = "varcor")
Andesite_CHP.pca
summary(Andesite_CHP.pca)

Andesite_CHP.pca <- PCA(Andesite_CHP1[,c(9:20)]) 

#var <- get_pca_ind(Andesite_CHP.pca)
plot(hclust(dist(as.matrix(Andesite_CHP1[,c(9:19)]))))
# Compute PCA with ncp = 6
res.pca <- PCA(Andesite_CHP1[,c(9:19)], ncp = 6, graph = FALSE)
# Compute hierarchical clustering on principal components
res.hcpc <- HCPC(res.pca, graph = FALSE)
fviz_dend(res.hcpc, 
          show_labels = FALSE,
          lwd = 2.4,
          cex = 0.7,                     # Label size
          palette = "aaas",               # Color palette see ?ggpubr::ggpar
          rect = TRUE, rect_fill = TRUE, # Add rectangle around groups
          rect_border = "aaas",           # Rectangle color
          labels_track_height = 0.3      # Augment the room for labels
)

fviz_cluster(res.hcpc,
             repel = TRUE,            # Avoid label overlapping
             show.clust.cent = TRUE, # Show cluster centers
             palette = "aaas",         # Color palette see ?ggpubr::ggpar
             ggtheme = theme_minimal(),
             main = "Factor map"
)

res.pca$eig #this one

res.hcpc$desc.clust
res.hcpc$desc.var #this one
res.hcpc$desc.ind

res.hcpc$call$t$nb.clust
res.hcpc$call$t$intra
res.hcpc$call$t$inert.gain #this one
res.hcpc$call$t$quot
res.hcpc$call$t$i
