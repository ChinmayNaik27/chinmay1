--Creating a function
create or replace function f_get_salary
	(p_eno employ.eno%type)
	return employ.salary%type
	is
	v_sal employ.salary%type;
begin
select salary into v_sal from employ
 	where eno=p_eno;

return v_sal;
end;
/