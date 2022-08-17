--creating a procedure file for record

create or replace procedure p_emp_ins_rec
	(p_erec employ%rowtype)
is
begin
   insert into employ values p_erec;
 if sql%rowcount=1 then 
 dbms_output.put_line('Employ entered!!');
  else
  dbms_output.put_line('Failed!!');
  end if;
end;
/