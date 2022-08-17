create table emp505 
	(Eno Number(5) constraint emp505_eno_nn Not Null,
	 salary number(9,2));
	);
select constraint_name,constraint_type from user_constraints where table_name='EMP505';