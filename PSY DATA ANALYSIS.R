myFile = file.choose(new = FALSE)
# prompts for file from local device
read.csv2(myFile)
#opens the file in R
read.csv(myFile, header = TRUE, sep = "," )
#fixed the format
myFixedFile = read.csv(myFile, header = TRUE, sep = "," )
#saved the format for future use :)

#for psych data set
allDataUnFixed = file.choose(new = FALSE)
read.csv(allDataUnFixed, header = TRUE, sep = ",")

allData = read.csv(allDataUnFixed, header = TRUE, sep = ",")
library(dplyr)

psyData <-
  allData %>%
  filter(Subject %in% ("PSY"))
#psyData <- subset(allData, allData$Condition == c("PSY ADV","PSY BEG" ))
   
phiData <-
  allData %>%
  filter(Subject %in% ("PHI"))
#phiData <- subset(allData, allData$Condition == c("PHI ADV","PHI BEG" )
                  
mathData <-
  allData %>%
  filter(Subject %in% ("MATH"))
#mathData <- subset(allData, allData$Condition == c("MATH ADV","MATH BEG" ))

otherData <-
  allData %>%
  filter(Subject %in% c("OTHER"))
#otherData <- subset(allData, allData$Condition == c("OTHER" ))

#PROOF 1;

#PSYCH descriptive stats for PROOF 1:
mean(psyData$Even.Odd.W.)
sd(psyData$Even.Odd.W.)
length(psyData$Condition)

#subset PSYCH ADVANCED
psyAdv <- subset(psyData, psyData$Condition == "PSY ADV")
mean(psyAdv$Even.Odd.W.)
sd(psyAdv$Even.Odd.W.)
length(psyAdv$Condition)

#subset PSYCH BEGINNER
psyBeg <- subset(psyData, psyData$Condition == "PSY BEG")
mean(psyBeg$Even.Odd.W.)
sd(psyBeg$Even.Odd.W.)
length(psyBeg$Condition)


#PROOF 2:
#PSYCH descriptive stats for PROOF 2:
mean(psyData$A...D..W., na.rm=TRUE)
sd(psyData$A...D..W.,na.rm=TRUE)
length(psyData$A...D..W.)


#PSYCH ADVANCED
mean(psyAdv$A...D..W., na.rm = TRUE)
sd(psyAdv$A...D..W., na.rm = TRUE)
length(psyAdv$A...D..W.)

#PSYCH BEGINNER
mean(psyBeg$A...D..W., na.rm = TRUE)
sd(psyBeg$A...D..W., na.rm = TRUE)

#PROOF 3: 
#PSYCH descriptive states for PROOF 3:
mean(psyData$PYT.W., na.rm = TRUE)
sd(psyData$PYT.W., na.rm = TRUE)

#PSYCH ADVANCED
mean(psyAdv$PYT.W., na.rm = TRUE)
sd(psyAdv$PYT.W., na.rm = TRUE)


#PSYCH BEGINNER
mean(psyBeg$PYT.W., na.rm = TRUE)
sd(psyBeg$PYT.W., na.rm = TRUE)

#PROOF 4:
#PSYCH descriptive states for PROOF 4:
mean(psyData$X3.9.R., na.rm = TRUE)
sd(psyData$X3.9.R., na.rm = TRUE)

#PSYCH ADVANCED
mean(psyAdv$X3.9.R., na.rm = TRUE)
sd(psyAdv$X3.9.R., na.rm = TRUE)

#PSYCH BEGINNER
mean(psyBeg$X3.9.R., na.rm = TRUE)
sd(psyBeg$X3.9.R., na.rm = TRUE)

#PROOF 5:
#PSYCH descriptive states for PROOF 5:
mean(psyData$Convo.R., na.rm = TRUE)
sd(psyData$Convo.R., na.rm = TRUE)

