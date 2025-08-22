create table persons5(
id int not null,
name varchar(50) not null,
age int,
email varchar(50),
created datetime,
unique(id),
primary key(id),
check(age>=18)----<----


);

-- check es una especie de restriccion que yo deseo poner en la tabla
--es decir, aqui cree una tabla donde id es de tipo unico y es la primary key
--pero tambien una restriccion, solo podre registrar edades >18

create table persons5(
id int not null auto_increment,
name varchar(50) not null,
age int,
email varchar(50),
created datetime default current_timestamp(),--<-------
unique(id),
primary key(id),
check(age>=18)


);
/*cuando uso el default lo que hago es establecer un valor por default
en este caso utiilizo el current_timestamp() me toma la hora del sistema
por defecto*/ --auto_increment tambien es una restriccion