
--creamos una base de datos
CREATE DATABASE campus;
--Para poder insertar tablas y realizar algunas operaciones en la base de datos debemos
--utilizar la base de datos con el siguiente comando USE.
USE campus;
--Crearemos una tabla con sus respectivos campos
CREATE TABLE estudiantes(
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT
);
--Crearemos otra tabla, donde veremos relacion con la tabla de estudiantes, que se lleva acabo
--con una llave foranea
CREATE TABLE notas(
    id_nota INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT,
    asignatura VARCHAR(50),
    calificacion INT,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante)
);

--COMANDOS DDL (DATA DEFINITION LANGUAJE)
--es un conjunto de comandos SQL para definir el esquema de la base de datos. Se trata simplemente 
--de descripciones del esquema de la base de datos y se utiliza para crear y modificar la estructura 
--de los objetos de la base de datos

--Agregar columnas
ALTER TABLE estudiantes ADD COLUMN email VARCHAR(100);
--Modificar el tipo de dato de una columna
ALTER TABLE notas MODIFY COLUMN calificacion FLOAT;
--Eliminar una tabla
DROP TABLE notas;

--COMANDOS DML (DATA MANIPULATION LANGUAGE)
--permite a los usuarios llevar a cabo las tareas de consulta o manipulación de los datos, 
--organizados por el modelo de datos adecuado.

--Insertar datos a las tablas
--Tabla estudiantes
INSERT INTO estudiantes (id_estudiante, nombre, apellido, edad)
VALUES (1, "Juan", "Perez", 18),
(2, "Maria", "Gomez", 20),
(3, "Carlos", "Rodriguez", 19);

--Tabla notas
INSERT INTO notas (id_nota, id_estudiante, asignatura, calificacion)
VALUES (1, 1, "Matematicas", 5.0),
(2, 2, "Ciencias", 4.5),
(3, 3, "Sociales", 3.0);

--Actualizar datos de una tabla
UPDATE estudiantes
SET email = "juan@gmail.com"
WHERE nombre = "Juan";

UPDATE estudiantes
SET email = "maria@gmail.com"
WHERE nombre = "Maria";

UPDATE estudiantes
SET email = "carlos@gmail.com"
WHERE nombre = "Carlos";

--Eliminar una fila de la tabla
--No podemos eliminar direntamente un dato de una tabla cuando hay otra que depende de esta
--en este caso nos toca eliminar primero al estudiante de la tabla notas y despues de la tabla
--estudiantes
DELETE FROM notas WHERE id_estudiante = 2;
DELETE FROM estudiantes WHERE id_estudiante = 2;

--Consulta para obtener todos los datos de una tabla
SELECT * FROM estudiantes;

--Consultar para obtener estudiantes mayores de 18 años
SELECT * FROM estudiantes WHERE edad > 18;

--Consulta utilizando el INNER JOIN
SELECT estudiantes.nombre, estudiantes.apellido, notas.asignatura, notas.calificacion
FROM estudiantes
INNER JOIN notas ON estudiantes.id_estudiante = NETWORK_NAMESPACE.id_estudiante;