#This script was written by Jacob B. Landis and Elizabeth W. McCarthy to investigate the evolution of flavonoid biosynthetic pathway (FBP) genes in 
#Nicotiana section Repandae allotetraploids and their diploid progenitors and was included in the manuscript entitled ‘Differential expression of 
#flavonoid biosynthetic pathway genes drives the production of transgressive pigments in Nicotiana section Repandae allotetraploids’ submitted to 
#the American Journal of Botany in 2025.

library(ggplot2)
library(viridis)
setwd("/Users/elizabeth.mccarth02/Dropbox/Repandae_subgenome_dominance/FBPgenes_May2024")


#Figure 4 and Appendix S6
#violin plots

#all DE genes with logFC>|2| from 60% dev
read.csv("all_logFC_adjusted_60_6-1-24.csv")->data
data<-data.frame(data[,1:9]) 
data$comp<-as.factor(data$comp)
attach(data)

#all DE genes with logFC>|2| from 85% dev
read.csv("all_logFC_adjusted_85_6-1-24.csv")->data1
data1<-data.frame(data1[,1:9]) 
data1$comp<-as.factor(data1$comp)
attach(data1)

#all DE genes with logFC>|2| from 95% dev
read.csv("all_logFC_adjusted_95_6-1-24.csv")->data2
data2<-data.frame(data2[,1:9]) 
data2$comp<-as.factor(data2$comp)
attach(data2)



#anth DE genes with logFC>|2| from 60% dev, added column with gene homeolog name
read.csv("anth_logFC_adjusted_60_6-3-24.csv")->data3
data3<-data.frame(data3[,1:10]) 
data3$comp<-as.factor(data3$comp)
data3$Gene<-as.factor(data3$Gene)
attach(data3)

#anth DE genes with logFC>|2| from 85% dev, added column with gene homeolog name
read.csv("anth_logFC_adjusted_85_6-3-24.csv")->data4
data4<-data.frame(data4[,1:10]) 
data4$comp<-as.factor(data4$comp)
data4$Gene<-as.factor(data4$Gene)
attach(data4)

#anth DE genes with logFC>|2| from 95% dev, added column with gene homeolog name
read.csv("anth_logFC_adjusted_95_6-3-24.csv")->data5
data5<-data.frame(data5[,1:10]) 
data5$comp<-as.factor(data5$comp)
data5$Gene<-as.factor(data5$Gene)
attach(data5)



library(cowplot)
#plot in a grid

stage60plot<-ggplot(data, aes(x=comp, y=logFC)) + geom_violin(trim=TRUE) + theme_classic() + geom_jitter(data=data3, aes(x=comp, y=logFC, color=Gene, shape=Gene, size=Gene, alpha=Gene, stroke=1), position=position_jitter(0.2)) + 
  scale_color_manual(values=c("#FDE725FF", "#7AD151FF", "#22A884FF", "#2A788EFF", "#000004FF", "#6A00A8FF", "#B12A90FF", "#E16462FF", "#FDE725FF", "#7AD151FF", "#22A884FF", "#2A788EFF", "#0b5ebb", "#000004FF", "#6A00A8FF", "#B12A90FF", "#E16462FF"), breaks=c("sCHS", "sCHI", "sF3H", "sF3pH", "sFLS", "sDFR", "sANS", "sAN1", "oCHS", "oCHI", "oF3H", "oF3pH", "oF3p5pH", "oFLS", "oDFR", "oANS", "oAN1")) + 
  scale_shape_manual(values=c(15, 1, 18, 2, 3, 5, 17, 0, 15, 1, 18, 2, 16, 3, 5, 17, 0), breaks=c("sCHS", "sCHI", "sF3H", "sF3pH", "sFLS", "sDFR", "sANS", "sAN1", "oCHS", "oCHI", "oF3H", "oF3pH", "oF3p5pH", "oFLS", "oDFR", "oANS", "oAN1")) + 
  scale_size_manual(values=c(2,2,3.5,2,2,2,2,2,4,4,6,4,4,4,4,4,4), breaks=c("sCHS", "sCHI", "sF3H", "sF3pH", "sFLS", "sDFR", "sANS", "sAN1", "oCHS", "oCHI", "oF3H", "oF3pH", "oF3p5pH", "oFLS", "oDFR", "oANS", "oAN1")) +
  scale_alpha_manual(values=c(0.9,0.9,0.9,0.9,0.9,0.8,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.8,0.9,0.9), breaks=c("sCHS", "sCHI", "sF3H", "sF3pH", "sFLS", "sDFR", "sANS", "sAN1", "oCHS", "oCHI", "oF3H", "oF3pH", "oF3p5pH", "oFLS", "oDFR", "oANS", "oAN1")) + geom_hline(yintercept=c(-2, 0, 2), linetype=c("dashed", "solid", "dashed"), color="dark gray") +
  theme(axis.text.x=element_text(angle=-45, vjust = 0.1, hjust=0.1), legend.box.spacing=unit(0.3, "in"), axis.text=element_text(size=11), axis.title=element_text(size=12), legend.text=element_text(size=10, face="italic"), plot.title=element_text(hjust=0.5)) + labs(title="60% of anthesis", x="Comparisons", y="Log2 fold change") +
  scale_x_discrete(labels=c(" sylv vs obtus", " nudi vs sylv", " repa vs sylv", " stock vs sylv", " nudi vs obtus", " repa vs obtus", " stock vs obtus", " nudi vs repa", " nudi vs stock", " repa vs stock"))

stage85plot<-ggplot(data1, aes(x=comp, y=logFC)) + geom_violin(trim=TRUE) + theme_classic() + geom_jitter(data=data4, aes(x=comp, y=logFC, color=Gene, shape=Gene, size=Gene, alpha=Gene, stroke=1), position=position_jitter(0.2)) + 
  scale_color_manual(values=c("#FDE725FF", "#7AD151FF", "#22A884FF", "#2A788EFF", "#000004FF", "#6A00A8FF", "#B12A90FF", "#E16462FF", "#FDE725FF", "#7AD151FF", "#22A884FF", "#2A788EFF", "#0b5ebb", "#000004FF", "#6A00A8FF", "#B12A90FF", "#E16462FF", "#FCA636FF"), breaks=c("sCHS", "sCHI", "sF3H", "sF3pH", "sFLS", "sDFR", "sANS", "sAN1", "oCHS", "oCHI", "oF3H", "oF3pH", "oF3p5pH", "oFLS", "oDFR", "oANS", "oAN1", "oAN2")) + 
  scale_shape_manual(values=c(15, 1, 18, 2, 3, 5, 17, 0, 15, 1, 18, 2, 16, 3, 5, 17, 0, 6), breaks=c("sCHS", "sCHI", "sF3H", "sF3pH", "sFLS", "sDFR", "sANS", "sAN1", "oCHS", "oCHI", "oF3H", "oF3pH", "oF3p5pH", "oFLS", "oDFR", "oANS", "oAN1", "oAN2")) + 
  scale_size_manual(values=c(2,2,3.5,2,2,2,2,2,4,4,6,4,4,4,4,4,4,4), breaks=c("sCHS", "sCHI", "sF3H", "sF3pH", "sFLS", "sDFR", "sANS", "sAN1", "oCHS", "oCHI", "oF3H", "oF3pH", "oF3p5pH", "oFLS", "oDFR", "oANS", "oAN1", "oAN2")) +
  scale_alpha_manual(values=c(0.9,0.9,0.9,0.9,0.9,0.8,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.8,0.9,0.9,0.9), breaks=c("sCHS", "sCHI", "sF3H", "sF3pH", "sFLS", "sDFR", "sANS", "sAN1", "oCHS", "oCHI", "oF3H", "oF3pH", "oF3p5pH", "oFLS", "oDFR", "oANS", "oAN1", "oAN2")) + geom_hline(yintercept=c(-2, 0, 2), linetype=c("dashed", "solid", "dashed"), color="dark gray") +
  theme(axis.text.x=element_text(angle=-45, vjust = 0.1, hjust=0.1), legend.box.spacing=unit(0.3, "in"), axis.text=element_text(size=11), axis.title=element_text(size=12), legend.text=element_text(size=10, face="italic"), plot.title=element_text(hjust=0.5)) + labs(title="85% of anthesis", x="Comparisons", y="Log2 fold change") +
  scale_x_discrete(labels=c(" sylv vs obtus", " nudi vs sylv", " repa vs sylv", " stock vs sylv", " nudi vs obtus", " repa vs obtus", " stock vs obtus", " nudi vs repa", " nudi vs stock", " repa vs stock"))


