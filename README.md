# WSJTX-gdslog Project
A Python program to perform several functions based on reception of WSJT-X UDP packets:
   Status (type 1) packets to control a WiFi cnnected antenna switch.  It derives the band from the opertaing frequency dropdown and commands a switch to the appropriate antenna via an HTTP command
   QSO Logged (type 5) packets are used to log a contact in my ham logging database.  It is PHP3 based witha Mysql database but has not yet been documented anywhere. 
   WSPR Decode (type 10) packets are inserted into a Mysql database to allow aggregate reporting to an ESP8266-based OLED screen. 

### WSJTX-gdslog:
   The main logging and control program.
   
### WSJTXClass.py:
   This is derived from Randy Stagers (K9VD) excellent work (https://github.com/rstagers/WSJT-X).  I added the WSPR (Packet type 10) definition.

### mysql-wspr-show.sh
   This shell script retrieves data from the WSPRLOG database and uses MQTT publish to display on a tiny OLED screen.

### Utility programs
#### mysql-wspr.sql
    Creates the empty WSPR logging table in mysql
#### create_mymap.sql
    Creates and populates a mapping table to better display data on the OLED screen
####     
