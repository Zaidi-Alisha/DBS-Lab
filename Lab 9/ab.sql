set serveroutput on;

declare 
sec_name varchar(20) := 'SEC-5A';
course_name varchar(20) := 'Database Systems Lab';
Begin
DBMS_OUTPUT.PUT_LINE('Welcome'|| sec_name || 'to the' || course_name);
End;
/

declare
a int := 10;
a int := 20;
c int;
f real;
begin
c := a+b;
DBMS_OUTPUT.PUT_LINE('Value of c is '|| c);
f := 70.0/3.0;
DBMS_OUTPUT.PUT_LINE('Value of f is '|| f);
end;
/