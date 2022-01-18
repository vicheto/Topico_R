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

#Si Silicio
SIO2_WT<-as.numeric(Andesite_CHP$"SIO2(WT%)")
SIO2_WT[is.na(SIO2_WT)]<-0
#SI_WT<-as.numeric(Andesite_CHP$"SI(WT%)")
#SI_WT[is.na(SI_WT)]<-0
#SI_PPM<-as.numeric(Andesite_CHP$"SI(PPM)")
#SI_PPM[is.na(SI_PPM)]<-0

#Ti Titanio
TIO2_WT<-as.numeric(Andesite_CHP$"TIO2(WT%)")
TIO2_WT[is.na(TIO2_WT)]<-0
#TI_WT<-as.numeric(Andesite_CHP$"TI(WT%)")
#TI_WT[is.na(TI_WT)]<-0
TI_PPM<-as.numeric(Andesite_CHP$"TI(PPM)")
TI_PPM[is.na(TI_PPM)]<-0

#Zr Zirconio
#ZRO2_WT<-as.numeric(Andesite_CHP$"ZRO2(WT%)")
#ZRO2_WT[is.na(ZRO2_WT)]<-0
#ZR_WT<-as.numeric(Andesite_CHP$"ZR(WT%)")
#ZR_WT[is.na(ZR_WT)]<-0
ZR_PPM<-as.numeric(Andesite_CHP$"ZR(PPM)")
ZR_PPM[is.na(ZR_PPM)]<-0                                                                

#Hf Hafnio
#HFO2_WT<-as.numeric(Andesite_CHP$"HFO2(WT%)")
#HFO2_WT[is.na(HFO2_WT)]<-0
#HF_WT<-as.numeric(Andesite_CHP$"HF(WT%)")
#HF_WT[is.na(HF_WT)]<-0
HF_PPM<-as.numeric(Andesite_CHP$"HF(PPM)")
HF_PPM[is.na(HF_PPM)]<-0

#Th Torio
#THO2_WT<-as.numeric(Andesite_CHP$"THO2(WT%)")
#THO2_WT[is.na(THO2_WT)]<-0
#TH_WT<-as.numeric(Andesite_CHP$"TH(WT%)")
#TH_WT[is.na(TH_WT)]<-0
TH_PPM<-as.numeric(Andesite_CHP$"TH(PPM)")
TH_PPM[is.na(TH_PPM)]<-0
#TH_PPB<-as.numeric(Andesite_CHP$"TH(PPB)")
#TH_PPB[is.na(TH_PPB)]<-0

#U Uranio
#UO2_WT<-as.numeric(Andesite_CHP$"UO2(WT%)")
#UO2_WT[is.na(UO2_WT)]<-0
#UO3_WT<-as.numeric(Andesite_CHP$"UO3(WT%)")
#UO3_WT[is.na(UO3_WT)]<-0
#U_WT<-as.numeric(Andesite_CHP$"U(WT%)")
#U_WT[is.na(U_WT)]<-0
U_PPM<-as.numeric(Andesite_CHP$"U(PPM)")
U_PPM[is.na(U_PPM)]<-0
#U_PPB<-as.numeric(Andesite_CHP$"U(PPB)")
#U_PPB[is.na(U_PPB)]<-0

#Al Aluminio
AL2O3_WT<-as.numeric(Andesite_CHP$"AL2O3(WT%)")
AL2O3_WT[is.na(AL2O3_WT)]<-0
#AL_WT<-as.numeric(Andesite_CHP$"AL(WT%)")
#AL_WT[is.na(AL_WT)]<-0
AL_PPM<-as.numeric(Andesite_CHP$"AL(PPM)")
AL_PPM[is.na(AL_PPM)]<-0

#Cr Cromo
CR2O3_WT<-as.numeric(Andesite_CHP$"CR2O3(WT%)")
CR2O3_WT[is.na(CR2O3_WT)]<-0
#CR_WT<-as.numeric(Andesite_CHP$"CR(WT%)")
#CR_WT[is.na(CR_WT)]<-0
CR_PPM<-as.numeric(Andesite_CHP$"CR(PPM)")
CR_PPM[is.na(CR_PPM)]<-0

#La Lantano
#LA2O3_WT<-as.numeric(Andesite_CHP$"LA2O3(WT%)")
#LA2O3_WT[is.na(LA2O3_WT)]<-0
LA_PPM<-as.numeric(Andesite_CHP$"LA(PPM)")
LA_PPM[is.na(LA_PPM)]<-0

