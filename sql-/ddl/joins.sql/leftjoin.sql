select name, dni_number from users left join dni on users.user_id=dni.user_id;
/*esta consulta me trae todos los valores de una tabla A
+ los que se relacionan con la otra tabla  B pero no los valores 
de la tabla B que no se relacionan con la tabla A*/

select name, dni_number from dni left join users on users.user_id=dni.user_id;
/*esto me hace lo mismo pero ahora me trae unicamente los valores
relacionados de a y b, es decir los nombres que tengan dni*/

SELECT users.name, languages.name
FROM users_languages
left JOIN users ON users.user_id = users_languages.user_id
left JOIN languages ON languages.language_id = users_languages.language_id;
/*n-m*/

SELECT *
FROM users
 left JOIN users_languages ON users.user_id = users_languages.user_id
 left JOIN languages ON languages.language_id = users_languages.language_id;
 /*n-m, ahora me devuelve valores que esten en las tablas incluso si no estan asociados*/


 SELECT  users.name, languages.name
FROM users
 left JOIN users_languages ON users.user_id = users_languages.user_id
 left JOIN languages ON languages.language_id = users_languages.language_id;
 /*aqui me devuelve los nombres de los usuarios + el language que saben, pero
 tambien todos los nombres de users sin importar que esten en null*/


 SELECT  users.name, languages.name, ifnull(languages.name,'non') as status
FROM users
 left JOIN users_languages ON users.user_id = users_languages.user_id
 left JOIN languages ON languages.language_id = users_languages.language_id;
 /*aqui lo que agregue fue un alias a los campos null de langauge.name*/