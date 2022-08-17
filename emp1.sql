create table emp1
	(eno number(4),
	 ename varchar2(20),
	 job varchar2(10),
	 sal number(9,2),
	 comm number(9,2),
	 deptno number(2)
	);
alter table emp1 add
	constraint emp1_deptno_fk foreign key(deptno)
			references dept1(deptno);
