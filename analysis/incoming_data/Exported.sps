DATA LIST FILE='C:\Users\User\Documents\GitHub\household-listing\analysis\incoming_data\Exported.dat' RECORDS=1
 /
 EA_CODE     1-8    (A)
 GHINTID     9-44   (A)
 GHHHNO     45-47  
 GHAREA     48-48  
 GHVFDT     49-56  
 GHINTNAME   57-106  (A)
 DEM_STR   107-107 
 MULT_HHS  108-108 
 SN_STRUCT  109-110 
 DESC_STRUCT  111-160  (A)
 RES_STRUCT  161-161 
 HH_HEAD   162-211  (A)
 POPULAR_NAME  212-261  (A)
 UNDER_FIVE  262-262 
 DU_STATUS  263-263 
 HH_OBSERVATIONS  264-313  (A)
 HH_LABEL  314-323  (A)
 REGION    324-324 
 DISTRICT  325-326 
 HH_SUPERVISOR_CODE  327-362  (A)
 HH_START_INTERVIEW_TIME  363-372 
 HH_END_INTERVIEW_TIME  373-382 
 HH_PROGRAM_PUBLISH_DATE  383-396 
 HH_INTRODUCTION  397-397 
 HH_CONCLUSION  398-398 
 HH_GPS_READING  399-399 
 HH_LATITUDE  400-409  (6)
 HH_LONGITUDE  410-420  (6)
 HH_ALTITUDE  421-427  (1)
 HH_GPS_ACCURACY  428-433  (1)
 HH_GPS_SAT  434-436 
 HH_GPS_READTIME  437-442 
 TEAM_CODE  443-444 
 ZONE_ID   445-445 
.
VARIABLE LABELS
  EA_CODE  "EA Code"
 /GHINTID  "Interviewer ID"
 /GHHHNO   "Serial household number"
 /GHAREA   "Type of area"
 /GHVFDT   "Interview date"
 /GHINTNAME "Interviewer Name"
 /DEM_STR  "Adult member availability"
 /MULT_HHS "Multiple households in structure"
 /SN_STRUCT "Serial number of structure"
 /DESC_STRUCT "Description of structure"
 /RES_STRUCT "Residual structure"
 /HH_HEAD  "Name of household head"
 /POPULAR_NAME "Popular name of hh head"
 /UNDER_FIVE "Children under 5 in hh"
 /DU_STATUS "Status of dwelling"
 /HH_OBSERVATIONS "Observations"
 /HH_LABEL "Household label"
 /REGION   "Region"
 /DISTRICT "District"
 /HH_SUPERVISOR_CODE "Supervisor Code"
 /HH_START_INTERVIEW_TIME "Start Interview Time"
 /HH_END_INTERVIEW_TIME "End Interview Time"
 /HH_PROGRAM_PUBLISH_DATE "Program Publish Date"
 /HH_INTRODUCTION "Interview Introduction"
 /HH_CONCLUSION "Interview Conclusion"
 /HH_GPS_READING "GPS Reading"
 /HH_LATITUDE "GPS Latitude"
 /HH_LONGITUDE "GPS Longitude"
 /HH_ALTITUDE "GPS Altitude"
 /HH_GPS_ACCURACY "GPS Accuracy"
 /HH_GPS_SAT "GPS Satellites"
 /HH_GPS_READTIME "GPS Readtime"
 /TEAM_CODE "Team code"
 /ZONE_ID  "Zone Id"
.
VALUE LABELS
  GHAREA  
     1 "Urban"
     2 "Rural"
     3 "Peri-Urban"
 /DEM_STR 
     1 "YES"
     2 "NO"
 /MULT_HHS
     1 "Yes"
     2 "No"
 /RES_STRUCT
     1 "Yes"
     2 "No"
 /UNDER_FIVE
     1 "Yes"
     2 "No"
 /DU_STATUS
     1 "Occupied"
     2 "Vacant"
     3 "Temporary absent"
     6 "Other"
 /HH_INTRODUCTION
     1 "Begin interview"
 /HH_CONCLUSION
     1 "Conclude interview"
 /HH_GPS_READING
     1 "Yes"
     2 "No"
.
EXECUTE.