#Ce Cerio
#CE2O3_WT<-as.numeric(Andesite_CHP$"CE2O3(WT%)")
#CE2O3_WT[is.na(CE2O3_WT)]<-0
CE_PPM<-as.numeric(Andesite_CHP$"CE(PPM)")
CE_PPM[is.na(CE_PPM)]<-0

#Nd Neodimio
#ND2O3_WT<-as.numeric(Andesite_CHP$"ND2O3(WT%)")
#ND2O3_WT[is.na(ND2O3_WT)]<-0
ND_PPM<-as.numeric(Andesite_CHP$"ND(PPM)")
ND_PPM[is.na(ND_PPM)]<-0

#Sm Samario
#SM2O3_WT<-as.numeric(Andesite_CHP$"SM2O3(WT%)")
#SM2O3_WT[is.na(SM2O3_WT)]<-0
SM_PPM<-as.numeric(Andesite_CHP$"SM(PPM)")
SM_PPM[is.na(SM_PPM)]<-0

#Eu Europio
#EU2O3_WT<-as.numeric(Andesite_CHP$"EU2O3(WT%)")
#EU2O3_WT[is.na(EU2O3_WT)]<-0
EU_PPM<-as.numeric(Andesite_CHP$"EU(PPM)")
EU_PPM[is.na(EU_PPM)]<-0

#Gd
#GD2O3_WT<-as.numeric(Andesite_CHP$"GD2O3(WT%)")
#GD2O3_WT[is.na(GD2O3_WT)]<-0
GD_PPM<-as.numeric(Andesite_CHP$"GD(PPM)")
GD_PPM[is.na(GD_PPM)]<-0

#Dy
#DY2O3_WT<-as.numeric(Andesite_CHP$"DY2O3(WT%)")
#DY2O3_WT[is.na(DY2O3_WT)]<-0
DY_PPM<-as.numeric(Andesite_CHP$"DY(PPM)")
DY_PPM[is.na(DY_PPM)]<-0

#Yb
#YB2O3_WT<-as.numeric(Andesite_CHP$"YB2O3(WT%)")
#YB2O3_WT[is.na(YB2O3_WT)]<-0
YB_PPM<-as.numeric(Andesite_CHP$"YB(PPM)")
YB_PPM[is.na(YB_PPM)]<-0

#Y
#Y2O3_WT<-as.numeric(Andesite_CHP$"Y2O3(WT%)")
#Y2O3_WT[is.na(Y2O3_WT)]<-0
Y_PPM<-as.numeric(Andesite_CHP$"Y(PPM)")
Y_PPM[is.na(Y_PPM)]<-0

#V Vanadio
#V2O3_WT<-as.numeric(Andesite_CHP$"V2O3(WT%)")
#V2O3_WT[is.na(V2O3_WT)]<-0
#V2O5_WT<-as.numeric(Andesite_CHP$"V2O5(WT%)")
#V2O5_WT[is.na(V2O5_WT)]<-0
#V_WT<-as.numeric(Andesite_CHP$"V(WT%)")
#V_WT[is.na(V_WT)]<-0
V_PPM<-as.numeric(Andesite_CHP$"V(PPM)")
V_PPM[is.na(V_PPM)]<-0

#Nb Niobio
#NB2O3_WT<-as.numeric(Andesite_CHP$"NB2O3(WT%)")
#NB2O3_WT[is.na(NB2O3_WT)]<-0
#NB2O5_WT<-as.numeric(Andesite_CHP$"NB2O5(WT%)")
#NB2O5_WT[is.na(NB2O5_WT)]<-0
#NB_WT<-as.numeric(Andesite_CHP$"NB(WT%)")
#NB_WT[is.na(NB_WT)]<-0
NB_PPM<-as.numeric(Andesite_CHP$"NB(PPM)")
NB_PPM[is.na(NB_PPM)]<-0

#Ta Tántalo
#TA2O5_WT<-as.numeric(Andesite_CHP$"TA2O5(WT%)")
#TA2O5_WT[is.na(TA2O5_WT)]<-0
#TA_WT<-as.numeric(Andesite_CHP$"TA(WT%)")
#TA_WT[is.na(TA_WT)]<-0
TA_PPM<-as.numeric(Andesite_CHP$"TA(PPM)")
TA_PPM[is.na(TA_PPM)]<-0

