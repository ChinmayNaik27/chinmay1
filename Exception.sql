create or replace procedure p_emp_wages_insert
	(p_eno emp1.eno%type,
	 p_ename emp1.ename%type,
	 p_sal emp1.sal%type
	)
as
	hey exception;
	pragma exception_int(hey,-2290);

	min_length_ename_ex exception;
	pragma Exception_init(min_length_ename_ex,-20006);
	BEGIN
	if length(p_ename)<10 then
		raise_application_error(-20006,'Invaild Ename');
	else
	insert into emp_wages
	(eno,ename,sal)values(p_eno,p_ename,p_sal);
	if sql%rowcount=1 then
	dbms_output.put_line('Success');
	else
	dbms_output.put_line('Fail');
	end if;
	end if;

	exception
	when DUP_VAL_ON_INDEX then
			dbms_output.put_line('ALready an employ present');
	when hey then 
			dbms_output.put_line('Invaild Employ name sal ' || sqlcode)
	when min_length_name_ex then
			dbms_output.put_line('Already ')