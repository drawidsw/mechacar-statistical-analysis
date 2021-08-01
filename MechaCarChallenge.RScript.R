# 1. Change the working directory.
setwd("~/Desktop/PycharmProjects/mechacar-statistical-analysis")

# 2. Save this file as MechaCarChallenge.Rscript (done)

# 3. Load the dplyr package.
library(dplyr)

# 4. Import the car data.
cars_mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# 5. Perform regression.
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle +
                  ground_clearance + AWD, data=cars_mpg_table)

# 6. Regression summary.
summary(model)
