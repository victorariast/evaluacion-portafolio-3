-- CREATE DATABASE ep3;
USE ep3;

-- Eliminar tablas
DROP TABLE IF EXISTS detallesPedidos;
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS clientes;

-- Tabla
CREATE TABLE clientes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    direccion VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(20)
);

CREATE TABLE productos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) CHECK(precio > 0),
    cantidad_inventario INT CHECK(cantidad_inventario >= 0),
    descripcion VARCHAR(200)
);

CREATE TABLE pedidos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    fecha_pedido DATE DEFAULT (CURDATE()),
    estado_pedido ENUM('pendiente', 'procesando', 'enviado', 'entregado', 'cancelado') NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id) ON DELETE CASCADE
);

CREATE TABLE detalles_pedidos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL CHECK(cantidad > 0),
    monto DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id) ON DELETE CASCADE,
    FOREIGN KEY (id_producto) REFERENCES productos(id) ON DELETE CASCADE
);