function Sum(A, B : in Integer) return Integer is
	Total : Integer := A;
begin
	Total := Total + B;
	return Total;
end Sum;
