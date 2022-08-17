declare
	no number:=1;

begin
loop
     dbms_output.put_line(no);
	no:=no+1;
     exit when no >= 5;
end loop;
end;
/