# Utkarsh Kulshrestha
# kuls.utkarsh1205@gmail.com


my_data <- PlantGrowth

# Show a random sample
set.seed(1234)
dplyr::sample_n(my_data, 10)

# Show the levels
levels(my_data$group)

my_data$group <- ordered(my_data$group, levels = c("ctrl", "trt1", "trt2"))

library(dplyr)
group_by(my_data, group) %>%
  summarise(
    count = n(),
    mean = mean(weight, na.rm = TRUE),
    sd = sd(weight, na.rm = TRUE)
  )


# Install
#if(!require(devtools)) install.packages("devtools")
#devtools::install_github("kassambara/ggpubr")
#install.packages("ggpubr")

# Box plots
# ++++++++++++++++++++
# Plot weight by group and color by group
library("ggpubr")
ggboxplot(my_data, x = "group", y = "weight", 
          color = "group", palette = c("#00AFBB", "#E7B800", "#FC4E07"),
          order = c("ctrl", "trt1", "trt2"),
          ylab = "Weight", xlab = "Treatment")

# Mean plots
# ++++++++++++++++++++
# Plot weight by group
# Add error bars: mean_se
# (other values include: mean_sd, mean_ci, median_iqr, ....)
library("ggpubr")
ggline(my_data, x = "group", y = "weight", 
       add = c("mean_se", "jitter"), 
       order = c("ctrl", "trt1", "trt2"),
       ylab = "Weight", xlab = "Treatment")

# Compute the analysis of variance
res.aov <- aov(weight ~ group, data = my_data)
# Summary of the analysis
summary(res.aov)

TukeyHSD(res.aov)
