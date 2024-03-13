with Ada.Text_IO; use Ada.Text_IO;
with pR;

procedure Main is
   use pR;

   I : Integer := Factorial(3);
   J : Integer := GCD(12, 18);
   S : Solution := DIO(13,5,2);
begin
   Put_Line (Integer'Image(I));
   Put_Line (Integer'Image(J));
   if S.Valid = False then
      Put_Line("No solutions");
   else
      Put_Line(Integer'Image(S.First) & " " & Integer'Image(S.Second));
   end if;
end Main;

