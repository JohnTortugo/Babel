with Ada.Strings.Unbounded, Ada.Strings.Unbounded.Text_IO, Text_IO;
use Ada.Strings.Unbounded, Ada.Strings.Unbounded.Text_IO, Text_IO;

procedure Put_Long is
	-- Print "long" text lines
	Input : Unbounded_String;
begin
	while (not End_Of_File) loop
		Input := Get_Line;

		if Length(Input) > 10 then
			Put_Line(Input);
		end if;
	end loop;
end Put_Long;
