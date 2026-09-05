#!/usr/bin/env python3 

import numpy as np
import matplotlib.pyplot as plt
import scipy.special as sc

if __name__ == '__main__':
    # set variables
    ix = 1000
    xmin = 0.0
    xmax = 2.0 * np.pi
    cs = 1.0
    va = 1.5
    # set x (theta) coordinate
    x = np.linspace(xmin, xmax, ix)
    # compute phase speed of fast mode vpf
    root = np.sqrt((va*va+cs*cs)**2.0-4.0*cs*cs*va*va*np.cos(x)**2.0)
    vpf2 = ((va*va+cs*cs)+root) / 2.0
    vpf = np.sqrt(vpf2)
    # compute phase of slow mode vpp
    vps2 = ((va*va+cs*cs)-root) / 2.0
    vps = np.sqrt(vps2)
    # compute group speed of fast mode vgf
    second = cs * cs * va * va * np.cos(x) * np.sin(x) / root / vpf
    vgf_x = vpf * np.cos(x) - second * np.sin(x)
    vgf_y = vpf * np.sin(x) + second * np.cos(x)
    # compute group speed of fast mode vgs
    second = cs * cs * va * va * np.cos(x) * np.sin(x) / root / vps
    vgs_x = vps * np.cos(x) + second * np.sin(x)
    vgs_y = vps * np.sin(x) - second * np.cos(x)
    plt.axes().set_aspect('equal')
    plt.plot(vgf_x, vgf_y, color='dodgerblue')
    plt.plot(vgs_x, vgs_y, color='deeppink')
    plt.show()
    # # main loop of plotting Bessel functions

    #     ei = sc.jv(n, x)
    #     string = "n={}".format(n)
    #     plt.plot(x, ei, label=string)
    #     plt.legend()
    # # make plot window
    # plt.show()
