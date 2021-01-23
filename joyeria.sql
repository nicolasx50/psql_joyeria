--crear DB
CREATE DATABASE joyeria;
--conectar DB
\c joyeria
--crear tablas
-- clientes => factura
CREATE TABLE clientes(
    id INT,
    nombre VARCHAR(30),
    rut INT UNIQUE,
    direccion VARCHAR(25),
);
--categoria => productos
CREATE TABLE categoria(
    id INT,
    nombre_categoria VARCHAR(25),
    descripcion VARCHAR(40)
);
-- productos => categoria => factura
CREATE TABLE productos(
    id INT,
    nombre VARCHAR(25),
    descripcion VARCHAR(40),
    valor_unitario INT
);
--factura => iva
CREATE TABLE factura_productos(
    id_productos INT REFERENCES productos(),
    id_factura INT  REFERENCES factura()
);
--productos => subtotal
CREATE TABLE iva_subtotal(
    productos VARCHAR(15),
    iva INT
);
--factura => cliente
CREATE TABLE factura(
    productos VARCHAR(25) precio_unitario INT, 
    cantidad INT,
    total INT
);
--INSERT INTO categoria(collares, pulseras, anillos) VALUES();
--INSERT INTO categoria(collares, pulseras, anillos) VALUES();
--INSERT INTO categoria(collares, pulseras, anillos) VALUES();
--INSERT INTO categoria(collares, pulseras, anillos) VALUES();
--INSERT INTO categoria(collares, pulseras, anillos) VALUES();
--INSERT INTO categoria(collares, pulseras, anillos) VALUES();
