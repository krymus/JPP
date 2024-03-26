import ctypes

lib = ctypes.CDLL('./libREC.so') 

class Pair(ctypes.Structure):
    _fields_ = [
        ('first', ctypes.c_int),
        ('second', ctypes.c_int),
        ('valid', ctypes.c_bool)
    ]


lib.factorial.argtypes = [ctypes.c_int]
lib.factorial.restype = ctypes.c_int

lib.gcd.argtypes = [ctypes.c_int, ctypes.c_int]
lib.gcd.restype = ctypes.c_int

lib.eqDIOFAN.argtypes = [ctypes.c_int, ctypes.c_int, ctypes.c_int]
lib.eqDIOFAN.restype = Pair

# Define wrapper functions
def factorial(n):
    return lib.factorial(n)

def gcd(a, b):
    return lib.gcd(a, b)


def eqDIOFAN(a, b, c):
    return lib.eqDIOFAN(a, b, c)

# Example usage
print("Factorial of 5:", factorial(5))
print("GCD of 12 and 18:", gcd(12, 18))
pair_result = eqDIOFAN(13, 5, 1)
print("EqDIOFAN result: (first={}, second={}, valid={})".format(pair_result.first, pair_result.second, pair_result.valid))
