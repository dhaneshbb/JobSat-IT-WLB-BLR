data <- read.csv("../data/processed data/data.csv")
data

# Attach the data frame named "data" to the search path
attach(data)

# Open a new window displaying the data frame named "data" in a spreadsheet-like viewer
View(data)

# Return the names of the columns in the data frame named "data"
names(data)

# Load the package "MASS" for Modern Applied Statistics with S
library(MASS)

# Load the package "vcd" for visualizing categorical data
library(vcd)

# Load the package "grid" for graphical output
library(grid)

# Load the package "DescTools" for descriptive statistics and data description tools
library(DescTools)

# Load the package "lsr" for Learning Statistics with R
library(lsr)

# Load the package "xtable" for generating LaTeX and HTML tables from R objects
library(xtable)

# Load the package "epitools" for epidemiology-related calculations and analyses
library(epitools)


#######two way comparision for Example 'Gender' and 'stress'


# Create a contingency table of counts for the combination of 'Gender' and 'stress'
a = table(data$Gender, data$stress)
a

# Display the contingency table using xtable for LaTeX/HTML formatting
xtable(a)

# Compute Cramer's V statistic for the contingency table
cramersV(table(data$Gender, data$stress))

# Perform a chi-squared test of independence for the contingency table
chisq.test(table(data$Gender, data$stress))

# Create a mosaic plot of the contingency table
mosaicplot(table(data$Gender, data$stress), col = 10:20, main = "stress and Gender", xlab = "Gender", ylab = "stress")

# Create an association plot of the contingency table
assocplot(table(data$Gender, data$stress), col = c("lavender", "purple"), space = 0.3, main = "stress and Gender", xlab = "Gender", ylab = "stress")

# Create a flat contingency table using ftable
ftable(data$Gender, data$stress)

# Assign the contingency table to 'z' and display it
z = table(data$Gender, data$stress)
z

# Perform Fisher's exact test for the contingency table of 'Gender' and 'wfh'
fisher.test(table(data$Gender, data$wfh))

# Convert contingency table counts to percentages
z1 = (z / 200) * 100
z1


##Gender and MH
b=table(data$Gender,data$MH)
b
xtable(b)
cramersV(table(data$Gender,data$MH))
chisq.test(table(data$Gender,data$MH))
mosaicplot(table(data$Gender,data$MH),col=10:20,main="MH and Gender",xlab="Gender",ylab="MH")
assocplot(table(data$Gender,data$MH),col=c("lavender","brown"),space=0.3,main="MH and Gender",xlab="Gender",ylab="MH")
ftable(data$Gender,data$MH)
z=table(data$Gender,data$MH)
z
z2=(z/200)*100
z2

##Gender and personal.commitments
c=table(data$Gender,data$personal.commitments)
c
xtable(c)
cramersV(table(data$Gender,data$personal.commitments))
chisq.test(table(data$Gender,data$personal.commitments))
mosaicplot(table(data$Gender,data$personal.commitments),col=2:7,main="personal.commitments and Gender",xlab="Gender",ylab="personal.commitments")
assocplot(table(data$Gender,data$personal.commitments),col=c("yellow","red"),space=0.3,main="personal.commitments and Gender",xlab="Gender",ylab="personal.commitments")
ftable(data$Gender,data$personal.commitments)
fisher.test(table(data$Gender,data$personal.commitments))
z=table(data$Gender,data$personal.commitments)
z
z3=(z/200)*100
z3

###Gender and professional development
d=table(data$Gender,data$prof.dvpt)
d
xtable(d)
cramersV(table(data$Gender,data$prof.dvpt))
chisq.test(table(data$Gender,data$prof.dvpt))
mosaicplot(table(data$Gender,data$prof.dvpt),col=10:20,main="prof.dvpt and Gender",xlab="Gender",ylab="prof.dvpt")
assocplot(table(data$Gender,data$prof.dvpt),col=c("blue","green"),space=0.3,main="prof.dvpt and Gender",xlab="Gender",ylab="prof.dvpt")
ftable(data$Gender,data$prof.dvpt)
fisher.test(table(data$Gender,data$prof.dvpt))
z=table(data$Gender,data$prof.dvpt)
z
z4=(z/200)*100
z4


###Gender and social connectedness
e=table(data$Gender,data$social.connect)
e
xtable(e)
cramersV(table(data$Gender,data$social.connect))
chisq.test(table(data$Gender,data$social.connect))
mosaicplot(table(data$Gender,data$social.connect),col=10:20,main="social connect and Gender",xlab="Gender",ylab="social.connect")
assocplot(table(data$Gender,data$social.connect),col=c("blue","green"),space=0.3,main="social.connect and Gender",xlab="Gender",ylab="social.connect")
ftable(data$Gender,data$social.connect)
fisher.test(table(data$Gender,data$social.connect))
z=table(data$Gender,data$social.connect)
z
z5=(z/200)*100
z5

