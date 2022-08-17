declare 
	n1 number(4);
	n2 number(5);
begin 
  n1:='&n1';
  n2:='&n2';
  if n1 = n2 then
	dbms_output.put_line('Both n1 and n2 are equal');
  else
      dbms_output.put_line('Both n1 and n2 are not equal');
  end if;
end;
/