#plot all plots in a grid with legends
FIG6085<-plot_grid(stage60plot + theme(legend.position="none"), stage85plot + theme(legend.position="none"), 
                   labels=c("A", "B"), nrow=2, ncol=1)

#extract legend from stage 60% plot
legend<-get_legend(stage85plot + theme(legend.box.margin=margin(0,0,0,0)))


#Figure 4

#plot all plots with shared legend at right
pdf(file="violinplot_adjusted_shapes_60_85_plot_grid_5-23-25.pdf", width=11, height=11)
plot_grid(FIG6085, legend, rel_widths=c(3, 0.3))
dev.off()


#Appendix S6

#plot pdf of 95% violin plot
pdf(file="violinplot_adjusted_shapes_95_5-23-25.pdf", width=11, height=5.5)
ggplot(data2, aes(x=comp, y=logFC)) + geom_violin(trim=TRUE) + theme_classic() + geom_jitter(data=data5, aes(x=comp, y=logFC, color=Gene, shape=Gene, size=Gene, alpha=Gene, stroke=1), position=position_jitter(0.2)) + 
  scale_color_manual(values=c("#FDE725FF", "#22A884FF", "#2A788EFF", "#000004FF", "#6A00A8FF", "#B12A90FF", "#E16462FF", "#FDE725FF", "#7AD151FF", "#22A884FF", "#2A788EFF", "#0b5ebb", "#000004FF", "#6A00A8FF", "#B12A90FF", "#E16462FF", "#FCA636FF"), breaks=c("sCHS", "sF3H", "sF3pH", "sFLS", "sDFR", "sANS", "sAN1", "oCHS", "oCHI", "oF3H", "oF3pH", "oF3p5pH", "oFLS", "oDFR", "oANS", "oAN1", "oAN2")) + 
  scale_shape_manual(values=c(15, 18, 2, 3, 5, 17, 0, 15, 1, 18, 2, 16, 3, 5, 17, 0, 6), breaks=c("sCHS", "sF3H", "sF3pH", "sFLS", "sDFR", "sANS", "sAN1", "oCHS", "oCHI", "oF3H", "oF3pH", "oF3p5pH", "oFLS", "oDFR", "oANS", "oAN1", "oAN2")) + 
  scale_size_manual(values=c(2,3.5,2,2,2,2,2,4,4,6,4,4,4,4,4,4,4), breaks=c("sCHS", "sF3H", "sF3pH", "sFLS", "sDFR", "sANS", "sAN1", "oCHS", "oCHI", "oF3H", "oF3pH", "oF3p5pH", "oFLS", "oDFR", "oANS", "oAN1", "oAN2")) +
  scale_alpha_manual(values=c(0.9,0.9,0.9,0.9,0.8,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.8,0.9,0.9,0.9), breaks=c("sCHS", "sF3H", "sF3pH", "sFLS", "sDFR", "sANS", "sAN1", "oCHS", "oCHI", "oF3H", "oF3pH", "oF3p5pH", "oFLS", "oDFR", "oANS", "oAN1", "oAN2")) + geom_hline(yintercept=c(-2, 0, 2), linetype=c("dashed", "solid", "dashed"), color="dark gray") +
  theme(axis.text.x=element_text(angle=-45, vjust = 0.1, hjust=0.1), legend.box.spacing=unit(0.3, "in"), axis.text=element_text(size=11), axis.title=element_text(size=12), legend.text=element_text(size=10, face="italic"), plot.title=element_text(hjust=0.5)) + labs(title="95% of anthesis", x="Comparisons", y="Log2 fold change") +
  scale_x_discrete(labels=c(" sylv vs obtus", " nudi vs sylv", " repa vs sylv", " stock vs sylv", " nudi vs obtus", " repa vs obtus", " stock vs obtus", " nudi vs repa", " nudi vs stock", " repa vs stock"))
dev.off()




#Figure 5
#TMMsum values for each anth gene

#summed TMM values for both homeologs for AN1 at 60, 85, and 95 for all accessions
read.csv("AN1_TMMsum_adjusted_60_85_95_6-1-24.csv")->AN1
AN1<-data.frame(AN1[,1:4])
AN1$Dev<-as.factor(AN1$Dev)
AN1$Species<-as.factor(AN1$Species)
AN1$Abbrev<-as.factor(AN1$Abbrev)
attach(AN1)

#Mean and median values for summed AN1 TMM values
read.csv("AN1_TMMsum_adjusted_60_85_95_6-1-24.csv")->AN1summary
AN1summary<-data.frame(AN1summary[1:15,5:7]) 
AN1summary$Dev.1<-as.factor(AN1summary$Dev.1)
AN1summary$Species.1<-as.factor(AN1summary$Species.1)
attach(AN1summary)


#summed TMM values for both homeologs for ANS at 60, 85, and 95 for all accessions
read.csv("ANS_TMMsum_adjusted_60_85_95_6-1-24.csv")->ANS
ANS<-data.frame(ANS[,1:4])
ANS$Dev<-as.factor(ANS$Dev)
ANS$Species<-as.factor(ANS$Species)
ANS$Abbrev<-as.factor(ANS$Abbrev)
attach(ANS)

#Mean and median values for summed ANS TMM values
read.csv("ANS_TMMsum_adjusted_60_85_95_6-1-24.csv")->ANSsummary
ANSsummary<-data.frame(ANSsummary[1:15,5:7]) 
ANSsummary$Dev.1<-as.factor(ANSsummary$Dev.1)
ANSsummary$Species.1<-as.factor(ANSsummary$Species.1)
attach(ANSsummary)


