create table dni(
dni_id int auto_increment primary key,\
dni_number int not null,
user_id int,
unique(dni_id),
foreign key(user_id) references users(user_id)
);
--relacion 1-1


create table users_languages(
users_language_id int auto_increment primary key,
user_id int,
language_id int,
foreign key(user_id) references users(user_id),
foreign key(language_id) references languages(language_id),
unique(user_id,language_id)
);