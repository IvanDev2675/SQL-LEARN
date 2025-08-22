select name from users
union 
select dni_number from dni
order by name; 
/*aqui me trae los valores que le pido de cada tabla y los une*/ 