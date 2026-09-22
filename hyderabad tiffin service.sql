create table hyderabad_tiffin_service(
	order_id int,
order_date date,	
customer_id	varchar,
area varchar,	
tiffin_type	varchar,	
meal_type varchar,	
order_time time,	
delivery_partner varchar,	
delivery_distance_km decimal,
prep_time_min numeric,
delivery_time_min numeric,
quantity numeric,	
discount numeric,
order_amount numeric,
payment_method	varchar,
order_status varchar,
customer_rating numeric,
complaint varchar
);
select * from hyderabad_tiffin_service;
-- Which area has the highest sales?
select area,
sum (order_amount) as total_sales
from hyderabad_tiffin_service
group by area
order by total_sales desc;
-- Which area has the lowest sales?
select area,
sum (order_amount) as total_sales
from hyderabad_tiffin_service
group by area
order by total_sales asc;
-- Which area has the highest average delivery time?
select area ,
avg(delivery_time_min) as avg_delivery_time
from hyderabad_tiffin_service
group by area
order by avg_delivery_time desc;
--  Which area has the highest late-delivery rate?
SELECT
    area,
    COUNT(*) AS total_orders,
    COUNT(CASE
        WHEN order_status = 'Late' THEN 1 END) AS late_delivery_rate
FROM hyderabad_tiffin_service
GROUP BY area 
order by late_delivery desc;
-- Which area has the highest average customer rating?
select area,
avg(customer_rating) as avg_customer_rating
from hyderabad_tiffin_service
group by area
order by avg_customer_rating desc;
-- Which area has the lowest average customer rating?
select area,
avg(customer_rating) as avg_customer_rating
from hyderabad_tiffin_service
group by area
order by avg_customer_rating asc;
-- Which area has the highest number of customer complaints?
select area,
count (case when complaint ='Yes'then 1 end ) as total_complaints
from hyderabad_tiffin_service
group by area
order by total_complaints desc;
-- Which area has the lowest number of customer complaints?
select area,
count (case when complaint ='Yes'then 1 end ) as total_complaints
from hyderabad_tiffin_service
group by area
order by total_complaints asc;
-- Which area has the highest average preparation time?
select area,
avg(prep_time_min) as avg_prep_time
from hyderabad_tiffin_service
group by area
order by avg_prep_time desc;
-- Which area has the highest cancellation rate?
select area,
count (*) as total_order,
count( case when order_status = 'Cancelled'then 1 end) as total_Cancelled,
round (100* count( case when order_status = 'Cancelled'then 1 end) / count (*))
as Cancellation_rate
from hyderabad_tiffin_service
group by area
order by cancellation_rate desc; 
-- Which meal type generates the highest sales?
select meal_type,
sum(order_amount) as total_sales 
from hyderabad_tiffin_service
group by meal_type
order by total_sales desc;
-- Which meal type has the highest average customer rating?
select meal_type,
avg(customer_rating) as avg_customer_rating
from hyderabad_tiffin_service
group by meal_type
order by avg_customer_rating desc;
-- Which meal type has the highest late-delivery rate?
select meal_type,
count(case when order_status='Late'then 1 end ) as total_late_delivery,
count(*) as total_order,
round(100*count(case when order_status='Late'then 1 end) / count(*))as late_delivery_rate
from hyderabad_tiffin_service
group by meal_type
order by late_delivery_rate desc;
-- Which meal type has the most customer complaints?
select meal_type,
count(case when complaint='Yes' then 1 end) as customer_complaints
from hyderabad_tiffin_service
group by meal_type
order by customer_complaints desc; 
-- Which meal type has the highest average preparation time?
select meal_type,
avg(prep_time_min) as avg_prep_time
from hyderabad_tiffin_service
group by meal_type
order by avg_prep_time desc;
-- Which meal type has the highest cancellation rate?
select meal_type,
count(*) as total_order,
count(case when order_status='Cancelled' then 1 end) as total_cancelled,
round (100*count(case when order_status='Cancelled' then 1 end)/count(*) ) as total_cancellation_rate
from hyderabad_tiffin_service
group by meal_type
order by total_cancellation_rate desc;