#summed TMM values for both homeologs for CHS at 60, 85, and 95 for all accessions
read.csv("CHS_TMMsum_adjusted_60_85_95_6-1-24.csv")->CHS
CHS<-data.frame(CHS[,1:4])
CHS$Dev<-as.factor(CHS$Dev)
CHS$Species<-as.factor(CHS$Species)
CHS$Abbrev<-as.factor(CHS$Abbrev)
attach(CHS)

#Mean and median values for summed CHS (sum of CHS1 and CHS2) TMM values
read.csv("CHS_TMMsum_adjusted_60_85_95_6-1-24.csv")->CHSsummary
CHSsummary<-data.frame(CHSsummary[1:15,5:7]) 
CHSsummary$Dev.1<-as.factor(CHSsummary$Dev.1)
CHSsummary$Species.1<-as.factor(CHSsummary$Species.1)
attach(CHSsummary)


#summed TMM values for both homeologs for CHI at 60, 85, and 95 for all accessions
read.csv("CHI_TMMsum_adjusted_60_85_95_6-1-24.csv")->CHI
CHI<-data.frame(CHI[,1:4])
CHI$Dev<-as.factor(CHI$Dev)
CHI$Species<-as.factor(CHI$Species)
CHI$Abbrev<-as.factor(CHI$Abbrev)
attach(CHI)

#Mean and median values for summed CHI TMM values
read.csv("CHI_TMMsum_adjusted_60_85_95_6-1-24.csv")->CHIsummary
CHIsummary<-data.frame(CHIsummary[1:15,5:7]) 
CHIsummary$Dev.1<-as.factor(CHIsummary$Dev.1)
CHIsummary$Species.1<-as.factor(CHIsummary$Species.1)
attach(CHIsummary)


#summed TMM values for both homeologs for DFR at 60, 85, and 95 for all accessions
read.csv("DFR_TMMsum_adjusted_60_85_95_6-1-24.csv")->DFR
DFR<-data.frame(DFR[,1:4])
DFR$Dev<-as.factor(DFR$Dev)
DFR$Species<-as.factor(DFR$Species)
DFR$Abbrev<-as.factor(DFR$Abbrev)
attach(DFR)

#median values for summed TMM values for DFR
read.csv("DFR_TMMsum_adjusted_60_85_95_6-1-24.csv")->DFRsummary
DFRsummary<-data.frame(DFRsummary[1:15,5:7]) 
DFRsummary$Dev.1<-as.factor(DFRsummary$Dev.1)
DFRsummary$Species.1<-as.factor(DFRsummary$Species.1)
attach(DFRsummary)


#summed TMM values for both homeologs for F3H at 60, 85, and 95 for all accessions
read.csv("F3H_TMMsum_adjusted_60_85_95_6-1-24.csv")->F3H
F3H<-data.frame(F3H[,1:4])
F3H$Dev<-as.factor(F3H$Dev)
F3H$Species<-as.factor(F3H$Species)
F3H$Abbrev<-as.factor(F3H$Abbrev)
attach(F3H)

#Mean and median values for summed F3H TMM values
read.csv("F3H_TMMsum_adjusted_60_85_95_6-1-24.csv")->F3Hsummary
F3Hsummary<-data.frame(F3Hsummary[1:15,5:7]) 
F3Hsummary$Dev.1<-as.factor(F3Hsummary$Dev.1)
F3Hsummary$Species.1<-as.factor(F3Hsummary$Species.1)
attach(F3Hsummary)


#summed TMM values for both homeologs for F3'H at 60, 85, and 95 for all accessions
read.csv("F3pH_TMMsum_adjusted_60_85_95_6-1-24.csv")->F3pH
F3pH<-data.frame(F3pH[,1:4])
F3pH$Dev<-as.factor(F3pH$Dev)
F3pH$Species<-as.factor(F3pH$Species)
F3pH$Abbrev<-as.factor(F3pH$Abbrev)
attach(F3pH)

#Mean and median values for summed F3'H TMM values
read.csv("F3pH_TMMsum_adjusted_60_85_95_6-1-24.csv")->F3pHsummary
F3pHsummary<-data.frame(F3pHsummary[1:15,5:7]) 
F3pHsummary$Dev.1<-as.factor(F3pHsummary$Dev.1)
F3pHsummary$Species.1<-as.factor(F3pHsummary$Species.1)
attach(F3pHsummary)


#summed TMM values for both homeologs for F3'5'H at 60, 85, and 95 for all accessions
read.csv("F3p5pH_TMMsum_adjusted_60_85_95_6-1-24.csv")->F3p5pH
F3p5pH<-data.frame(F3p5pH[,1:4])
F3p5pH$Dev<-as.factor(F3p5pH$Dev)
F3p5pH$Species<-as.factor(F3p5pH$Species)
F3p5pH$Abbrev<-as.factor(F3p5pH$Abbrev)
attach(F3p5pH)

#Mean and median values for summed F3'5'H TMM values
read.csv("F3p5pH_TMMsum_adjusted_60_85_95_6-1-24.csv")->F3p5pHsummary
F3p5pHsummary<-data.frame(F3p5pHsummary[1:15,5:7]) 
F3p5pHsummary$Dev.1<-as.factor(F3p5pHsummary$Dev.1)
F3p5pHsummary$Species.1<-as.factor(F3p5pHsummary$Species.1)
attach(F3pHsummary)


#summed TMM values for both homeologs for FLS at 60, 85, and 95 for all accessions
read.csv("FLS_TMMsum_adjusted_60_85_95_6-1-24.csv")->FLS
FLS<-data.frame(FLS[,1:4]) 
FLS$Dev<-as.factor(FLS$Dev)
FLS$Species<-as.factor(FLS$Species)
FLS$Abbrev<-as.factor(FLS$Abbrev)
attach(FLS)

#Mean and median values for summed FLS TMM values
read.csv("FLS_TMMsum_adjusted_60_85_95_6-1-24.csv")->FLSsummary
FLSsummary<-data.frame(FLSsummary[1:15,5:7]) 
FLSsummary$Dev.1<-as.factor(FLSsummary$Dev.1)
FLSsummary$Species.1<-as.factor(FLSsummary$Species.1)
attach(FLSsummary)



#plot all in a grid
library(cowplot)