#PSYCH ADVANCED
mean(psyAdv$Convo.R., na.rm = TRUE)
sd(psyAdv$Convo.R., na.rm = TRUE)

#PSYCH BEGINNER
mean(psyBeg$Convo.R., na.rm = TRUE)
sd(psyBeg$Convo.R., na.rm = TRUE)

#PROOF 6:
#PSYCH descriptive states for PROOF 6:
mean(psyData$A...C.R., na.rm = TRUE)
sd(psyData$A...C.R., na.rm = TRUE)

#PSYCH ADVANCED
mean(psyAdv$A...C.R., na.rm = TRUE)
sd(psyAdv$A...C.R., na.rm = TRUE)

#PSYCH BEGINNER
mean(psyBeg$A...C.R., na.rm = TRUE)
sd(psyBeg$A...C.R., na.rm = TRUE)

## na.rm changes n :) 


#PHI descriptive stats for PROOF 1:
mean(phiData$Even.Odd.W.,na.rm=TRUE)
sd(phiData$Even.Odd.W.,na.rm=TRUE)
length(phiData$Condition)

#subset PHI ADVANCED
phiAdv <- subset(phiData, phiData$Condition == "PHI ADV")
mean(phiAdv$Even.Odd.W., na.rm = TRUE)
sd(phiAdv$Even.Odd.W.,na.rm=TRUE)
length(phiAdvV$Condition)

#subset PHI BEGINNER
phiBeg <- subset(phiData, phiData$Condition == "PHI BEG")
mean(phiBeg$Even.Odd.W.,na.rm=TRUE)
sd(phiBeg$Even.Odd.W.,na.rm=TRUE)


#PROOF 2:
#PHI descriptive stats for PROOF 2:
mean(phiData$A...D..W., na.rm=TRUE)
sd(phiData$A...D..W.,na.rm=TRUE)

#PHI ADVANCED
mean(phiAdv$A...D..W., na.rm = TRUE)
sd(phiAdv$A...D..W., na.rm = TRUE)

#PHI BEGINNER
mean(phiBeg$A...D..W., na.rm = TRUE)
sd(phiBeg$A...D..W., na.rm = TRUE)

#PROOF 3: 
#PHI descriptive states for PROOF 3:
mean(phiData$PYT.W., na.rm = TRUE)
sd(phiData$PYT.W., na.rm = TRUE)

#PHI ADVANCED
mean(phiAdv$PYT.W., na.rm = TRUE)
sd(phiAdv$PYT.W., na.rm = TRUE)


#PHI BEGINNER
mean(phiBeg$PYT.W., na.rm = TRUE)
sd(phiBeg$PYT.W., na.rm = TRUE)

#PROOF 4:
#PHI descriptive states for PROOF 4:
mean(phiData$X3.9.R., na.rm = TRUE)
sd(phiData$X3.9.R., na.rm = TRUE)

#PHI ADVANCED
mean(phiAdv$X3.9.R., na.rm = TRUE)
sd(phiAdv$X3.9.R., na.rm = TRUE)

#PHI BEGINNER
mean(phiBeg$X3.9.R., na.rm = TRUE)
sd(phiBeg$X3.9.R., na.rm = TRUE)

#PROOF 5:
#PHI descriptive states for PROOF 5:
mean(phiData$Convo.R., na.rm = TRUE)
sd(phiData$Convo.R., na.rm = TRUE)

#PHI ADVANCED
mean(phiAdv$Convo.R., na.rm = TRUE)
sd(phiAdv$Convo.R., na.rm = TRUE)

#PHI BEGINNER
mean(phiBeg$Convo.R., na.rm = TRUE)
sd(phiBeg$Convo.R., na.rm = TRUE)

#PROOF 6:
#PHI descriptive states for PROOF 6:
mean(phiData$A...C.R., na.rm = TRUE)
sd(phiData$A...C.R., na.rm = TRUE)

