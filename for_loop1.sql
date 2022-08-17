--creating script for for loop

begin
	for n in reverse 1..5
	loop
	    dbms_output.put_line(n);
	end loop;
end;
/