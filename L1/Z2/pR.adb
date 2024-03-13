package body pR is

    function Factorial(N : Integer) return Integer is
    begin
        if N=0 then
            return 1;
        else
            return N*Factorial(N-1);
        end if;
    end Factorial;

    function GCD(A, B : Integer) return Integer is
    begin
        if B=0 then
            return A;
        else
            return GCD(B, A mod B);
        end if;    
    end GCD;

    type Triple is record
        First  : Integer;
        Second : Integer;
        Third : Integer;
    end record;


    type Pair_Array is array(1..200) of Pair;


    function ExtendedGCD(a, b : Integer) return Triple is
        result : Triple;
        Temp : Triple;
        arr : Pair_Array;
    begin
        if b=0 then
            result.First := a;
            result.Second := 1;
            result.Third := 0;
        else
            Temp := ExtendedGCD(b, a mod b);
            result.First := Temp.First;
            result.Second := Temp.Third;
            result.Third := Temp.Second - (a/b) * Temp.Third;
        end if;

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
 

end pR;

