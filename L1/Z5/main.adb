with Ada.Text_IO;
use Ada.Text_IO;

procedure Main is

      type Pair is record
      First  : Integer;
      Second : Integer;
      Valid : Boolean;
        end record;

   function Factorial(N: Integer) return Integer;
   pragma Import (C, Factorial, "factorial");

   function GCD(A,B : Integer) return Integer;
   pragma Import (C, GCD, "gcd");

   function DIO(A,B,C : Integer) return Pair;
   pragma Import (C, DIO, "eqDIOFAN");

   N : Integer := 5;
   A : Integer := 12;
   B : Integer := 18;
   
   A1 : Integer := 13;
   B1 : Integer := 5;
   C1 : Integer := 1;  
   P : Pair;

begin
   Put_Line("Testing Factorial function:");
   Put_Line("Factorial of " & Integer'Image(N) & " is " & Integer'Image(Factorial(N)));
   Put_Line("Testing GCD function:");
   Put_Line("GCD of " & Integer'Image(A) & " and " & Integer'Image(B) & " is " & Integer'Image(GCD(A,B)));
   
   P := DIO(A1,B1,C1);

   Put_Line("EqDIOFAN result: (" & Integer'Image(P.First) & ", " & Integer'Image(P.Second) & ")");
   if P.Valid then
      Put_Line("Valid: True");
   else
      Put_Line("Valid: False");
   end if;

end Main;

