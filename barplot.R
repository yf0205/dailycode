setwd("./Desktop")
getwd()
rm(list = ls())
library(ggplot2)
result1<-read.table("result.txt",sep="\t",header = T,row.names = 1)
CIrep<-read.table("result2.txt",sep="\t",header = T,row.names = 1)
res1<-result1[,1]
names(res1)<-rownames(result1)
library("ggplot2")

res2<-result1[,2]
names(res2)<-rownames(result1)
barplot(res2,col = rgb(210,129,116, maxColorValue=255),
        ylim=c(0,6))
        )
        aes(x=rownames(result1)))
##########draw the barplot
result1$MIAT
p <- ggplot(result1, aes(x=rownames(result1), y=MIAT),)+
  geom_bar(stat="identity", position = "identity",
           fill=rgb(121,189,152, maxColorValue=255)) 

Res<-mean(CIrep[,1])+0.8*sd(CIrep[,1])
Sen<-mean(CIrep[,1])-0.8*sd(CIrep[,1])
plot(CIrep[,1],)
p <- ggplot(CIrep, aes(x=rownames(CIrep), y=AMG),)+
  ylim(0,6)+
  geom_point()+
  geom_hline(yintercept = mean(CIrep[,1]),color="grey",linetype=2) +
  
  geom_hline(yintercept = Res,color="red",linetype=2) + 
  geom_hline(yintercept =Sen,color="red",linetype=2) 

  geom_bar(stat="identity", position = "identity",
           fill=rgb(151,201,249, maxColorValue=255)) + 
  geom_hline(yintercept = Res,color=rgb(210,129,116, maxColorValue=255),linetype=2) + 
  geom_hline(yintercept =Sen,color=rgb(121,189,152, maxColorValue=255),linetype=2) +

  scale_y_continuous(breaks= seq(0,5,by=0.5)) +
  theme(axis.text.x =
          element_text(size  = 8,
                       angle = 45,
                       hjust = 1,
                       vjust = 1))
