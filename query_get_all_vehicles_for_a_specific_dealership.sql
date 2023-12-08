-- find all vehicles for a specific dealership
USE cardealership;
SELECT v.*
FROM vehicles v
JOIN inventory i ON v.vin = i.vin
WHERE i.dealership_id = 2;