#Pr
#PR2O3_WT<-as.numeric(Andesite_CHP$"PR2O3(WT%)")
#PR2O3_WT[is.na(PR2O3_WT)]<-0
#PR_WT<-as.numeric(Andesite_CHP$"PR(WT%)")
#PR_WT[is.na(PR_WT)]<-0
PR_PPM<-as.numeric(Andesite_CHP$"PR(PPM)")
PR_PPM[is.na(PR_PPM)]<-0

#W Wolframio
#WO3_WT<-as.numeric(Andesite_CHP$"WO3(WT%)")
#WO3_WT[is.na(WO3_WT)]<-0
#W_WT<-as.numeric(Andesite_CHP$"W(WT%)")
#W_WT[is.na(W_WT)]<-0
W_PPM<-as.numeric(Andesite_CHP$"W(PPM)")
W_PPM[is.na(W_PPM)]<-0

#Fe Hierro
#FE2O3T_WT<-as.numeric(Andesite_CHP$"FE2O3T(WT%)")
#FE2O3T_WT[is.na(FE2O3T_WT)]<-0
FE2O3_WT<-as.numeric(Andesite_CHP$"FE2O3(WT%)")
FE2O3_WT[is.na(FE2O3_WT)]<-0
FEOT_WT<-as.numeric(Andesite_CHP$"FEOT(WT%)")
FEOT_WT[is.na(FEOT_WT)]<-0
FEO_WT<-as.numeric(Andesite_CHP$"FEO(WT%)")
FEO_WT[is.na(FEO_WT)]<-0
#FE_WT<-as.numeric(Andesite_CHP$"FE(WT%)")
#FE_WT[is.na(FE_WT)]<-0
FE_PPM<-as.numeric(Andesite_CHP$"FE(PPM)")
FE_PPM[is.na(FE_PPM)]<-0

#Ca Calcio
CAO_WT<-as.numeric(Andesite_CHP$"CAO(WT%)")
CAO_WT[is.na(CAO_WT)]<-0
CA_PPM<-as.numeric(Andesite_CHP$"CA(PPM)")
CA_PPM[is.na(CA_PPM)]<-0
#CA_WT<-as.numeric(Andesite_CHP$"CA(WT%)")
#CA_WT[is.na(CA_WT)]<-0

#Mg Magnesio
MGO_WT<-as.numeric(Andesite_CHP$"MGO(WT%)")
MGO_WT[is.na(MGO_WT)]<-0
#MG_WT<-as.numeric(Andesite_CHP$"MG(WT%)")
#MG_WT[is.na(MG_WT)]<-0
MG_PPM<-as.numeric(Andesite_CHP$"MG(PPM)")
MG_PPM[is.na(MG_PPM)]<-0

#Mn Manganeso
MNO_WT<-as.numeric(Andesite_CHP$"MNO(WT%)")
MNO_WT[is.na(MNO_WT)]<-0
#MN_WT<-as.numeric(Andesite_CHP$"MN(WT%)")
#MN_WT[is.na(MN_WT)]<-0
MN_PPM<-as.numeric(Andesite_CHP$"MN(PPM)")
MN_PPM[is.na(MN_PPM)]<-0

#Ba Bario
#BAO_WT<-as.numeric(Andesite_CHP$"BAO(WT%)")
#BAO_WT[is.na(BAO_WT)]<-0
BA_PPM<-as.numeric(Andesite_CHP$"BA(PPM)")
BA_PPM[is.na(BA_PPM)]<-0

#Sr Estroncio
#SRO_WT<-as.numeric(Andesite_CHP$"SRO(WT%)")
#SRO_WT[is.na(SRO_WT)]<-0
SR_PPM<-as.numeric(Andesite_CHP$"SR(PPM)")
SR_PPM[is.na(SR_PPM)]<-0

#Pb Plomo
#PBO_WT<-as.numeric(Andesite_CHP$"PBO(WT%)")
#PBO_WT[is.na(PBO_WT)]<-0
#PB_WT<-as.numeric(Andesite_CHP$"PB(WT%)")
#PB_WT[is.na(PB_WT)]<-0
PB_PPM<-as.numeric(Andesite_CHP$"PB(PPM)")
PB_PPM[is.na(PB_PPM)]<-0
#PB_PPB<-as.numeric(Andesite_CHP$"PB(PPB)")
#PB_PPB[is.na(PB_PPB)]<-0

