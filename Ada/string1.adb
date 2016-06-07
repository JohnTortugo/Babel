with Text_IO; use Text_IO;

procedure String1 is
	A : String := "Hello";
	B : String(1 .. 5);
begin
	B := A;								-- B becomes "Hello"

	A(1) := 'h';						-- A becomes "hello"
	A(2 .. 3) := A(4 .. 5);				-- A becomes "hlolo"

	A := B(1) & A(2..3) & "ol";			-- A becomes "Hlool"

	Put_Line(A);

	A(2..3) := B(2..3);

	Put_Line(A);
end String1;
