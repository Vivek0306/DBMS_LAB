create or replace package pack
as 
	function f(r number) return number;
	procedure grade(r number);
end;