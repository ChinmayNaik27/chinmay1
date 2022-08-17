--creating user defined record
declare 
type emp_rec is record
	(ename employ.ename%type,
	 salary employ.salary%type
	);
	erec emp_rec;
begin
  select ename,salary into erec.ename,erec.salary from employ
	where eno='&eno';
	dbms_output.put_line(erec.ename||' '|| erec.salary);
end;
/