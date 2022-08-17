begin
for n in 1..5
loop
for y in 1..n
loop
dbms_output.put_line('*');
end loop;
dbms_output.put_line('');
end loop;
end;
/