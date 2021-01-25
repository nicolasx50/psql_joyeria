--crear DB
CREATE DATABASE joyeria;
--conectar DB
\c joyeria
--crear tablas
--categoria => productos
CREATE TABLE categoria(
    id SERIAL, PRIMARY KEY,
    nombre_categoria VARCHAR(25),
    descripcion VARCHAR(40)
);
-- productos => categoria => factura
CREATE TABLE productos(
    id_productos SERIAL, PRIMARY KEY,
    nombre_producto VARCHAR(25),
    descripcion_producto VARCHAR(40),
    valor_unitario INT,
    id_categoria SERIAL, REFERENCES id_categoria
);
--productos => subtotal
CREATE TABLE subtotal(
    id_productos INT, REFERENCES id_productos,
    id_factura INT, REFERENCES factura,
    cantidad
);
--factura => cliente
CREATE TABLE factura(
    id_factura SERIAL,  PRIMARY KEY,
    id_cliente SERIAL, REFERENCES cliente(id_cliente),
    productos VARCHAR(25) precio_unitario INT, 
    subtotal INT, 
    total INT
);
-- clientes => factura
CREATE TABLE cliente(
    id_cliente SERIAL, PRIMARY KEY,
    nombre VARCHAR(25),
    rut INT UNIQUE,
    direccion VARCHAR(25)
);
INSERT INTO categoria(, , ) VALUES();
--INSERT INTO categoria(, , ) VALUES();
--INSERT INTO categoria(, , ) VALUES();
--INSERT INTO categoria(, , ) VALUES();
--INSERT INTO categoria(, , ) VALUES();
--INSERT INTO categoria(, , ) VALUES();