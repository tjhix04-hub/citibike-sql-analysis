--Q2. How can CitiBike convert casual riders to members? 

SELECT
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(
        AVG(
            (strftime('%s', ended_at) - strftime('%s', started_at)) / 60.0
        ),
        2
    ) AS avg_trip_duration_minutes
FROM "202201-citibike-tripdata_1"
GROUP BY member_casual;
