--creating script using rowtype
declare
   erec emp1%rowtype;
begin
   select * into erec from emp1
	where eno='&eno';
   if erec.sal >= 7500 then 
	erec.comm:=erec.sal * .3;
   elsif erec.sal >= 6000 then
	erec.comm:=erec.sal * .2;
   else
	erec.comm:=erec.sal * .1;
   end if;

   update emp1 set comm=erec.comm where eno=erec.eno;
   dbms_output.put_line('Employ no : ' || erec.eno);
   dbms_output.put_line('Employ no : ' || erec.ename);
   dbms_output.put_line('Employ no : ' || erec.job);
   dbms_output.put_line('Employ no : ' || erec.sal);
   dbms_output.put_line('Employ no : ' || erec.comm);
   dbms_output.put_line('Employ no : ' || erec.deptno);
end;
/