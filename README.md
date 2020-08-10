# WSJTX-gdslog Project
A Python program to perform several functions based on reception of WSJT-X UDP packets.  I am currently using WSJT-X version 2.1.0.

   Status (type 1) packets are used to control a WiFi connected antenna switch.  The program derives the band from the operating frequency dropdown of WSJT-X 
   and commands the antenna switch to connect to the appropriate antenna via an HTTP command.
   
   QSO Logged (type 5) packets are used to log a contact in my ham logging database.  It is PHP3 based with a MySQL database but has not yet been documented anywhere. I've been using it for more than a decade.
   
   WSPR Decode (type 10) packets are inserted into a MySQL database to allow aggregate reporting to an ESP8266-based OLED screen. 

### WSJTX-gdslog:
   The main logging and control program, written in Python3.  This program was taken from WSJT-X_TUI.PY, a program by Jari Perki (OH6BG).
   See https://github.com/OH6BG/WSJT-X_TUI for more information.
   
### WSJTXClass.py:
   This is derived from Randy Stagers (K9VD) excellent work (https://github.com/rstagers/WSJT-X).  I added the WSPR (Packet type 10) definition.

### mysql-wspr-show.sh
   This shell script retrieves data from the WSPRLOG database and uses MQTT publish to display on a tiny OLED screen. It runs from a crontab on my Raspberry Pi computer.

### Utility programs
#### mysql-wspr.sql
    Creates the empty WSPR logging table in mysql
#### create_mymap.sql
    Creates and populates a mapping table to better display data on the OLED screen
####     
