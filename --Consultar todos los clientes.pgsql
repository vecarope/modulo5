--Consultar todos los clientes 
SELECT *
FROM customer;

-- Insertar nuevo cliente 
INSERT INTO customer (customer_id, store_id, first_name, last_name, email, address_id, activebool, create_date)
VALUES (new_id, store_id, 'John', 'Doe', 'johndoe@example.com', address_id, true, current_timestamp);

---actualizar cliente registrado 
UPDATE customer
SET email = 'newemail@example.com'
WHERE customer_id = ;

--- Eliminar cliente registrado
DELETE FROM customer
WHERE customer_id = ;


-- consultar nomina staff 
SELECT *
FROM staff;

-- Agregar nuevo miembro al staff
INSERT INTO staff (first_name, last_name, address_id, email, store_id, active, username, password, last_update)
VALUES ('John', 'Doe', address_id, 'johndoe@example.com', store_id, true, 'johndoe', 'password', current_timestamp);


-- Actualizar un miembro del staff
UPDATE staff
SET email = 'newemail@example.com'
WHERE staff_id = 2;

-- Eliminar un miembro del staff
DELETE FROM staff
WHERE staff_id = staff_id_value;


-- consultar nomina de actores
SELECT *
FROM actor;

-- Agregar nuevo actor 
INSERT INTO actor (first_name, last_name, last_update)
VALUES ('Miguel', 'Ohara', current_timestamp);

-- actualizar datos de un actor existente
UPDATE actor
SET first_name = 'Jane'
WHERE actor_id = actor_id_value;

-- eliminar un actor
DELETE FROM actor
WHERE actor_id = actor_id_value;


-- consultar todos los datos de  rental 
SELECT *
FROM rental;

-- consoltar todos los datos de cliente
SELECT *
FROM customer;

-- listar todas las  rentas con los datos del cliente  por año o mes 
SELECT r.rental_id, r.rental_date, c.customer_id, c.first_name, c.last_name
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
WHERE EXTRACT(YEAR FROM r.rental_date) = año
  AND EXTRACT(MONTH FROM r.rental_date) = mes ;

-- mostrar todos los pagos 
SELECT *
FROM payment;

-- mostrar todos los pagos con numero , fecha y total 
SELECT payment_id, payment_date, amount
FROM payment;


-- mostrar todos los films del año 2006 wue tenga el rental-rate mayor a 4.0
SELECT f.film_id, f.title, f.rental_rate
FROM film f
WHERE f.release_year = 2006 AND f.rental_rate > 4.0;
