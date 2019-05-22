-- Set 1

--1 
create table person (
person_id serial primary key, 
name text not null,
age integer not null,
height integer not null,
city text not null,
favorite_color text not null  
);

--2
insert into person (name, age, height, city, favorite_color)
values ('Curt', 25, 175, 'Gilbert', 'Blue'),
('Lola', 21, 160, 'Gilbert', 'Purple'),
('Cameron', 25, 182, 'Mesa', 'Black'),
('Jessica', 26, 158, 'Tempe', 'Pink'),
('Devan', 27, 175, 'Tempe', 'Green') ;

--3
select * from person
order by height desc;

--4
select * from person
order by height asc;

--5
select * from person
order by age desc;

--6
select * from person
where age > 20;

--7
select * from person
where age = 18;

--8
select * from person
where age < 20 and age > 30;

--9
select * from person
where age != 27;

--10
select * from person
where favorite_color != 'Red';

--11
select * from person
where favorite_color != 'Red' or 
favorite_color != 'Blue';

--12
select * from person
where favorite_color = 'Orange' 
or favorite_color = 'Green';

--13
select * from person
where favorite_color in 
('Orange', 'Green', 'Blue');

--14
select * from person
where favorite_color in 
('Yellow', 'Purple');

--Set 2

--1
create table orders (
person_id serial primary key, 
product_name text not null,
product_price numeric not null,
quantity integer not null
);

--2
insert into orders (product_name, product_price, quantity)
values 
('burger', 4.75, 3),
('steak', 12.15, 2),
('chicken', 10.20, 4),
('salmon', 15.65, 6),
('taco', 2.45, 18);

--3
select * from orders;

--4
select sum(quantity) from orders;

--5
select sum(product_price * quantity) from orders;

--6
select sum(product_price * quantity) from orders
where person_id = 4;

--set 3

--1
insert into artist (name)
values
('Nine Inch Nails'),
('Motion City Soundtrack'),
('I am the Avalanche');

--2
select * from artist
order by name desc limit 10;

--3
select * from artist
order by name asc limit 5;

--4
select * from artist
where name ilike 'Black%';

--5
select * from artist
where name ilike '%Black%';

--Set 4

--1
select first_name, last_name from employee
where city = 'Calgary'

--2
select max(birth_date) from employee;

--3
select min(birth_date) from employee;

--4
select * from employee
where reports_to = 2;

--5
select count(*) from employee
where city = 'Lethbridge';

--Set 5

--1
select count(*) from invoice
where billing_country= 'USA'

--2
select max(total) from invoice;

--3
select min(total) from invoice;

--4
select * from invoice
where total > 5;

--5
select count(*) from invoice
where total < 5;

--6
select count(*) from invoice
where billing_state in ('CA','TX','AZ');

--7
select avg(total) from invoice;

--8
select sum(total) from invoice;