#PHI ADVANCED
mean(phiAdv$A...C.R., na.rm = TRUE)
sd(phiAdv$A...C.R., na.rm = TRUE)

#PHI BEGINNER
mean(phiBeg$A...C.R., na.rm = TRUE)
sd(phiBeg$A...C.R., na.rm = TRUE)



#MATH descriptive stats for PROOF 1:
mean(mathData$Even.Odd.W.,na.rm=TRUE)
sd(mathData$Even.Odd.W.,na.rm=TRUE)
length(mathData$Condition)

#subset MATH ADVANCED
mathAdv <- subset(mathData, mathData$Condition == "MATH ADV")
mean(mathAdv$Even.Odd.W., na.rm = TRUE)
sd(mathAdv$Even.Odd.W.,na.rm=TRUE)

#subset MATH BEGINNER
mathBeg <- subset(mathData, mathData$Condition == "MATH BEG")
mean(mathBeg$Even.Odd.W.,na.rm=TRUE)
sd(mathBeg$Even.Odd.W.,na.rm=TRUE)


#PROOF 2:
#MATH descriptive stats for PROOF 2:
mean(mathData$A...D..W., na.rm=TRUE)
sd(mathData$A...D..W.,na.rm=TRUE)

#MATH ADVANCED
mean(mathData$A...D..W., na.rm = TRUE)
sd(mathAdv$A...D..W., na.rm = TRUE)

#MATH BEGINNER
mean(mathBeg$A...D..W., na.rm = TRUE)
sd(mathBeg$A...D..W., na.rm = TRUE)

#PROOF 3: 
#MATH descriptive states for PROOF 3:
mean(mathData$PYT.W., na.rm = TRUE)
sd(mathData$PYT.W., na.rm = TRUE)

#MATH ADVANCED
mean(mathAdv$PYT.W., na.rm = TRUE)
sd(mathAdv$PYT.W., na.rm = TRUE)


#MATH BEGINNER
mean(mathBeg$PYT.W., na.rm = TRUE)
sd(mathBeg$PYT.W., na.rm = TRUE)

#PROOF 4:
#MATH descriptive states for PROOF 4:
mean(mathData$X3.9.R., na.rm = TRUE)
sd(mathData$X3.9.R., na.rm = TRUE)

#MATH ADVANCED
mean(mathAdv$X3.9.R., na.rm = TRUE)
sd(mathAdv$X3.9.R., na.rm = TRUE)

#MATH BEGINNER
mean(mathBeg$X3.9.R., na.rm = TRUE)
sd(mathBeg$X3.9.R., na.rm = TRUE)

#PROOF 5:
#MATH descriptive states for PROOF 5:
mean(mathData$Convo.R., na.rm = TRUE)
sd(mathData$Convo.R., na.rm = TRUE)

#MATH ADVANCED
mean(mathAdv$Convo.R., na.rm = TRUE)
sd(mathAdv$Convo.R., na.rm = TRUE)

#MATH BEGINNER
mean(mathBeg$Convo.R., na.rm = TRUE)
sd(mathBeg$Convo.R., na.rm = TRUE)

#PROOF 6:
#MATH descriptive states for PROOF 6:
mean(mathData$A...C.R., na.rm = TRUE)
sd(mathData$A...C.R., na.rm = TRUE)

#MATH ADVANCED
mean(mathAdv$A...C.R., na.rm = TRUE)
sd(mathAdv$A...C.R., na.rm = TRUE)

#MATH BEGINNER
mean(mathBeg$A...C.R., na.rm = TRUE)
sd(mathBeg$A...C.R., na.rm = TRUE)

begData <-
  allData %>%
  filter(Condition %in% c("MATH BEG", "PHI BEG", "PSY BEG"))



lm(allData$Even.Odd.W. ~ allData$Subject * allData$Level)
model = lm(proof1 ~ subject * level, data = allData)


