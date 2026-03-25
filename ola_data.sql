use ola_project;
select * from ola_data;

-- 1 Retrive all successfull bookings :
create view successfull_bookings as
select * from ola_data
where Booking_Status = "Success";

select * from successfull_bookings;


-- 2 Find the average ride distance for each vehicle type:
create view average_each_vehicle_distance as 
select Vehicle_Type ,round(avg(Ride_Distance),2) as average_distance 
from ola_data group by Vehicle_Type; 

select * from average_each_vehicle_distance;

-- 3 Get the total number of canceled rides by customers:
create view customer_rides_canceled as 
select count(*) as canceled_rides from ola_data  
where Booking_Status = "Canceled by Customer";

select * from customer_rides_canceled;


-- 4 Get the total number of canceled rides by riders :
Create view rides_canceled_by_driver as 
select count(*) as riders_canceled_rides from 
ola_data 
where Booking_Status  = "Canceled by Driver"; 

select * from rides_canceled_by_driver;


-- 5 List the top 5 customers who bookked the highest number of rides: --
create view Top_5_customer as   
select Customer_ID,count(Booking_ID) as Total_rides
from ola_data group by Customer_ID
order by count(Booking_ID) desc limit 5 ;

select * from Top_5_customer;

-- 6 Get the number of rides canceled by drivers due to personal and car-related issues:
create view canceled_by_drivers_P_AND_C as 
select count(*) as Total_Rides 
from ola_data
where Canceled_Rides_by_Driver = "Personal & Car related issue";

select * from canceled_by_drivers_P_AND_C;

-- 7 find the maximum and minimum driver ratings for prime sedan bookings: --
create view driver_ratings as 
select max(Driver_Ratings) as maximum_ratings , min(Driver_Ratings) as minimum_ratings
from ola_data 
where Vehicle_Type = "Prime Sedan";


set sql_safe_updates = 0;

update ola_data
set Driver_Ratings = null
where Driver_Ratings = "Not Rating";

set sql_safe_updates = 1;


select * from driver_ratings;

-- 8 Retrive all rides where payment was made using upi: -- 
create view upi_payment as 
select * from ola_data
where Payment_Method = "UPI";
  
select * from upi_payment;

-- 9 find the average customer rating per vehicle type:
create view average_customer_ratings as 
select Vehicle_Type, round(avg(Customer_Rating),2) as average_customer_rating
from ola_data group by Vehicle_Type; 

select * from average_customer_ratings;














-- 10 calculate the total booking value of rides completed successfullly:
create view total_successful_ride_value as 
select sum(Booking_Value) as total_successful_ride_value
from ola_data
where Booking_Status = "Success";


select * from total_successful_ride_value;


-- 11 List all incomplete rides along with the reason :
create view  incomplete_rides_And_reason as
select Booking_Id, Incomplete_Rides_Reason From 
ola_data 
where incomplete_Rides = "Yes";

select * from incomplete_rides_And_reason;


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
