infix using "C:\Users\User\Documents\GitHub\household-listing\analysis\incoming_data\Exported.dct"

label variable ea_code  "EA Code"
label variable ghintid  "Interviewer ID"
label variable ghhhno   "Serial household number"
label variable gharea   "Type of area"
label variable ghvfdt   "Interview date"
label variable ghintname "Interviewer Name"
label variable dem_str  "Adult member availability"
label variable mult_hhs "Multiple households in structure"
label variable sn_struct "Serial number of structure"
label variable desc_struct "Description of structure"
label variable res_struct "Residual structure"
label variable hh_head  "Name of household head"
label variable popular_name "Popular name of hh head"
label variable under_five "Children under 5 in hh"
label variable du_status "Status of dwelling"
label variable hh_observations "Observations"
label variable hh_label "Household label"
label variable region   "Region"
label variable district "District"
label variable hh_supervisor_code "Supervisor Code"
label variable hh_start_interview_time "Start Interview Time"
label variable hh_end_interview_time "End Interview Time"
label variable hh_program_publish_date "Program Publish Date"
label variable hh_introduction "Interview Introduction"
label variable hh_conclusion "Interview Conclusion"
label variable hh_gps_reading "GPS Reading"
label variable hh_latitude "GPS Latitude"
label variable hh_longitude "GPS Longitude"
label variable hh_altitude "GPS Altitude"
label variable hh_gps_accuracy "GPS Accuracy"
label variable hh_gps_sat "GPS Satellites"
label variable hh_gps_readtime "GPS Readtime"
label variable team_code "Team code"
label variable zone_id  "Zone Id"

#delimit ;
label define GHAREA  
     1 "Urban"
     2 "Rural"
     3 "Peri-Urban"
;
label define DEM_STR 
     1 "YES"
     2 "NO"
;
label define MULT_HHS
     1 "Yes"
     2 "No"
;
label define RES_STRUCT
     1 "Yes"
     2 "No"
;
label define UNDER_FIVE
     1 "Yes"
     2 "No"
;
label define DU_STATUS
     1 "Occupied"
     2 "Vacant"
     3 "Temporary absent"
     6 "Other"
;
label define HH_INTRODUCTION
     1 "Begin interview"
;
label define HH_CONCLUSION
     1 "Conclude interview"
;
label define HH_GPS_READING
     1 "Yes"
     2 "No"
;

#delimit cr
label values gharea   GHAREA  
label values dem_str  DEM_STR 
label values mult_hhs MULT_HHS
label values res_struct RES_STRUCT
label values under_five UNDER_FIVE
label values du_status DU_STATUS
label values hh_introduction HH_INTRODUCTION
label values hh_conclusion HH_CONCLUSION
label values hh_gps_reading HH_GPS_READING