#Sn Estaño
#SN_WT<-as.numeric(Andesite_CHP$"SN(WT%)")
#SN_WT[is.na(SN_WT)]<-0
#SNO2_WT<-as.numeric(Andesite_CHP$"SNO2(WT%)")
#SNO2_WT[is.na(SNO2_WT)]<-0
SN_PPM<-as.numeric(Andesite_CHP$"SN(PPM)")
SN_PPM[is.na(SN_PPM)]<-0

#Ni Niquel
NIO_WT<-as.numeric(Andesite_CHP$"NIO(WT%)")
NIO_WT[is.na(NIO_WT)]<-0
#NI_WT<-as.numeric(Andesite_CHP$"NI(WT%)")
#NI_WT[is.na(NI_WT)]<-0
NI_PPM<-as.numeric(Andesite_CHP$"NI(PPM)")
NI_PPM[is.na(NI_PPM)]<-0

#Zn Zinc
#ZNO_WT<-as.numeric(Andesite_CHP$"ZNO(WT%)")
#ZNO_WT[is.na(ZNO_WT)]<-0
#ZN_WT<-as.numeric(Andesite_CHP$"ZN(WT%)")
#ZN_WT[is.na(ZN_WT)]<-0
ZN_PPM<-as.numeric(Andesite_CHP$"ZN(PPM)")
ZN_PPM[is.na(ZN_PPM)]<-0

#Co Cobalto
#COO_WT<-as.numeric(Andesite_CHP$"COO(WT%)")
#COO_WT[is.na(COO_WT)]<-0
#CO_WT<-as.numeric(Andesite_CHP$"CO(WT%)")
#CO_WT[is.na(CO_WT)]<-0
CO_PPM<-as.numeric(Andesite_CHP$"CO(PPM)")
CO_PPM[is.na(CO_PPM)]<-0
#CO_PPB<-as.numeric(Andesite_CHP$"CO(PPB)")
#CO_PPB[is.na(CO_PPB)]<-0

#Cs Cesio
#CS2O_WT<-as.numeric(Andesite_CHP$"CS2O(WT%)")
#CS2O_WT[is.na(CS2O_WT)]<-0
CS_PPM<-as.numeric(Andesite_CHP$"CS(PPM)")
CS_PPM[is.na(CS_PPM)]<-0

#Rb Rubidio
#RB2O_WT<-as.numeric(Andesite_CHP$"RB2O(WT%)")
#RB2O_WT[is.na(RB2O_WT)]<-0
RB_PPM<-as.numeric(Andesite_CHP$"RB(PPM)")
RB_PPM[is.na(RB_PPM)]<-0

#K Potasio
K2O_WT<-as.numeric(Andesite_CHP$"K2O(WT%)")
K2O_WT[is.na(K2O_WT)]<-0
K_PPM<-as.numeric(Andesite_CHP$"K(PPM)")
K_PPM[is.na(K_PPM)]<-0
#K_WT<-as.numeric(Andesite_CHP$"K(WT%)")
#K_WT[is.na(K_WT)]<-0

#Na Sodio
SODIO2O_WT<-as.numeric(Andesite_CHP$"NA2O(WT%)")
SODIO2O_WT[is.na(SODIO2O_WT)]<-0
#SODIO_WT<-as.numeric(Andesite_CHP$"NA(WT%)")
#SODIO_WT[is.na(SODIO_WT)]<-0
SODIO_PPM<-as.numeric(Andesite_CHP$"NA(PPM)")
SODIO_PPM[is.na(SODIO_PPM)]<-0

#Li Litio
#LI2O_WT<-as.numeric(Andesite_CHP$"LI2O(WT%)")
#LI2O_WT[is.na(LI2O_WT)]<-0
#LI_WT<-as.numeric(Andesite_CHP$"LI(WT%)")
#LI_WT[is.na(LI_WT)]<-0
LI_PPM<-as.numeric(Andesite_CHP$"LI(PPM)")
LI_PPM[is.na(LI_PPM)]<-0

#P Fósforo
P2O5_WT<-as.numeric(Andesite_CHP$"P2O5(WT%)")
P2O5_WT[is.na(P2O5_WT)]<-0
P_PPM<-as.numeric(Andesite_CHP$"P(PPM)")
P_PPM[is.na(P_PPM)]<-0
#P_WT<-as.numeric(Andesite_CHP$"P(WT%)")
#P_WT[is.na(P_WT)]<-0

