hpc = read.table("D:/Shrijaya/R/Exp_dataAnalysis/household_power_consumption.txt", sep=';', header = TRUE,'numeric', 'numeric','numeric', 'numeric', 'numeric'), na.strings = '?')


  
  
  
hpc$Date_Time = strptime(paste(new_hpc$Date, new_hpc$Time),"%d/%m/%Y %H:%M:%S")


  
  hpc <- subset(hpc,as.Date(Date_Time) >= as.Date("2007-02-01") & as.Date(Date_Time) <= as.Date("2007-02-02"))


  
  
  
  png("plot2.png", height=480, width=480)

                 
  
  plot(hpc$Date_Time, new_hpc$Global_active_power, pch=NA, xlab="", ylab="Global Active Power (kilowatts)")

lines(hpc$Date_Time, new_hpc$Global_active_power)


  
  dev.off()
