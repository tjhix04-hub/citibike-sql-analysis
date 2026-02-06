-- Q1. Does CitiBank need more electric bikes or standard bikes?

SELECT rideable_type,
count(*) As total_rides, 
Round (
count(*) * 100.0 / sum(count(*)) OVER(), 2
) As percentage_of_total_rides
FROM "202201-citibike-tripdata_1"
GROUP BY rideable_type
ORDER BY total_rides DESC;