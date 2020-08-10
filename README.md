# WSJTX-gdslog
A Python program to perform several functions

### WSJTX-gdslog.py:
   The main logging and control program.
   
### WSJTXClass.py:
   This is derived from Randy Staegers (xxxxx) excellent work.  I added the WSPR (Packet type 10) definition.

### mysql-wspr-show.sh
   This shell script retrieves data from the WSPRLOG database and uses MQTT publish to display on a tiny OLED screen.

### Utility programs
#### create_mymap.sql
    Creates a mapping table to better display data on the OLED screen
#### mysql-wspr.sql
    Creates the empty WSPR logging table in mysql
####     
