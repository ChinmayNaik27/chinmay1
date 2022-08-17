-- creating 2nd plsql programming 


declare
	myname varchar2(20):='Chinmay Naik';
begin
	dbms_output.put_line('Hello ' || myname);
end;
/