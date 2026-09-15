#!/usr/bin/env python3 

from scipy.integrate import quad
import numpy as np
import matplotlib.pyplot as plt


# set integrand function
def integrand(t, chi0):
    a = np.cosh(t)
    b = np.cosh(5.0/3.0*t)
    return np.exp(-chi0*a) * b / a

if __name__ == '__main__':
    # set the range of chi0
    chi0_min = 0.0
    chi0_max = 3.0
    num_chi0 = 1000
    # set the list of chi0
    chi0_list = np.linspace(chi0_min, chi0_max, num_chi0)
    # set the lower limit of integration
    a = 0
    # set the upper limit of integration
    b = 400
    f = []
    for chi0 in chi0_list:
        ans = quad(integrand, a, b, args=(chi0, ))
        f.append(chi0*ans[0])
    plt.plot(chi0_list, f, color='g')
    plt.xlim([0.0, 3.0])
    plt.xlabel('χ0')
    plt.ylabel('F')
    # plt.xscale('log')
    # plt.yscale('log')
    plt.show()
