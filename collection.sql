declare
 --  type emp_col_type is varray(20) of emp1%rowtype;
     type emp_col_type is table of emp1%rowtype; 
   emp_col emp_col_type;
begin
   select * bulk collect into emp_col from emp1;
   dbms_output.put_line('List of employs ');
   for n in 1 .. emp_col.count loop
     dbms_output.put_line(emp_col(n).eno || ' ' || emp_col(n).ename || ' ' || 
        emp_col(n).sal);
     emp_col(n).comm:=emp_col(n).sal * .2;
   --  update emp1 set comm=emp_col(n).comm where eno=emp_col(n).eno;
   end loop;

   forall n in 1 .. emp_col.count 
      update emp1 set comm=emp_col(n).comm where eno=emp_col(n).eno;
 
end;
/