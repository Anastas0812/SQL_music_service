CREATE TABLE IF NOT EXISTS employee (
	id SERIAL PRIMARY KEY,
	boss_name INT REFERENCES employee(id),
	name VARCHAR(40) NOT NULL,
    department_name VARCHAR(80) NOT NULL
);
