D1_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle+ ground_clearance +AWD,data=D1_table) #generate multiple linear regression model


summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle+ ground_clearance +AWD,data=D1_table))

D2_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

 total_Summary <-D2_table %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance=var(PSI),Standard_DV=sd(PSI), .groups = 'keep') #create total summary table
 View(total_Summary)
 lot_Summary <-D2_table %>% group_by(Manufacturing_Lot)%>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance=var(PSI),Standard_DV=sd(PSI), .groups = 'keep') #create lot  summary table
 View(lot_Summary)
 
 t.test(log10(D2_table$PSI),mu=mean(log10(1500))) #compare sample versus population means
 t.test(log10(subset(D2_table,Manufacturing_Lot=="Lot1",select=(PSI))),mu=mean(log10(1500)))
 t.test(log10(subset(D2_table,Manufacturing_Lot=="Lot2",select=(PSI))),mu=mean(log10(1500)))
 t.test(log10(subset(D2_table,Manufacturing_Lot=="Lot3",select=(PSI))),mu=mean(log10(1500)))
 