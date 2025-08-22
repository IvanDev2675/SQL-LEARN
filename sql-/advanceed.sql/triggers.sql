create trigger tg_email
before/after insert/update/delete
on users
/*aqui lo que hago es programar una accion que yo deseo que he realice
cada vez que el usuario haga una opcion
en este ejemplo estoy haciendo un trigger para que caundo el usuario se cambie
de email entonces el email anterior se guarde en otra tabla*/


delimiter $$

create trigger tg_email
after update
on users for each row
begin
if old.email<>new.email then
insert into email_history(user_id,email) values(old.user_id,old.email);
 end if;
end$$


delimiter ;
/*aqui cree el trigger mencionado anteriormente asi es completamente*/