CHSplot<-ggplot(CHS, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=CHS, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("darkgray", "orange", "cyan", "darkmagenta", "forestgreen"), labels=c("sylv", "nudi", "repa", "stock", "obtus")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6), labels=c("sylv", "nudi", "repa", "stock", "obtus")) + stat_summary(data=CHSsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=CHSsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", linewidth=0.5) +
  labs(x="Developmental stage", y="Transcript accumulation (TMM)") + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

CHIplot<-ggplot(CHI, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=CHI, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("darkgray", "orange", "cyan", "darkmagenta", "forestgreen"), labels=c("sylv", "nudi", "repa", "stock", "obtus")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6), labels=c("sylv", "nudi", "repa", "stock", "obtus")) + stat_summary(data=CHIsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=CHIsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", linewidth=0.5) + ylim(0,800) +
  labs(x="Developmental stage", y="Transcript accumulation (TMM)") + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

F3Hplot<-ggplot(F3H, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=F3H, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("darkgray", "orange", "cyan", "darkmagenta", "forestgreen"), labels=c("sylv", "nudi", "repa", "stock", "obtus")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6), labels=c("sylv", "nudi", "repa", "stock", "obtus")) + stat_summary(data=F3Hsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=F3Hsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", linewidth=0.5) + ylim(0,2020) +
  labs(x="Developmental stage", y="Transcript accumulation (TMM)") + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

F3pHplot<-ggplot(F3pH, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=F3pH, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("darkgray", "orange", "cyan", "darkmagenta", "forestgreen"), labels=c("sylv", "nudi", "repa", "stock", "obtus")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6), labels=c("sylv", "nudi", "repa", "stock", "obtus")) + stat_summary(data=F3pHsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=F3pHsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", linewidth=0.5) +
  labs(x="Developmental stage", y="Transcript accumulation (TMM)") + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

F3p5pHplot<-ggplot(F3p5pH, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=F3p5pH, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("darkgray", "orange", "cyan", "darkmagenta", "forestgreen"), labels=c("sylv", "nudi", "repa", "stock", "obtus")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6), labels=c("sylv", "nudi", "repa", "stock", "obtus")) + stat_summary(data=F3p5pHsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=F3p5pHsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", linewidth=0.5) +
  labs(x="Developmental stage", y="Transcript accumulation (TMM)") + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

FLSplot<-ggplot(FLS, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=FLS, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("darkgray", "orange", "cyan", "darkmagenta", "forestgreen"), labels=c("sylv", "nudi", "repa", "stock", "obtus")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6), labels=c("sylv", "nudi", "repa", "stock", "obtus")) + stat_summary(data=FLSsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=FLSsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", linewidth=0.5) +
  labs(x="Developmental stage", y="Transcript accumulation (TMM)") + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

DFRplot<-ggplot(DFR, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=DFR, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("darkgray", "orange", "cyan", "darkmagenta", "forestgreen"), labels=c("sylv", "nudi", "repa", "stock", "obtus")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6), labels=c("sylv", "nudi", "repa", "stock", "obtus")) + stat_summary(data=DFRsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=DFRsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", linewidth=0.5) +
  labs(x="Developmental stage", y="Transcript accumulation (TMM)") + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

ANSplot<-ggplot(ANS, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=ANS, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("darkgray", "orange", "cyan", "darkmagenta", "forestgreen"), labels=c("sylv", "nudi", "repa", "stock", "obtus")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6), labels=c("sylv", "nudi", "repa", "stock", "obtus")) + stat_summary(data=ANSsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=ANSsummary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", linewidth=0.5) +
  labs(x="Developmental stage", y="Transcript accumulation (TMM)") + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

AN1plot<-ggplot(AN1, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=AN1, aes(x=Dev, y=TMMsum, color=Species, alpha=Species), position=position_jitter(0.1), cex=2) + 
  scale_color_manual(values=c("darkgray", "orange", "cyan", "darkmagenta", "forestgreen"), labels=c("sylv", "nudi", "repa", "stock", "obtus")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6), labels=c("sylv", "nudi", "repa", "stock", "obtus")) + stat_summary(data=AN1summary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), geom="point", size=10, shape='_') +
  geom_line(data=AN1summary, aes(x=Dev.1, y=TMMsum.1, group=Species.1, color=Species.1), linetype="dotted", linewidth=0.5) +
  labs(x="Developmental stage", y="Transcript accumulation (TMM)") + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) +
  theme(axis.title.x=element_text(size=11), axis.title.y=element_text(size=11), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10), legend.title=element_text(size=12), legend.text=element_text(size=11), plot.title = element_text(size=14, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))


#plot all plots in a grid without legends
FIG<-plot_grid(CHSplot + theme(legend.position="none"), CHIplot + theme(legend.position="none"), F3Hplot + theme(legend.position="none"), F3pHplot + theme(legend.position="none"), F3p5pHplot + theme(legend.position="none"), FLSplot + theme(legend.position="none"), DFRplot + theme(legend.position="none"), ANSplot + theme(legend.position="none"), AN1plot + theme(legend.position="none"), labels=c("A", "B", "C", "D", "E", "F", "G", "H", "I"), nrow=3, ncol=3)

#extract legend from FLSDFR plot
legend<-get_legend(DFRplot + theme(legend.box.margin=margin(0,0,0,0)))

#plot all plots with shared legend at right
pdf(file="FBP_gene_TMMsum_adjusted_60_85_95_plot_grid_8-30-25.pdf", width=11, height=11)
plot_grid(FIG, legend, rel_widths=c(3, 0.3))
dev.off()




#Figure 6 and Appendix S7

#plot pigment values against TMMsums that seem to explain them
read.csv("pigments_DFR60_FLS60_F3pH60_6-8-24.csv")->pigmentsadjusted
pigmentsadjusted<-data.frame(pigmentsadjusted[,1:16]) 
pigmentsadjusted$Species<-as.factor(pigmentsadjusted$Species)
attach(pigmentsadjusted)


#plot pigment plots in a grid
library(cowplot)
library(ggnewscale)

#regressions for correlations between TMMsums and pigments at 60% and 85%--run on 1-17-25

#at 60%
delphDFR60 = lm(delph_median~DFR_60, data=pigmentsadjusted)
summary(delphDFR60)

delphF35H60 = lm(delph_median~F3p5pH_60, data=pigmentsadjusted)
summary(delphF35H60)

flavsFLS60 = lm(flav_sum_median~FLS_60, data=pigmentsadjusted)
summary(flavsFLS60)

KQFLSF3pH60 = lm(KQ_median~FLSF3pH_60, data=pigmentsadjusted)
summary(KQFLSF3pH60)

#at 85%
delphDFR85 = lm(delph_median~DFR_85, data=pigmentsadjusted)
summary(delphDFR85)

delphF35H85 = lm(delph_median~F3p5pH_85, data=pigmentsadjusted)
summary(delphF35H85)

flavsFLS85 = lm(flav_sum_median~FLS_85, data=pigmentsadjusted)
summary(flavsFLS85)

KQFLSF3pH85 = lm(KQ_median~FLSF3pH_85, data=pigmentsadjusted)
summary(KQFLSF3pH85)


#add regression line to plots

#Appendix S7
#at 60%
anthsDFR60adjustedplot<-ggplot(pigmentsadjusted, aes(x=DFR_60, y=delph_median)) + theme_classic() + geom_point(aes(x=DFR_60, y=delph_median, color=Species, alpha=Species), pch=16, cex=3) + 
  scale_color_manual(values=c("darkviolet", "lightgray", "darkviolet", "lightgray", "lightgray")) + scale_alpha_manual(values=c(0.8,0.8,0.8,0.8,0.8)) +
  new_scale_color() + geom_point(aes(x=DFR_60, y=delph_median, color=Species, fill=Species), pch=16, cex=1.5) + scale_color_manual(values=c("orange", "forestgreen", "cyan", "darkmagenta", "darkgray")) +
  labs(y="Delphinidin\n(mg/g fresh mass)") + xlim(0,120) + ylim(0,0.025) + geom_abline(intercept=0.0003593, slope=0.0001441, color="gray", linetype="dashed") +
  theme(axis.title.x=element_text(size=10), axis.title.y=element_text(size=10), axis.text.x=element_text(size=9), axis.text.y=element_text(size=9), legend.title=element_text(size=9), legend.text=element_text(size=8))

