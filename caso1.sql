--CASO 1

CREATE TABLE departamento(
	nombre_departamento VARCHAR(40),
	id SERIAL PRIMARY KEY
	);


CREATE TABLE trabajador(
	rut VARCHAR (15) PRIMARY KEY,
	nombre VARCHAR (50),
	direccion VARCHAR (50),
	id_departamento INT REFERENCES departamento(id)
	);
	

CREATE TABLE liquidaciones (
	rut VARCHAR (15) REFERENCES trabajador (rut),
	id SERIAL PRIMARY KEY,
	drive VARCHAR
);