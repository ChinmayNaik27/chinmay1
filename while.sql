--while loop program

declare 
n number(4):=1;

begin
	while n<=5
	  loop
		dbms_output.put_line(n);
	 	n:=n+1;
	 	end loop;
p_greet1;
end;
/