anthsF3p5pH60adjustedplot<-ggplot(pigmentsadjusted, aes(x=F3p5pH_60, y=delph_median)) + theme_classic() + geom_point(aes(x=F3p5pH_60, y=delph_median, color=Species, alpha=Species), pch=16, cex=3) + 
  scale_color_manual(values=c("darkviolet", "lightgray", "darkviolet", "lightgray", "lightgray")) + scale_alpha_manual(values=c(0.8,0.8,0.8,0.8,0.8)) +
  new_scale_color() + geom_point(aes(x=F3p5pH_60, y=delph_median, color=Species, fill=Species), pch=16, cex=1.5) + scale_color_manual(values=c("orange", "forestgreen", "cyan", "darkmagenta", "darkgray")) +
  labs(y="Delphinidin\n(mg/g fresh mass)") + xlim(0,600) + ylim(0,0.025) + geom_abline(intercept=3.072e-03, slope=2.080e-05, color="gray", linetype="dashed") +
  theme(axis.title.x=element_text(size=10), axis.title.y=element_text(size=10), axis.text.x=element_text(size=9), axis.text.y=element_text(size=9), legend.title=element_text(size=9), legend.text=element_text(size=8))

flavsFLS60adjustedplot<-ggplot(pigmentsadjusted, aes(x=FLS_60, y=flav_sum_median)) + theme_classic() + geom_point(aes(x=FLS_60, y=flav_sum_median, color=Species, alpha=Species), pch=16, cex=3) + 
  scale_color_manual(values=c("gray80", "gray80", "gray20", "gray20", "gray80")) + scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6)) +
  new_scale_color() + geom_point(aes(x=FLS_60, y=flav_sum_median, color=Species, fill=Species), pch=16, cex=1.5) + scale_color_manual(values=c("orange", "forestgreen", "cyan", "darkmagenta", "darkgray")) +
  labs(y="Flavonols\n(mg/g fresh mass)") + xlim(0,600) + ylim(0, 0.25) + geom_abline(intercept=-0.0285791, slope=0.0003625, color="gray", linetype="dashed") +
  theme(axis.title.x=element_text(size=10), axis.title.y=element_text(size=10), axis.text.x=element_text(size=9), axis.text.y=element_text(size=9), legend.title=element_text(size=9), legend.text=element_text(size=8))

KQFLSF3pH60adjustedplot<-ggplot(pigmentsadjusted, aes(x=FLSF3pH_60, y=KQ_median)) + theme_classic() + geom_point(aes(x=FLSF3pH_60, y=KQ_median, color=Species, alpha=Species), pch=16, cex=3) + 
  scale_color_manual(values=c("gray80", "gray20", "gray80", "gray80", "gray80")) + scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6)) +
  new_scale_color() + geom_point(aes(x=FLSF3pH_60, y=KQ_median, color=Species, fill=Species), pch=16, cex=1.5) + scale_color_manual(values=c("orange", "forestgreen", "cyan", "darkmagenta", "darkgray")) +
  labs(y="K:Q\n(mg/g fresh mass)") + geom_hline(yintercept=1, color="darkgray", linetype="solid") + geom_vline(xintercept=1, color="darkgray", linetype="solid") + 
  xlim(0,35) + ylim(0,15) + geom_abline(intercept=1.5047, slope=0.4228, color="gray", linetype="dashed") +
  theme(axis.title.x=element_text(size=10), axis.title.y=element_text(size=10), axis.text.x=element_text(size=9), axis.text.y=element_text(size=9), legend.title=element_text(size=9), legend.text=element_text(size=8))


#plot all plots in a grid
pdf(file="anthsflavs_DFR_FLS_F3pH_60_adjusted_w_regressions_plot_grid_5-27-25.pdf", width=7, height=4.5)
plot_grid(anthsDFR60adjustedplot, anthsF3p5pH60adjustedplot, flavsFLS60adjustedplot, KQFLSF3pH60adjustedplot, labels=c("A", "B", "C", "D"), nrow=2, ncol=2, rel_widths=c(1,1))
dev.off()


#Figure 6
#at 85%
anthsDFR85adjustedplot<-ggplot(pigmentsadjusted, aes(x=DFR_85, y=delph_median)) + theme_classic() + geom_point(aes(x=DFR_85, y=delph_median, color=Species, alpha=Species), pch=16, cex=3) + 
  scale_color_manual(values=c("darkviolet", "lightgray", "darkviolet", "lightgray", "lightgray")) + scale_alpha_manual(values=c(0.8,0.8,0.8,0.8,0.8)) +
  new_scale_color() + geom_point(aes(x=DFR_85, y=delph_median, color=Species, fill=Species), pch=16, cex=1.5) + scale_color_manual(values=c("orange", "forestgreen", "cyan", "darkmagenta", "darkgray")) +
  labs(y="Delphinidin\n(mg/g fresh mass)") + xlim(0,150) + ylim(0,0.025) + geom_abline(intercept=-1.078e-03, slope=1.613e-04, color="gray", linetype="dashed") +
  theme(axis.title.x=element_text(size=10), axis.title.y=element_text(size=10), axis.text.x=element_text(size=9), axis.text.y=element_text(size=9), legend.title=element_text(size=9), legend.text=element_text(size=8))

anthsF3p5pH85adjustedplot<-ggplot(pigmentsadjusted, aes(x=F3p5pH_85, y=delph_median)) + theme_classic() + geom_point(aes(x=F3p5pH_85, y=delph_median, color=Species, alpha=Species), pch=16, cex=3) + 
  scale_color_manual(values=c("darkviolet", "lightgray", "darkviolet", "lightgray", "lightgray")) + scale_alpha_manual(values=c(0.8,0.8,0.8,0.8,0.8)) +
  new_scale_color() + geom_point(aes(x=F3p5pH_85, y=delph_median, color=Species, fill=Species), pch=16, cex=1.5) + scale_color_manual(values=c("orange", "forestgreen", "cyan", "darkmagenta", "darkgray")) +
  labs(y="Delphinidin\n(mg/g fresh mass)") + xlim(0,250) + ylim(0,0.025) + geom_abline(intercept=-2.946e-04, slope=6.832e-05, color="gray", linetype="dashed") +
  theme(axis.title.x=element_text(size=10), axis.title.y=element_text(size=10), axis.text.x=element_text(size=9), axis.text.y=element_text(size=9), legend.title=element_text(size=9), legend.text=element_text(size=8))

flavsFLS85adjustedplot<-ggplot(pigmentsadjusted, aes(x=FLS_85, y=flav_sum_median)) + theme_classic() + geom_point(aes(x=FLS_85, y=flav_sum_median, color=Species, alpha=Species), pch=16, cex=3) + 
  scale_color_manual(values=c("gray80", "gray80", "gray20", "gray20", "gray80")) + scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6)) +
  new_scale_color() + geom_point(aes(x=FLS_85, y=flav_sum_median, color=Species, fill=Species), pch=16, cex=1.5) + scale_color_manual(values=c("orange", "forestgreen", "cyan", "darkmagenta", "darkgray")) +
  labs(y="Flavonols\n(mg/g fresh mass)") + xlim(0,620) + ylim(0, 0.25) + geom_abline(intercept=-0.0319539, slope=0.0003259, color="gray", linetype="dashed") +
  theme(axis.title.x=element_text(size=10), axis.title.y=element_text(size=10), axis.text.x=element_text(size=9), axis.text.y=element_text(size=9), legend.title=element_text(size=9), legend.text=element_text(size=8))

