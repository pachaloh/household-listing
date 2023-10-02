


#Function that selects EAs randomly
##################################################################

samplePCV = function (eas_data, threshold = 5, data){
  
  library(haven)
  library(doBy)
  library(writexl)
  
  data     <- data[rowSums(is.na(data)) != ncol(data),]
  eas_data <- eas_data[rowSums(is.na(eas_data)) != ncol(eas_data),]
  
  sampled.eas <- NA
  ctr = 1  
  
  zone_codes <- unique(eas_data$zone_dist)                                #Extract unique zone_dist values
  
  set.seed(77)
  
  for (i in zone_codes){                                                	#Loop through the unique values of zone_dist
    #ctr = 1                                                             	#To count number of sample iterations
    dist_name_data <- data[which(data$zone_dist==i),]
    no_eas <- eas_samp$eas_selected[eas_samp$zone_dist==i]
    cat("Dist Name:", i,"\n")
    cat("No of EAs:", no_eas,"\n")
    
    if(no_eas > 0)
    {
      #no_eas <- eas_samp$eas_selected[eas_samp$zone_dist==i]
      sampleSel <- sample(1:nrow(dist_name_data),no_eas)                #Sample numbers corresponding to EAs
      sel_data <- dist_name_data[sampleSel,]                            #Attach corresponding info to the EAS
      
      sampled.eas <- rbind(sampled.eas,sel_data)  
      
      cat("------------------------------\n")
      print(sel_data)
    }
    else
    {
      cat("------------------------------\n")
      cat("Not sampled\n")
    }

    ctr = ctr + 1
  }
  
  sampled.eas <- sampled.eas[rowSums(is.na(sampled.eas)) != ncol(sampled.eas),]
  write_xlsx(sampled.eas,"pcv-sampled-eas.xlsx")
  return(sampled.eas)
  
}


library(readxl)
library(haven)

framePCV  <- read_excel("sampling_frame.xlsx", sheet = "EAsWithinHFCA")

#Number of selected EAs. Care needs to be taken on the order
eas_samp  <- read_excel("sampling_frame.xlsx", sheet = "EA per District")
eas_samp$eas_selected <- round(eas_samp$eas_per_district)






sample_draw <- samplePCV(eas_samp,1,framePCV)

View(sample_draw[sample_draw$zone_dist==303,])
cbind(table(sample_draw$zone_dist))
cbind(table(sample_draw$dist_name))
