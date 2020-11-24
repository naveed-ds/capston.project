
-- Script to create tables in database 

CREATE TABLE IF NOT EXISTS locations (
	id INTEGER NOT NULL,
	title TEXT(50),
	location_type TEXT(50),
	latitude REAL,
	longitude REAL
);

CREATE TABLE IF NOT EXISTS daily_metrics (
	location_id INTEGER NOT NULL,
	weather_state_name TEXT(50),
	created_at TEXT(50),
	min_temp REAL,
	max_temp REAL, 
	humidity REAL, 
	country TEXT(50)	
);

CREATE TABLE IF NOT EXISTS today_metrics (
	location_id INTEGER NOT NULL,
	weather_state_name TEXT(50),
	date TEXT(50),
	min_temp REAL,
	max_temp REAL, 
	humidity REAL, 
	sun_rise TEXT(50),
	sun_set TEXT(50)
);

-- Final Assignment Query 
-- extract the daily average temperature across Scotland for 2019

select substr(created_at,1,10) Date, round(avg(min_temp),2) AVG_MIN_TEMP, round(avg(max_temp),2) AVG_MAX_TEMP, round(avg((max_temp+min_temp)/2),2) AVG_AVG_TEMP  
from daily_metrics 
where Country = 'Scotland' and substr(created_at,1,4) = '2019' 
group by substr(created_at,1,10)

-- Working 

 select * from today_metrics 
 where substr(DATE,1,10) = '2020-11-18'

select count(*) from daily_metrics 
where substr(created_at,1,10) = '2020-11-18' 

select * from daily_metrics 
where location_id = 19344 and substr(created_at,1,10) = '2020-11-18' 

select count(*) from daily_metrics where location_id = 19344 and substr(created_at,1,10) = '2020-11-18' 

select count(*) from locations where id = 19344 and title = 'Edinburgh'

select * from locations 
where id = 19344 and title = 'Edinburgh'


