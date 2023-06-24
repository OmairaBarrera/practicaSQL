
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
