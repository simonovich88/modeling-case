--CASO 2

CREATE TABLE curso(
	nombre VARCHAR,
	id SERIAL PRIMARY KEY
	);

CREATE TABLE departamento(
	nombre_departamento VARCHAR,
	id SERIAL PRIMARY KEY	
);

CREATE TABLE alumno (
	nombre_alumno VARCHAR,
	rut VARCHAR,
	curso_id INT REFERENCES curso(id),
	id SERIAL PRIMARY KEY
);

CREATE TABLE profesor (
	nombre_profesor VARCHAR,
	departamento_id INT REFERENCES departamento(id),
	id SERIAL PRIMARY KEY
);

CREATE TABLE prueba (
	puntaje FLOAT,
	profesor_id INT REFERENCES profesor(id),
	alumno_id INT REFERENCES alumno(id),
	id SERIAL PRIMARY KEY
);