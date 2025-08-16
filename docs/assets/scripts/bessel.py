#!/usr/bin/env python3 

import numpy as np
import matplotlib.pyplot as plt
import scipy.special as sc

if __name__ == '__main__':
    # set variables
    ix = 100
    xmin = 0.0
    xmax = 10.0
    nmin = 0
    nmax = 5
    # set x coordinate
    x = np.linspace(xmin, xmax, ix)
    # main loop of plotting Bessel functions
    for n in range(nmin, nmax):
        ei = sc.jv(n, x)
        string = "n={}".format(n)
        plt.plot(x, ei, label=string)
        plt.legend()
    # make plot window
    plt.show()
