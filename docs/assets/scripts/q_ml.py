#!/usr/bin/env python3 

import numpy as np
import matplotlib.pyplot as plt

from scipy.integrate import quad
from scipy.optimize import newton
from scipy.special import erfc

# set d^2H/dx^2
def H_pp(x):
    return x * np.exp(-x*x/2) / np.sqrt(2*np.pi)

# set dH/dx
def H_p(x):
    return - np.exp(-x*x/2) / np.sqrt(2*np.pi)

def H(x):
    return 0.5 * erfc(x/np.sqrt(2))

# set integrand function
def integrand(z, q):
    x = np.sqrt((1-q)/q) * z
    return np.exp(-z*z/2) * (H_pp(x)/(1-H(x))+(H_p(x)/(1-H(x)))**2)
    
# set function
def f(q, a):
    y, err = quad(integrand, -100, 100, args=(q, )) / np.sqrt(2*np.pi)
    return q ** 3 - (2*q-1) * (1-q**2) * a * y
    # return y
    
if __name__ == '__main__':
    # set the number of divisions of a 
    ia = 100
    # set range of a
    amin = 0.01
    amax = 4.01
    # set a-coordinate
    a_coord = np.linspace(amin, amax, ia)
    q = []
    for a in a_coord:
        # q.append(newton(f, 0.0, args=(a, )))
        print(a, newton(f, 0.1, args=(a, )))
    # make plot
    plt.plot(a_coord, q)
    plt.xlabel('alpha')
    plt.ylabel('q')
    # show plot
    plt.show()
