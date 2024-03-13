#include "stdio.h"
#include "lib.h"


int main()
{
    int factoriall = factorial(4);
    printf("Factorial  %d\n", factoriall);

    int nwd = gcd(12,18);
    printf("GCD  %d\n", nwd);

    pair solutions = eqDIOFAN(7,8,23);
    if(!solutions.valid) printf("No solutions\n");
    else
    printf("x = %d  y = %d\n", solutions.first, solutions.second);
}