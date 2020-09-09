-- 1 - login
-- docker exec -it <container_id> bash
-- psql -h localhost -p 5432 -U admin

-- 2 - create db
CREATE DATABASE product_db;
\c product_db
CREATE TABLE product(id SERIAL PRIMARY KEY, price int, name varchar(1000));

insert into product(id, price,name) values(1, 10,'Keyboard');