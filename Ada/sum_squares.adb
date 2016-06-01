function sum_squares(A, B : in Integer) return Integer is

	function square(X : in Integer) return Integer is
	begin
		return X * X;
	end square;

begin

	return square(A) + square(B);

end sum_squares;
