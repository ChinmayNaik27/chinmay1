--cursor with for loop 

declare
	cursor emp_cur(p_job emp1.job%type) is select * from emp1 
	where job=p_job;

begin
	for erec in emp_cur('&job')
	loop
	    if erec.sal >= 7500 then
		erec.comm:=erec.sal * .3;
	    elsif erec.sal >= 6000 then
		erec.comm:=erec.sal * .2;
	    else
		erec.comm:=erec.sal * .1;
	    end if;
		dbms_output.put_line('This is ' || erec.ename || ' with commission ' ||erec.comm);	
	end loop;
end;
/