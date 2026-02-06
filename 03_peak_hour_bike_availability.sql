--Q3. What times of the day should CitiBike have more bikes available? 

SELECT
    strftime('%H', started_at) AS hour_of_day,
    COUNT(*) AS total_rides
FROM "202201-citibike-tripdata_1"
GROUP BY hour_of_day
ORDER BY total_rides DESC;
