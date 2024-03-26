#include <stdbool.h>

typedef struct {
    int first;
    int second;
    bool valid;
} pair;

int factorial(int n)
{
    if(n==0) return 1;
    return n * factorial(n-1);
}

int gcd(int a, int b)
{
    if (b==0) return a;

    if(a<b)
    {
        int c = b;
        b = a;
        a = c;
    }

    return gcd(b, a%b);
}


int extended_euclidean(int a, int b, int *x, int *y)
{
    if(b==0)
    {
        *x = 1;
        *y = 0;
        return a;
    }
    else if (a==0)
    {
        *x = 0;
        *y = 1;
        return b; 
    }
    else
    {
        int x1, y1;
        int gcd = extended_euclidean(b, a%b, &x1, &y1);
        *x = y1; 
        *y = x1 - (a / b) * y1;
        return gcd;
    }
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
