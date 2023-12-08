-- get all sales information for a specific dealer for a specific date range
SELECT s.*, v.*
FROM sales_contracts s
JOIN vehicles v ON s.vin = v.vin
JOIN inventory i ON v.vin = i.vin
WHERE i.dealership_id = 1
    AND s.sale_date BETWEEN '2023-02-13' AND '2023-10-15';
