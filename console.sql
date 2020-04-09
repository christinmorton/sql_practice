create table users (
    id serial primary key,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    age int,
    email text unique not null
);

drop table users;


insert into users
    (first_name, last_name, age, email)
    values
    ('bob', 'markson', 19, 'bob@bob4.com');

insert into users
    (id, first_name, last_name, age, email)
    values
    (default, 'bob', 'markson', 19, 'bob@bob.com')

insert into users
    (first_name, last_name, age, email)
    values
    ('bob', 'Bakersfield', null, 'bob@bob5.com');


select first_name, last_name, age from users;

select * from users;

alter  table users drop column  age;

alter table users add column age int;

alter table users add column age int default 20;



select * from users where id = 3;

select * from users where id = 3 or id =4;

select * from users where id = 3 and first_name = 'bob';

select * from users where id in (3, 4, 5);

select  * from users where age> 10;

select  * from users where coalesce(age, 15) > 10;

select  * from users where age is null;

select  * from users where age is not null;