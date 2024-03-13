def factorial(n):
    result = 1
    while not n==0:
        result *= n
        n -= 1
    return result

def gcd(a,b):

    while not b == 0:
        c = a
        a = b
        b = c%b

    return a
    


def extended_euclidean(a,b):
    if b==0:
        return a,1,0
    
    coeff = []
    i = 0

    while not b == 0:
        coeff.append((a,b))
        c = a
        a = b
        b = c%b 
        i += 1

    i -= 1

    x = 1
    y = 0

    while i >= 0:
        a_new, b_new = coeff[i]
        xold = x
        yold = y
        x = y
        y = xold - (a_new//b_new)*yold
        i -= 1

    return a, x, y



def eqDIO(a,b,c):
    gcdd, x, y = extended_euclidean(a,b)
    if c%gcdd == 0:
        return x*c//gcdd, y*c//gcdd
    else:
        return "no solutions"
    
    

