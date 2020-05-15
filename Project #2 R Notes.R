



###3 Set working directory where files are located
setwd("~/Spring Term 2020/ST 538 - Methods for Big Data/Bosch")


#### Load Data

library(vroom)

train_numeric <- vroom("train_numeric.csv", n_max = 1000)
train_date <- vroom("train_date.csv", n_max = 1000)
train_categorical <- vroom("train_categorical.csv", n_max = 1000)


#### Joining Tables

library(dplyr)

total <- inner_join(train_categorical, train_date, by = 'Id')
total <- inner_join(total, train_numeric, by = 'Id')


#### Optional Transforation Wide to Long

library(tidyr)

l_total <- gather(total, key = "code", value = "time", -Id, -Response)




#### Plotting
#library(ggplot2)
#f <- ggplot(p_total, aes(code, time))

#f + geom_boxplot()
#f + geom_col()
#f + geom_violin()


#### Notes
#library(LearnBayes)
#x <- p_total[p_total$Id == '146',]
#x <- p_total[p_total$code == 'L3_S32_F3854',]

