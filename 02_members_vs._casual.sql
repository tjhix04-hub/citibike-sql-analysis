-- Question 2: how many riders were casual vs. member riders?
SELECT member_casual,
count(*) AS total_rides
from "202201-citibike-tripdata_1"
GROUP BY member_casual;