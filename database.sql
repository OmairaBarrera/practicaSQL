
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

