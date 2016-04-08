#!/usr/lib/R/bin/Rscript
work=paste("/home/caohanyang/MEAN/Results/resultNoServer05282/data")
setwd(work)
timesS=10000
timesM=1000
timesL=100
speed=1000/1024/1024
#=================================================================
#start to read the data
#A0
SS0<-read.csv(paste("ss/Costtime-A0.csv"), check.names=FALSE, header = FALSE)
SM0<-read.csv(paste("sm/Costtime-A0.csv"), check.names=FALSE, header = FALSE)
SL0<-read.csv(paste("sl/Costtime-A0.csv"), check.names=FALSE, header = FALSE)

MS0<-read.csv(paste("ms/Costtime-A0.csv"), check.names=FALSE, header = FALSE)
MM0<-read.csv(paste("mm/Costtime-A0.csv"), check.names=FALSE, header = FALSE)
ML0<-read.csv(paste("ml/Costtime-A0.csv"), check.names=FALSE, header = FALSE)

LS0<-read.csv(paste("ls/Costtime-A0.csv"), check.names=FALSE, header = FALSE)
LM0<-read.csv(paste("lm/Costtime-A0.csv"), check.names=FALSE, header = FALSE)
LL0<-read.csv(paste("ll/Costtime-A0.csv"), check.names=FALSE, header = FALSE)

#get the median : small
SS0medians <- vector()
for(i in 1:length(names(SS0))) {
  SS0medians <- append(SS0medians, median(SS0[,i]))
}
SM0medians <- vector()
for(i in 1:length(names(SM0))) {
  SM0medians <- append(SM0medians, median(SM0[,i]))
}
SL0medians <- vector()
for(i in 1:length(names(SL0))) {
  SL0medians <- append(SL0medians, median(SL0[,i]))
}

#get the median : medium
MS0medians <- vector()
for(i in 1:length(names(MS0))) {
  MS0medians <- append(MS0medians, median(MS0[,i]))
}
MM0medians <- vector()
for(i in 1:length(names(MM0))) {
  MM0medians <- append(MM0medians, median(MM0[,i]))
}
ML0medians <- vector()
for(i in 1:length(names(ML0))) {
  ML0medians <- append(ML0medians, median(ML0[,i]))
}

#get the median : large
LS0medians <- vector()
for(i in 1:length(names(LS0))) {
  LS0medians <- append(LS0medians, median(LS0[,i]))
}
LM0medians <- vector()
for(i in 1:length(names(LM0))) {
  LM0medians <- append(LM0medians, median(LM0[,i]))
}
LL0medians <- vector()
for(i in 1:length(names(LL0))) {
  LL0medians <- append(LL0medians, median(LL0[,i]))
}

#A1
SS1<-read.csv(paste("small-P0.1-A1.csv"), check.names=FALSE, header = FALSE)
SM1<-read.csv(paste("small-P0.21-A1.csv"), check.names=FALSE, header = FALSE)
SL1<-read.csv(paste("small-P0.49-A1.csv"), check.names=FALSE, header = FALSE)

MS1<-read.csv(paste("medium-P0.1-A1.csv"), check.names=FALSE, header = FALSE)
MM1<-read.csv(paste("medium-P0.2-A1.csv"), check.names=FALSE, header = FALSE)
ML1<-read.csv(paste("medium-P0.37-A1.csv"), check.names=FALSE, header = FALSE)

LS1<-read.csv(paste("large-P0.1-A1.csv"), check.names=FALSE, header = FALSE)
LM1<-read.csv(paste("large-P0.2-A1.csv"), check.names=FALSE, header = FALSE)
LL1<-read.csv(paste("large-P0.39-A1.csv"), check.names=FALSE, header = FALSE)

#get the median : small
SS1medians <- vector()
for(i in 1:length(names(SS1))) {
  SS1medians <- append(SS1medians, median(SS1[,i]))
}
SM1medians <- vector()
for(i in 1:length(names(SM1))) {
  SM1medians <- append(SM1medians, median(SM1[,i]))
}
SL1medians <- vector()
for(i in 1:length(names(SL1))) {
  SL1medians <- append(SL1medians, median(SL1[,i]))
}

#get the median : medium
MS1medians <- vector()
for(i in 1:length(names(MS1))) {
  MS1medians <- append(MS1medians, median(MS1[,i]))
}
MM1medians <- vector()
for(i in 1:length(names(MM1))) {
  MM1medians <- append(MM1medians, median(MM1[,i]))
}
ML1medians <- vector()
for(i in 1:length(names(ML1))) {
  ML1medians <- append(ML1medians, median(ML1[,i]))
}

