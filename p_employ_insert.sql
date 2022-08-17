create or replace procedure p_employ_insert
	(p_eno employ.eno%type,
	 p_ename employ.ename%type,
	 p_gender employ.gender%type,
	 p_salary employ.salary%type
	)
is
begin
   insert into employ values(p_eno,p_ename,p_gender,p_salary);

	if sql%rowcount=1 then
		dbms_output.put_line('One employ is saved successfully');
	else
		dbms_output.put_line('Problem in saving employ details');
	end if;
end;
/