#include <stdio.h>
#include "pR_wrapper.h"

int main() {
    int n = 5;
    int a = 24;
    int b = 36;
    int c = 12;

    // Call Ada functions from C
    int fact = factorial(n);
    int gcd_result = gcd(a, b);
    int extended_gcd_result_first, extended_gcd_result_second, extended_gcd_result_third;
    extended_gcd(a, b, &extended_gcd_result_first, &extended_gcd_result_second, &extended_gcd_result_third);
    Solution dio_result = dio(a, b, c);

    // Print results
    printf("Factorial(%d) = %d\n", n, fact);
    printf("GCD(%d, %d) = %d\n", a, b, gcd_result);
    printf("ExtendedGCD(%d, %d) = (%d, %d, %d)\n", a, b, extended_gcd_result_first, extended_gcd_result_second, extended_gcd_result_third);
    printf("DIO(%d, %d, %d) = (Valid: %d, First: %d, Second: %d)\n", a, b, c, dio_result.valid, dio_result.first, dio_result.second);

    return 0;
}