#get the median : large
LS1medians <- vector()
for(i in 1:length(names(LS1))) {
  LS1medians <- append(LS1medians, median(LS1[,i]))
}
LM1medians <- vector()
for(i in 1:length(names(LM1))) {
  LM1medians <- append(LM1medians, median(LM1[,i]))
}
LL1medians <- vector()
for(i in 1:length(names(LL1))) {
  LL1medians <- append(LL1medians, median(LL1[,i]))
}

#A2
SS2<-read.csv(paste("small-P0.1-A2.csv"), check.names=FALSE, header = FALSE)
SM2<-read.csv(paste("small-P0.21-A2.csv"), check.names=FALSE, header = FALSE)
SL2<-read.csv(paste("small-P0.49-A2.csv"), check.names=FALSE, header = FALSE)

MS2<-read.csv(paste("medium-P0.1-A2.csv"), check.names=FALSE, header = FALSE)
MM2<-read.csv(paste("medium-P0.2-A2.csv"), check.names=FALSE, header = FALSE)
ML2<-read.csv(paste("medium-P0.37-A2.csv"), check.names=FALSE, header = FALSE)

LS2<-read.csv(paste("large-P0.1-A2.csv"), check.names=FALSE, header = FALSE)
LM2<-read.csv(paste("large-P0.2-A2.csv"), check.names=FALSE, header = FALSE)
LL2<-read.csv(paste("large-P0.39-A2.csv"), check.names=FALSE, header = FALSE)

#get the median : small
SS2medians <- vector()
for(i in 1:length(names(SS2))) {
  SS2medians <- append(SS2medians, median(SS2[,i]))
}
SM2medians <- vector()
for(i in 1:length(names(SM2))) {
  SM2medians <- append(SM2medians, median(SM2[,i]))
}
SL2medians <- vector()
for(i in 1:length(names(SL2))) {
  SL2medians <- append(SL2medians, median(SL2[,i]))
}

#get the median : medium
MS2medians <- vector()
for(i in 1:length(names(MS2))) {
  MS2medians <- append(MS2medians, median(MS2[,i]))
}
MM2medians <- vector()
for(i in 1:length(names(MM2))) {
  MM2medians <- append(MM2medians, median(MM2[,i]))
}
ML2medians <- vector()
for(i in 1:length(names(ML2))) {
  ML2medians <- append(ML2medians, median(ML2[,i]))
}

#get the median : large
LS2medians <- vector()
for(i in 1:length(names(LS2))) {
  LS2medians <- append(LS2medians, median(LS2[,i]))
}
LM2medians <- vector()
for(i in 1:length(names(LM2))) {
  LM2medians <- append(LM2medians, median(LM2[,i]))
}
LL2medians <- vector()
for(i in 1:length(names(LL2))) {
  LL2medians <- append(LL2medians, median(LL2[,i]))
}

#A3
SS3<-read.csv(paste("small-P0.1-A3.csv"), check.names=FALSE, header = FALSE)
SM3<-read.csv(paste("small-P0.21-A3.csv"), check.names=FALSE, header = FALSE)
SL3<-read.csv(paste("small-P0.49-A3.csv"), check.names=FALSE, header = FALSE)

MS3<-read.csv(paste("medium-P0.1-A3.csv"), check.names=FALSE, header = FALSE)
MM3<-read.csv(paste("medium-P0.2-A3.csv"), check.names=FALSE, header = FALSE)
ML3<-read.csv(paste("medium-P0.37-A3.csv"), check.names=FALSE, header = FALSE)

#LS3<-read.csv(paste("large-P0.05-A3.csv"), check.names=FALSE, header = FALSE)
#LM3<-read.csv(paste("large-P0.2-A3.csv"), check.names=FALSE, header = FALSE)
#LL3<-read.csv(paste("large-P0.39-A3.csv"), check.names=FALSE, header = FALSE)

#get the median : small
SS3medians <- vector()
for(i in 1:length(names(SS3))) {
  SS3medians <- append(SS3medians, median(SS3[,i]))
}
SM3medians <- vector()
for(i in 1:length(names(SM3))) {
  SM3medians <- append(SM3medians, median(SM3[,i]))
}
SL3medians <- vector()
for(i in 1:length(names(SL3))) {
  SL3medians <- append(SL3medians, median(SL3[,i]))
}

