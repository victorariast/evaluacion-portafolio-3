SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE detalles_pedidos;
TRUNCATE TABLE pedidos;
TRUNCATE TABLE productos;
TRUNCATE TABLE clientes;
SET FOREIGN_KEY_CHECKS = 1;

-- Clientes

INSERT INTO clientes (nombre, apellido, direccion, correo_electronico, telefono) VALUES
('Juan', 'Pérez', 'Calle 123', 'juan.perez@mail.com', '555-1234'),
('Laura', 'Gómez', 'Calle 456', 'laura.gomez@mail.com', '555-5678'),
('Carlos', 'Sánchez', 'Av. Central 789', 'carlos.sanchez@mail.com', '555-9101'),
('Ana', 'López', 'Pasaje 12', 'ana.lopez@mail.com', '555-1122'),
('Mario', 'Rojas', 'Calle Norte 15', 'mario.rojas@mail.com', '555-2233'),
('Lucía', 'Martínez', 'Calle Sur 8', 'lucia.martinez@mail.com', '555-3344'),
('Pedro', 'Torres', 'Av. Principal 99', 'pedro.torres@mail.com', '555-4455'),
('Elena', 'Díaz', 'Calle Este 21', 'elena.diaz@mail.com', '555-5566'),
('Ricardo', 'Morales', 'Calle Oeste 7', 'ricardo.morales@mail.com', '555-6677'),
('Valeria', 'Fernández', 'Av. Bosque 34', 'valeria.fernandez@mail.com', '555-7788');


-- Productos

INSERT INTO productos (nombre, precio, cantidad_inventario, descripcion) VALUES
('Laptop', 850.00, 20, 'Laptop 15 pulgadas, 8GB RAM'),
('Teclado mecánico', 55.99, 100, 'Teclado retroiluminado RGB'),
('Mouse inalámbrico', 25.50, 150, 'Mouse óptico con batería recargable'),
('Monitor 24"', 180.00, 30, 'Monitor Full HD LED'),
('Silla ergonómica', 210.75, 15, 'Silla de oficina ajustable'),
('Disco SSD 1TB', 120.99, 40, 'Unidad de estado sólido'),
('Router Wi-Fi 6', 95.49, 25, 'Router doble banda alta velocidad'),
('Webcam HD', 49.00, 60, 'Cámara web 1080p'),
('Audífonos Bluetooth', 65.00, 80, 'Audífonos inalámbricos con micrófono'),
('Micrófono USB', 89.99, 35, 'Micrófono de condensador profesional');


-- Pedidos

INSERT INTO pedidos (id_cliente, fecha_pedido, estado_pedido) VALUES
(1, '2025-07-10', 'entregado'),
(2, '2025-07-11', 'procesando'),
(3, '2025-07-11', 'pendiente'),
(4, '2025-07-12', 'enviado'),
(5, '2025-07-12', 'entregado'),
(6, '2025-07-13', 'cancelado'),
(7, '2025-07-14', 'procesando'),
(8, '2025-07-14', 'enviado'),
(9, '2025-07-15', 'pendiente'),
(10, '2025-07-15', 'entregado'),
(1, '2025-07-16', 'procesando'),
(2, '2025-07-17', 'enviado'),
(3, '2025-07-18', 'entregado'),
(4, '2025-07-19', 'procesando'),
(5, '2025-07-20', 'pendiente');


-- Detalles

-- Pedido 1
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(1, 1, 1, 850.00),
(1, 3, 2, 51.00);

-- Pedido 2
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(2, 2, 1, 55.99);

-- Pedido 3
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(3, 4, 1, 180.00),
(3, 5, 1, 210.75);

-- Pedido 4
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(4, 6, 1, 120.99);

-- Pedido 5
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(5, 7, 2, 190.98),
(5, 10, 1, 89.99);

-- Pedido 6
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(6, 1, 1, 850.00);

-- Pedido 7
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(7, 9, 1, 65.00);

-- Pedido 8
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(8, 8, 1, 49.00),
(8, 3, 1, 25.50);

-- Pedido 9
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(9, 2, 2, 111.98);

-- Pedido 10
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(10, 5, 1, 210.75),
(10, 4, 1, 180.00);

-- Pedido 11
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(11, 3, 2, 51.00);

-- Pedido 12
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(12, 6, 1, 120.99);

-- Pedido 13
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(13, 8, 1, 49.00),
(13, 9, 1, 65.00);

-- Pedido 14
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(14, 10, 1, 89.99);

-- Pedido 15
INSERT INTO detalles_pedidos (id_pedido, id_producto, cantidad, monto)
VALUES
(15, 7, 1, 95.49),
(15, 2, 1, 55.99);
