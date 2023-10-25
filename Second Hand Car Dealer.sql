CREATE SCHEMA cars
USE cars
-- Read Data --
SELECT * 
FROM car_dekho
-- Total Cars: To get a count of total records --
SELECT COUNT(*) 
FROM car_dekho
-- The manager asked employee: How many cars will be available in 2023? --
SELECT COUNT(*) 
FROM car_dekho
WHERE year = '2023'
-- The manager asked employee: How many cars are available in 2020, 2021, 2022? --
SELECT year,COUNT(*)
FROM car_dekho
WHERE year IN (2020,2021,2022)
GROUP BY year
-- Client asked me to print the total of all cars by year. I don't see all the details -- 
SELECT year,COUNT(*)
FROM car_dekho
GROUP BY year
-- Client asked a car dealer agent: How many disel cars will there be in 2020? --
SELECT COUNT(*)
FROM car_dekho
WHERE fuel = 'Diesel' AND year = '2020'
-- Client asked a car dealer agent: How many petrol cars will there be in 2020? --
SELECT COUNT(*)
FROM car_dekho
WHERE fuel = 'Petrol' AND year = '2020'
-- The manager told the employee to give a print ALL the fuel cars(petrol,diesel and CNG) come by all year --
SELECT year,fuel,COUNT(*)
FROM car_dekho
WHERE fuel IN ('Petrol', 'Diesel', 'CNG')
GROUP BY year,fuel
-- Manager said there were more than 100 cars in a given year, which year? --
SELECT year,COUNT(*)
FROM car_dekho
GROUP BY year
HAVING COUNT(*)>100
-- The manager said to the employee he need a complete ALL cars count details list between 2015 to 2023. --
SELECT COUNT(*)
FROM car_dekho
WHERE year BETWEEN 2015 AND 2023
-- The manager said to the employee he need a complete ALL cars details list between 2015 to 2023. --
SELECT *
FROM car_dekho
WHERE year BETWEEN 2015 AND 2023