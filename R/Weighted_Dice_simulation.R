# Simulation
source("./R/roll.R")
ls()
replicate(20, roll())
N <- 10000
rolls <- replicate(N, roll())
table(rolls)
options("digits")
options(digits = 2)
table(rolls)/N
table(rolls)/N * 36
options(digits = 1)
table(rolls)/N * 36
options(digits = 7)
# histogram
library(ggplot2)
qplot(c(1, 2, 2, 2, 3, 3), binwidth = 1)
qplot(c(1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4), binwidth = 1)
qplot(rolls, binwidth = 1)
# Weighted Dice
roll_w <- roll
fix(roll_w)
roll_w
replicate(100, roll_w())
N <- 10000
rolls_w <- replicate(N, roll_w())
table(rolls_w)
options("digits")
options(digits = 2)
table(rolls_w)/N
table(rolls_w)/N * 64
options(digits = 1)
table(rolls_w)/N * 64
# histogram
qplot(rolls_w, binwidth = 1)
# dump
dump(list = "roll_w", file = "./R/roll_w.R")
