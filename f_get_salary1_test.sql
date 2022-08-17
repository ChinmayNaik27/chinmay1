--creating test function

declare
	l_erec employ%rowtype;
begin
	l_erec.eno:='&eno';
	l_erec:=f_get_employ1(l_erec.eno);
dbms_output.put_line('Employ No : ' || l_erec.eno);
dbms_output.put_line('Employ Name : ' || l_erec.ename);
dbms_output.put_line('Employ Gender : ' || l_erec.gender);
dbms_output.put_line('Employ Salary : ' || l_erec.salary);
end;
/