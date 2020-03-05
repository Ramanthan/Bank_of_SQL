CREATE DEFINER=`root`@`localhost` FUNCTION `GET_SIGNAL`(date1 date) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN 
declare signal1 varchar(20)  ;
select b.`SIGNAL` into signal1 from assignment.bajaj2 b
where b.date=date1;
return signal1;

END