#include <stdio.h>
#include <stdbool.h>

typedef struct {
	bool Valid;
	int First;
	int Second;
} Solution;

extern int Factorial (int a);
extern int GCD (int a, int b);
extern Solution DIO (int a, int b, int c);

int main (int argc, char **argv) {

  int v = Factorial(5);
  int w = GCD(12,18);
  Solution s = DIO(13,5,1);
  printf("Factorial is %d\n", v);
  printf("GCD is %d\n", w);
  printf("DIO is %d %d\n", s.First, s.Second);



  return 0;
}
