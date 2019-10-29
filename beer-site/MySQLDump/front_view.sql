CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER VIEW `front_view` AS select `beer`.`name` AS `Name`,`beer`.`brandName` AS `BrandName`,`beer`.`Style` AS `Style`,`beer`.`abv` AS `ABV`,`beer`.`ibu` AS `IBU`,`beer`.`estCal` AS `EstCal`,avg(`Review`.`score`) AS `AverageScore`,count(`beer`.`id`) AS `TotalReviews`,max(`Review`.`date`) AS `LastUpdated` 
from (`Review` join `beer`) where (`beer`.`id` = `Review`.`beer_id`) 
group by `Review`.`beer_id`,`beer`.`id` order by max(`Review`.`date`) desc;
