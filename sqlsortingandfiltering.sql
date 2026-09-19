-- 1. Sort activities by cost to see the most expensive ones first
select name, type, cost 
from activities 
order by cost desc;


-- 2. Only show the top 5 longest activities so the list isn't huge
select name, duration 
from activities 
order by duration desc 
limit 5;


-- 3. Group them by type just to see the categories
select type 
from activities 
group by type;


-- 4. Get the totals and averages for each category
select 
    type,
    count(*) as total_activities,
    sum(cost) as total_cost,
    avg(participants) as avg_people
from activities 
group by type;


-- 5. Filter out categories that don't have enough activities or people
select 
    type,
    count(*) as total_activities,
    avg(participants) as avg_people
from activities 
group by type
having count(*) > 3 and avg(participants) > 10;