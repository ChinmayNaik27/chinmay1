--creating indefinate loop screen

declare
	n number:=1;
begin
	loop
	    dbms_output.put_line(n);
	    n:=n+1;
	    if n>5 then
		exit;
	    end if;
	end loop;
end;
/