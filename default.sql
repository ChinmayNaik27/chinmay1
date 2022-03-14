-- This is a script to create employ table
*/
Application Tittle :  Payroll
Developer Name     :   Chinmay
Developer Time     :   13-03-2022
version            :  1.0
/*
-- Creating employ table...
create table employ
  (eno number(6),
   ename varchar2(20),
   gender char default 'M',
   salary number(9,2) 
  );
--adding comments on employ table...
comment on table employ is
  'It Maintains Basic Details of All Employs'; 
comment on column employ.eno is
  'Maintains unique employ id';
comment on column employ.ename is
  'Maintains name in first middle last name format';
comment on column employ.gender is
  'Valid gender is M for Male, F for Female . Defalult is M';
comment on column employ.salary is
   'It is CTC';