#!/bin/bash

# not executable
# run like 'bash mysql-wspr.sh' to
# keep from accidentally trashing the log file


mysql wsprlog <<endmysql

drop table wsprlog;

create table wsprlog (logdate datetime NOT NULL DEFAULT '0000-00-00 00:00:00'  ,
  utc varchar(4) not null default '',
  snr tinyint(4) not null,deltatime decimal(3,1) not null,  
  frequency decimal(9,6) not null, 
  drift tinyint (4) not null, 
  dxcall varchar(10) not null, 
  dxgrid varchar(6) not null, 
  power tinyint(4) not null 
   );

endmysql

