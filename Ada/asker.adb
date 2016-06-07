with Text_IO; 
with Ada.Characters.Handling; 

use Text_IO;
use Ada.Characters.Handling;

procedure Asker is
	Response : Character;
begin
	Put("Would you like me to say Hello? ");
	Get(Response);		-- Get first character

	if ( To_Lower(Response) = 'y' ) then
		Put("Hello there.");
	else
		Put("Okay, I won't.");
	end if;
end Asker;