#get the median : medium
MS3medians <- vector()
for(i in 1:length(names(MS3))) {
  MS3medians <- append(MS3medians, median(MS3[,i]))
}
MM3medians <- vector()
for(i in 1:length(names(MM3))) {
  MM3medians <- append(MM3medians, median(MM3[,i]))
}
ML3medians <- vector()
for(i in 1:length(names(ML3))) {
  ML3medians <- append(ML3medians, median(ML3[,i]))
}

#A4
SS4<-read.csv(paste("small-P0.1-A4.csv"), check.names=FALSE, header = FALSE)
SM4<-read.csv(paste("small-P0.21-A4.csv"), check.names=FALSE, header = FALSE)
SL4<-read.csv(paste("small-P0.49-A4.csv"), check.names=FALSE, header = FALSE)

MS4<-read.csv(paste("medium-P0.1-A4.csv"), check.names=FALSE, header = FALSE)
MM4<-read.csv(paste("medium-P0.2-A4.csv"), check.names=FALSE, header = FALSE)
ML4<-read.csv(paste("medium-P0.37-A4.csv"), check.names=FALSE, header = FALSE)

#LS3<-read.csv(paste("large-P0.05-A3.csv"), check.names=FALSE, header = FALSE)
#LM3<-read.csv(paste("large-P0.2-A3.csv"), check.names=FALSE, header = FALSE)
#LL3<-read.csv(paste("large-P0.39-A3.csv"), check.names=FALSE, header = FALSE)

#get the median : small
SS4medians <- vector()
for(i in 1:length(names(SS4))) {
  SS4medians <- append(SS4medians, median(SS4[,i]))
}
SM4medians <- vector()
for(i in 1:length(names(SM4))) {
  SM4medians <- append(SM4medians, median(SM4[,i]))
}
SL4medians <- vector()
for(i in 1:length(names(SL4))) {
  SL4medians <- append(SL4medians, median(SL4[,i]))
}

#get the median : medium
MS4medians <- vector()
for(i in 1:length(names(MS4))) {
  MS4medians <- append(MS4medians, median(MS4[,i]))
}
MM4medians <- vector()
for(i in 1:length(names(MM4))) {
  MM4medians <- append(MM4medians, median(MM4[,i]))
}
ML4medians <- vector()
for(i in 1:length(names(ML4))) {
  ML4medians <- append(ML4medians, median(ML4[,i]))
}

#get the median : large

#==============================================
#start to input the graph

#name: Compare TotalTime (Small Size)
pdf("Compare CostTime (Small Size).pdf")

#first column
dataS0a<-c(SS0medians[1]/times,0,0,0,0, SM0medians[1]/times,0,0,0,0, SL0medians[1]/times,0,0,0,0)
dataS0b<-c(SS0medians[2]*speed,0,0,0,0, SM0medians[2]*speed,0,0,0,0, SL0medians[2]*speed,0,0,0,0)
dataS0c<-c(SS0medians[3]/times,0,0,0,0, SM0medians[3]/times,0,0,0,0, SL0medians[3]/times,0,0,0,0)

dataS1a<-c(0,SS1medians[1]/times,0,0,0,  0,SM1medians[1]/times,0,0,0,  0,SL1medians[1]/times,0,0,0)
dataS1b<-c(0,SS1medians[2]*speed,0,0,0,  0,SM1medians[2]*speed,0,0,0,  0,SL1medians[2]*speed,0,0,0)
dataS1c<-c(0,SS1medians[3]/times,0,0,0,  0,SM1medians[3]/times,0,0,0,  0,SL1medians[3]/times,0,0,0)

dataS2a<-c(0,0,SS2medians[1]/times,0,0,  0,0,SM2medians[1]/times,0,0, 0,0,SL2medians[1]/times,0,0)
dataS2b<-c(0,0,SS2medians[2]*speed,0,0,  0,0,SM2medians[2]*speed,0,0, 0,0,SL2medians[2]*speed,0,0)
dataS2c<-c(0,0,SS2medians[3]/times,0,0,  0,0,SM2medians[3]/times,0,0, 0,0,SL2medians[3]/times,0,0)

dataS3a<-c(0,0,0,SS3medians[1]/times,0,  0,0,0,SM3medians[1]/times,0, 0,0,0,SL3medians[1]/times,0)
dataS3b<-c(0,0,0,SS3medians[2]*speed,0,  0,0,0,SM3medians[2]*speed,0, 0,0,0,SL3medians[2]*speed,0)
dataS3c<-c(0,0,0,SS3medians[3]/times,0,  0,0,0,SM3medians[3]/times,0, 0,0,0,SL3medians[3]/times,0)