KQFLSF3pH85adjustedplot<-ggplot(pigmentsadjusted, aes(x=FLSF3pH_85, y=KQ_median)) + theme_classic() + geom_point(aes(x=FLSF3pH_85, y=KQ_median, color=Species, alpha=Species), pch=16, cex=3) + 
  scale_color_manual(values=c("gray80", "gray20", "gray80", "gray80", "gray80")) + scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6)) +
  new_scale_color() + geom_point(aes(x=FLSF3pH_85, y=KQ_median, color=Species, fill=Species), pch=16, cex=1.5) + scale_color_manual(values=c("orange", "forestgreen", "cyan", "darkmagenta", "darkgray")) +
  labs(y="K:Q\n(mg/g fresh mass)") + geom_hline(yintercept=1, color="darkgray", linetype="solid") + geom_vline(xintercept=1, color="darkgray", linetype="solid") + 
  xlim(0,85) + ylim(0,15) + geom_abline(intercept=1.57924, slope=0.17187, color="gray", linetype="dashed") +
  theme(axis.title.x=element_text(size=10), axis.title.y=element_text(size=10), axis.text.x=element_text(size=9), axis.text.y=element_text(size=9), legend.title=element_text(size=9), legend.text=element_text(size=8))


#plot all plots in a grid
pdf(file="anthsflavs_DFR_FLS_F3pH_85_adjusted_w_regressions_plot_grid_5-27-25.pdf", width=7, height=4.5)
plot_grid(anthsDFR85adjustedplot, anthsF3p5pH85adjustedplot, flavsFLS85adjustedplot, KQFLSF3pH85adjustedplot, labels=c("A", "B", "C", "D"), nrow=2, ncol=2, rel_widths=c(1,1))
dev.off()




#Figure 7

#DFR, FLS, and F3pH across dev by species

read.csv("DFR-FLS-F3pH-F3p5pH_sylv_TMMsum_adjusted_60_85_95_6-7-24.csv")->DFRFLSF3pHsylvadjusted
DFRFLSF3pHsylvadjusted<-data.frame(DFRFLSF3pHsylvadjusted[,1:5])
DFRFLSF3pHsylvadjusted$Dev<-as.factor(DFRFLSF3pHsylvadjusted$Dev)
DFRFLSF3pHsylvadjusted$Species<-as.factor(DFRFLSF3pHsylvadjusted$Species)
DFRFLSF3pHsylvadjusted$Gene<-as.factor(DFRFLSF3pHsylvadjusted$Gene)
attach(DFRFLSF3pHsylvadjusted)

read.csv("DFR-FLS-F3pH-F3p5pH_sylv_TMMsum_adjusted_60_85_95_6-7-24.csv")->DFRFLSF3pHsylvsummaryadjusted
DFRFLSF3pHsylvsummaryadjusted<-data.frame(DFRFLSF3pHsylvsummaryadjusted[1:12,6:9])
DFRFLSF3pHsylvsummaryadjusted$Dev.1<-as.factor(DFRFLSF3pHsylvsummaryadjusted$Dev.1)
DFRFLSF3pHsylvsummaryadjusted$Species.1<-as.factor(DFRFLSF3pHsylvsummaryadjusted$Species.1)
DFRFLSF3pHsylvsummaryadjusted$Gene.1<-as.factor(DFRFLSF3pHsylvsummaryadjusted$Gene.1)
attach(DFRFLSF3pHsylvsummaryadjusted)


read.csv("DFR-FLS-F3pH-F3p5pH_obtus_TMMsum_adjusted_60_85_95_6-7-24.csv")->DFRFLSF3pHobtusadjusted
DFRFLSF3pHobtusadjusted<-data.frame(DFRFLSF3pHobtusadjusted[,1:5])
DFRFLSF3pHobtusadjusted$Dev<-as.factor(DFRFLSF3pHobtusadjusted$Dev)
DFRFLSF3pHobtusadjusted$Species<-as.factor(DFRFLSF3pHobtusadjusted$Species)
DFRFLSF3pHobtusadjusted$Gene<-as.factor(DFRFLSF3pHobtusadjusted$Gene)
attach(DFRFLSF3pHobtusadjusted)

read.csv("DFR-FLS-F3pH-F3p5pH_obtus_TMMsum_adjusted_60_85_95_6-7-24.csv")->DFRFLSF3pHobtussummaryadjusted
DFRFLSF3pHobtussummaryadjusted<-data.frame(DFRFLSF3pHobtussummaryadjusted[1:12,6:9])
DFRFLSF3pHobtussummaryadjusted$Dev.1<-as.factor(DFRFLSF3pHobtussummaryadjusted$Dev.1)
DFRFLSF3pHobtussummaryadjusted$Species.1<-as.factor(DFRFLSF3pHobtussummaryadjusted$Species.1)
DFRFLSF3pHobtussummaryadjusted$Gene.1<-as.factor(DFRFLSF3pHobtussummaryadjusted$Gene.1)
attach(DFRFLSF3pHobtussummaryadjusted)


read.csv("DFR-FLS-F3pH-F3p5pH_nudi_TMMsum_adjusted_60_85_95_6-7-24.csv")->DFRFLSF3pHnudiadjusted
DFRFLSF3pHnudiadjusted<-data.frame(DFRFLSF3pHnudiadjusted[,1:5])
DFRFLSF3pHnudiadjusted$Dev<-as.factor(DFRFLSF3pHnudiadjusted$Dev)
DFRFLSF3pHnudiadjusted$Species<-as.factor(DFRFLSF3pHnudiadjusted$Species)
DFRFLSF3pHnudiadjusted$Gene<-as.factor(DFRFLSF3pHnudiadjusted$Gene)
attach(DFRFLSF3pHnudiadjusted)

read.csv("DFR-FLS-F3pH-F3p5pH_nudi_TMMsum_adjusted_60_85_95_6-7-24.csv")->DFRFLSF3pHnudisummaryadjusted
DFRFLSF3pHnudisummaryadjusted<-data.frame(DFRFLSF3pHnudisummaryadjusted[1:12,6:9])
DFRFLSF3pHnudisummaryadjusted$Dev.1<-as.factor(DFRFLSF3pHnudisummaryadjusted$Dev.1)
DFRFLSF3pHnudisummaryadjusted$Species.1<-as.factor(DFRFLSF3pHnudisummaryadjusted$Species.1)
DFRFLSF3pHnudisummaryadjusted$Gene.1<-as.factor(DFRFLSF3pHnudisummaryadjusted$Gene.1)
attach(DFRFLSF3pHnudisummaryadjusted)


