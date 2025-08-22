create view v_adult_users as select 
ifnull(name, 'desconocido') as name,
ifnull(surname,'desconocido') as surname,
ifnull(age,0) as age 
from users where age>=18;
/*aqui cree una vista avanzada, una vista me permite tener ya
una consulta lista en una pestania llamada views
en este caso decidi agregarle los ifnull para que 
no retorte null. es tan simple como consultar el nombre que le di al view*/
select * from v_adult_users;