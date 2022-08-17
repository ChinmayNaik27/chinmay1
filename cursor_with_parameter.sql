--creating cursor with parameters
declare 
 cursor emp_cur(p_job emp1.job%type) is select * from emp1 where job=p_job;
 esumn emp_cur%rowtype;
begin
open emp_cur('&job');
	loop
	fetch emp_cur into esumn;
	exit when emp_cur%notfound;
	if esumn.sal >=7000 then
		esumn.comm:=esumn.sal * .3;
	elsif esumn.sal>=6000 then
		esumn.comm:=esumn.sal * .2;
	else
		esumn.comm:=esumn.sal * .1;
	end if;
	dbms_output.put_line(esumn.eno || ' commission ' ||esumn.comm || ' is updated');
	end loop;
close emp_cur;
end;
/