# same order as spreadsheet in google docs
t.test(psyData$Even.Odd.W. , mathData$Even.Odd.W.)
t.test(psyData$Even.Odd.W., phiData$Even.Odd.W.)
t.test(phiData$Even.Odd.W., mathData$Even.Odd.W.)

phiBeg <- subset(phiData, phiData$Level == "BEG")
psyBeg <- subset(psyData, psyData$Level == "BEG")
matBeg <- subset(mathData, mathData$Level == "BEG")


t.test(psyBeg$Even.Odd.W., matBeg$Even.Odd.W.)
t.test(psyBeg$Even.Odd.W., phiBeg$Even.Odd.W.)
t.test(phiBeg$Even.Odd.W., matBeg$Even.Odd.W.)

psyAdv <- subset(psyData, psyData$Level == "ADV")
phiAdv <- subset(phiData, phiData$Level == "ADV")
matAdv <- subset(mathData, mathData$Level == "ADV")

t.test(psyAdv$Even.Odd.W., matAdv$Even.Odd.W.)
t.test(psyAdv$Even.Odd.W., phiAdv$Even.Odd.W.)
t.test(phiAdv$Even.Odd.W., matAdv$Even.Odd.W.)


beg <- subset(allData, allData$Level == "BEG")
adv <- subset(allData, allData$Level == "ADV")
t.test(adv$Even.Odd.W., beg$Even.Odd.W.)

t.test(psyData$A...D..W., mathData$A...D..W.)
t.test(psyData$A...D..W., phiData$A...D..W.)
t.test(phiData$A...D..W., mathData$A...D..W.)

t.test(psyBeg$A...D..W., matBeg$A...D..W.)
t.test(psyBeg$A...D..W., phiBeg$A...D..W.)
t.test(phiBeg$A...D..W., matBeg$A...D..W.)

t.test(psyAdv$Even.Odd.W., matAdv$A...D..W.)
t.test(psyAdv$A...D..W., phiAdv$A...D..W.)
t.test(phiAdv$A...D..W.,matAdv$A...D..W.)
t.test(beg$A...D..W., adv$A...D..W.)

t.test(psyData$PYT.W., mathData$PYT.W.)
t.test(psyData$PYT.W., phiData$PYT.W.)
t.test(phiData$PYT.W., mathData$PYT.W.)

t.test(psyBeg$PYT.W., matBeg$PYT.W.)
t.test(psyBeg$PYT.W., phiBeg$PYT.W.)
t.test(phiBeg$PYT.W., matBeg$PYT.W.)

t.test(psyAdv$PYT.W., matAdv$PYT.W.)
t.test(psyAdv$PYT.W., phiAdv$PYT.W.)
t.test(phiAdv$PYT.W., matAdv$PYT.W.)

t.test(beg$PYT.W., adv$PYT.W.)

t.test(psyData$X3.9.R., mathData$X3.9.R.)
t.test(psyData$X3.9.R., phiData$X3.9.R.)
t.test(phiData$X3.9.R., mathData$X3.9.R.)

t.test(psyBeg$X3.9.R., matBeg$X3.9.R.)
t.test(psyBeg$X3.9.R., phiBeg$X3.9.R.)
t.test(phiBeg$X3.9.R., matBeg$X3.9.R.)

t.test(psyAdv$X3.9.R., matAdv$X3.9.R.)
t.test(psyAdv$X3.9.R., phiAdv$X3.9.R.)
t.test(phiAdv$X3.9.R., matAdv$X3.9.R.)

t.test(beg$X3.9.R., adv$X3.9.R.)

t.test(psyData$Convo.R., mathData$Convo.R.)
t.test(psyData$Convo.R., phiData$Convo.R.)
t.test(phiData$Convo.R., mathData$Convo.R.)


t.test(psyBeg$Convo.R., matBeg$Convo.R.)
t.test(psyBeg$Convo.R., phiBeg$Convo.R.)
t.test(phiBeg$Convo.R., matBeg$Convo.R.)

