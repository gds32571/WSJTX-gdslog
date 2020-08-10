#!/bin/bash

mysql wsprlog <<endmysql


select * from wsprlog where logdate > date_sub(utc_timestamp(),interval 120 minute ) ;
select truncate(frequency,0) as band, count(dxcall) from wsprlog 
where logdate > date_sub(utc_timestamp(),interval 120 minute ) group by band;

endmysql
