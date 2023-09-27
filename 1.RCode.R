#### Professional Skills for Ecologists ####

## Introduction to git and github


#install tidyverse:
install.packages("tidyverse")

#load penguin data into R:
penguin_data <- read.table("data/penguin_data.txt", header = T)
head(penguin_data)

#Run some linear regressions with lm()
model1 <- lm(bill_length_mm ~ species, data=penguin_data)
summary(model1)
anova(model1)
aov(model1)

model2 <- lm(bill_length_mm ~ sex, data = penguin_data)
summary(model2)
anova(model2)


#make and save some plots into figs/ using ggplot:
#load ggplot2: 
library(ggplot2)

model1plot <- ggplot(penguin_data, aes(x = species, y = bill_length_mm)) + geom_boxplot()
model1plot

model2plot <- ggplot(penguin_data, aes(x = sex, y = bill_length_mm), na.omit = TRUE) + geom_boxplot()
model2plot

ggsave("figs/1.bill.length.sex.anova.boxplot.png") 

#and save it in figures:
ggsave("figs/1.bill.length.species.anova.boxplot.png") 

#NB. This saves the last plot that was run!

#subset the data to only look at a paticular species or sex:
#I've decided to subset to only the Adelie species
adelie_data <- subset(penguin_data, species == "Adelie")

#Save the edited dataset in results/
write_tsv(adelie_data, "results/1.penguin.adelie.only.txt")


## Verdict = USE GITHUB