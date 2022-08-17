-- creating previous project in compact manner

create or replace procedure p_emp_ins_rec
  (p_erec employ%rowtype)
is 
begin
	insert into employ values p_erec;
	
	if sql%rowcount=1 then
	    dbms_output.put_line('One Employ Entered');
	else
	    dbms_output.put_line('Problem saving employ data');
	end if;
end;
/