update users set surname='parr' where user_id=8;
/*con esto puedo actualizar un campo como tal si se ubicarlo, la regla es
 utilizar el where porque sino afectare todas las columnas,
es decir esto esta mal, upddate users set age='18' porque le pondra 18 anios a todos*/


update users set age= null where user_id=11
--aqui elimino la edad del usuario 11