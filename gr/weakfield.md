# 弱重力場極限

このページでは、一般的な弱重力場中での運動方程式である測地線方程式が、
非相対論的な重力場中での運動方程式(ニュートンの運動方程式)と一致するにはどのような条件が必要かを求めています。

## ニュートンの運動方程式を導けるか？

弱重力場極限ということで、計量テンソルを

$$
(g_{\mu \nu}) 
= \left( \begin{array}{cccc}
-1-h_{00} && && && {\bf 0} \\
&& 1+h && && \\
&& && 1+h && \\
{\bf 0} && && && 1+h 
\end{array}
\right)
$$

のように書きます。ここで$$\dot{h}_{00} = \dot{h} = 0, |h_{00}| \ll 1, |h| \ll 1$$とします。また非相対論的な極限なので$$v^2/c^2 \ll 1$$とし、さらに粒子の軌跡を表現するパラメータであった$$\tau$$も$$\tau \simeq t$$とします。  
$$(g_{ij})$$の逆行列成分を求めますが、これに関してもテイラー展開から

$$
g^{00} = \frac{1}{g_{00}} 
\simeq -1 + h_{00}
$$

$$
g^{ij} = \frac{1}{g_{ij}} \simeq (1-h) \delta^{ij}
$$

と近似できるものとします。また4元速度も

$$
u^0 = \frac{dx^0}{d\tau} \sim c, \ 
u^i = \frac{dx^i}{d\tau} \simeq v^i
$$

と近似できると考えましょう。  
重力場中の運動方程式より

$$
\frac{du^i}{dt} 
= -\Gamma^i_{\alpha \nu} u^\alpha u^\nu
$$

$$
\Gamma^i_{00} 
= \frac{1}{2} g^{i\beta} (\underbrace{g_{\beta 0, 0}}_{=0}+ \underbrace{g_{\beta 0, 0}}_{= 0} + g_{0 0,\beta}) 
= -\frac{1}{2} g^{ij} g_{00, j} 
= \frac{1}{2} (1-h) \delta^{ij}\partial_j h_{00} 
= \frac{1}{2} \delta_{ij} h_{00, j}
$$

$$
\Gamma^i_{j0} 
= \frac{1}{2} g^{i\beta} (g_{\beta j, 0}+ g_{\beta j, 0} + g_{j 0,\beta}) 
= \frac{1}{2} g^{ik} (\underbrace{g_{kj, 0}}_{=0} + g_{kj, 0} - g_{j0 , k})
= \frac{1}{2} g^{ik} (g_{kj, 0} - g_{j0,k}) 
= 0 = \Gamma^i_{0j}
$$

$$
\begin{align}
\Gamma^i_{jk} 
&= \frac{1}{2} g^{i\beta} (g_{\beta j, k} + g_{\beta k, j} - g_{jk, \beta}) 
= \frac{1}{2} g^{i\ell} (g_{\ell j, k} + g_{\ell k, j} - g_{jk, \ell}) 
= \frac{1}{2} \delta^{i\ell} (h_{, k} \delta_{\ell j} +h_{, j} \delta_{\ell k} - h_{, \ell} \delta_{jk}) \\
&= \frac{1}{2} (h_{, k} \delta^i_j +h_{, j} \delta^i_{k} - h_{, \ell} \delta^{i\ell} \delta_{jk}) 
\end{align}
$$

$$
\therefore \ \frac{dv^i}{dt} 
= - \frac{1}{2} \delta^{ij} h_{00, j} c^2 - \frac{1}{2} (h_{, k} \delta^i_j +h_{, j} \delta^i_{k} - h_{, \ell} \delta^{i\ell} \delta_{jk}) v^j v^k 
\underbrace{\simeq}_{c^2 \gg v^2} -\frac{c^2}{2} \frac{\partial h_{00}}{\partial x^i} 
$$

これがニュートンの運動方程式と一致して欲しいので、$$h_{00} = \frac{2\Phi}{c^2}$$であればよいことがわかります。

$$
\frac{dv^i}{dt} = - \frac{\partial \Phi}{\partial x^i}
$$

そしてこの式から$$E = v^2/2 + \Phi = {\rm Const}$$というエネルギー保存則も導くことができます。  
エネルギー保存から$$\Phi \simeq v^2$$くらいの運動となるので、アインシュタイン方程式を導くときに用いた

$$
|h_{00}| 
= \left| \frac{2\Phi}{c^2} \right| \simeq \left| \frac{v^2}{c^2}\right| \ll 1
$$

と置く仮定は間違いではないこともわかります。

