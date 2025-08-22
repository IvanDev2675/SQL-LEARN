SELECT * FROM users WHERE NOT email = 'mateo@gmail.com';
--negacion de un criterio, selecciona los emails donde no este el email especificado


AND
SELECT * FROM users WHERE NOT email = 'mateo@gmail.com' AND age<23;
/*ahora establecemos otro parametro, me trae los usuarios que no tengan email mateo@gmail.com
y que la edad sea <23 */

or
SELECT * FROM users WHERE NOT email = 'mateo@gmail.com' or age<23;
 --cumple una condicion o cumple la otra, si el user mateo@gmail.com tiene <23 lo trae