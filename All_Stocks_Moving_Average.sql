CREATE DEFINER=`root`@`localhost` PROCEDURE `All_Stocks_MovingAverage`()
BEGIN

/*Dropping the all stock Tables if already present*/

drop table IF EXISTS  `assignment`.`BAJAJ1`  ;
drop table IF EXISTS  `assignment`.`eicher1`  ;
drop table IF EXISTS  `assignment`.`hero1`  ;
drop table IF EXISTS  `assignment`.`infosys1`  ;
drop table IF EXISTS  `assignment`.`tcs1`  ;
drop table IF EXISTS  `assignment`.`tvs1`  ;

/*Cretaing the Table with 20days and 50 days Moving Average*/

/*BAJAJ1*/

CREATE TABLE `assignment`.`BAJAJ1` AS 
(
select str_to_date(b.date, '%d-%M-%Y' ) AS DATE, b.`Close Price` AS `Close_Price`,
round(avg(b.`Close Price`) over (order by  str_to_date(b.date, '%d-%M-%Y' ) rows 19 preceding), 2) as '20DayAverage',
round(avg(b.`Close Price`) over (order by  str_to_date(b.date, '%d-%M-%Y' ) rows 49 preceding) , 2) as '50DayAverage'
 FROM assignment.bajaj b
 where b.`Close Price` is not null
group by str_to_date(b.date, '%d-%M-%Y' )
order by str_to_date(b.date, '%d-%M-%Y' ) ) ;

/*eicher1*/

CREATE TABLE `assignment`.`eicher1` AS 
(
select str_to_date(b.date, '%d-%M-%Y' ) AS DATE, b.`Close Price` AS `Close_Price`,
round(avg(b.`Close Price`) over (order by  str_to_date(b.date, '%d-%M-%Y' ) rows 19 preceding), 2) as '20DayAverage',
round(avg(b.`Close Price`) over (order by  str_to_date(b.date, '%d-%M-%Y' ) rows 49 preceding) , 2) as '50DayAverage'
 FROM assignment.eicher b
 where b.`Close Price` is not null
group by str_to_date(b.date, '%d-%M-%Y' )
order by str_to_date(b.date, '%d-%M-%Y' ) ) ;

/*HERO1*/

CREATE TABLE `assignment`.`hero1`  AS 
(
select str_to_date(b.date, '%d-%M-%Y' ) AS DATE, b.`Close Price` AS `Close_Price`,
round(avg(b.`Close Price`) over (order by  str_to_date(b.date, '%d-%M-%Y' ) rows 19 preceding), 2) as '20DayAverage',
round(avg(b.`Close Price`) over (order by  str_to_date(b.date, '%d-%M-%Y' ) rows 49 preceding) , 2) as '50DayAverage'
 FROM assignment.hero b
 where b.`Close Price` is not null
group by str_to_date(b.date, '%d-%M-%Y' )
order by str_to_date(b.date, '%d-%M-%Y' ) ) ;

/*infosys*/

CREATE TABLE  `assignment`.`infosys1` AS 
(
select str_to_date(b.date, '%d-%M-%Y' ) AS DATE, b.`Close Price` AS `Close_Price`,
round(avg(b.`Close Price`) over (order by  str_to_date(b.date, '%d-%M-%Y' ) rows 19 preceding), 2) as '20DayAverage',
round(avg(b.`Close Price`) over (order by  str_to_date(b.date, '%d-%M-%Y' ) rows 49 preceding) , 2) as '50DayAverage'
 FROM assignment.infosys  b
 where b.`Close Price` is not null
group by str_to_date(b.date, '%d-%M-%Y' )
order by str_to_date(b.date, '%d-%M-%Y' ) ) ;

/*tcs1*/
CREATE TABLE `assignment`.`tcs1` AS 
(
select str_to_date(b.date, '%d-%M-%Y' ) AS DATE, b.`Close Price` AS `Close_Price`,
round(avg(b.`Close Price`) over (order by  str_to_date(b.date, '%d-%M-%Y' ) rows 19 preceding), 2) as '20DayAverage',
round(avg(b.`Close Price`) over (order by  str_to_date(b.date, '%d-%M-%Y' ) rows 49 preceding) , 2) as '50DayAverage'
 FROM assignment.tcs  b
 where b.`Close Price` is not null
group by str_to_date(b.date, '%d-%M-%Y' )
order by str_to_date(b.date, '%d-%M-%Y' ) ) ;

/*TVS1*/
CREATE TABLE `assignment`.`tvs1` AS 
(
select str_to_date(b.date, '%d-%M-%Y' ) AS DATE, b.`Close Price` AS `Close_Price`,
round(avg(b.`Close Price`) over (order by  str_to_date(b.date, '%d-%M-%Y' ) rows 19 preceding), 2) as '20DayAverage',
round(avg(b.`Close Price`) over (order by  str_to_date(b.date, '%d-%M-%Y' ) rows 49 preceding) , 2) as '50DayAverage'
 FROM assignment.tvs  b
 where b.`Close Price` is not null
group by str_to_date(b.date, '%d-%M-%Y' )
order by str_to_date(b.date, '%d-%M-%Y' ) ) ;

END