--Creating test script 

declare
	erec employ.eno%type;
	erec1 employ.salary%type;
begin
	erec:='&eno';
	erec1:=f_get_salary(erec);
 dbms_output.put_line('Salary is ' || erec1 || 'employee id is '||erec);
end;
/