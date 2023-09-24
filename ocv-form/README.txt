===============================================================
------ Model LFS Questionnaire in CSPro for CAPI   
------ Downloaded from https://www.ilo.org/lfsresources/Builder 
------ Created Date: 2022-Oct-28-142427
------ Application Version: BETA(0.2)
------ CAPI Documentation Version: V3
------ Author: Department of Statistics, ILO
===============================================================


I. INTRODUCTION
---------------

    The new "Build your own LFS" toolkit (beta version) enables users to customise the ILO model LFS content to 
    reflect more closely the social and economic context of the setting in which the questionnaire will be used. 

    Based on user selection the "LFS Programme Builder" will generate a customized LFS questionnaire in CSPro
    for CAPI that can be deployed on android devices. The modules and topic selected are listed in IV. MODULES & 
    TOPIC LIST. Additional tools to support further national adaptation (question wording, examples, response opt
    -ions, languages, etc.) are coming soon.



II. TERM OF USE
---------------

    This customized LFS Questionnaire was generated from the beta version of "LFS Programme Builder", the 
    users are advised to exercise caution in the use of the output generated. Users should refer to the suppor
    -ting documentation (ILO LFS for CAPI documentation v3) for additional information on the content of the 
    model LFS questionnaire and its use and refer back to the ILO website for updates. 

    Users should also note that this release covers only the household interview part of a CAPI application. 
    For actual survey implementation additional elements/systems need to be developed, particularly to handle
    sample management, interviewer workload assignment, field supervision, etc. 
  


III. FILE LIST
--------------

    CSProRuntime.en.mgf                   Customized runtime error message
    deploy.csds                           CSPro deployment specifications
    PopstanLFS.dcf                        CSPro data dictionary
    PopstanLFS.ent                        CSPro data entry application 
    PopstanLFS.ent.apc                    CSPro logic code
    PopstanLFS.ent.mgf                    CSPro user-defined messages
    PopstanLFS.ent.qsf                    CSPro CAPI question text
    PopstanLFS.fmf                        CSPro Forms
    PopstanLFS.pff                        CSPro application run file
    README.txt                            This file



IV. MODULES & TOPIC LIST  
------------------------

DEM          HOUSEHOLD ROSTER AND DEMOGRAPHICS
HLL          HOUSEHOLD SOURCES OF LIVELIHOOD
RSP          RESPONDENT STATUS
ATW          EMPLOYMED, AT WORK
ABS          TEMPORARY ABSENCE FROM EMPLOYMENT
MJJ          MAIN JOB - CORE JOB CHARACTERISTICS
MJU          MAIN JOB - CORE CHARACTERISTICS OF THE ECONOMIC UNIT
MJC          MAIN JOB - CORE CONTRACT CHARACTERISTICS
SJJ          SECOND JOB - CORE JOB CHARACTERISTICS
WKT          WORKING TIME IN EMPLOYMENT
SRH          JOB SEARCH AND AVAILABILITY



V. SYSTEM REQUIREMENTS
----------------------

    * CSPro 7.2, Windows desktop  
      In order to compile and deploy this model LFS questionnaire, the users are required to have
      CSPro 7.2 installed.
      https://www.census.gov/data/software/cspro.Download.html

            
    * CSEntry, Android device
      In order to run the deployed survey on Android devices, the users are required to have CSEntry
      program installed.
      https://play.google.com/store/apps/details?id=gov.census.cspro.csentry&hl=en   			        



VI. HOW TO USE
--------------

    * View and Edit in CSPro
      If the proper version of CSPro has been installed, the users can view/edit the Model LFS questionnaire by 
      double-clicking the application file "PopstanLFS.ent".     

    * Documentation
      - CAPI documentation. The users can access the latest version of the CAPI doumentations from  
        https://www.ilo.org/lfsresources/Tools/CAPI#capiDoc
      - CSPro documentation. The users can find user's guides from CSPro 
        https://www.census.gov/data/software/cspro/documentation.html

    * Deployment 
      CSPro supports multiple ways to put the CAPI application on an Android phone/tablet, either via the server
      mode using CSweb, Dropbox or FTP, or via the local mode using a local folder or a zip file. Here for the mo
      -del LFS questionnaire, the following steps show you how to run the application on Andriod with simple local
      file transfer:     

      1. Unzip the download file and don't run any application file when visualizing the .zip folder content.
      2. Double-click the deployment file "deploy.csds" to execute the deployment (CSPro 7.2 must be installed). 
      2. By clicking "Deploy", it generates two files "PopstanLFS.pen" and "PopstanLFS.pff" under your C: drive 
         "C:\ModelLFS_LocalDeploy" (The folder"location can be changed under "Deploy To" ->"Local folder").
      3. Connect the tablet to the PC using a USB cable. 
      4. Copy all the files (PopstanLFS.pen and PopstanLFS.pff) under the deployment folder into your Android device
         ..\csentry folder (CSEntry must be installed).
      5. Start CSEntry on the Android device, the application "LFS Programme Builder (Beta)" is on the list of "Entry
         Applications".  	  
        
      More details regarding the deployment can be found in http://www.csprousers.org/help/CSDeploy/



VII. COPYRIGHTS
--------------

     * Copyright (c) 1996-2019 International Labour Organization. All rights reserved.
       More details regarding the ILO's copyright and permissions, please refer to 
       https://www.ilo.org/global/copyright/lang--en/index.htm
