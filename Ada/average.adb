with Ada.Text_IO;
with Ada.Integer_Text_IO; 
with Ada.Float_Text_IO;

use Ada.Text_IO;
use Ada.Integer_Text_IO;
use Ada.Float_Text_IO;


procedure Average  is
	type DynamicArray is array(Integer range <>) of Integer;

	ArrayLength : Integer := 0;
	Average : Float := 0.0;


	function CalcAverage(Values : DynamicArray) return Float is
		Sum : Float := 0.0;
	begin
		for I in Values'Range loop
			Sum := Sum + Float( Values(I) );
		end loop;

		return Sum / Float(Values'Length);
	end CalcAverage;


begin
	-- Ask the user the size of the array
	Put("What is the array length? ");
	Get(ArrayLength);

	declare
		-- Dynamically allocated array
		Values : DynamicArray(1 .. ArrayLength);
	begin
		for I in 1..ArrayLength loop
			Put("Value at Position Array[");
			Put(I, 3, 10);
			Put("] = ");
			Get( Values(I) );
		end loop;

		-- Pass an array as parameter and receive a float as return
		Average := CalcAverage( Values );

		-- print the average
		Put("The Average Value is ");
		Put(Average, 2, 2, 0);	
		-- This is also possible: 
		-- Put(Average, Fore => 5, Aft => 3, Exp => 0);
	end;

end Average;

