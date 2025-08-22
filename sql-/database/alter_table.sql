alter table persons6
add surname varchar(50) not null;
/*aqui altero la tabla como tal, aqui agregue un nuevo campo surname

*/
alter table persons6
rename column surname to apellido;
/* lo que hago es actualizar el nombre del campo especificado, en este caso
ya no es surname sino apellido*/

alter table persons6 
modify column apellido varchar(250);
/* aqui lo que hago es es modificar el varchar del campo, lo amplio a 250*/

alter table ventas
drop column total;

/*me borra la columna especificada*/