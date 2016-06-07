with Ada.Float_Text_IO, Text_IO, Ada.Integer_Text_IO;
use Ada.Float_Text_IO, Text_IO, Ada.Integer_Text_IO;

with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Types is
	type Date is
	record
		Day 	: Integer range 1 .. 31;
		Month	: Integer range 1 .. 12;
		Year	: Integer range 1 .. 3000 := 2016;
	end record;

	A, B : Float := 0.0;
	I, J : Integer := 1;
	Today : Date;

begin
	A := B + 7.0;
	I := J * 30;
	B := Float(I) + A + 35.0;

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

	Today.Month := 06;
	Today.Day := 6;

	-- Put can print in other numerical bases
	Put(10, 5, 2);
	New_Line;

	Put("Today is = ");
	Put(Today.Day); 
	Put(Today.Month); 
	Put(Today.Year); 
end Types;
