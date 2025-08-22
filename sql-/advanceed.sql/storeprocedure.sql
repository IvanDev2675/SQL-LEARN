/*procedimiento almacenado*/
delimiter // 
create procedure all_age
 begin
 select * from users where age<=25; 
 end  //
 delimiter ;