select * from users
inner join dni
on users.user_id= dni.user_id;
/*este es un inner join que me trae unicamente los datos relacionados
entre las dos tablas, dos circulos relacionados y me trae lo que hay en el
centro*/
select * from users
 join dni
on users.user_id= dni.user_id;
/*esto es lo mismo, pero si la palabra inner*/



select name, dni_number from users
inner join dni
on users.user_id= dni.user_id
order by age desc;
/*aqui solamente pido que me traiga el nombre y el dni_number de ambas tablas
y que me las ordene de mayor a menor*/



select *from companies
inner join users
on users.company_id=companies.company_id;
/*1-n*/

select companies.name, users.name from companies
inner join users
on users.company_id=companies.company_id;
/*1-n me trae los nombres de las personas de tabla users y 
los nombres de las companias relacionadas*/


select * 
from users_languages
inner join users on users.user_id=users_languages.user_id;
/*n-m*/




SELECT users.name, languages.name
FROM users_languages
INNER JOIN users ON users.user_id = users_languages.user_id
INNER JOIN languages ON languages.language_id = users_languages.language_id;
/*aqui esta claro como hacer una consulta de muchos a muchos
porque un usuario puede saber muchos idiomas y un idioma lo pueden saber
muchos usuarios, aqui pido los nombres de los usuarios y los languages*/

SELECT users.name, languages.name
FROM users
INNER JOIN users_languages ON users.user_id = users_languages.user_id
INNER JOIN languages ON languages.language_id = users_languages.language_id;
/*esto hace lo mismo que la consulta anterior, pero el from lo hice con tabla
users, pero el inner join lo hice con users_languages*/



select u.name, l.name from users_languages ul
inner join users u on u.user_id = ul.user_id
inner join languages l on l.language_id = ul.language_id; 

/*aqui lo que hago es asignar alias, users ahora es u 
lenguages es l y users_languages es ul
los alias se establecen en el select o en el inner */

select users.name, producto.name as'nombre producto', producto.precio,ventas.cantidad ,ventas.cantidad*producto.precio as 'total'from ventas
inner join users on users.user_id=ventas.user_id
inner join producto on producto.id_producto= ventas.id_producto
where ventas.cantidad*producto.precio>=300000; 

