package Keys is
	type Key is private;

	Null_Key : constant Key;

	procedure Get_Key(K : out Key);		-- Get a new Key value

	function "<"(X, Y : in Key) return Boolean;

private
	Max_Key		: constant		:= 2 ** 16 - 1;

	type Key is range 0 .. Max_Key;

	Null_Key 	: constant Key 	:= 0;

end Keys;
