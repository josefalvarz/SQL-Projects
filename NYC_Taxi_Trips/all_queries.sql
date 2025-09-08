-- Count of Trips on 2024-03-15
select count(*) as totalTrips
from yellow_taxi_data
where date(tpep_pickup_datetime) = '2024-03-15';

-- Popular destination for passengers picked up in Central Park on March 14
SELECT COALESCE(dropoff."Zone", 'Unknown') AS most_popular_destination,
       COUNT(*) AS counter
FROM yellow_taxi_data
JOIN zones pickup ON yellow_taxi_data."PULocationID" = pickup."LocationID"
LEFT JOIN zones dropoff ON yellow_taxi_data."DOLocationID" = dropoff."LocationID"
WHERE DATE(yellow_taxi_data.tpep_pickup_datetime) = '2024-03-14'
  AND pickup."Zone" = 'Central Park'
GROUP BY dropoff."Zone"
ORDER BY counter DESC
LIMIT 1;

-- Date with the highest tip in March
SELECT DATE(tpep_pickup_datetime)
FROM yellow_taxi_data
WHERE DATE(tpep_pickup_datetime) BETWEEN '2024-03-01' AND '2024-03-31'
ORDER BY tip_amount DESC
LIMIT 1;

-- Pickup-dropoff pair with the highest average price for a ride
SELECT
  pickup."Zone" AS pickup,
  dropoff."Zone" AS dropoff,
  AVG(yellow_taxi_data.total_amount) AS average_total
FROM yellow_taxi_data
LEFT JOIN zones pickup ON yellow_taxi_data."PULocationID" = pickup."LocationID"
LEFT JOIN zones dropoff ON yellow_taxi_data."DOLocationID" = dropoff."LocationID"
GROUP BY pickup."Zone", dropoff."Zone"
ORDER BY average_total DESC
LIMIT 1;