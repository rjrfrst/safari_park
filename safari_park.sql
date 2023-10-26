-- safari park
DROP TABLE IF EXISTS assignment;
DROP TABLE IF EXISTS animal;
DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS enclosure;



CREATE TABLE enclosure(
    id SERIAL PRIMARY KEY,
    name VARCHAR (255),
    capacity INT, 
    closed_for_maintenance BOOLEAN
);

CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employee_number INT
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

INSERT INTO enclosure (name, capacity, closed_for_maintenance) VALUES ('Snakes', 10, False);
INSERT INTO enclosure (name, capacity, closed_for_maintenance) VALUES ('Monkeys', 5, False);
INSERT INTO enclosure (name, capacity, closed_for_maintenance) VALUES ('Lions', 4, True);
INSERT INTO enclosure (name, capacity, closed_for_maintenance) VALUES ('Insects', 100, False);

INSERT INTO staff (name, employee_number) VALUES ('Rayster', 1);
INSERT INTO staff (name, employee_number) VALUES ('Suzi', 2);

INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Boa', 'Reptile', 5, 1);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Lemur', 'Primate', 2, 2);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Butterfly', 'Insect', 12, 4);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Viper', 'Reptile', 3, 1);
INSERT INTO animal (name, type, age, enclosure_id) VALUES ('Simba', 'Feline', 1, 3);

INSERT INTO assignment (employee_id, enclosure_id, day) VALUES (2, 3, 'Monday');
INSERT INTO assignment (employee_id, enclosure_id, day) VALUES (1, 2, 'Tuesday');
INSERT INTO assignment (employee_id, enclosure_id, day) VALUES (2, 4, 'Wednesday');