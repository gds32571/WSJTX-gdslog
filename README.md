# WSJTX-gdslog Project
A Python program to perform several functions based on reception of WSJT-X UDP packets.  I am currently using WSJT-X version 2.1.0.

   Status (type 1) packets are used to control a WiFi connected antenna switch.  The program derives the band from the operating frequency dropdown of WSJT-X 
   and commands the antenna switch to connect to the appropriate antenna via an HTTP command.  This happens on any change of the dropdown, whether
   it be WSPR band hopping or me using WSJT-X to make FT8 and FT4 contacts.
   
   QSO Logged (type 5) packets are used to log a contact in my ham logging database.  It is PHP3 based with a MySQL database but has not yet been documented anywhere. I've been using it for more than a decade.
   
   WSPR Decode (type 10) packets are inserted into a MySQL database to allow aggregate reporting to an ESP8266-based OLED screen. 

### WSJTX-gdslog:
   The main logging and control program, written in Python3.  This program was taken from WSJT-X_TUI.PY, a program by Jari Perki (OH6BG).
   See https://github.com/OH6BG/WSJT-X_TUI for more information.
   
### WSJTXClass.py:
   This is derived from Randy Stagers (K9VD) excellent work (https://github.com/rstagers/WSJT-X).  I added the WSPR (Packet type 10) definition.

### mysql-wspr-show.sh
   This shell script retrieves data from the WSPRLOG database and uses MQTT publish to display spot data on a tiny OLED screen. It runs from a crontab on my Raspberry Pi computer.

### MQTT-spots
  A python program to read WSPR spot data from the mysql database and publish to an MQTT broker.  It publishes the spot count for each band that has a record in the nost recent 2 hours.  It also publishes a "0" spots value for the bands that have no spots. 

   
### Utility programs
#### mysql-wspr.sql
    Creates the empty WSPR logging table in mysql
#### create_mymap.sql
    Creates and populates a mapping table to better display data on the OLED screen
#### wspr.sql
    Shows preview of data that will be sent to the spot display and the backing log data.
    
