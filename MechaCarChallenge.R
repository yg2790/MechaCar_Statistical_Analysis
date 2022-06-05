# Deliverable 1

library(dplyr)

MC_mpg <- read.csv(file = 'MechaCar_mpg.csv', stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + 
     AWD, data = MC_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data = MC_mpg))

# Deliverable 2

sus_coil <- read.csv(file = 'Suspension_Coil.csv',check.names = F, 
                     stringsAsFactors = F)

total_summary <- sus_coil %>% summarize(Mean = mean(PSI),
                                        Median = median(PSI),
                                        Variance = var(PSI),
                                        SD = sd(PSI),
                                        .groups = 'keep')

lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI),
            Median = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI),
            .groups = 'keep')

# Deliverable 3

t.test(sus_coil$PSI, mu = 1500)

Lot1 <- subset(sus_coil, Manufacturing_Lot == 'Lot1')
Lot2 <- subset(sus_coil, Manufacturing_Lot == 'Lot2')
Lot3 <- subset(sus_coil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu = 1500)
t.test(Lot2$PSI, mu = 1500)
t.test(Lot3$PSI, mu = 1500)

