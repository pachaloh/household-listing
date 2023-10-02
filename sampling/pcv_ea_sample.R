
library(readxl)
library(haven)


samplePCV = function (nsize = 4, threshold = 5, data){
  
  library(haven)
  library(doBy)
  
  data <- data[rowSums(is.na(data)) != ncol(data),]
  
  sampled.eas <- NA
  ctr = 1  
  
  zone_codes <- unique(data$dist_name)                                   	#Extract unique dist_name values
  
  for (i in zone_codes){                                                	#Loop through the unique values of dist_name
    #ctr = 1                                                             	#To count number of sample iterations
    dist_name_data <- data[which(data$dist_name==i),]
    cat("Dist Name:", i,"\n")
    cat("No of EAs:", nsize[ctr],"\n")
    sampleSel <- sample(1:nrow(dist_name_data),nsize[ctr])                #Sample numbers corresponding to EAs
    sel_data <- dist_name_data[sampleSel,]                                #Attach corresponding info to the EAS

    sampled.eas <- rbind(sampled.eas,sel_data)  
    #Sampled households together with their characteristics
    
    #lfs_sample <- list("sampled.eas" = sampled.eas)
    
    #cat("dist_name", i,"\n")
    cat("------------------------------\n")
    print(sel_data)
    ctr = ctr + 1
  }
  
  return(sampled.eas)
  #return (lfs_sample)
  
}


framePCV   <- read_excel("sampling_frame.xlsx", sheet = "EAsWithinHFCA")
ea_samples <- read_excel("sampling_frame.xlsx", sheet = "EA per District")

ea_samples$eas_selected <- round(ea_samples$eas_per_district)

View(merge(framePCV,ea_samples, by.x = "dist_code", by.y = "dist_code"))

data <- framePCV

cluster_size = c(5,6,3,8,6,4,7,8,9,5,5,3,4,5,4,4,6,7,3,4,5,3,4,5,2,3,4,3,5)

sample_draw <- samplePCV(cluster_size,1,framePCV)
sample_ea <- as.data.frame(sample_draw$sampled.eas)

