-- safari park
DROP TABLE IF EXISTS assignment;
DROP TABLE IF EXISTS animal;
DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS enclosure;



CREATE TABLE enclosure(
    id SERIAL PRIMARY KEY,
    name VARCHAR (255),
    capacity INT, 
    closedForMaintenance BOOLEAN
);

CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNUMBER INT
);

CREATE TABLE animal(
    id SERIAL PRIMARY KEY,
    name VARCHAR (255),
    type VARCHAR (255),
    age INT, 
    enclosure_id INT REFERENCES enclosure(id)
);

CREATE TABLE assignment(
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES staff(id),
    enclosure_id INT REFERENCES enclosure(id),
    day VARCHAR (255)
);