cspro.factor.type = 1
cspro.factor.create.new.variable = FALSE

# CSPro Export Factor Options:

#	cspro.factor.type (0): do not use factors
#	cspro.factor.type (1): factor only discrete numeric variables
#	cspro.factor.type (2): factor both discrete numeric and alpha variables

#	cspro.factor.create.new.variable: TRUE to add the factored variables as separate variables


exported <- read.fortran("C:/Users/User/Documents/GitHub/household-listing/analysis/incoming_data/Exported.dat",c("A8","A36","I3","I1","I8","A50","I1","I1","I2","A50","I1","A50","A50","I1","I1","A50","A10","I1","I2","A36","F10","F10","F14","I1","I1","I1","F10","F11","F7","F6","I3","I6","I2","I1"))

names(exported) <- c("ea_code","ghintid","ghhhno","gharea","ghvfdt","ghintname","dem_str","mult_hhs","sn_struct","desc_struct","res_struct","hh_head","popular_name","under_five","du_status","hh_observations","hh_label","region","district","hh_supervisor_code","hh_start_interview_time","hh_end_interview_time","hh_program_publish_date","hh_introduction","hh_conclusion","hh_gps_reading","hh_latitude","hh_longitude","hh_altitude","hh_gps_accuracy","hh_gps_sat","hh_gps_readtime","team_code","zone_id")

if( cspro.factor.type != 0 ) {

	if( cspro.factor.create.new.variable ) {
		exported$gharea.f <- factor(exported$gharea,levels = c(1,2,3),labels = c("Urban","Rural","Peri-Urban"))
	} else {
		exported$gharea <- factor(exported$gharea,levels = c(1,2,3),labels = c("Urban","Rural","Peri-Urban"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$dem_str.f <- factor(exported$dem_str,levels = c(1,2),labels = c("YES","NO"))
	} else {
		exported$dem_str <- factor(exported$dem_str,levels = c(1,2),labels = c("YES","NO"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$mult_hhs.f <- factor(exported$mult_hhs,levels = c(1,2),labels = c("Yes","No"))
	} else {
		exported$mult_hhs <- factor(exported$mult_hhs,levels = c(1,2),labels = c("Yes","No"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$res_struct.f <- factor(exported$res_struct,levels = c(1,2),labels = c("Yes","No"))
	} else {
		exported$res_struct <- factor(exported$res_struct,levels = c(1,2),labels = c("Yes","No"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$under_five.f <- factor(exported$under_five,levels = c(1,2),labels = c("Yes","No"))
	} else {
		exported$under_five <- factor(exported$under_five,levels = c(1,2),labels = c("Yes","No"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$du_status.f <- factor(exported$du_status,levels = c(1,2,3,6),labels = c("Occupied","Vacant","Temporary absent","Other"))
	} else {
		exported$du_status <- factor(exported$du_status,levels = c(1,2,3,6),labels = c("Occupied","Vacant","Temporary absent","Other"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$hh_introduction.f <- factor(exported$hh_introduction,levels = c(1),labels = c("Begin interview"))
	} else {
		exported$hh_introduction <- factor(exported$hh_introduction,levels = c(1),labels = c("Begin interview"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$hh_conclusion.f <- factor(exported$hh_conclusion,levels = c(1),labels = c("Conclude interview"))
	} else {
		exported$hh_conclusion <- factor(exported$hh_conclusion,levels = c(1),labels = c("Conclude interview"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$hh_gps_reading.f <- factor(exported$hh_gps_reading,levels = c(1,2),labels = c("Yes","No"))
	} else {
		exported$hh_gps_reading <- factor(exported$hh_gps_reading,levels = c(1,2),labels = c("Yes","No"))
	}

}

rm(cspro.factor.type)
rm(cspro.factor.create.new.variable)
