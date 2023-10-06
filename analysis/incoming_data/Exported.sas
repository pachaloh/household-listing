libname user 'C:\Users\User\Documents\GitHub\household-listing\analysis\incoming_data';
Proc format;
  value F00001_
     1 = "Urban"
     2 = "Rural"
     3 = "Peri-Urban"
     ;
  value F00002_
     1 = "YES"
     2 = "NO"
     ;
  value F00003_
     1 = "Yes"
     2 = "No"
     ;
  value F00004_
     1 = "Yes"
     2 = "No"
     ;
  value F00005_
     1 = "Yes"
     2 = "No"
     ;
  value F00006_
     1 = "Occupied"
     2 = "Vacant"
     3 = "Temporary absent"
     6 = "Other"
     ;
  value F00007_
     1 = "Begin interview"
     ;
  value F00008_
     1 = "Conclude interview"
     ;
  value F00009_
     1 = "Yes"
     2 = "No"
     ;
Data user.Exported;
  attrib EA_CODE  length=$8 label="EA Code";
  attrib GHINTID  length=$36 label="Interviewer ID";
  attrib GHHHNO   label="Serial household number";
  attrib GHAREA   format=F00001_. label="Type of area";
  attrib GHVFDT   label="Interview date";
  attrib GHINTNAME length=$50 label="Interviewer Name";
  attrib DEM_STR  format=F00002_. label="Adult member availability";
  attrib MULT_HHS format=F00003_. label="Multiple households in structure";
  attrib SN_STRUCT label="Serial number of structure";
  attrib DESC_STRUCT length=$50 label="Description of structure";
  attrib RES_STRUCT format=F00004_. label="Residual structure";
  attrib HH_HEAD  length=$50 label="Name of household head";
  attrib POPULAR_NAME length=$50 label="Popular name of hh head";
  attrib UNDER_FIVE format=F00005_. label="Children under 5 in hh";
  attrib DU_STATUS format=F00006_. label="Status of dwelling";
  attrib HH_OBSERVATIONS length=$50 label="Observations";
  attrib HH_LABEL length=$10 label="Household label";
  attrib REGION   label="Region";
  attrib DISTRICT label="District";
  attrib HH_SUPERVISOR_CODE length=$36 label="Supervisor Code";
  attrib HH_START_INTERVIEW_TIME label="Start Interview Time";
  attrib HH_END_INTERVIEW_TIME label="End Interview Time";
  attrib HH_PROGRAM_PUBLISH_DATE label="Program Publish Date";
  attrib HH_INTRODUCTION format=F00007_. label="Interview Introduction";
  attrib HH_CONCLUSION format=F00008_. label="Interview Conclusion";
  attrib HH_GPS_READING format=F00009_. label="GPS Reading";
  attrib HH_LATITUDE label="GPS Latitude";
  attrib HH_LONGITUDE label="GPS Longitude";
  attrib HH_ALTITUDE label="GPS Altitude";
  attrib HH_GPS_ACCURACY label="GPS Accuracy";
  attrib HH_GPS_SAT label="GPS Satellites";
  attrib HH_GPS_READTIME label="GPS Readtime";
  attrib TEAM_CODE label="Team code";
  attrib ZONE_ID  label="Zone Id";
infile 'C:\Users\User\Documents\GitHub\household-listing\analysis\incoming_data\Exported.dat' LRECL=445 TRUNCOVER ;
    input
    @1    EA_CODE  $8.
    @9    GHINTID  $36.
    @45   GHHHNO   3.0
    @48   GHAREA   1.0
    @49   GHVFDT   8.0
    @57   GHINTNAME $50.
    @107  DEM_STR  1.0
    @108  MULT_HHS 1.0
    @109  SN_STRUCT 2.0
    @111  DESC_STRUCT $50.
    @161  RES_STRUCT 1.0
    @162  HH_HEAD  $50.
    @212  POPULAR_NAME $50.
    @262  UNDER_FIVE 1.0
    @263  DU_STATUS 1.0
    @264  HH_OBSERVATIONS $50.
    @314  HH_LABEL $10.
    @324  REGION   1.0
    @325  DISTRICT 2.0
    @327  HH_SUPERVISOR_CODE $36.
    @363  HH_START_INTERVIEW_TIME 10.0
    @373  HH_END_INTERVIEW_TIME 10.0
    @383  HH_PROGRAM_PUBLISH_DATE 14.0
    @397  HH_INTRODUCTION 1.0
    @398  HH_CONCLUSION 1.0
    @399  HH_GPS_READING 1.0
    @400  HH_LATITUDE 10.6
    @410  HH_LONGITUDE 11.6
    @421  HH_ALTITUDE 7.1
    @428  HH_GPS_ACCURACY 6.1
    @434  HH_GPS_SAT 3.0
    @437  HH_GPS_READTIME 6.0
    @443  TEAM_CODE 2.0
    @445  ZONE_ID  1.0
    ;
Run;
