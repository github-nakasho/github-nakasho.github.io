#!/usr/bin/env python3 

import numpy as np


if __name__ == '__main__':
    pr = 0.99
    ps = 0.10
    tau = 24
    price = 875
    ttp = tau * np.log(1-pr) / np.log(1-ps)
    fee = ttp / tau * price
    print(ttp)
    print(fee)