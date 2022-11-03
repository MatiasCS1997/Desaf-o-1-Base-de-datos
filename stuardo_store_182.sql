--Crear base de datos
CREATE DATABASE store;

--ingresar a la base 
\c store
--crear tabla para la base
CREATE TABLE client(
  id SERIAL PRIMARY KEY,
  email VARCHAR(50),
  client_name VARCHAR,
  phone VARCHAR(16),
  company VARCHAR(50),
  priority SMALLINT NOT NULL CHECK (priority >= 1 AND priority <= 10)
);

--Insertar datos 
INSERT INTO client (email, client_name, phone, company, priority) VALUES ('matias@gmail.com', 'Matias', '123456789', 'UDALBA', 10),
('bastian@gmail.com', 'Bastian', '123456789', 'UNAB', 9),('gaston@gmail.com', 'Gaston', '123456789', 'UCSH', 8),
('gerardo@gmail.com', 'Gerardo', '123456789', 'Microsoft', 7),('juan@gmail.com', 'Juan', '123456789', 'Apple', 6);

--Selecciona los tres clientes de mayor prioridad

SELECT*  FROM client ORDER BY priority DESC, id ASC LIMIT 3;

-- Selecciona, de la tabla clientes, una prioridad o una empresa, de forma que el resultado devuelva 2 registros

SELECT * FROM client WHERE priority = 10 OR company = 'Facebook';
-- Sal de postgreSQL

\q