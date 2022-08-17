--Creating script with row type

create or replace function f_get_employ1
	(p_eno employ.eno%type)
	return employ%rowtype
is
	erec employ%rowtype;
begin
	select * into erec from employ
	where eno=p_eno;
return erec;
end;
/