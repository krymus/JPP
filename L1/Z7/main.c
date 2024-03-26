#include <Python.h>

int main() {
    Py_Initialize();

    PyObject *pSysModule = PyImport_ImportModule("sys");
    PyObject *pSysPath = PyObject_GetAttrString(pSysModule, "path");

    PyObject *pPath = PyUnicode_FromString("/home/krystian/Desktop/JPP-main/L1/Z7");
    PyList_Append(pSysPath, pPath);
    Py_DECREF(pPath);

    PyObject *pName = PyUnicode_DecodeFSDefault("libREC");
    PyObject *pModule = PyImport_Import(pName);
    Py_DECREF(pName);

    if (pModule != NULL) {
        PyObject *pFactorialFunc = PyObject_GetAttrString(pModule, "factorial");
        PyObject *pGcdFunc = PyObject_GetAttrString(pModule, "gcd");
        PyObject *pEqDIOFunc = PyObject_GetAttrString(pModule, "eqDIO");

        if (pFactorialFunc && PyCallable_Check(pFactorialFunc) &&
            pGcdFunc && PyCallable_Check(pGcdFunc) &&
            pEqDIOFunc && PyCallable_Check(pEqDIOFunc)) {

            PyObject *pArgs, *pValue;
            pArgs = PyTuple_Pack(1, PyLong_FromLong(5));
            pValue = PyObject_CallObject(pFactorialFunc, pArgs);
            printf("Factorial of 5: %ld\n", PyLong_AsLong(pValue));
            Py_DECREF(pArgs);
            Py_DECREF(pValue);

            pArgs = PyTuple_Pack(2, PyLong_FromLong(12), PyLong_FromLong(18));
            pValue = PyObject_CallObject(pGcdFunc, pArgs);
            printf("GCD of 12 and 18: %ld\n", PyLong_AsLong(pValue));
            Py_DECREF(pArgs);
            Py_DECREF(pValue);

            pArgs = PyTuple_Pack(3, PyLong_FromLong(13), PyLong_FromLong(5), PyLong_FromLong(1));
            pValue = PyObject_CallObject(pEqDIOFunc, pArgs);
            if (pValue != NULL) {
                printf("EqDIO result: x=%ld, y=%ld\n", PyLong_AsLong(PyTuple_GetItem(pValue, 0)), PyLong_AsLong(PyTuple_GetItem(pValue, 1)));
                Py_DECREF(pValue);
            } else {
                printf("No solutions\n");
            }
            Py_DECREF(pArgs);
        }
        else {
            printf("Error: One or more functions not found or not callable\n");
        }
        
        Py_XDECREF(pFactorialFunc);
        Py_XDECREF(pGcdFunc);
        Py_XDECREF(pEqDIOFunc);
        Py_DECREF(pModule);
    }
    else {
        printf("Error: Unable to import module\n");
    }

    Py_Finalize();

    return 0;
}
