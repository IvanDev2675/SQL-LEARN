create database test;



create table persons(
id int,
name varchar(50),
age int,
email varchar(50),
created date

);
-- cree una tabla con codigo, sus campos y valores

create table dni(
dni_id int auto_increment primary key,
dni_number int not null,
user_id int,
unique(dni_id),
foreign key(user_id) references users(user_id)
);

/* aqui creo una tabla dni con relacion a la tabla users 1 a 1*/