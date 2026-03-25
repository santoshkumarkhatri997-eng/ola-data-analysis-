-- 1 Retrive all successfull bookings :
select * from successfull_bookings;

-- 2 Find the average ride distance for each vehicle type:
select * from average_each_vehicle_distance;

-- 3 Get the total number of canceled rides by customers:
select * from customer_rides_canceled;

-- 4 Get the total number of canceled rides by riders :
select * from rides_canceled_by_driver;

-- 5 List the top 5 customers who bookked the highest number of rides: --
select * from Top_5_customer;

-- 6 Get the number of rides canceled by drivers due to personal and car-related issues:
select * from canceled_by_drivers_P_AND_C;

-- 7 find the maximum and minimum driver ratings for prime sedan bookings: --
select * from driver_ratings;

-- 8 Retrive all rides where payment was made using upi: -- 
select * from upi_payment;

-- 9 find the average customer rating per vehicle type:
select * from average_customer_ratings;

-- 10 calculate the total booking value of rides completed successfullly:
select * from total_successful_ride_value;

-- 11 List all incomplete rides along with the reason :
select * from incomplete_rides_And_reason;
