#!/usr/bin/env python3 

import numpy as np
import matplotlib.pyplot as plt

from scipy.optimize import newton

# set function
def f(x, a):
    return x - np.tanh(x/a)

if __name__ == '__main__':
    # set the number of divisions of a 
    ia = 100
    # set range of a
    amin = 0.0
    amax = 2.0
    # set a-coordinate
    a_coord = np.linspace(amin, amax, ia)
    m = []
    m_2 = []
    for a in a_coord:
        # solve function
        m.append(newton(f, 1.1, args=(a, )))
        m_2.append(newton(f, -1.1, args=(a, )))
    # make plot
    plt.plot(a_coord, m)
    plt.plot(a_coord, m_2)
    plt.xlabel('1/βJ')
    plt.ylabel('m')
    # show plot
    plt.show()
