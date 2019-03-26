-- Weather Observation Station 5
-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem

(
    SELECT City, LENGTH(City)
    FROM Station
    ORDER BY LENGTH(City) ASC, City
    LIMIT 1
) UNION (
    SELECT City, LENGTH(City)
    FROM Station
    ORDER BY LENGTH(City) DESC, City 
    LIMIT 1
);


Another working //Limit not working for me
select * from (select city, length(city) from station order by length(city),city) where rownum=1;
select * from (select city, length(city) from station order by length(city) desc) where rownum=1;

