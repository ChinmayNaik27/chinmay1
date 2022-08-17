--creating indefinate loop screen

declare
	n number:=1;
begin
	loop
	    dbms_output.put_line(n);
	    n:=n+1;
/*This is same to  if n>5 then exit;end if;   */
      exit when n>5;
	end loop;
end;
/