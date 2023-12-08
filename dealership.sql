-- Car Dealership Database
DROP DATABASE IF EXISTS cardealership;
CREATE DATABASE IF NOT EXISTS cardealership;

USE cardealership;

# ---------------------------------------------------------------------- #
# Tables                                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE dealerships(
dealership_id INTEGER AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
address VARCHAR(50),
phone VARCHAR(12)
);

CREATE TABLE vehicles(
vin VARCHAR(17) PRIMARY KEY,
make VARCHAR(50),
model VARCHAR(50),
sold BOOLEAN,
price DECIMAL(10,2)
);

CREATE TABLE inventory(
dealership_id INTEGER,
vin INTEGER
);


CREATE TABLE sales_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17),
    sale_date DATE,
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

-- populate tables

INSERT INTO dealerships (name, address, phone) VALUES
('Very Used Cars', '123 Fake St, Asheville', '555-123-1423'),
('City Chevrolet', 'Stevens St, Charlotte', '555-567-2233');

INSERT INTO vehicles (vin, make, model, sold, price) VALUES
('19UUA569035ZX7MYF', 'Toyota', 'Camry', false , 21000.00),
('19UUA76517SN4MK26', 'Honda', 'Accord', false, 23678.21),
('5UMDU93477C6MVR8U', 'Ford', 'Focus', true, 14500.00),
('3FTWF32F5XCXTGDXM', 'Chevrolet', 'Malibu', false, 32677.42),
('JHLRE4835942FR7J6', 'Nissan', 'Altima', true, 12500.00),
('JA4MT31W68X9HV5ZS', 'Hyundai', 'Elantra', false, 11111.11),
('JTEHF21A51KSF14R8', 'BMW', '3 Series', false, 48999.99),
('WV2MB47051VTD8UF9', 'Mercedes-Benz', 'C-Class', true, 52420.80),
('YV1SW612X5NRM1N9X', 'Audi', 'A4', false, 28550.20),
('JM1BJ2213XEGD64P7', 'Lexus', 'ES', false, 15333.56);

INSERT INTO sales_contracts (vin, sale_date) VALUES
('5UMDU93477C6MVR8U', '2023-02-13'),
('JHLRE4835942FR7J6', '2022-11-08'),
('WV2MB47051VTD8UF9', '2020-10-15');



