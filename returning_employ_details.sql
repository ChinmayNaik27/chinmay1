--creating employ detail return script

create or replace procedure p_get_employ
	(p_eno employ.eno%type,
	 p_erec out employ%rowtype)
is
begin
select * into p_erec from employ
	where eno=p_eno;
end;
/