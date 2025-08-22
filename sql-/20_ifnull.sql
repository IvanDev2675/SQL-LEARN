select name, surname, ifnull(age,0) as 'age' from users;
--es lo mismo que el null, ahora le paso un valor y le establezco cual es el valor
--que deseo que aparezca en lugar de null