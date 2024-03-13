#ifndef PR_WRAPPER_H
#define PR_WRAPPER_H

typedef struct {
    int valid;
    int first;
    int second;
} Solution;

#ifdef __cplusplus
extern "C" {
#endif

int factorial(int n);
int gcd(int a, int b);
void ExtendedGCD(int a, int b, int *result_first, int *result_second, int *result_third);
Solution dio(int a, int b, int c);

#ifdef __cplusplus
}
#endif

#endif /* PR_WRAPPER_H */
