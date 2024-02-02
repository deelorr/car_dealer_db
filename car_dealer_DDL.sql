CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(200)
);

CREATE TABLE cars (
    vin_num VARCHAR(17) PRIMARY KEY,
    customer_id INT,
    make VARCHAR(20),
    model VARCHAR(20),
    year INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE salespeople (
    sp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE invoices (
    invoice_id SERIAL PRIMARY KEY,
    sp_id INT,
    vin_num VARCHAR(17),
    customer_id INT,
    amount FLOAT,
    date_sold DATE,
    FOREIGN KEY (sp_id) REFERENCES salespeople(sp_id),
    FOREIGN KEY (vin_num) REFERENCES cars(vin_num),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE service_tickets (
    service_id SERIAL PRIMARY KEY,
    vin_num VARCHAR(17),
    date_serviced DATE,
    amount FLOAT,
    FOREIGN KEY (vin_num) REFERENCES cars(vin_num)
);

CREATE TABLE service_mechanics (
    service_id INT,
    mech_id INT,
    FOREIGN KEY (service_id) REFERENCES service_tickets(service_id)
);