read.csv("DFR-FLS-F3pH-F3p5pH_repa_TMMsum_adjusted_60_85_95_6-7-24.csv")->DFRFLSF3pHrepaadjusted
DFRFLSF3pHrepaadjusted<-data.frame(DFRFLSF3pHrepaadjusted[,1:5])
DFRFLSF3pHrepaadjusted$Dev<-as.factor(DFRFLSF3pHrepaadjusted$Dev)
DFRFLSF3pHrepaadjusted$Species<-as.factor(DFRFLSF3pHrepaadjusted$Species)
DFRFLSF3pHrepaadjusted$Gene<-as.factor(DFRFLSF3pHrepaadjusted$Gene)
attach(DFRFLSF3pHrepaadjusted)

read.csv("DFR-FLS-F3pH-F3p5pH_repa_TMMsum_adjusted_60_85_95_6-7-24.csv")->DFRFLSF3pHrepasummaryadjusted
DFRFLSF3pHrepasummaryadjusted<-data.frame(DFRFLSF3pHrepasummaryadjusted[1:12,6:9])
DFRFLSF3pHrepasummaryadjusted$Dev.1<-as.factor(DFRFLSF3pHrepasummaryadjusted$Dev.1)
DFRFLSF3pHrepasummaryadjusted$Species.1<-as.factor(DFRFLSF3pHrepasummaryadjusted$Species.1)
DFRFLSF3pHrepasummaryadjusted$Gene.1<-as.factor(DFRFLSF3pHrepasummaryadjusted$Gene.1)
attach(DFRFLSF3pHrepasummaryadjusted)


read.csv("DFR-FLS-F3pH-F3p5pH_stock_TMMsum_adjusted_60_85_95_6-7-24.csv")->DFRFLSF3pHstockadjusted
DFRFLSF3pHstockadjusted<-data.frame(DFRFLSF3pHstockadjusted[,1:5])
DFRFLSF3pHstockadjusted$Dev<-as.factor(DFRFLSF3pHstockadjusted$Dev)
DFRFLSF3pHstockadjusted$Species<-as.factor(DFRFLSF3pHstockadjusted$Species)
DFRFLSF3pHstockadjusted$Gene<-as.factor(DFRFLSF3pHstockadjusted$Gene)
attach(DFRFLSF3pHstockadjusted)

read.csv("DFR-FLS-F3pH-F3p5pH_stock_TMMsum_adjusted_60_85_95_6-7-24.csv")->DFRFLSF3pHstocksummaryadjusted
DFRFLSF3pHstocksummaryadjusted<-data.frame(DFRFLSF3pHstocksummaryadjusted[1:12,6:9])
DFRFLSF3pHstocksummaryadjusted$Dev.1<-as.factor(DFRFLSF3pHstocksummaryadjusted$Dev.1)
DFRFLSF3pHstocksummaryadjusted$Species.1<-as.factor(DFRFLSF3pHstocksummaryadjusted$Species.1)
DFRFLSF3pHstocksummaryadjusted$Gene.1<-as.factor(DFRFLSF3pHstocksummaryadjusted$Gene.1)
attach(DFRFLSF3pHstocksummaryadjusted)


#need to plot this to get the correct legend for the grid plot!

read.csv("DFR-FLS-F3pH_TMMsum_for_legend_5-17-24.csv")->DFRFLSF3pHsummary
DFRFLSF3pHsummary<-data.frame(DFRFLSF3pHsummary[,1:4])
DFRFLSF3pHsummary$dev<-as.factor(DFRFLSF3pHsummary$dev)
DFRFLSF3pHsummary$Species<-as.factor(DFRFLSF3pHsummary$Species)
DFRFLSF3pHsummary$Gene<-as.factor(DFRFLSF3pHsummary$Gene)
attach(DFRFLSF3pHsummary)

read.csv("DFR-FLS-F3pH_TMMsum_line_for_legend_5-17-24.csv")->DFRFLSF3pHline
DFRFLSF3pHline<-data.frame(DFRFLSF3pHline[,1:5])
DFRFLSF3pHline$dev<-as.factor(DFRFLSF3pHline$dev)
DFRFLSF3pHline$Species<-as.factor(DFRFLSF3pHline$Species)
DFRFLSF3pHline$Gene<-as.factor(DFRFLSF3pHline$Gene)
attach(DFRFLSF3pHline)


#plot all DFR, FLS, F3pH by species plots in a grid
library(cowplot)

DFRFLSF3pHsylvadjustedpresplot<-ggplot(DFRFLSF3pHsylvadjusted, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=DFRFLSF3pHsylvadjusted, aes(x=Dev, y=TMMsum, shape=Gene), position=position_jitter(0.1), cex=2, color="darkgray", alpha=0.6) + 
  scale_shape_manual(values=c(5,1,20,15)) + stat_summary(data=DFRFLSF3pHsylvsummaryadjusted, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, shape=Gene.1), geom="point", size=4, color="darkgray", alpha=0.8) +
  geom_line(data=DFRFLSF3pHsylvsummaryadjusted, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, linetype=Gene.1), color="darkgray") + scale_linetype_manual(values=c("dashed", "dotdash", "dotted", "solid")) +
  labs(title="N. sylvestris", x="Developmental stage", y="Transcript accumulation (TMM)") + ylim(-1,1450) + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) +
  theme(axis.title.x=element_text(size=14), axis.title.y=element_text(size=14), axis.text.x=element_text(size=13), axis.text.y=element_text(size=13), legend.title=element_text(size=14), legend.text=element_text(size=13), plot.title = element_text(size=18, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

DFRFLSF3pHobtusadjustedpresplot<-ggplot(DFRFLSF3pHobtusadjusted, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=DFRFLSF3pHobtusadjusted, aes(x=Dev, y=TMMsum, shape=Gene), position=position_jitter(0.1), cex=2, color="forestgreen", alpha=0.6) + 
  scale_shape_manual(values=c(5,1,20,15)) + stat_summary(data=DFRFLSF3pHobtussummaryadjusted, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, shape=Gene.1), geom="point", size=4, color="forestgreen", alpha=0.8) +
  geom_line(data=DFRFLSF3pHobtussummaryadjusted, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, linetype=Gene.1), color="forestgreen") + scale_linetype_manual(values=c("dashed", "dotdash", "dotted", "solid")) +
  labs(title="N. obtusifolia", x="Developmental stage", y="Transcript accumulation (TMM)") + ylim(-1,1450) + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) +
  theme(axis.title.x=element_text(size=14), axis.title.y=element_text(size=14), axis.text.x=element_text(size=13), axis.text.y=element_text(size=13), legend.title=element_text(size=14), legend.text=element_text(size=13), plot.title = element_text(size=18, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

DFRFLSF3pHnudiadjustedpresplot<-ggplot(DFRFLSF3pHnudiadjusted, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=DFRFLSF3pHnudiadjusted, aes(x=Dev, y=TMMsum, shape=Gene), position=position_jitter(0.1), cex=2, color="orange", alpha=0.6) + 
  scale_shape_manual(values=c(5,1,20,15)) + stat_summary(data=DFRFLSF3pHnudisummaryadjusted, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, shape=Gene.1), geom="point", size=4, color="orange", alpha=0.8) +
  geom_line(data=DFRFLSF3pHnudisummaryadjusted, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, linetype=Gene.1), color="orange") + scale_linetype_manual(values=c("dashed", "dotdash", "dotted", "solid")) +
  labs(title="N. nudicaulis", x="Developmental stage", y="Transcript accumulation (TMM)") + ylim(-1,1450) + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) +
  theme(axis.title.x=element_text(size=14), axis.title.y=element_text(size=14), axis.text.x=element_text(size=13), axis.text.y=element_text(size=13), legend.title=element_text(size=14), legend.text=element_text(size=13), plot.title = element_text(size=18, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

DFRFLSF3pHrepaadjustedpresplot<-ggplot(DFRFLSF3pHrepaadjusted, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=DFRFLSF3pHrepaadjusted, aes(x=Dev, y=TMMsum, shape=Gene), position=position_jitter(0.1), cex=2, color="cyan", alpha=0.6) + 
  scale_shape_manual(values=c(5,1,20,15)) + stat_summary(data=DFRFLSF3pHrepasummaryadjusted, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, shape=Gene.1), geom="point", size=4, color="cyan", alpha=0.8) +
  geom_line(data=DFRFLSF3pHrepasummaryadjusted, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, linetype=Gene.1), color="cyan") + scale_linetype_manual(values=c("dashed", "dotdash", "dotted", "solid")) +
  labs(title="N. repanda", x="Developmental stage", y="Transcript accumulation (TMM)") + ylim(-1,1450) + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) +
  theme(axis.title.x=element_text(size=14), axis.title.y=element_text(size=14), axis.text.x=element_text(size=13), axis.text.y=element_text(size=13), legend.title=element_text(size=14), legend.text=element_text(size=13), plot.title = element_text(size=18, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))

