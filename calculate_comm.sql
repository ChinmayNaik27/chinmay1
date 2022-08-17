--calculate commision script

declare
  v_eno emp1.eno%type;
  v_ename emp1.ename%type;
  v_sal emp1.sal%type;
  v_comm emp1.comm%type;
begin
    select eno,ename,sal into v_eno,v_ename,v_sal from emp1
	where eno='&eno';
    if v_sal >= 7500 then
	v_comm:=v_sal * .3;
    elsif v_sal >= 6000 then 
	v_comm:=v_sal * .2;
    else
	v_comm:=v_sal * .1;
    end if;
    update emp1 set comm=v_comm where eno=v_eno;
    dbms_output.put_line('Employ no : ' || v_eno);
    dbms_output.put_line('Employ ename : ' || v_ename);
    dbms_output.put_line('Employ salary : ' || v_sal);
    dbms_output.put_line('Employ commission : ' || v_comm);
end;
/