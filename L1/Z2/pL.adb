package body pL is

    function Factorial(N : Integer) return Integer is
        Result : Integer := 1;
    begin
        for I in 1 .. N loop
            Result := Result * I;
        end loop;
        return Result;
    end Factorial;

    function GCD(A, B : Integer) return Integer is
        Temp : Integer;
	A1 : Integer := A;
	B1 : Integer := B;
    begin
        while B1 /= 0 loop
            Temp := B1;
            B1 := A1 mod B1;
            A1 := Temp;
        end loop;
        return A1;
    end GCD;

type Triple is record
      First  : Integer;
      Second : Integer;
      Third : Integer;
end record;


type Pair_Array is array(1..200) of Pair;

function ExtendedGCD(a, b : Integer) return Triple is
   A1 : Integer := a;
   B1 : Integer := b;
   I : Integer := 1;
   X : Integer := 1;
   Y : Integer := 0;
   TEMP : Integer;
   result : Triple;
   arr : Pair_Array;

begin
    while B1 /= 0 loop
        arr(I).First := A1;
        arr(I).Second := B1;
        TEMP := A1;
        A1 := B1;
        B1 := TEMP mod B1;
        I := I+1;
    end loop;

    arr(I).First := A1;
    arr(I).Second := B1;
    I := I-1;
    
    while I > 0 loop
        TEMP := X;
        X := Y;
        Y := TEMP - (arr(I).first/arr(I).second) * Y;
        I := I - 1;
    end loop;

    result.First := A1;
    result.Second := X;
    result.Third := Y;
    return result;
end ExtendedGCD;

   function DIO(a, b, c : Integer) return Solution is
    G : Triple;
    result : Solution;
    begin
    
    G := ExtendedGCD(a, b);

    if c mod G.first /= 0 then
        result.Valid := False;
        result.first := 0;
        result.second := 0;
        return result;
    else
        result.Valid := True;
        result.first := G.Second * (c / G.First);
        result.second := G.Third * (c / G.First);
        return result;
    end if;
    end DIO;
 

end pL;

