SELECT * FROM users WHERE email LIKE '%@gmail.com';
/* selecciona los usuarios donde en el email contengan @gmail.com 
es importante usar el signo de porcentaje % '%@gmail.com' traera todo lo que 
este especificado a la derecha del porcentaje, busqueda de valores dinamicos */

SELECT name FROM users WHERE email LIKE '%@gmail.com';
/* ahora solo me retorna los nombres de las personas que usen @gmail.com