-- find the dealership where a certain car is located by VIN
use cardealership;

SELECT d.*
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.vin = v.vin
WHERE v.vin = 'JTEHF21A51KSF14R8';

