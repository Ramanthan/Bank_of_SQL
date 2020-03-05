CREATE DEFINER=`root`@`localhost` PROCEDURE `SIGNAL_PRODUCE_ALL_STOCKS`()
BEGIN

drop table if exists assignment.bajaj2;

create table assignment.bajaj2 as 
SELECT DATE ,`Close_Price`,
case 
        WHEN `20DayAverage` > `50DayAverage` AND LAG(`20DayAverage`) over() < LAG(`50DayAverage`) over() THEN 'BUY'
		WHEN `20DayAverage` < `50DayAverage` AND (LAG(`20DayAverage`) over() > LAG(`50DayAverage`) over())  THEN 'SELL'
		ELSE 'HOLD' 
end as `SIGNAL` from assignment.bajaj1
order by Date ;

drop table if exists assignment.eicher2;
create table assignment.eicher2 as 
SELECT DATE ,`Close_Price`,
case 
        WHEN `20DayAverage` > `50DayAverage` AND LAG(`20DayAverage`) over() < LAG(`50DayAverage`) over() THEN 'BUY'
		WHEN `20DayAverage` < `50DayAverage` AND (LAG(`20DayAverage`) over() > LAG(`50DayAverage`) over())  THEN 'SELL'
		ELSE 'HOLD' 
end as `SIGNAL` from assignment.eicher1
order by Date ;

drop table if exists assignment.hero2;
create table assignment.hero2 as 
SELECT DATE ,`Close_Price`,
case 
        WHEN `20DayAverage` > `50DayAverage` AND LAG(`20DayAverage`) over() < LAG(`50DayAverage`) over() THEN 'BUY'
		WHEN `20DayAverage` < `50DayAverage` AND (LAG(`20DayAverage`) over() > LAG(`50DayAverage`) over())  THEN 'SELL'
		ELSE 'HOLD' 
end as `SIGNAL` from assignment.hero1
order by Date ;

drop table if exists assignment.infosys2;
create table assignment.infosys2 as 
SELECT DATE ,`Close_Price`,
case 
        WHEN `20DayAverage` > `50DayAverage` AND LAG(`20DayAverage`) over() < LAG(`50DayAverage`) over() THEN 'BUY'
		WHEN `20DayAverage` < `50DayAverage` AND (LAG(`20DayAverage`) over() > LAG(`50DayAverage`) over())  THEN 'SELL'
		ELSE 'HOLD' 
end as `SIGNAL` from assignment.infosys1
order by Date ;


drop table if exists assignment.tcs2;
create table assignment.tcs2 as 
SELECT DATE ,`Close_Price`,
case 
        WHEN `20DayAverage` > `50DayAverage` AND LAG(`20DayAverage`) over() < LAG(`50DayAverage`) over() THEN 'BUY'
		WHEN `20DayAverage` < `50DayAverage` AND (LAG(`20DayAverage`) over() > LAG(`50DayAverage`) over())  THEN 'SELL'
		ELSE 'HOLD' 
end as `SIGNAL` from assignment.tcs1
order by Date ;

drop table if exists assignment.tvs2;
create table assignment.tvs2 as 
SELECT DATE ,`Close_Price`,
case 
        WHEN `20DayAverage` > `50DayAverage` AND LAG(`20DayAverage`) over() < LAG(`50DayAverage`) over() THEN 'BUY'
		WHEN `20DayAverage` < `50DayAverage` AND (LAG(`20DayAverage`) over() > LAG(`50DayAverage`) over())  THEN 'SELL'
		ELSE 'HOLD' 
end as `SIGNAL` from assignment.tvs1
order by Date ;









END