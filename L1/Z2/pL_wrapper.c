#include <stdio.h>

extern int Factorial(int N);
extern void GCD(int a, int b, int *result);
extern void DIO(int a, int b, int c, int *result_valid, int *result_first, int *result_second);

// Wrapper function for Factorial
int factorial_wrapper(int n) {
    int result;
    Factorial(n);
    return result;
}

// Wrapper function for GCD
int gcd_wrapper(int a, int b) {
    int result;
    GCD(a, b, &result);
    return result;
}


// Wrapper function for DIO
void dio_wrapper(int a, int b, int c, int *result_valid, int *result_first, int *result_second) {
    DIO(a, b, c, result_valid, result_first, result_second);
}
