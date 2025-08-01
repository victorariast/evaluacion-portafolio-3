
-- Consultas
SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM pedidos;
SELECT * FROM detalles_pedidos;


-- Productos con precio mayor a 100
SELECT *
FROM productos
WHERE precio > 100
;

-- Pedidos enviados
SELECT *
FROM pedidos
WHERE estado_pedido = 'enviado'
;

SELECT pro.nombre, d.cantidad, ped.estado_pedido
FROM detalles_pedidos d
JOIN productos pro ON d.id_producto = pro.id
JOIN pedidos ped ON d.id_pedido = ped.id
WHERE ped.estado_pedido = 'enviado'
;

-- Pedidos de cada persona
SELECT c.nombre, d.cantidad, pro.nombre, pro.precio, d.monto, ped.estado_pedido
FROM detalles_pedidos d
JOIN productos pro ON d.id_producto = pro.id
JOIN pedidos ped ON d.id_pedido = ped.id
JOIN clientes c ON ped.id_cliente = c.id
ORDER BY ped.id_cliente
;

-- Total gastado por cliente
SELECT c.nombre, SUM(d.monto) AS total_gastado
FROM detalles_pedidos d
JOIN pedidos ped ON d.id_pedido = ped.id
JOIN clientes c ON ped.id_cliente = c.id
WHERE NOT ped.estado_pedido = 'cancelado'
GROUP BY ped.id_cliente
ORDER BY total_gastado DESC
;

-- Clientes que no han realizado pedidos
SELECT *
FROM clientes
WHERE id NOT IN(
    SELECT DISTINCT id_cliente FROM pedidos
)
;

-- Total de ventas por dia

SELECT ped.fecha_pedido, SUM(d.monto) AS ventas_dia
FROM detalles_pedidos d
JOIN pedidos ped ON d.id_pedido = ped.id
GROUP BY ped.fecha_pedido
ORDER BY ped.fecha_pedido
