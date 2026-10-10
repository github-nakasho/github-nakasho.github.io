#!/usr/bin/env python3 

import numpy as np
import matplotlib.pyplot as plt
import scipy.special as sc

if __name__ == '__main__':
    # set variables
    ix = 100
    xmin = -1.0
    xmax = 1.0
    nmin = 0
    nmax = 6
    # set x coordinate
    x = np.linspace(xmin, xmax, ix)
    # main loop of plotting Chebyshev polynomials
    for n in range(nmin, nmax):
        ei = sc.eval_chebyt(n, x)
        string = "n={}".format(n)
        plt.plot(x, ei, label=string)
        plt.legend()
    # make plot window
    plt.show()
