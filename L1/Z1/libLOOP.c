#include "lib.h"
#include "stdio.h"


int factorial(int n)
{
    int result = n;
    while(n != 1)
    {
        n -= 1;
        result *= n;
    }
    return result;
}

int gcd(int a, int b)
{
    if(a<b)
    {
        int c = b;
        b = a;
        a = c;
    }

    while(b!=0)
    {
       int c = a%b;
       a = b;
       b = c;
    }

    return a;
}

int extended_euclidean(int a, int b, int *x, int *y)
{
    pair coefficients[400];

    int i = 0;
    while(b!=0)
    {
        pair p;
        p.first = a;
        p.second = b;
        coefficients[i] = p;

        int c = a;
        a = b;
        b = c%b;
        i++;
    }
    
    //adding last pair (gcd,0)
    pair p;
    p.first = a;
    p.second = b;
    coefficients[i] = p;

    //solutions for (gcd * x1 + 0 * y1 = gcd)
    int x1 = 1;
    int y1 = 0;
    i--;

    while(i>=0)
    {
        int x1old = x1;
        int y1old = y1;
        x1 = y1old;
        y1 = x1old - (coefficients[i].first/coefficients[i].second)*y1old;
        i--;
    }

    *x = x1;
    *y = y1;
    return a;
}

pair eqDIOFAN(int a, int b, int c)
{
    pair result;

    int x, y;
    int gcd = extended_euclidean(a, b, &x, &y);

    if(c % gcd != 0)
    {
        result.first = -1;
        result.second = -1;
        result.valid = false;
        return result;
    }
    else 
    {
        result.first = x*c/gcd;
        result.second = y*c/gcd;
        result.valid = true;
        return result;
    }
}