###Gender and Experience
f=table(data$Gender,data$social.connect)
f
xtable(f)
cramersV(table(data$Gender,data$exp))
chisq.test(table(data$Gender,data$exp))
mosaicplot(table(data$Gender,data$exp),col=10:20,main="exp and Gender",xlab="Gender",ylab="exp")
assocplot(table(data$Gender,data$exp),col=c("blue","green"),space=0.3,main="exp and Gender",xlab="Gender",ylab="exp")
ftable(data$Gender,data$exp)
fisher.test(table(data$Gender,data$exp))
z=table(data$Gender,data$exp)
z
z6=(z/200)*100
z6

###Gender and work from home

g=table(data$Gender,data$wfh)
g
xtable(g)
cramersV(table(data$Gender,data$wfh))
chisq.test(table(data$Gender,data$wfh))
mosaicplot(table(data$Gender,data$wfh),col=10:20,main="wfh and Gender",xlab="Gender",ylab="wfh")
assocplot(table(data$Gender,data$wfh),col=c("blue","green"),space=0.3,main="wfh and Gender",xlab="Gender",ylab="wfh")
ftable(data$Gender,data$wfh)
fisher.test(table(data$Gender,data$wfh))
z=table(data$Gender,data$wfh)
z
z7=(z/200)*100
z7

###Gender and work from home(job satisfaction)

h=table(data$Gender,data$wfh.js)
h
xtable(h)
cramersV(table(data$Gender,data$wfh.js))
chisq.test(table(data$Gender,data$wfh.js))
mosaicplot(table(data$Gender,data$wfh.js),col=10:20,main="wfh.js and Gender",xlab="Gender",ylab="wfh.js")
assocplot(table(data$Gender,data$wfh.js),col=c("blue","green"),space=0.3,main="wfh.js and Gender",xlab="Gender",ylab="wfh.js")
ftable(data$Gender,data$wfh.js)
fisher.test(table(data$Gender,data$wfh.js))
z=table(data$Gender,data$wfh.js)
z
z8=(z/200)*100
z8

###Gender and work from home(productivity)

i=table(data$Gender,data$wfh.prod)
i
xtable(i)
cramersV(table(data$Gender,data$wfh.prod))
chisq.test(table(data$Gender,data$wfh.prod))
mosaicplot(table(data$Gender,data$wfh.prod),col=10:20,main="wfh.prod and Gender",xlab="Gender",ylab="wfh.prod")
assocplot(table(data$Gender,data$wfh.prod),col=c("blue","green"),space=0.3,main="wfh.prod and Gender",xlab="Gender",ylab="wfh.prod")
ftable(data$Gender,data$wfh.prod)
fisher.test(table(data$Gender,data$wfh.prod))
z=table(data$Gender,data$wfh.prod)
z
z9=(z/200)*100
z9


###Gender and marital status

j=table(data$Gender,data$Marital.status)
j
xtable(j)
cramersV(table(data$Gender,data$Marital.status))
chisq.test(table(data$Gender,data$Marital.status))
mosaicplot(table(data$Gender,data$Marital.status),col=4:2,main="Marital.status and Gender",xlab="Gender",ylab="Marital.status")
assocplot(table(data$Gender,data$Marital.status),col=c("blue","green"),space=0.3,main="Marital.status and Gender",xlab="Gender",ylab="Marital.status")
ftable(data$Gender,data$Marital.status)
fisher.test(table(data$Gender,data$Marital.status))
z=table(data$Gender,data$Marital.status)
z
z10=(z/200)*100
z10

###Gender and illness

k=table(data$Gender,data$illness)
k
xtable(k)
cramersV(table(data$Gender,data$illness))
chisq.test(table(data$Gender,data$illness))
mosaicplot(table(data$Gender,data$illness),col=10:20,main="stress and Gender",xlab="Gender",ylab="illness")
assocplot(table(data$Gender,data$illness),col=c("lavender","purple"),space=0.3,main="stress and Gender",xlab="Gender",ylab="illness")
ftable(data$Gender,data$illness)
z=table(data$Gender,data$illness)
z
fisher.test(table(data$Gender,data$illness))
z11=(z/200)*100
z11


########FOURFOLD PLOT example for "Marital.status"

# Create a contingency table of counts for the combination of 'Marital.status' and 'wfh.js'
a = table(data$Marital.status, data$wfh.js)

# Display the contingency table using xtable for LaTeX/HTML formatting
xtable(a)

# Create a fourfold plot for the contingency table of 'Marital.status' and 'wfh.js'
fourfoldplot(table(Marital.status, job_satisfaction = wfh.js))


