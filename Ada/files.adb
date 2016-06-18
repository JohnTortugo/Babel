with Text_IO;
use Text_IO;

procedure Files is
	New_file : File_Type;
begin
	Create(New_file, Out_File, "hi.txt");

	Put_Line(New_file, "Hi, this is a test!!!");

	Close(New_file);
end Files;
