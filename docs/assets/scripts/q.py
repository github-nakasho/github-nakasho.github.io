#!/usr/bin/env python3 

import numpy as np
import matplotlib.pyplot as plt

from scipy.integrate import quad
from scipy.optimize import newton

# set integrand function
def integrand(z, a, q):
    return np.exp(-z**2/2) * np.tanh(np.sqrt(q)/a*z) ** 2

# set function
def f(q, a):
    y, err = quad(integrand, -10, 10, args=(a, q, )) / np.sqrt(2*np.pi)
    return q - y

if __name__ == '__main__':
    # set the number of divisions of a 
    ia = 100
    # set range of a
    amin = 0.01
    amax = 2.01
    # set a-coordinate
    a_coord = np.linspace(amin, amax, ia)
    q = []
    for a in a_coord:
        q.append(newton(f, 1.1, args=(a, )))
    # make plot
    plt.plot(a_coord, q)
    plt.xlabel('1/βJ')
    plt.ylabel('q')
    # show plot
    plt.show()
