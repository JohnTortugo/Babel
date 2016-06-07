with Text_IO; use Text_IO;

procedure String2 is

	procedure Print_Reverse(S : String) is
	begin
		for I in reverse S'First .. S'Last loop
			Put( S(I) );
		end loop;
	end Print_Reverse;

	Demo : String := "A test - Divino Cesar";

begin
	Print_Reverse(Demo);
end String2;