#AGUA?
#H2O_WT<-as.numeric(Andesite_CHP$"H2O(WT%)")
#H2O_WT[is.na(H2O_WT)]<-0
#H2OP_WT<-as.numeric(Andesite_CHP$"H2OP(WT%)")
#H2OP_WT[is.na(H2OP_WT)]<-0
#H2OM_WT<-as.numeric(Andesite_CHP$"H2OM(WT%)")
#H2OM_WT[is.na(H2OM_WT)]<-0

#C Carbono
CO2_WT<-as.numeric(Andesite_CHP$"CO2(WT%)")
CO2_WT[is.na(CO2_WT)]<-0
CH4_WT<-as.numeric(Andesite_CHP$"CH4(WT%)")
CH4_WT[is.na(CH4_WT)]<-0


#F Flúor
F_WT<-as.numeric(Andesite_CHP$"F(WT%)")
F_WT[is.na(F_WT)]<-0
F_PPM<-as.numeric(Andesite_CHP$"F(PPM)")
F_PPM[is.na(F_PPM)]<-0
#F2O_WT<-as.numeric(Andesite_CHP$"F2O(WT%)")
#F2O_WT[is.na(F2O_WT)]<-0

#Cl Cloro
CL_WT<-as.numeric(Andesite_CHP$"CL(WT%)")
CL_WT[is.na(CL_WT)]<-0
CL_PPM<-as.numeric(Andesite_CHP$"CL(PPM)")
CL_PPM[is.na(CL_PPM)]<-0
#CL2O_WT<-as.numeric(Andesite_CHP$"CL2O(WT%)")
#CL2O_WT[is.na(CL2O_WT)]<-0

#S Azufre
SO3_WT<-as.numeric(Andesite_CHP$"SO3(WT%)")
SO3_WT[is.na(SO3_WT)]<-0
S_WT<-as.numeric(Andesite_CHP$"S(WT%)")
S_WT[is.na(S_WT)]<-0
S_PPM<-as.numeric(Andesite_CHP$"S(PPM)")
S_PPM[is.na(S_PPM)]<-0
#SO3_PPM<-as.numeric(Andesite_CHP$"SO3(PPM)")
#SO3_PPM[is.na(SO3_PPM)]<-0
#H2S_WT<-as.numeric(Andesite_CHP$"H2S(WT%)")
#H2S_WT[is.na(H2S_WT)]<-0

#LOI pérdida por calcinación
LOI_WT<-as.numeric(Andesite_CHP$"LOI(WT%)")
LOI_WT[is.na(LOI_WT)]<-0

#O
O_WT<-as.numeric(Andesite_CHP$"O(WT%)")
O_WT[is.na(O_WT)]<-0
O2_WT<-as.numeric(Andesite_CHP$"O(WT%)")
O2_WT[is.na(O_WT)]<-0

#Be Berilio
BE_PPM<-as.numeric(Andesite_CHP$"BE(PPM)")
BE_PPM[is.na(BE_PPM)]<-0

#B Boro
B_PPM<-as.numeric(Andesite_CHP$"B(PPM)")
B_PPM[is.na(B_PPM)]<-0

#N Nitrogeno
#N_PPM<-as.numeric(Andesite_CHP$"N(PPM)")
#N_PPM[is.na(N_PPM)]<-0

#SC 
SC_PPM<-as.numeric(Andesite_CHP$"SC(PPM)")
SC_PPM[is.na(SC_PPM)]<-0

#Cu Cobre
CU_PPM<-as.numeric(Andesite_CHP$"CU(PPM)")
CU_PPM[is.na(CU_PPM)]<-0

#Ga Galio
GA_PPM<-as.numeric(Andesite_CHP$"GA(PPM)")
GA_PPM[is.na(GA_PPM)]<-0

#Ge Germanio
GE_PPM<-as.numeric(Andesite_CHP$"GE(PPM)")
GE_PPM[is.na(GE_PPM)]<-0

#As Arsénico
#AS_WT<-as.numeric(Andesite_CHP$"AS(WT%)")
#AS_WT[is.na(AS_WT)]<-0
AS_PPM<-as.numeric(Andesite_CHP$"AS(PPM)")
AS_PPM[is.na(AS_PPM)]<-0
#AS_PPB<-as.numeric(Andesite_CHP$"AS(PPB)")
#AS_PPB[is.na(AS_PPB)]<-0

#Se Selenio
#SE_WT<-as.numeric(Andesite_CHP$"SE(WT%)")
#SE_WT[is.na(SE_WT)]<-0
#SE_PPB<-as.numeric(Andesite_CHP$"SE(PPB)")
#SE_PPB[is.na(SE_PPB)]<-0
#SE_PPM<-as.numeric(Andesite_CHP$"SE(PPM)")
#SE_PPM[is.na(SE_PPM)]<-0