dataS4a<-c(0,0,0,0,SS4medians[1]/times,  0,0,0,0,SM4medians[1]/times, 0,0,0,0,SL4medians[1]/times)
dataS4b<-c(0,0,0,0,SS4medians[2]*speed,  0,0,0,0,SM4medians[2]*speed, 0,0,0,0,SL4medians[2]*speed)
dataS4c<-c(0,0,0,0,SS4medians[3]/times,  0,0,0,0,SM4medians[3]/times, 0,0,0,0,SL4medians[3]/times)

datanowS<-rbind(dataS0b,dataS0a,dataS0c, dataS1b,dataS1a,dataS1c, dataS2b,dataS2a,dataS2c, dataS3b,dataS3a,dataS3c, dataS4b,dataS4a,dataS4c)

dataSOrgin <- SS0medians[5]*speed

label<- c('small','medium','large')
cols <- c("blue", "red", "yellow");
ylim <- c(0, max(datanowS * 1.2))
legs<-c("Transmission time(Compute when speed is 1MB/s)", "Differencing time", "Applying patch time")
bar = barplot(datanowS, ylim = ylim,offset = 0, col =cols,space = c(0.75,0.1,0.1,0.1,0.1), axis.lty = 1,axisnames=FALSE, main="Compare CostTime (Small Size 100B)", xlab="Modification Level", ylab="Cost Time (milliseconds)")
axis(1,at=bar[seq(3, length(bar), 5)],labels=label, lwd=0)
legend("topleft", legend = legs, fill = cols, box.col = "transparent",cex=0.9)
abline(a = NULL, b = NULL, h = dataSOrgin, v = NULL, reg = NULL)
box()
dev.off() 

#name: Compare TotalTime (Medium Size)
pdf("Compare TotalTime (Medium Size).pdf")
#first column
dataM0a<-c(MS0medians[1]/times,0,0,0,0, MM0medians[1]/times,0,0,0,0, ML0medians[1]/times,0,0,0,0)
dataM0b<-c(MS0medians[2]*speed,0,0,0,0, MM0medians[2]*speed,0,0,0,0, ML0medians[2]*speed,0,0,0,0)
dataM0c<-c(MS0medians[3]/times,0,0,0,0, MM0medians[3]/times,0,0,0,0, ML0medians[3]/times,0,0,0,0)

dataM1a<-c(0,MS1medians[1]/times,0,0,0,  0,MM1medians[1]/times,0,0,0,  0,ML1medians[1]/times,0,0,0)
dataM1b<-c(0,MS1medians[2]*speed,0,0,0,  0,MM1medians[2]*speed,0,0,0,  0,ML1medians[2]*speed,0,0,0)
dataM1c<-c(0,MS1medians[3]/times,0,0,0,  0,MM1medians[3]/times,0,0,0,  0,ML1medians[3]/times,0,0,0)

dataM2a<-c(0,0,MS2medians[1]/times,0,0,  0,0,MM2medians[1]/times,0,0, 0,0,ML2medians[1]/times,0,0)
dataM2b<-c(0,0,MS2medians[2]*speed,0,0,  0,0,MM2medians[2]*speed,0,0, 0,0,ML2medians[2]*speed,0,0)
dataM2c<-c(0,0,MS2medians[3]/times,0,0,  0,0,MM2medians[3]/times,0,0, 0,0,ML2medians[3]/times,0,0)

dataM3a<-c(0,0,0,MS3medians[1]/times,0,  0,0,0,MM3medians[1]/times,0, 0,0,0,ML3medians[1]/times,0)
dataM3b<-c(0,0,0,MS3medians[2]*speed,0,  0,0,0,MM3medians[2]*speed,0, 0,0,0,ML3medians[2]*speed,0)
dataM3c<-c(0,0,0,MS3medians[3]/times,0,  0,0,0,MM3medians[3]/times,0, 0,0,0,ML3medians[3]/times,0)

dataM4a<-c(0,0,0,0,MS4medians[1]/times,  0,0,0,0,MM4medians[1]/times, 0,0,0,0,ML4medians[1]/times)
dataM4b<-c(0,0,0,0,MS4medians[2]*speed,  0,0,0,0,MM4medians[2]*speed, 0,0,0,0,ML4medians[2]*speed)
dataM4c<-c(0,0,0,0,MS4medians[3]/times,  0,0,0,0,MM4medians[3]/times, 0,0,0,0,ML4medians[3]/times)


