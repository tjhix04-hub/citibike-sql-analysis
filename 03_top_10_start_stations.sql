--Question 3: What are the top 10 busiest start stations? 

SELECT start_station_name,
count(*) AS total_rides
FROM "202201-citibike-tripdata_1"
GROUP BY start_station_name
ORDER BY total_rides DESC
LIMIT 10;

