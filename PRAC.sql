use ola;
create view Successful_Bookings
as select * from Bookings where Booking_Status='Success';
select * from successful_bookings;


create view Ride_Distance as
select vehicle_type,AVG(Ride_Distance) as Avg_Distance from bookings group by vehicle_type;
select * from Ride_Distance;


Create view Ride_Canceled as
select Count(*) from Bookings where Booking_Status='Canceled by customer';
select * from Ride_canceled;




Create View Top_5_Customer as
Select Customer_ID,COUNT(Booking_ID) as total_ride from bookings 
group by Customer_ID order bY total_ride desc Limit 5 ;


Create view Ride_canceled_Driver as
Select Count(*) from bookings where Canceled_Rides_by_Driver="Personal & Car related issue";



Create View Driver_MaxMin_Ratings as
select Max(Driver_Ratings),Min(Driver_Ratings) as Driver_Ratings
from Bookings where Vehicle_Type='Prime Sedan';


Create view UPI_Payment as
Select * From Bookings where Payment_Method='UPI';


Create View vtype_crating as
Select AVG(Customer_Rating),Vehicle_Type from Bookings group by Vehicle_Type;


create view Sucess_bStatus as
select SUM(Booking_Value) from Bookings where Booking_Status='Success';




create view incomplete_rides as
SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides =
'Yes';