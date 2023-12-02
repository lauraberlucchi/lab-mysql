CREATE DATABASE car_store;

USE car_store;

-- Cars table
CREATE TABLE cars (
    id_car INT PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year_ YEAR,
    color VARCHAR(50)
);

-- Customers table
CREATE TABLE customers (
    id_customer INT PRIMARY KEY,
    customer_number INT NOT NULL,
    name_ VARCHAR(100) NOT NULL,
    phone VARCHAR(100) NOT NULL,
    email VARCHAR(250),
    address VARCHAR(250),
    city VARCHAR(150),
    state_province VARCHAR(150),
    country VARCHAR(150),
    postal_code INT
);

-- Salespersons table
CREATE TABLE salespersons(
id_salesperson INT PRIMARY KEY,
staff_id INT NOT NULL,
name_ VARCHAR(100),
store VARCHAR(100)
);

-- Invoices table
CREATE TABLE invoices (
    id_invoice INT PRIMARY KEY,
    invoice_number INT NOT NULL,
    invoice_date DATE NOT NULL,
    id_car INT NOT NULL,
    id_customer INT NOT NULL,
    id_salesperson INT NOT NULL,
    FOREIGN KEY (id_car) REFERENCES cars(id_car),
    FOREIGN KEY (id_customer) REFERENCES customers(id_customer),
    FOREIGN KEY (id_salesperson) REFERENCES salespersons(id_salesperson)
);

SELECT * FROM invoices;
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