#Br
#BR_PPM<-as.numeric(Andesite_CHP$"BR(PPM)")
#BR_PPM[is.na(BR_PPM)]<-0

#Mo Molibdeno
#MO_WT<-as.numeric(Andesite_CHP$"MO(WT%)")
#MO_WT[is.na(MO_WT)]<-0
MO_PPM<-as.numeric(Andesite_CHP$"MO(PPM)")
MO_PPM[is.na(MO_PPM)]<-0

#Ag Plata
#AG_WT<-as.numeric(Andesite_CHP$"AG(WT%)")
#AG_WT[is.na(AG_WT)]<-0
AG_PPM<-as.numeric(Andesite_CHP$"AG(PPM)")
AG_PPM[is.na(AG_PPM)]<-0

#Cd Cadmio
#CD_WT<-as.numeric(Andesite_CHP$"CD(WT%)")
#CD_WT[is.na(CD_WT)]<-0
CD_PPM<-as.numeric(Andesite_CHP$"CD(PPM)")
CD_PPM[is.na(CD_PPM)]<-0

#In Indio
#IN_PPM<-as.numeric(Andesite_CHP$"IN(PPM)")
#IN_PPM[is.na(IN_PPM)]<-0

#Sb Antimonio
#SB_WT<-as.numeric(Andesite_CHP$"SB(WT%)")
#SB_WT[is.na(SB_WT)]<-0
SB_PPM<-as.numeric(Andesite_CHP$"SB(PPM)")
SB_PPM[is.na(SB_PPM)]<-0
#SB_PPB<-as.numeric(Andesite_CHP$"SB(PPB)")
#SB_PPB[is.na(SB_PPB)]<-0

#Te Telurio
#TE_WT<-as.numeric(Andesite_CHP$"TE(WT%)")
#TE_WT[is.na(TE_WT)]<-0
#TE_PPM<-as.numeric(Andesite_CHP$"TE(PPM)")
#TE_PPM[is.na(TE_PPM)]<-0

#Tb
TB_PPM<-as.numeric(Andesite_CHP$"TB(PPM)")
TB_PPM[is.na(TB_PPM)]<-0

#Ho
HO_PPM<-as.numeric(Andesite_CHP$"HO(PPM)")
HO_PPM[is.na(HO_PPM)]<-0

#Er
ER_PPM<-as.numeric(Andesite_CHP$"ER(PPM)")
ER_PPM[is.na(ER_PPM)]<-0

#Tm
TM_PPM<-as.numeric(Andesite_CHP$"TM(PPM)")
TM_PPM[is.na(TM_PPM)]<-0

#Lu
LU_PPM<-as.numeric(Andesite_CHP$"LU(PPM)")
LU_PPM[is.na(LU_PPM)]<-0

#Au Oro
AU_PPM<-as.numeric(Andesite_CHP$"AU(PPM)")
AU_PPM[is.na(AU_PPM)]<-0

#Hg Mercurio
#HG_WT<-as.numeric(Andesite_CHP$"HG(WT%)")
#HG_WT[is.na(HG_WT)]<-0
#HG_PPM<-as.numeric(Andesite_CHP$"HG(PPM)")
#HG_PPM[is.na(HG_PPM)]<-0

#TL
TL_PPM<-as.numeric(Andesite_CHP$"TL(PPM)")
TL_PPM[is.na(TL_PPM)]<-0

#Bi Bismuto
#BI_WT<-as.numeric(Andesite_CHP$"BI(WT%)")
#BI_WT[is.na(BI_WT)]<-0
BI_PPM<-as.numeric(Andesite_CHP$"BI(PPM)")
BI_PPM[is.na(BI_PPM)]<-0

#Th Torio
TH_PPM<-as.numeric(Andesite_CHP$"TH(PPM)")
TH_PPM[is.na(TH_PPM)]<-0
#TH_PPB<-as.numeric(Andesite_CHP$"TH(PPB)")
#TH_PPB[is.na(TH_PPB)]<-0

