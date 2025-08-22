SELECT *,
    CASE 
        WHEN age > 30 THEN 'Es mayor de edad' 
        ELSE 'Es menor de edad' 
    END AS edad_categoria
FROM users;
/*SELECT *: Esto selecciona todas las columnas de la tabla users.
CASE: Es una estructura condicional que te permite realizar comparaciones.
WHEN age > 25 THEN 'Es mayor de edad': Si la edad (age) es mayor a 25, entonces la nueva columna tendrá el valor 'Es mayor de edad'.
ELSE 'Es menor de edad': Si la edad no es mayor a 25, la nueva columna tendrá el valor 'Es menor de edad'.
END: Cierra la estructura CASE.
AS edad_categoria: Le da un alias a la nueva columna generada por el CASE, en este caso se llama edad_categoria.*/


SELECT *,
    CASE 
        WHEN age > 18 THEN 'Es mayor de edad' 
        WHEN age = 18 THEN 'acaba de cumplir la mayoria de edad'
        ELSE 'Es menor de edad' 
    END AS 'Es mayor de edad?'
FROM users;
--este es un case mucho mas elaborado, hay que tener presente la sintaxis para estos cases




select *, 
case 
when age >17 then true
else false
end as 'es mayor de edad?'
from users;