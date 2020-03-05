CREATE DEFINER=`root`@`localhost` PROCEDURE `Master_Stocks_ClosePrice`()
BEGIN

DROP  TABLE IF EXISTS `assignment`.`Master_Stocks_ClosePrice` ; 
create table `assignment`.`Master_Stocks_ClosePrice` as (

SELECT b.date as 'Date' ,
 b.`Close_Price` as 'Bajaj',
 e.`Close_Price` as 'Eicher',
 h.`Close_Price` as 'Hero',
 i.`Close_Price` as 'Infosys',
 t.`Close_Price` as 'TCS',
 v.`Close_Price` as 'TVS'
from assignment.bajaj1 b
inner  join  assignment.eicher1 e on b.date=e.date
inner  join  assignment.hero1 h on b.date=h.date
inner  join  assignment.infosys1 i on b.date=i.date
inner  join  assignment.tcs1 t on b.date=t.date
inner  join  assignment.tvs1 v on b.date=v.date
order by b.date );


END