package pL is

	type Pair is record
      First  : Integer;
      Second : Integer;
	end record;

	type Solution is record
	  Valid : Boolean;
      First  : Integer;
      Second : Integer;
	end record;

	function Factorial(N : Integer) return Integer;

	function GCD(A,B : Integer) return Integer;
	function DIO(a, b, c : Integer) return Solution;

end pL;