DFRFLSF3pHstockadjustedpresplot<-ggplot(DFRFLSF3pHstockadjusted, aes(x=Dev, y=TMMsum)) + theme_classic() + geom_jitter(data=DFRFLSF3pHstockadjusted, aes(x=Dev, y=TMMsum, shape=Gene), position=position_jitter(0.1), cex=2, color="darkmagenta", alpha=0.6) + 
  scale_shape_manual(values=c(5,1,20,15)) + stat_summary(data=DFRFLSF3pHstocksummaryadjusted, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, shape=Gene.1), geom="point", size=4, color="darkmagenta", alpha=0.8) +
  geom_line(data=DFRFLSF3pHstocksummaryadjusted, aes(x=Dev.1, y=TMMsum.1, group=Gene.1, linetype=Gene.1), color="darkmagenta") + scale_linetype_manual(values=c("dashed", "dotdash", "dotted", "solid")) +
  labs(title="N. stocktonii", x="Developmental stage", y="Transcript accumulation (TMM)") + ylim(-1,1450) + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) +
  theme(axis.title.x=element_text(size=14), axis.title.y=element_text(size=14), axis.text.x=element_text(size=13), axis.text.y=element_text(size=13), legend.title=element_text(size=14), legend.text=element_text(size=13), plot.title = element_text(size=18, hjust = 0.5, face="italic"), plot.margin=margin(0.25, 0.25, 0.25, 0.1, "in"))


DFRFLSF3pHlegendpresplot<-ggplot(DFRFLSF3pHsummary, aes(x=dev, y=TMMsum)) + theme_classic() + geom_point(data=DFRFLSF3pHsummary, aes(x=dev, y=TMMsum, color=Species, alpha=Species, shape=Gene), cex=4) + 
  scale_color_manual(values=c("darkgray", "orange", "cyan", "darkmagenta", "forestgreen"), labels=c("sylv", "nudi", "repa", "stock", "obtus")) +
  scale_alpha_manual(values=c(0.6,0.6,0.6,0.6,0.6), labels=c("sylv", "nudi", "repa", "stock", "obtus")) + scale_shape_manual(values=c(5,1,20,15), guide=guide_legend(label.theme=element_text(angle=0, face="italic", size=15))) + 
  geom_line(data=DFRFLSF3pHline, aes(x=dev, y=TMMsum, group=Genebysp, linetype=Gene)) + scale_linetype_manual(values=c("dashed", "dotdash", "dotted", "solid"), guide=guide_legend(label.theme=element_text(angle=0, face="italic", size=15))) +
  xlab("Developmental stage") + ylab("Transcript accumulation (TMM)") + scale_x_discrete(labels=c("Stage 1", "Stage 2", "Stage 3")) + ylim(-1,1450) +
  theme(axis.title.x=element_text(size=12), axis.title.y=element_text(size=12), axis.text.x=element_text(size=11), axis.text.y=element_text(size=11), legend.title=element_text(size=18), legend.text=element_text(size=15))


#extract legend from FLSDFR plot
legendDFRFLSF3pHpres<-get_legend(DFRFLSF3pHlegendpresplot + theme(legend.box.margin=margin(0,0,0,0)))

#plot all plots in a grid with legend
pdf(file="DFR_FLS_F3pH_F3p5pH_by_species_adjusted_60_85_95_plot_grid_pres_8-30-25.pdf", width=13, height=7)
plot_grid(DFRFLSF3pHnudiadjustedpresplot + theme(legend.position="none"), DFRFLSF3pHrepaadjustedpresplot + theme(legend.position="none"), 
          DFRFLSF3pHstockadjustedpresplot + theme(legend.position="none"), DFRFLSF3pHsylvadjustedpresplot + theme(legend.position="none"), 
          DFRFLSF3pHobtusadjustedpresplot + theme(legend.position="none"), legendDFRFLSF3pHpres, labels=c("A", "B", "C", "D", "E"),  nrow=2, ncol=3)
dev.off()




#Appendix S1

#proportion sylv for FBP genes in N. sylvestris and N. obtusifolia samples

read.csv("anth_propsylv_60_85_95_5-23-25.csv")->propsylvdata
propsylvdata<-data.frame(propsylvdata[,1:4]) 
propsylvdata$gene<-as.factor(propsylvdata$gene)
propsylvdata$progenitor<-as.factor(propsylvdata$progenitor)
propsylvdata$dev<-as.factor(propsylvdata$dev)
attach(propsylvdata)


pdf(file="anth_propsylv_60_85_95_8-30-25.pdf", width=6, height=4)
ggplot(propsylvdata, aes(x=gene, y=prop_sylv)) + theme_classic() + geom_jitter(data=propsylvdata, aes(x=gene, y=prop_sylv, color=progenitor, shape=dev, alpha=0.8), position=position_jitter(0.2), cex=3) + 
  scale_color_manual(values=c("forestgreen", "darkgray"), name="Progenitor") + scale_shape_manual(values=c(16,17,15), labels=c("Stage 1", "Stage 2", "Stage 3"), name="Dev stage") + scale_alpha(guide="none") +
  geom_hline(yintercept=c(0.9, 0.1), linetype=c("dashed", "dashed"), color="dark gray") +
  theme(axis.text.x=element_text(face="italic"), legend.box.spacing=unit(0.3, "in"), axis.text=element_text(size=11), axis.title=element_text(size=12), legend.text=element_text(size=10), plot.title=element_text(hjust=0.5)) + labs(x="Gene", y="Proportion sylv")
dev.off()


