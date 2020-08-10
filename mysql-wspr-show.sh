#!/bin/bash


#mysql wsprlog <<endmysql

MQTT_TOPIC="wsprspots/cmd"
linectr=0

mosquitto_pub -h 192.168.2.6 -u hass -P hass -t $MQTT_TOPIC -m 'oledcmd,clear'


echo "select \
        (select fr from myMap where freq=truncate(frequency,0)) as fr,\
	(select wl from myMap where freq=truncate(frequency,0)) as wl ,\
      count(dxcall) as spots from wsprlog where logdate > date_sub(utc_timestamp(),interval 120 minute )\
       group by truncate(frequency,0);"\
| mysql wsprlog | while read line

do
   ((linectr=linectr+1))
   echo "oled," $linectr ",1," $line | mosquitto_pub -h 192.168.2.6 -u hass -P hass -t $MQTT_TOPIC -l
done
