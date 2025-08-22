SELECT * FROM users WHERE NOT email = 'mateo@gmail.com' or age<20 LIMIT 2;
/* me selecciona de la tabla users donde email no sea mateo@gmail.com o age<20 
si normalmente me devuelve 10 valores con LIMIT limito las columnas a 2 