create table orders(id serial primary key, info json not null);

insert into orders values(6,'{"Customer":"Amal","items":{"product":"Beer","quantity":"10"}}');

select * from orders;
select info->'Customer' from orders;

select info->'items'->>'product' from orders;

select info->'items'->>'product' from orders
where info->'items'->>'product'='Beer';

select * from orders
where cast(info->'items'->>'quantity' as integer)>5;

select sum(cast(info->'items'->>'quantity' as integer)) from orders;