datanowM<-rbind(dataM0b,dataM0a,dataM0c, dataM1b,dataM1a,dataM1c, dataM2b,dataM2a,dataM2c, dataM3b,dataM3a,dataM3c, dataM4b,dataM4a,dataM4c)

dataMOrgin <- MS0medians[5]*speed

label<- c('small','medium','large')
cols <- c("blue", "red", "yellow");
ylim <- c(0, max(datanowM * 1.2))
legs<-c("Transmission time(Compute when speed is 1MB/s)", "Differencing time", "Applying patch time")
bar = barplot(datanowM, ylim = ylim,offset = 0, col =cols,space = c(0.75,0.1,0.1,0.1,0.1), axis.lty = 1,axisnames=FALSE, main="Compare CostTime (Medium Size 10KB)", xlab="Modification Level", ylab="Cost Time (milliseconds)")
axis(1,at=bar[seq(3, length(bar), 5)],labels=label, lwd=0)
legend("topleft", legend = legs, fill = cols, box.col = "transparent",cex=0.9)
abline(a = NULL, b = NULL, h = dataMOrgin, v = NULL, reg = NULL)
box()
dev.off() 


#name: Compare TotalTime (Large Size)
pdf("Compare CostTime (Large Size).pdf")

#first column
dataL0a<-c(LS0medians[1]/timesL,0,0,0,0,  LM0medians[1]/timesL,0,0,0,0, LL0medians[1]/timesL,0,0,0,0)
dataL0b<-c(LS0medians[2]*speed,0,0,0,0, LM0medians[2]*speed,0,0,0,0, LL0medians[2]*speed,0,0,0,0)
dataL0c<-c(LS0medians[3]/timesL,0,0,0,0, LM0medians[3]/timesL,0,0,0,0, LL0medians[3]/timesL,0,0,0,0)

dataL1a<-c(0,LS1medians[1]/timesL,0,0,0,  0,LM1medians[1]/timesL,0,0,0,  0,LL1medians[1]/timesL,0,0,0)
dataL1b<-c(0,LS1medians[2]*speed,0,0,0,  0,LM1medians[2]*speed,0,0,0,  0,LL1medians[2]*speed,0,0,0)
dataL1c<-c(0,LS1medians[3]/timesL,0,0,0,  0,LM1medians[3]/timesL,0,0,0,  0,LL1medians[3]/timesL,0,0,0)

dataL2a<-c(0,0,LS2medians[1]/timesL,0,0,  0,0,LM2medians[1]/timesL,0,0,  0,0,LL2medians[1]/timesL,0,0)
dataL2b<-c(0,0,LS2medians[2]*speed,0,0,  0,0,LM2medians[2]*speed,0,0,  0,0,LL2medians[2]*speed,0,0)
dataL2c<-c(0,0,LS2medians[3]/timesL,0,0,  0,0,LM2medians[3]/timesL,0,0,  0,0,LL2medians[3]/timesL,0,0)

#algorithem 3 large doesn't work
#dataL3a<-c(0,0,0,LS3medians[1],  0,0,0,LM3medians[1], 0,0,0,LL3medians[1])
#dataL3b<-c(0,0,0,LS3medians[2],  0,0,0,LM3medians[2], 0,0,0,LL3medians[2])
#dataL3c<-c(0,0,0,LS3medians[3],  0,0,0,LM3medians[3], 0,0,0,LL3medians[3])

datanowL<-rbind(dataL0b,dataL0a,dataL0c, dataL1b,dataL1a,dataL1c, dataL2b,dataL2a,dataL2c, 0,0,0,0,0,0)

dataLOrgin <- LS0medians[5]*speed

label<- c('small','medium','large')
cols <- c("blue", "red", "yellow");
ylim <- c(0, 2000)
legs<-c("Transmission time(Compute when speed is 1MB/s)", "Differencing time", "Applying patch time")

bar = barplot(datanowL, ylim = ylim,offset = 0, col =cols,space = c(0.75,0.1,0.1,0.1,0.1), axis.lty = 1,axisnames=FALSE, main="Compare CostTime (Large Size 1MB)", xlab="Modification Level", ylab="Cost Time (milliseconds)")
axis(1,at=bar[seq(3, length(bar), 5)],labels=label, lwd=0)
legend("topleft", legend = legs, fill = cols, box.col = "transparent",cex=0.9)
abline(a = NULL, b = NULL, h = dataLOrgin, v = NULL, reg = NULL)
box()
dev.off() 

