declare
	a number;
	b number;
	c number;
begin
	a := &a;
	b := &b;
	c := &c;
	if a > b and a > c then
		dbms_output.put_line('Largest is: '||a);
		if b > c then
			dbms_output.put_line('Smallest is: '||c);
		else
			dbms_output.put_line('Smallest is: '||c);
		end if;
	elsif b > a and b > c then
		dbms_output.put_line('Largest is: '||b);
		if a > c then
			dbms_output.put_line('Smallest is: '||c);
		else
			dbms_output.put_line('Smallest is: '||a);
		end if;
	else
		dbms_output.put_line('Largest is: '||c);
		if b > a then
			dbms_output.put_line('Smallest is: '||a);
		else
			dbms_output.put_line('Smallest is: '||b);
		end if;
	end if;
end;
/
