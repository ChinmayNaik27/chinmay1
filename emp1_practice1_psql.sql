
declare
	myvar number(4);
	myvar1 number(5);
begin
	myvar:='&myvar';
	myvar1:='&myvar1';
    if myvar = myvar1 then
	dbms_output.put_line('Both are same!!');
    elsif myvar > myvar1 then
 	dbms_output.put_line('1st is greater than 2nd no!!');   
      else
	dbms_output.put_line('Both are not same!!');
    end if;
end;
/