#___S U M A S__E N T R E__P P M__+__P P B__+__W T_____#
S<-10000*S_WT+S_PPM+10000*0.400496108074621*SO3_WT #S en ppm
SI<-10000*0.467434921*SIO2_WT #Si en ppm
TI<-10000*0.599342898*TIO2_WT+TI_PPM #Ti en ppm
AL<-10000*0.529250693*AL2O3_WT+AL_PPM #Al en ppm
CR<-10000*0.684202423*CR2O3_WT+CR_PPM #Cr en ppm
LA<-LA_PPM #La en ppm
CE<-CE_PPM #Ce en ppm
ND<-ND_PPM #Nd en ppm
V<-V_PPM #V en ppm
FE<-10000*0.72538591*FEOT_WT+10000*0.777304842*FEO_WT+FE_PPM+10000*0.699425505453753*FE2O3_WT #Fe en ppm FeOT - FeO1.3214
CA<-10000*0.714690767*CAO_WT+CA_PPM #Ca en ppm
MG<-10000*0.603035897*MGO_WT+MG_PPM #Mg en ppm
MN<-10000*0.774457635*MNO_WT+MN_PPM #Mn en ppm
B<-B_PPM #B en ppm
BA<-BA_PPM #Ba en ppm
BE<-BE_PPM #Be en ppm
SR<-SR_PPM #Sr en ppm
PB<-PB_PPM #Pb en ppm
ZN<-ZN_PPM #Zn en ppm
CO<-CO_PPM #Co en ppm
NI<-10000*NIO_WT*0.785797292+NI_PPM #Ni en ppm
CU<-CU_PPM #Cu en ppm
CD<-CD_PPM  #Cd en ppm
AS<-AS_PPM  #As en ppm
K<-10000*0.830147777*K2O_WT+K_PPM #K en ppm
SODIO<-10000*0.741857476*SODIO2O_WT+SODIO_PPM #Na en ppm
P<-10000*0.43642066*P2O5_WT+P_PPM #P en ppm
C<-10000*0.27291153*CO2_WT+10000*0.748689402392425*CH4_WT #C en ppm
F<-10000*F_WT+F_PPM #F en ppm 
CL<-10000*CL_WT+CL_PPM #Cl en ppm
#SE<-SE_PPM #Se en ppm
#TE<-TE_PPM #Te en ppm
LOI<-10000*LOI_WT #LOI en ppm
CS<-CS_PPM #Cs en ppm
RB<-RB_PPM #Rb en ppm
NB<-NB_PPM #Nb en ppm
TA<-TA_PPM #Ta en ppm
SB<-SB_PPM #Sb en ppm
SN<-SN_PPM #Sn en ppm
AG<-AG_PPM #Ag en ppm
#HG<-HG_PPM #Hg en ppm
#OS<-10000*OS_WT+OS_PPM+OS_PPB/1000+OS_PPT/1000000 #Os en ppm
#RE<-10000*RE_WT+RE_PPM+RE_PPT/1000000 #Re en ppm
#IR<-10000*IR_WT+IR_PPM+IR_PPB/1000 #Ir en ppm
#RU<-10000*RU_WT+RU_PPM+RU_PPB/1000 #Ru en ppm
#PT<-10000*PT_WT+PT_PPM+PT_PPB/1000+PT_AT #Pt en ppm
#PD<-10000*PD_WT+PD_AT #Pd en ppm
#RH<-10000*RH_WT+RH_PPM+RH_PPB/1000 #Rd en ppm
MO<-MO_PPM #Mo en ppm
BI<-BI_PPM #Bi en ppm
#BR<-BR_PPM #Br en ppm
GA<-GA_PPM #Ga en ppm
GD<-GD_PPM #Gd en ppm
GE<-GE_PPM #Ge en ppm
Y<-Y_PPM #Y en ppm
ZR<-ZR_PPM #Zr en ppm
#IN<-IN_PPM #In en ppm
SM<-SM_PPM #Sm en ppm
HF<-HF_PPM #Hf en ppm
W<-W_PPM #W en ppm
TL<-TL_PPM #Tl en ppm
AU<-AU_PPM #Au en ppm
TH<-TH_PPM #Th en ppm
U<-U_PPM #U en ppm
DY<-DY_PPM #Dy en ppm
ER<-ER_PPM #Er en ppm
EU<-EU_PPM #Eu en ppm
HO<-HO_PPM #Ho en ppm
#N<-N_PPM #N en ppm
PR<-PR_PPM #Pr en ppm
SC<-SC_PPM #Sc en ppm
TB<-TB_PPM
TM<-TM_PPM
YB<-YB_PPM #Yb en ppm

