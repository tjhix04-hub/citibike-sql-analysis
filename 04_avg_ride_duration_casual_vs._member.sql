-- Question 4. What is the average trip duration for casual vs. member riders?

SELECT
    member_casual,
    AVG(
        (strftime('%s', ended_at) - strftime('%s', started_at)) / 60.0
    ) AS avg_trip_duration_minutes
FROM "202201-citibike-tripdata_1"
GROUP BY member_casual;
