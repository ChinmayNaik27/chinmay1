declare 
	v_eno number(4);
      v_ename varchar2(20);
	v_job varchar2(10);
      v_sal number(9,2);
	v_comm number(9,2);
	v_deptno number(9,2);
begin
 	select eno,ename,job,sal,nvl(comm,0),deptno into v_eno,v_ename,v_job,v_sal,v_comm,v_deptno 
 	from emp1_practice
  	where eno='&eno';
	dbms_output.put_line('The employ no is: ' || v_eno);
	dbms_output.put_line('The employ name is: '||v_ename);
	dbms_output.put_line('The employ job is: '||v_job);
	dbms_output.put_line('The employ sal is: '||v_sal);
	dbms_output.put_line('The employ comm is: '||v_comm);
	dbms_output.put_line('The employ deptno is: '||v_deptno);
	end;
/