#___TOPICOS___Andesite_arco andino para CHILE y PERU#

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
CR_PPM[is.na(CR_PPM)]<-0
hist(log10(CR_PPM))
#qqnorm(log(CR_PPM))

#Co cobalto
CO_PPM<-as.numeric(Andesite_CHP$"CO(PPM)")
CO_PPM[is.na(CO_PPM)]<-0
hist(log10(CO_PPM))
#qqnorm(log10(CO_PPM))

#Ni niquel
NI_PPM<-as.numeric(Andesite_CHP$"NI(PPM)")
NI_PPM[is.na(NI_PPM)]<-0
hist(log10(NI_PPM))
#qqnorm(log10(NI_PPM))

#Cu cobre
CU_PPM<-as.numeric(Andesite_CHP$"CU(PPM)")
CU_PPM[is.na(CU_PPM)]<-0
hist(log10(CU_PPM))
#qqnorm(log10(CU_PPM))

#Zn zinc
ZN_PPM<-as.numeric(Andesite_CHP$"ZN(PPM)")
ZN_PPM[is.na(ZN_PPM)]<-0
hist(log10(ZN_PPM))
#qqnorm(log10(ZN_PPM))

#As arsenico
AS_PPM<-as.numeric(Andesite_CHP$"AS(PPM)")
AS_PPM[is.na(AS_PPM)]<-0
hist(log10(AS_PPM))
#qqnorm(log10(AS_PPM))

#Se selenio
#SE_PPM<-as.numeric(Andesite_CHP$"SE(PPM)")
#SE_PPM[is.na(SE_PPM)]<-0
#hist(log10(SE_PPM))
#qqnorm(log10(SE_PPM))

#Mo molibdeno
MO_PPM<-as.numeric(Andesite_CHP$"MO(PPM)")
MO_PPM[is.na(MO_PPM)]<-0
hist(log10(MO_PPM))
#qqnorm(log10(MO_PPM))

#Cd cadmio
CD_PPM<-as.numeric(Andesite_CHP$"CD(PPM)")
CD_PPM[is.na(CD_PPM)]<-0
hist(log10(CD_PPM))
#qqnorm(log10(CD_PPM))

#Sb antimonio
SB_PPM<-as.numeric(Andesite_CHP$"SB(PPM)")
SB_PPM[is.na(SB_PPM)]<-0
hist(log10(SB_PPM))
#qqnorm(log10(SB_PPM))

#Hg mercurio
#HG_PPM<-as.numeric(Andesite_CHP$"HG(PPM)")
#HG_PPM[is.na(HG_PPM)]<-0
#hist(log10(HG_PPM))
#qqnorm(log10(HG_PPM))

#Tl talio
TL_PPM<-as.numeric(Andesite_CHP$"TL(PPM)")
TL_PPM[is.na(TL_PPM)]<-0
hist(log10(TL_PPM))
#qqnorm(log10(TL_PPM))


#Pb plomo
PB_PPM<-as.numeric(Andesite_CHP$"PB(PPM)")
PB_PPM[is.na(PB_PPM)]<-0
hist(log10(PB_PPM))
#qqnorm(log10(PB_PPM))


#Bi bismuto
BI_PPM<-as.numeric(Andesite_CHP$"BI(PPM)")
BI_PPM[is.na(BI_PPM)]<-0
hist(log10(BI_PPM))
#qqnorm(log10(BI_PPM))

#_____SEÑAL_ADAKITICA?____#

#Sr estroncio
SR_PPM<-as.numeric(Andesite_CHP$"SR(PPM)")
SR_PPM[is.na(SR_PPM)]<-0
hist(SR_PPM)
#qqnorm(log10(SR_PPM))

#Y ytrio
Y_PPM<-as.numeric(Andesite_CHP$"Y(PPM)")
Y_PPM[is.na(Y_PPM)]<-0
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

"""

library("corrplot")
cor.mat <- round(cor(Andesite_CHP1[,c(9:19)]),2)
corrplot(cor.mat, type="upper", order="original", tl.col="black", tl.srt=45)

Andesite_CHP.pca <- prcomp(Andesite_CHP1[,c(9:19)], center = TRUE, scale. = TRUE )
plot(Andesite_CHP.pca, choix = "varcor")
Andesite_CHP.pca
summary(Andesite_CHP.pca)

library("FactoMineR")
Andesite_CHP.pca <- PCA(Andesite_CHP1[,c(9:19)])

"""

#Spearman

library("corrplot")
cor.mat <- cor((Andesite_CHP1[,c(9:20)]), use = "everything", method = c("kendall") )

#cor.mat <- (cor Andesite_CHP1, method='spearman')
corrplot(cor.mat, type="upper", order="original", tl.col="black", tl.srt=45)

Andesite_CHP.pca <- prcomp(Andesite_CHP1[,c(9:20)], center = TRUE, scale. = TRUE )
plot(Andesite_CHP.pca, choix = "varcor")
Andesite_CHP.pca
summary(Andesite_CHP.pca)
#fviz_eig(Relaves.pca, addlabels = TRUE, ylim = c(0, 30))

library("FactoMineR")
library("factoextra")
Andesite_CHP.pca <- PCA(Andesite_CHP1[,c(9:20)])  

#Clustering <- NEED TO FIX IT

g <- my_ggbiplot02(Andesite_CHP.pca, ellipse=TRUE, labels = rownames(Andesite_CHP1)) #Need to see the numbers of samples

g <- my_ggbiplot02(Andesite_CHP.pca, choices=c(1,2), ellipse=TRUE, obs.scale = 1, var.scale = 1, groups=Andesite_CHP1$Horizont, varname.size = 5,
                   varname.adjust = 2, color = "#0B0B3B", linetype = "solid", size = 1.1) #1.1  
g <- g + geom_point(aes(shape=factor(Andesite_CHP1$Tailings), colour=factor(Andesite_CHP1$Horizont)), size=2.5) #2.5
g <- g + scale_colour_manual(name="Horizont", values= c("forest green", "deepskyblue", "goldenrod4", "pink", "chocolate", "darkmagenta", "dark blue", "red3", "lightseagreen", "lightpink4", "gold", "darkorange2"))
g <- g + ylim(-5,5) + xlim(-5,5)
g <- g + theme_minimal()
print(g)

g <- my_ggbiplot02(Andesite_CHP.pca, choices=c(1,2), ellipse=TRUE, obs.scale = 1, var.scale = 1, groups=Andesite_CHP1$Horizont, varname.size = 0,
                   varname.adjust = 2, color = "#0B0B3B", linetype = "solid", size = 4.4) #1.1  
g <- g + geom_point(aes(shape=factor(Andesite_CHP1$Tailings), colour=factor(Andesite_CHP1$Horizont)), size=16) #2.5
g <- g + scale_colour_manual(name="Horizont", values= c("forest green", "deepskyblue", "goldenrod4", "pink", "chocolate", "darkmagenta", "dark blue", "red3", "lightseagreen", "lightpink4", "gold", "darkorange2"))
#g <- g + ylim(-5,5) + xlim(-5,5)
g <- g + theme_minimal()
print(g)

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

