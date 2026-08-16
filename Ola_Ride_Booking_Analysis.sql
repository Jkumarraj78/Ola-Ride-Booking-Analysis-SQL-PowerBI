create database ola;
use ola;

create view successful_booking as
select * from ola
where booking_status ="success";

select * from successful_booking;

#2
create view ride_dictance_for_each_vehicle as
select vehicle_type, avg(Ride_distance) as avg_distance from ola
group by vehicle_type;

select * from ride_dictance_for_each_vehicle;
#3
create view Canceled_ride_by_Customer as
select count(*) from ola
where booking_status = "Canceled by Customer";

#4
create view top_5_customer as
select customer_ID, count(booking_ID) as total_ride from ola
group by customer_ID
order by total_ride desc limit 5;

#5
create view Canceled_Rides_by_Driver as
select count(*) from ola 
where Canceled_Rides_by_Driver = "personal & car related issue";
use ola;
#6
create view max_and_min_Driver_rating as
select max(Driver_Ratings) as max_ratings,
min(Driver_Ratings) as min_rating from ola
where Vehicle_Type ="Prime Sedan";
select * from max_and_min_Driver_rating;

#7
create view cash_payment as
select * from ola
where Payment_Method = "cash";
 select sum(Booking_Value) as total_amount_by_cash from ola
 where Payment_Method = "cash";

#8
select Vehicle_type, avg(Customer_Rating) as avg_Customer_Rating
from ola
group by Vehicle_Type ;

#9
create view total_successful_value as
select sum(Booking_Value) as total_successful_value from ola
where Booking_Status ="Success";

#10
create view Incomplete_Rides_Reason as
select Booking_ID, Incomplete_Rides_Reason from ola 
where Incomplete_Rides = "yes";
