--creating script for ref coursor

declare 
	type w_r_c is ref cursor;
	c1 w_r_c;
	r1 emp1%rowtype;
	r2 employ%rowtype;
begin
	open c1 for select * from emp1;
	loop
	fetch c1 into r1;
	exit when c1%notfound;
	dbms_output.put_line(r1.eno || ' ' || r1.ename || ' ' || r1.job || ' ' || r1.sal);
	end loop;
	close c1;
dbms_output.put_line('----------------------------------------');
	open c1 for select * from employ;
	loop
	fetch c1 into r2;
	exit when c1%notfound;
	dbms_output.put_line(r2.eno || ' ' || r2.ename || ' ' ||r2.gender || ' ' || r2.salary);
	end loop;
	close c1;
end;
/