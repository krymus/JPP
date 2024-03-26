with Interfaces.C; use Interfaces.C;

package pR is

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

	pragma Export (C, Factorial, "Factorial");
        pragma Export (C, GCD, "GCD");
        pragma Export (C, DIO, "DIO");
       
end pR;