#########Proportional Test example for "gender and stress"

# Create a contingency table of counts for the combination of 'stress' and 'Gender'
a = table(data$stress, data$Gender)
a

# Display the contingency table using xtable for LaTeX/HTML formatting
xtable(a)

# Perform a proportion test for the contingency table of 'stress' and 'Gender'
prop.test(table(data$stress, data$Gender))

# Create a table of proportions from the contingency table 'a'
prop.table(a)

###Proportion test for gender and personal commitment
b=table(data$personal.commitments,data$Gender)
b
xtable(b)
prop.test(table(data$personal.commitments,data$Gender))
prop.table(b)

###Proportion test for gender and marital status
c=table(data$Marital.status,data$Gender)
c
xtable(c)
prop.test(table(data$Marital.status,data$Gender))
prop.table(c)

###Proportion test for gender and professional development
d=table(data$prof.dvpt,data$Gender)
d
xtable(d)
prop.test(table(data$prof.dvpt,data$Gender))
prop.table(d)

###Proportion test for gender and social connectivity
e=table(data$social.connect,data$Gender)
e
xtable(e)
prop.test(table(data$social.connect,data$Gender))
prop.table(e)


###Proportion test for gender and experience
f=table(data$exp,data$Gender)
f
xtable(f)
prop.test(table(data$exp,data$Gender))
prop.table(f)

###Proportion test for gender and work from home
g=table(data$wfh,data$Gender)
g
xtable(g)
prop.test(table(data$wfh,data$Gender))
prop.table(g)


###Proportion test for gender and work from home job satisfaction 
h=table(data$wfh.js,data$Gender)
h
xtable(h)
prop.test(table(data$wfh.js,data$Gender))
prop.table(h)


###Proportion test for gender and work from home productivity
i=table(data$wfh.prod,data$Gender)
i
xtable(i)
prop.test(table(data$wfh.prod,data$Gender))
prop.table(i)


########odd ratio example for " Gender and illness "

# Load the 'epitools' library for epidemiology-related calculations and analyses
library(epitools)

# Create a contingency table of counts for the combination of 'Gender' and 'illness'
a = table(Gender, illness)
xtable(a)

# Define the levels for 'illness' and 'Gender'
illness <- c('Yes', 'No')
Gender <- c('Female', 'Male')

# Create a matrix of counts
data <- matrix(c(20, 78, 22, 85), nrow = 2, ncol = 2, byrow = TRUE)
dimnames(data) <- list('Gender' = Gender, 'illness' = illness)
data

# Compute the odds ratio for the contingency table
oddsratio(data)


###Gender and positive Mental Health

b=table(Gender,positive.MH)
xtable(b)
positive.MH=c('Yes','No')
Gender=c('Female','Male')
data=matrix(c(82,16,85,22),nrow=2,ncol=2,byrow=TRUE)
dimnames(data)=list('Gender'=Gender,'positive.MH'=positive.MH)
data
oddsratio(data)

###Gender and work place

c=table(Gender,wrk.place)
xtable(c)
wrk.place=c('Yes','No')
Gender=c('Female','Male')
data=matrix(c(60,38,56,51),nrow=2,ncol=2,byrow=TRUE)
dimnames(data)=list('Gender'=Gender,'wrk.place'=wrk.place)
data
oddsratio(data)

###Gender and prof.dvpt
d=table(Gender,prof.dvpt)
xtable(c)
prof.dvpt=c('Yes','No')
Gender=c('Female','Male')
data=matrix(c(38,60,55,52),nrow=2,ncol=2,byrow=TRUE)
dimnames(data)=list('Gender'=Gender,'prof.dvpt'=prof.dvpt)
data
oddsratio(data)


###Gender and work from home

e=table(Gender,wfh)
xtable(e)
wfh=c('Yes','No')
Gender=c('Female','Male')
data=matrix(c(36,62,35,72),nrow=2,ncol=2,byrow=TRUE)
dimnames(data)=list('Gender'=Gender,'wfh'=wfh)
data
oddsratio(data)

###Gender and before work from home

e=table(Gender,before.wfh)
xtable(e)
before.wfh=c('Yes','No')
Gender=c('Female','Male')
data=matrix(c(36,62,39,68),nrow=2,ncol=2,byrow=TRUE)
dimnames(data)=list('Gender'=Gender,'before.wfh'=before.wfh)
data
oddsratio(data)

###Gender and job satisfaction (wfh)

f=table(Gender,wfh.js)
xtable(f)
wfh.js=c('Yes','No')
Gender=c('Female','Male')
data=matrix(c(59,39,59,48),nrow=2,ncol=2,byrow=TRUE)
dimnames(data)=list('Gender'=Gender,'wfh.js'=wfh.js)
data
oddsratio(data)









