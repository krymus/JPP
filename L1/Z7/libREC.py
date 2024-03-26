def factorial(n):
    if n==0:
        return 1
    return n*factorial(n-1)

def gcd(a,b):
    if a==0:
        return b
    if b==0:
        return a
    return gcd(b,a%b)


def extended_euclidean(a,b):
    if b==0:
        return a,1,0
    
    gcd, x1, y1 = extended_euclidean(b, a%b)
    x = y1
    y = x1 - (a//b)*y1

    return gcd, x, y



def eqDIO(a,b,c):
    gcd, x, y = extended_euclidean(a,b)
    if c % gcd == 0:
        return x*c//gcd, y*c//gcd
    else:
        return "no solutions"
    
    

