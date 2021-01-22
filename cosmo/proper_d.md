# 固有距離

ここでは宇宙膨張に関係なく宇宙空間を表すことができる距離、固有距離(proper distance)を求めてみましょう。

## 導出

ロバートソン・ウォーカー計量より

$$
ds^2 = -c^2 dt^2 + a^2 (\frac{dr^2}{1-Kr^2} + r^2 (d\theta^2 + \sin^2 \theta d\varphi^2))
$$

$$dt$$間に光が進んだ距離は$$d\ell = cdt$$です。かつ、光はnull path$$ds = 0$$を通るので、

$$
d\ell = a \frac{dr}{\sqrt{1-Kr^2}}
$$

ここで、$$d\theta = d\varphi = 0$$としました。よって固有距離は

$$
d\chi = \frac{dr}{\sqrt{1-Kr^2}}
$$

と表すことができます。$$d\ell$$との関係式より

$$
d\chi = \frac{cdt}{a} 
= \frac{c}{a} \frac{dt}{da} da 
= \frac{c}{a} \frac{da}{\dot{a}}
$$

です。赤方偏移の定義から$$1+z = 1/a \ \Longrightarrow \ dz = -da/a^2$$より

$$
d\chi = -c\frac{a}{\dot{a}}dz = -\frac{c}{H} dz
$$

フリードマン方程式より

$$
H^2(z) = H_0^2 (\Omega_{r, 0} (1+z)^4 + \Omega_{m, 0} (1+z)^3 + \Omega_{\rm DE, 0} (1+z)^{3(1+w_{\rm DE})} + \Omega_{K, 0} (1+z)^2) = H_0^2 E^2(z)
$$

とすると$$H(z) = H_0 E(z)$$より

$$
d\chi = -\frac{c}{H_0} \frac{dz}{E(z)}
$$

これを$$z$$に対して積分することによって固有距離を求めることができます。また$$\ell$$との関係式から

$$
\ell(t) = \frac{\chi(z)}{1+z}
$$