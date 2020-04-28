/*Query 1*/
Select first_name, last_name from driver;
/*Query 2 with generic input '2015-02-01*/
Select sum(dist_change) from trip inner join trip_stops on trip.trajectory = trip_stops.trajectory 
where trip_stops.timestmp like '2015-02-01';
/*Query 3 with generic input '2019-12*/
select count(trajectory), first_name, last_name from driver inner join trip on driver.driver_id = trip.driver
 inner join trip_stops using(trajectory) where is_last = 'yes' and timestmp like '2019-12%' group by driver 
 order by count(trajectory) desc limit 1;
/*Query 4*/
select * from (select sum(amount) as sums, card_no, first_name, last_name from customer inner join payment using (card_no) group by card_no)
 AS A group by sums order by sums desc limit 1; 
/*Query 5 with generic input 'ID8'*/
select sum(trip.cost) from driver inner join trip on driver.driver_id = trip.driver where driver_id = 'ID8';
select sum(payment.amount) from driver inner join payment on driver.card_no = payment.card_no where driver_id = 'ID8';
/*Query 6 with generic input '2019-12*/
select * from((select vehicle, sum(dist_change) as current_month from vehicle 
inner join trip on vehicle.tag_info = trip.vehicle 
inner join trip_stops using (trajectory) where is_last = 'yes' 
and date(timestmp) >= date('2019-12-01') and date(timestmp) < date('2019-12-01') + interval 1 month 
group by vehicle) A inner join (select vehicle, sum(dist_change) as previous_month 
from vehicle inner join trip on vehicle.tag_info = trip.vehicle 
inner join trip_stops using (trajectory) 
where is_last = 'yes' and date(timestmp) >= date('2019-12-01') - interval 1 month and date(timestmp) < date('2019-12-01') 
group by vehicle) B on (A.current_month > B.previous_month and A.vehicle = B.vehicle));
/*Query 7*/
select is_last, street_no, street_name, city, state, zip, lat, lng, timestmp, count(*) 
from trip inner join trip_stops using (trajectory) where (is_last = 'yes' or dist_change = 0) 
group by trajectory, street_no, street_name, city, state, zip having (count(*) > 0 and timestmp >= NOW() - INTERVAL 1 DAY) 
order by count(*) desc limit 10;
/*Query 8 with generic input '.77' and '.57'*/
select vehicle.tag_info, make, model, lat, lng, lugg_capacity, seating_capacity from vehicle inner join vehicle_last_loc 
using(tag_info) where vehicle.available = 1 order by abs(lat - .77) asc, abs(lng - .57) asc limit 1;
/*Query 9*/
select first_name, last_name, name1, name2, lat1, lng1, A.timestmp, B.timestmp 
from((select first_name, last_name, timestmp, lat, lng, cust_id from customer inner join trip 
on customer.cust_id = trip.customer inner join trip_stops using (trajectory) 
where is_last = 'yes' and date(timestmp) = subdate(curdate(), 1) group by customer, lat, lng) A 
inner join (select first_name as name1, last_name as name2, timestmp, lat as lat1, lng as lng1, cust_id 
from customer inner join trip on customer.cust_id = trip.customer inner join trip_stops using (trajectory) 
where is_last = 'yes' and date(timestmp) = subdate(curdate(), 1) group by customer) B 
on (A.lng = B.lng1 and A.lat = B.lat1 and A.cust_id <> B.cust_id)) 
where abs(time_to_sec(timediff(time(A.timestmp), time(B.timestmp)))) < 300;
/*Query 10 with given input 'ID1' and '2019-12-11'*/
select first_name, last_name, vehicle from customer inner join trip on customer.cust_id = trip.customer where vehicle 
in ( select vehicle from customer inner join trip on customer.cust_id = trip.customer inner join trip_stops using(trajectory) 
where dist_change = 0 and cust_id = 'ID1' and (date(timestmp) >= subdate(date('2019-12-11'),interval 1 week))) 
group by cust_id;