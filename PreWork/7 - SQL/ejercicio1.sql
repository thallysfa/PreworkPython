/*Ejercicio 1:**

1. Crear tabla "Clientes":*/

sql
CREATE TABLE public.clientes (
  id INTEGER PRIMARY KEY,
  nombre TEXT,
  email TEXT
);

/*2. Insertar nuevo cliente:*/

INSERT INTO public.clientes (id, nombre, email) VALUES (1, 'Juan', 'juan@example.com');

/*3. Actualizar email:*/


UPDATE public.clientes SET email = 'juan@gmail.com' WHERE id = 1;


/*4. Eliminar cliente:*/


DELETE FROM public.clientes WHERE id = 1;


/*5. Crear tabla "Pedidos":*/


CREATE TABLE public.pedidos (
  id SERIAL PRIMARY KEY,
  cliente_id INT FOREIGN KEY REFERENCES Clientes(id),
  producto VARCHAR (255),
  cantidad INT,
  CONSTRAINT FK_cliente_id FOREIGN KEY cliente_id REFERENCES Clientes(id)
);


/*6. Insertar nuevo pedido:*/


INSERT INTO public.pedidos (id, cliente_id, producto, cantidad) 
VALUES (1, 1, 'Camiseta', 2);


/*7. Actualizar cantidad:*/


UPDATE public.pedidos SET cantidad = 3 WHERE id = 1;


/*8. Eliminar pedido:*/


DELETE FROM public.pedidos WHERE id = 1;


/*9. Crear tabla "Productos":*/


CREATE TABLE public.productos (
  id INT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  precio DECIMAL NOT NULL
);


/*10. Insertar productos:*/


INSERT INTO public.productos (id, nombre, precio) VALUES (1, 'Camiseta', 20.00);
INSERT INTO public.productos (id, nombre, precio) VALUES (2, 'Pantalón', 30.00);
INSERT INTO public.productos (id, nombre, precio) VALUES (3, 'Zapatos', 40.00);


/*11. Consultar todos los clientes:*/


SELECT * FROM public.clientes;


/*12. Consultar pedidos con nombres de clientes:*/


SELECT C.nombre, P.producto, P.cantidad
FROM public.pedidos P
INNER JOIN public.clientes C ON P.cliente_id = C.id;


/*13. Consultar productos con precio mayor a $50:*/


SELECT * FROM public.productos WHERE precio > 50.00;


/*14. Consultar pedidos con cantidad mayor o igual a 5:*/


SELECT * FROM public.pedidos WHERE cantidad >= 5;


/*15. Consultar clientes con nombre que empieza por "A":*/


SELECT * FROM public.clientes WHERE nombre LIKE 'A%';


/*16. Total de pedidos por cliente:*/


SELECT C.nombre, COUNT(*) AS total_pedidos
FROM public.pedidos P
INNER JOIN pedidos.clientes C ON P.cliente_id = C.id
GROUP BY C.nombre;


/*17. Cantidad total de pedidos por producto:*/


SELECT P.nombre, SUM(P.cantidad) AS total_pedidos
FROM public.pedidos P
GROUP BY P.nombre;


/*18. Agregar columna "fecha" a "Pedidos":*/


ALTER TABLE public.pedidos ADD fecha DATE;


/*19. Agregar clave externa a "Pedidos":*/


ALTER TABLE public.pedidos ADD FOREIGN KEY (producto) REFERENCES public.productos(id);


/* 20. Consultar pedidos con nombres de clientes y productos:*/




