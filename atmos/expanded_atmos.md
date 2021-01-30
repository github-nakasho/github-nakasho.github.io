# 4.7 広がった大気

Plane-parallel大気の仮定は、大気の厚さ(Scale-height; $$\left| \frac{dr}{d\ln P}\right| = \frac{P}{g\rho} \propto \frac{T}{g}$$)が恒星の半径に比べて薄いときに良い近似となるのでした。しかし、超巨星大気のように、重力加速度($$g= \frac{GM}{R^2}$$)が小さい場合には大気の厚さが恒星の半径に比べて極端には薄くない状況になります。このような広がった大気に対しては、曲率の効果を考慮に入れる必要があります。この場合、大気中を光の経路に沿って移動するとき中心からの距離だけでなく、天頂角$$\theta$$も変化するので

$$
dr 
= ds \cos \theta, \ -r d\theta 
= ds \sin \theta \tag{4.29}
$$

と表されます。$$- d\theta$$となっているのは、$$dr>0$$の方向に進む光に対しては天頂角が減少する方向であるからです。

![](/images/atmos/)

恒星の構造が球対称(中心からの距離だけの関数)であることを仮定すると

$$
\frac{dI}{ds} 
= \frac{\partial r}{\partial s} \frac{\partial I}{\partial r} + \frac{\partial \theta}{\partial s} \frac{\partial I}{\partial \theta} 
= \cos \theta \frac{\partial I}{\partial r} - \frac{\sin \theta}{r} \frac{\partial I}{\partial \theta} \tag{4.30}
$$

となります。Radiative transferの式は$$\mu = \cos \theta$$を用いると、$$d\mu = - \sin \theta d\theta$$より

$$
\mu \frac{\partial I_\nu (r, \mu)}{\partial r} + \frac{1-\mu^2}{r} \frac{\partial I_\nu (r, \mu)}{\partial \mu} 
= \rho \eta_\nu - \rho (\kappa_\nu + \sigma_\nu) I_\nu (r, \mu) \tag{4.31}
$$

となります。(4.31)式を全立体角で積分しましょう。

$$
\int_{4\pi} (1-\mu^2) \frac{\partial I_\nu}{\partial \mu} d\Omega 
= 2\pi \int_{-1}^1 (1-\mu^2) \frac{\partial I_\nu}{\partial \mu} d\mu 
= 2\pi \left[ (1-\mu^2) I_\nu \right]_{-1}^1 + 2\pi \cdot 2 \int_{-1}^1 \mu I_\nu d\Omega 
= 2 F_\nu
$$

より、この結果は

$$
\frac{dF_\nu}{dr} + \frac{2}{r} F_\nu 
= 4\pi \rho \{ \eta_\nu - (\kappa_\nu + \sigma_\nu) J_\nu \}
$$

となります。左辺を整理して

$$
\frac{1}{r^2} \frac{d}{dr} (r^2 F_\nu) 
= 4\pi \rho \{ \eta_\nu - (\kappa_\nu + \sigma_\nu) J_\nu \} \tag{4.32}
$$

が得られます。また(4.31)式に$$\mu$$をかけて全立体角積分をしましょう。

$$
\int_{4\pi} (\mu - \mu^3) \frac{\partial I_\nu}{\partial \mu} d\Omega 
= 2\pi \int_{-1}^1 (\mu - \mu^3) \frac{\partial I_\nu}{\partial \mu} d\mu 
= 2\pi \left[ (\mu - \mu^3) I_\nu \right]_{-1}^1 - 2\pi \int_{-1}^1 (1-3\mu^2) I_\nu d\mu 
= -4\pi J_\nu + 3 \cdot 4\pi K_\nu
$$

より

$$
4\pi \frac{dK_\nu}{dr} + \frac{4\pi}{r} (3K_\nu - J_\nu) 
= - (\kappa_\nu + \sigma_\nu) \rho F_\nu \tag{4.33}
$$

が得られます。Eddington-factor $$f_\nu \equiv \frac{K_\nu}{J_\nu}$$を使って書き直すと

$$
\frac{d}{dr} (f_\nu J_\nu) + \frac{3f_\nu - 1}{r} J_\nu 
= - \frac{\kappa_\nu + \sigma_\nu}{4\pi} \rho F_\nu \tag{4.34}
$$

となります。