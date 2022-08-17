--creating strong ref cursor
declare
	type s_r_c is REF CURSOR;
	v1 s_r_c;
	erec emp1%rowtype;
begin
open v1 for select * from emp1 where job='&job';
	loop
		fetch v1 into erec;
		exit when v1%notfound;
		dbms_output.put_line(erec.eno|| ' '|| erec.ename || ' ' ||erec.job || ' ' ||erec.sal);
	end loop;
close v1;
dbms_output.put_line('+++++++++++++++++++++++++++++++++++++++++++++');
open v1 for select * from emp1 where sal >='&sal';
	loop
		fetch v1 into erec;
		exit when v1%notfound;
		dbms_output.put_line(erec.eno||' '|| erec.ename ||' '||erec.job||' '||erec.sal);
	end loop;
close v1;
end;
/