
library(haven)

data <- read_dta("ocv_listing_data_final.dta")
#data <- read.xlx("ocv_listing_data.xlsx")

sampleHHsurvey = function (data, nsize = 20){

  library(haven)
  library(writexl)
  
  
  data <- data[rowSums(is.na(data)) != ncol(data),]                     #Remove empty rows
  sampled.hhs  <- NA                                                    #Container to hold sampled hhs
  ea_codes     <- unique(data$ea_code)                                  #Extract unique EA values/codes

  for (i in ea_codes){                                                	#Loop through the unique values of EAs
                                                               	        
    ea_data <- data[which(data$ea_code==i),]                            #Data for a selected EA 
    sampleSel <- c()                                                    #Clear up the container for selected hhs
    interval_k   <- nrow(ea_data)/nsize
    set.seed(777)
    randStart    <- runif(1)*interval_k
    
    
    #Systematically select (rows of) HHs (Adopted from MICS)
    for(ctr in 1:nsize)
    {
      ifelse (ctr>1,
        sampleSel <- c(sampleSel,ceiling(randStart+(ctr-1)*interval_k)),
        sampleSel <- c(sampleSel,ceiling(randStart)))
    }
        
    
    sel_data <- ea_data[sampleSel,]                                     #Selected sample (Attaching corresponding info to the EAS)
    sel_data$sel_serno <- sampleSel                                     #Total number of households in an EA
    sel_data$total_hhs <- nrow(ea_data)                                 #Total number of households in an EA
    sel_data$prob_sel  <- nsize/nrow(ea_data)                           #Probability of selecting a household in an EA
    
    sampled.hhs <- rbind(sampled.hhs,sel_data) 
    
    #print(sel_data)
    cat(i,"(",nrow(ea_data),",",interval_k,",",round(randStart,2),") : ",nrow(sel_data),"->,",sampleSel,"\n")
    
    
  } 
  
  sampled.hhs <- sampled.hhs[rowSums(is.na(sampled.hhs)) != ncol(sampled.hhs),]       #Remove empty rows
  write_xlsx(sampled.hhs,"ocv-sampled-hhs.xlsx")
  View(sampled.hhs)
  View((sampled.hhs[,c("ea_code", "sel_serno", "hh_label", "total_hhs","prob_sel")]))
  return(sampled.hhs)
  
  #print(sampled.eas)
  #return (lfs_sample)
  
}


#setwd("C:/Users/User/Dropbox/LabourFourceSurvey/Sampling")



sample_draw <- sampleHHsurvey(data,25)

