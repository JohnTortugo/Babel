with Ada.Text_IO; use Ada.Text_IO;

package body Figures is
	-- Package to demonstrate Object Orientation

	function Area(F : Figure) return Float is
	begin
		return 1.0;
	end Area;

	function Perimeter(F : Figure) return Float is
	begin
		return 1.0;
	end Perimeter;

	procedure Draw(F : Figure) is
	begin
		Put("Draw");
	end Draw;




	function Area(C : Circle) return Float is
	begin
		return 1.0;
	end Area;

	function Perimeter(C : Circle) return Float is
	begin
		return 1.0;
	end Perimeter;

	procedure Draw(C : Circle) is
	begin
		Put("Draw");
	end Draw;



	function Area(R : Rectangle) return Float is
	begin
		return 1.0;
	end Area;

	function Perimeter(R : Rectangle) return Float is
	begin
		return 1.0;
	end Perimeter;

	procedure Draw(R : Rectangle) is
	begin
		Put("Draw");
	end Draw;

begin
	Put_Line("This is the constructor of this **package**");

	

end Figures;
