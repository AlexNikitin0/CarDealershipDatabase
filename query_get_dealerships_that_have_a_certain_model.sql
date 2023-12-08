-- find all dealerships that have a certain car type
USE cardealership;
SELECT d.*
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.vin = v.vin
WHERE v.model = 'Altima';