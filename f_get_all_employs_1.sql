--using sys-ref coursor
create or replace function f_get_all_employs
	(p_gender employ.gender%type)
	return sys_refcursor
is
   emp_cur sys_refcursor;
begin
	open emp_cur for select * from employ where gender=p_gender;
	return emp_cur;
end;
/