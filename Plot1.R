GAP = read.table("D:/Shrijaya/R/Exp_dataAnalysis/household_power_consumption.txt", sep=';', header = TRUE,
                     
colClasses = c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric','numeric', 'numeric', 'numeric'), na.strings = '?')

  
  
   
  
GAP$Date_Time = strptime(paste(new_hpc$Date, new_hpc$Time),"%d/%m/%Y %H:%M:%S")

  new_hpc <- subset(GAP,as.Date(Date_Time) >= as.Date("2007-02-01") & as.Date(Date_Time) <= as.Date("2007-02-02"))

  png("plot1.png", height=480, width=480)                 

  hist(GAP$Global_active_power, col='red', xlab = 'Global Active Power (kilowatts)', main = 'Global Active Power')
dev.off()


