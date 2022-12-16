create or replace package body pack
as
	function f(r number)
	return number is
	t number;
	s studentm%rowtype;
	begin
	select physics_mark,chemistry_mark,maths_mark into 
	s.physics_mark,s.chemistry_mark,s.maths_mark from studentm where 
	reg_no=r;
	t := s.physics_mark+s.chemistry_mark+s.maths_mark;
	return t;
	end f;

	procedure grade(r number) is
	t1 number;
	total number;
	begin
	select physics_mark+chemistry_mark+maths_mark into total from 
	studentm where reg_no = r;
	t1 := (total/150)*100;
	if t1>=80 and t1<=100 then
		dbms_output.put_line('Grade: A');
	elsif t1>=70 and t1<80 then
		dbms_output.put_line('Grade: B');
	elsif t1>=50 and t1<70 then
		dbms_output.put_line('Grade: C');
	elsif t1<50 then
		dbms_output.put_line('Grade: Fail');
	end if;
	end grade;
end;