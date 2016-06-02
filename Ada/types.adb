with Ada.Float_Text_IO, Text_IO, Ada.Integer_Text_IO;
use Ada.Float_Text_IO, Text_IO, Ada.Integer_Text_IO;

with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Types is
	A, B : Float := 0.0;
	I, J : Integer := 1;
begin
	A := B + 7.0;
	I := J * 30;
	B := I + A + 35.3;

	Put("A = ");
	Put(A);
	New_Line;

	Put("B = ");
	Put(B);
	New_Line;

	Put("I = ");
	Put(I);
	New_Line;

	Put("J = ");
	Put(J);
	New_Line;

end Types;