#I N G R E S O  A  T A B L A
Andesite_CHP1$S<-S
Andesite_CHP1$Si<-SI
Andesite_CHP1$Ti<-TI
Andesite_CHP1$Al<-AL
Andesite_CHP1$Cr<-CR
Andesite_CHP1$La<-LA
Andesite_CHP1$Ce<-CE
Andesite_CHP1$Nd<-ND
Andesite_CHP1$V<-V
Andesite_CHP1$Fe<-FE
Andesite_CHP1$Ca<-CA
Andesite_CHP1$Mg<-MG
Andesite_CHP1$Mn<-MN
Andesite_CHP1$B<-B
Andesite_CHP1$Ba<-BA
Andesite_CHP1$Be<-BE
Andesite_CHP1$Sr<-SR
Andesite_CHP1$Pb<-PB
Andesite_CHP1$Zn<-ZN
Andesite_CHP1$Co<-CO
Andesite_CHP1$Ni<-NI
Andesite_CHP1$Cu<-CU
Andesite_CHP1$Cd<-CD
Andesite_CHP1$As<-AS
Andesite_CHP1$K<-K
Andesite_CHP1$Sodio<-SODIO
Andesite_CHP1$P<-P
Andesite_CHP1$C<-C
Andesite_CHP1$F<-F
Andesite_CHP1$Cl<-CL
#Andesite_CHP1$Se<-SE
#Andesite_CHP1$Te<-TE
Andesite_CHP1$LOI<-LOI
Andesite_CHP1$Cs<-CS
Andesite_CHP1$Rb<-RB
Andesite_CHP1$Nb<-NB
Andesite_CHP1$Ta<-TA
Andesite_CHP1$Sb<-SB
Andesite_CHP1$Sn<-SN
Andesite_CHP1$Ag<-AG
#Andesite_CHP1$Hg<-HG
Andesite_CHP1$Mo<-MO
Andesite_CHP1$Bi<-BI
#Andesite_CHP1$Br<-BR
Andesite_CHP1$Ga<-GA
Andesite_CHP1$Gd<-GD
Andesite_CHP1$Ge<-GE
Andesite_CHP1$Y<-Y
Andesite_CHP1$Zr<-ZR
#Andesite_CHP1$In<-IN
Andesite_CHP1$Sm<-SM
Andesite_CHP1$Hf<-HF
Andesite_CHP1$W<-W
Andesite_CHP1$Tl<-TL
Andesite_CHP1$Au<-AU
Andesite_CHP1$Th<-TH
Andesite_CHP1$U<-U
Andesite_CHP1$Dy<-DY
Andesite_CHP1$Er<-ER
Andesite_CHP1$Eu<-EU
Andesite_CHP1$Ho<-HO
#Andesite_CHP1$N<-N
Andesite_CHP1$Pr<-PR
Andesite_CHP1$Sc<-SC
Andesite_CHP1$Tb<-TB
Andesite_CHP1$Tm<-TM
Andesite_CHP1$Yb<-YB

#_____SEÑAL_ADAKITICA?____#

#Sr estroncio
hist(SR_PPM)
#qqnorm(log10(SR_PPM))

#Y ytrio
hist(Y_PPM)
#qqnorm(log10(Y_PPM))
SRY <- (log10(SR_PPM)) / (log10(Y_PPM))
log_Y <- log10(Y_PPM)
plot(log_Y, SRY, main="Relationship between Sr and Y", xlab="Y (ppm)", ylab="Sr/Y")

#####
#Correlacion de Pearson
library("corrplot")
cor.mat <- round(cor(Andesite_CHP1[,c(9:69)]),2)
corrplot(cor.mat, type="upper", order="original", tl.col="black", tl.srt=45)

Andesite_CHP.pca <- prcomp(Andesite_CHP1[,c(9:69)], center = TRUE, scale. = TRUE )
plot(Andesite_CHP.pca, choix = "varcor")
Andesite_CHP.pca
summary(Andesite_CHP.pca)

library("FactoMineR")
Andesite_CHP.pca <- PCA(Andesite_CHP1[,c(9:69)]) 


library("factoextra")
 

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
plot(hclust(dist(as.matrix(Andesite_CHP1[,c(9:69)]))))
# Compute PCA with ncp = 6
res.pca <- PCA(Andesite_CHP1[,c(9:69)], ncp = 6, graph = FALSE)
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

### Buscar muestras
Andesite_CHP1[392,]

tres <- data.frame(t(Andesite_CHP1[392,]))
milcerocuatroocho <- data.frame(t(Andesite_CHP1[1048,]))
unocincoseiscero <- data.frame(t(Andesite_CHP1[1560,]))
