--creating a script for fecting data from rows of db

declare
   v_eno number(4);
   v_ename varchar2(20);
   v_job varchar2(10);
   v_sal number(9,2);
   v_comm number(9,2);
   v_deptno number(2);
begin
   select eno,ename,job,sal,nvl(comm,0),deptno into
	    v_eno,v_ename,v_job,v_sal,v_comm,v_deptno
	 from emp1
	where eno=100;
   dbms_output.put_line('Employ no : ' || v_eno);
   dbms_output.put_line('Employ name : ' || v_ename);
   dbms_output.put_line('Employ job : ' || v_job);
   dbms_output.put_line('Employ sal : ' || v_sal);
   dbms_output.put_line('Employ comm : ' || v_comm);
   dbms_output.put_line('Employ deptno : ' || v_deptno);
end;
/