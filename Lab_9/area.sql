declare
	radius number;
	side number;
	square number;
	circle number;
begin
	radius := &radius;
	side := &side;
	square := side * side ;
	circle := 3.14 * radius * radius;
	dbms_output.put_line('Area of Circle is: '||circle);
	dbms_output.put_line('Area of Square is: '||square);
end;
/
