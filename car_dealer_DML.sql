INSERT INTO customers (
    first_name,
    last_name,
    address
) VALUES (
    'Dyllorian',
    'Thomas',
    '123 Nunya Business Lane'
),(
    'Peter',
    'Parker',
    '20 Ingram Street'
),(
    'Michael',
    'Scofield',
    '333 Panama Street'
),(
    'Travis',
    'Scott',
    '678 Astroworld Lane'
),(
    'Dwayne',
    'Johnson',
    '2 Rock Lane'
);

INSERT INTO cars (
    vin_num,
    customer_id,
    make,
    model,
    year
) VALUES (
    '1G1BE5SM2H7243723',
    1,
    'Chevrolet',
    'Malibu',
    2013
),(
    '1G1BE5SM2H7243724',
    2,
    'Honda',
    'Civic',
    1999
),(
    '1G1BE5SM2H7243725',
    3,
    'Ford',
    'Fusion',
    2001
),(
    '1G1BE5SM2H7243726',
    4,
    'Lamborghini',
    'Aventador',
    2024
),(
    '1G1BE5SM2H7243727',
    5,
    'Jeep',
    'Wrangler',
    2015
);

INSERT INTO salespeople (
    first_name,
    last_name
) VALUES (
    'John',
    'Roe'
),(
    'Jane',
    'Lee'
),(
    'Tim',
    'Thomas'
);

INSERT INTO invoices (
    sp_id,
    vin_num,
    customer_id,
    amount,
    date_sold
) VALUES (
    1,
    '1G1BE5SM2H7243723',
    1,
    20000.00,
    '2023-12-09'
),(
    2,
    '1G1BE5SM2H7243724',
    2,
    19000.00,
    '2023-12-15'
),(
    3,
    '1G1BE5SM2H7243725',
    3,
    23000.00,
    '2023-12-16'
),(
    3,
    '1G1BE5SM2H7243726',
    4,
    180000.00,
    '2023-12-16'
),(
    1,
    '1G1BE5SM2H7243727',
    5,
    40000.00,
    '2023-12-17'
);

INSERT INTO service_tickets (
    service_id,
    vin_num,
    date_serviced,
    amount
) VALUES (
    1,
    '1G1BE5SM2H7243723',
    '2023-12-22',
    1000.00
),(
    2,
    '1G1BE5SM2H7243724',
    '2023-12-24',
    2000.00
),(
    3,
    '1G1BE5SM2H7243723',
    '2023-12-27',
    500.00
),(
    4,
    '1G1BE5SM2H7243725',
    '2023-12-29',
    1000.00
),(
    5,
    '1G1BE5SM2H7243727',
    '2023-12-30',
    700.00
);

INSERT INTO service_mechanics (
    service_id,
    mech_id
) VALUES (
    1,
    1
),(
    2,
    1
),(
    3,
    2
),(
    4,
    1
),(
    5,
    2
);