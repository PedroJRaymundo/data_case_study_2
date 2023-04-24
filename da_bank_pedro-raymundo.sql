CREATE DATABASE bank;

USE bank;

-- 2.01 
-- Actividad 1
-- Una de las diferencias radica en el uso; la data estructurada puede responder a hechos pasados y, la no estructurada, además de lo primero, puede enfocarse en predicciones.
-- Actividad 2
-- Si se elimina un registro la integridad de los registros restantes no se ve afectada.
-- Este modelo evita la duplicidad de registros.
-- Capacidad de crear información significativa uniendo las tablas
-- Actividad 3
-- Cuál es la cantidad de clientes en mora?
-- De los clientes en mora, cuántos son los prestamos ortogados 
-- que se encuentran por encima de promedio + 25% sobre el total?
-- Cuál es la edad promedio de los clientes que se encuentran mora?
-- Actividad 4
-- 1
select "hello world" as mensaje;
-- 2
select 5+5 as suma;
-- 3
select * from bank.card;
select distinct type from bank.card;
-- 4
select distinct A1 as id_district, A2 as district_name 
from bank.district;
-- 5
select distinct A1 as id_district, A2 as district_name, A3 as region_name 
from bank.district order by A2 asc
limit 30;


-- 2.02
-- Actividad 1
-- 1
select A2 as district_name, A11 as average_salary
from bank.district where A11>10000
order by A2 asc;
-- 2
select account_id, date, amount, duration, status from bank.loan
where status = "B";
-- 3
select card_id, type from bank.card
where type = "junior" limit 10;
-- Actividad 2
-- 1
select card_id, type, issued from bank.card 
where type = "junior" and issued between 970000 and 971231;
-- 2
select trans_id, operation from bank.trans
where operation = "VYBER" limit 10;
-- 3
select account_id, date, amount, duration, status from bank.loan
where status = "B";

select * from bank.loan where status = "B";

select *
from trans
inner join loan
on trans.account_id = loan.account_id
where status = "B";	




