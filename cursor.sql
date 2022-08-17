--creating script for cursor

declare
	cursor emp_cur is select * from emp1;
	erec emp_cur%rowtype;
begin
	open emp_cur;
	loop
		fetch emp_cur into erec;
		exit when emp_cur%notfound;
		if erec.sal >7000 then
		  erec.comm:=erec .sal * .3;
		elsif erec.sal >7500 then
		  erec.comm:=erec.sal * .2;
		else
		  erec.comm:=erec.sal * .1;
		end if;
	
	dbms_output.put_line(erec.eno||' commission ' || erec.comm || ' is updated');
	end loop;
	close emp_cur;
end;
/