t.test(psyAdv$Convo.R., matAdv$Convo.R.)
t.test(psyAdv$Convo.R., phiAdv$Convo.R.)
t.test(phiAdv$Convo.R., matAdv$Convo.R.)

t.test(beg$Convo.R., adv$Convo.R.)

t.test(psyData$A...C.R., mathData$A...C.R.)
t.test(psyData$A...C.R., phiData$A...C.R.)
t.test(phiData$A...C.R., mathData$A...C.R.)

t.test(psyBeg$A...C.R., matBeg$A...C.R.)
t.test(psyBeg$A...C.R., phiBeg$A...C.R.)
t.test(phiBeg$A...C.R., matBeg$A...C.R.)

t.test(psyAdv$A...C.R., matAdv$A...C.R.)
t.test(psyAdv$A...C.R., phiAdv$A...C.R.)
t.test(phiAdv$A...C.R., matAdv$A...C.R.)

t.test(beg$A...C.R., adv$A...C.R.)

right <- subset(allData[8:10])
wrong <- subset(allData[5:7])

t.test(wrong$Even.Odd.W., right$X3.9.R.)
t.test(wrong$PYT.W., right$Convo.R.)
t.test(wrong$A...D..W., right$A...C.R.)

logicist <- allData[c(1:134), c(6,10)]
intuitionist <- allData[c(1:134), c(5,8)]
platonist <- allData[c(1:134), c(7,9)]

t.test(logicist$A...D..W., platonist$Convo.R.)
t.test(logicist$A...D..W., intuitionist$X3.9.R.)
t.test(logicist$A...C.R., platonist$Convo.R.)
t.test(logicist$A...C.R., intuitionist$X3.9.R.)
t.test(logicist$A...D..W., logicist$A...C.R.)
t.test(logicist$A...D..W., logicist$A...C.R.)

t.test(platonist$PYT.W., logicist$A...D..W.)
t.test(platonist$PYT.W., intuitionist$X3.9.R.)
t.test(platonist$PYT.W., platonist$Convo.R.)
t.test(platonist$Convo.R., logicist$A...C.R.)
t.test(platonist$Convo.R., intuitionist$X3.9.R.)


t.test(intuitionist$Even.Odd.W., logicist$A...C.R.)
t.test(intuitionist$Even.Odd.W., platonist$Convo.R.)
t.test(intuitionist$Even.Odd.W., intuitionist$X3.9.R.)
t.test(intuitionist$X3.9.R., logicist$A...C.R.)
t.test(intuitionist$X3.9.R., platonist$Convo.R.)


## male v female t.test(male$Even.Odd.W., female$Even.Odd.W.)
t.test(male$A...D..W., female$A...D..W.)
t.test(male$X3.9.R., female$X3.9.R.)
t.test(male$PYT.W., female$PYT.W.)
t.test(male$Convo.R., female$Convo.R.)
t.test(male$A...C.R., female$A...C.R.)

t.test(matBeg$PYT.W., matAdv$PYT.W.)
t.test(phiBeg$PYT.W., phiAdv$PYT.W.)
t.test(psyAdv$PYT.W., psyBeg$PYT.W.)

t.test(matBeg$X3.9.R., matAdv$X3.9.R.)
t.test(phiAdv$X3.9.R., phiBeg$X3.9.R.)
t.test(psyBeg$X3.9.R., psyAdv$X3.9.R.)

t.test(matBeg$Convo.R., matAdv$Convo.R.)
t.test(phiBeg$Convo.R., phiAdv$Convo.R.)
t.test(psyAdv$Convo.R.,psyBeg$Convo.R.)

t.test(matAdv$A...C.R., matBeg$A...C.R.)
t.test(phiBeg$A...C.R., phiAdv$A...C.R.)
t.test(psyBeg$A...C.R., psyAdv$A...C.R.)







