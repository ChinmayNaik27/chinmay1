--creating script
declare
	erec1 employ%rowtype;
begin
erec1.eno:='&eno';
p_get_employ(erec1.eno,erec1);
dbms_output.put_line('Employ No : ' || erec1.eno);
dbms_output.put_line('Employ Name : ' || erec1.ename);
dbms_output.put_line('Employ Gender : ' || erec1.gender);
dbms_output.put_line('Employ Salary : ' || erec1.salary);
end;
/