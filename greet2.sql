--New script


declare 
	first_name varchar2(20);
	Middle_name varchar2(20);
	Last_name varchar2(20);
	full_name varchar2(20);
begin
	first_name:='&first_name';
	middle_name:='&Middle_name';
	last_name:='&last_name';

	full_name:=first_name || ' ' || middle_name || ' ' || last_name;
	dbms_output.put_line('My full name is ' || full_name);
end;
/