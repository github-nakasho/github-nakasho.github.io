---
layout: default
title: 状態方程式
parent: 宇宙論
math: mathjax3
permalink: /cosmo/eos
nav_order: 7
---

{: .no_toc }

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

{% include adsense.html %}

# 宇宙を構成する物質の状態方程式

物質、もしくは相対論的粒子からなる輻射、そしてダークエネルギーが優勢かどうかを今後議論するために、これらの状態方程式を

$$
p = w \rho c^2
$$

という形で求め、その$$w$$の値を具体的に求めていくことを考えましょう。

## 非相対論的物質(バリオン)の場合

$$
\frac{p_b}{\rho_b c^2} \simeq \frac{v^2}{c^2} \sim 0
$$

より$$w_b \sim 0$$となります。

## 非相対論的物質(ダークマター)の場合

$$
\frac{p_{\rm DM}}{\rho_{\rm DM} c^2} \simeq \frac{v^2}{c^2} \sim 0
$$

より$$w_{\rm DM} \sim 0$$となります。

## 相対論的物質(光子)の場合

![ある角度で壁に衝突する光子](/assets/images/cosmo/photon.png)

光子が一辺$$L$$の立方体に閉じ込められているとしましょう。図のように完全弾性衝突を考えると、1回の衝突で$$x$$方向の壁に与える力積は

$$
\Delta p_x = \frac{2 h\nu}{c} \cos \theta
$$

となります。$$x$$方向に一往復するのにかかる時間は$$t = 2L/(c\cos \theta)$$より

$$
\begin{aligned}
p_\gamma 
&= \iint \frac{\frac{2h\nu}{c} \cos\theta}{t} \frac{L^3}{e^{h\nu/(k_B T)} -1} \frac{2\nu^2}{c^3} \frac{d\nu d\Omega}{L^2} 
= \iint \frac{\frac{2h\nu^3}{c^3} \cos^2\theta}{e^{h\nu/(k_B T)} -1} d\nu d\Omega 
= \int_0^\infty d\nu \int_{-1}^1 d\mu 2\pi \frac{\frac{2h\nu^3}{c^3} \mu^2}{e^{h\nu/(k_B T)} -1} \\ 
&= \frac{1}{3} \underbrace{4\pi \int_{0}^\infty d\nu \frac{\frac{2h\nu^3}{c^3} }{e^{h\nu/(k_B T)} -1}}_{\rho_\gamma c^2} 
= \frac{1}{3} \rho_\gamma c^2
\end{aligned}
$$

よって$$w_\gamma = \frac{1}{3} $$です。

### 補遺: 光子のエネルギー密度

1辺$$L$$の立方体の中に光子が閉じ込められていることを考えます。光子が存在しているということは$$L$$で周期境界条件を満たしていると考えることができるので

$$
e^{i\mathbf{k} \cdot \mathbf{x}} = e^{ik_x x+ ik_y y + ik_z z}
$$

$$
\left\{\begin{array}{l}
k_{x} L=2 \pi n_{x}\left(n_{x}=0,\pm 1,\pm 2, \cdots\right) \\
k_{y} L=2 \pi n_{y} \\
k_{z} L=2 \pi n_{z}
\end{array}\right.
$$

と書けます。よって状態数は

$$
dn_x dn_y dn_z = \frac{dk_x}{2\pi / L}\frac{dk_y}{2\pi / L}\frac{dk_z}{2\pi / L} 
= \frac{L^3}{(2\pi)^3} dk_x dk_y dk_z
$$

よって状態密度は

$$
\frac{d^3 n}{L^3} 
= \frac{d^3 \mathbf{k}}{(2\pi)^3} 
= \frac{1}{(2\pi)^3} k^2 \sin \theta_k dk d\theta_k d\varphi 
\underbrace{=}_{k = 2\pi \nu /c} \frac{\nu^2}{c^3} d\nu d\Omega  
$$

途中、$$\mathbf{k}$$空間での極座標積分を考えて変形を行いました。統計力学の知識より、占有率は$$e^{-\epsilon / (k_B T)}$$、光子はボーズ粒子より、カノニカル分布の分配関数は

$$
Z = \sum_{n=0}^\infty e^{-n h\nu / (k_B T)} 
\underbrace{=}_{無限等比級数の和} \frac{1}{1-e^{-h\nu / (k_B T)}} 
$$

$$x = h \nu / (k_B T)$$と置換して、エネルギー$$\epsilon = n h\nu$$の光子の平均個数を導出しましょう。

$$
f_\gamma (\nu) = \sum_{n=0}^\infty n \frac{e^{-nx}}{Z} 
= \sum_{n=0}^\infty \frac{1}{Z} \left( -\frac{de^{-nx}}{dx}\right) 
= -\frac{1}{Z} \frac{dZ}{dx} 
= \frac{1}{e^x -1} 
$$

よってエネルギー密度$$\rho_\gamma c^2$$は、(光子1個のエネルギー)$$\times$$(平均個数)$$\times$$状態密度$$\times$$独立モード数2を積分したものです。

$$
\rho_\gamma c^2 = \int_0^\infty d\nu \int_0^{4\pi} \frac{2\nu^2}{c^3} \frac{h\nu}{e^{h\nu/(k_B T)} - 1} d\nu d\Omega
$$

となります。ついでにさらに計算を行うと

$$
\rho_\gamma c^2 
= \frac{8\pi}{c^3} \frac{k_B^4 T^4}{h^3} \underbrace{\int_0^\infty \frac{x^3}{e^x-1} dx}_{= 6\zeta (4) = \pi^4 / 15} 
= \frac{8\pi^5 k_B^4}{15 c^3 h^3} T^4
$$

### 補遺: 光子数密度

$$
n = \int_0^\infty d\nu \int_0^{4\pi} d\Omega \frac{1}{e^{h\nu / (k_B T)}-1} \frac{2\nu^2}{c^3} 
= \frac{8\pi}{c^3} \frac{k_B^3 T^3}{h^3} \underbrace{\int_0^\infty \frac{x^2}{e^x - 1} dx}_{= 2\zeta (3) \sim 2.4}
$$

CMB(宇宙マイクロ波背景放射)は現在の宇宙で$$T\simeq 2.725$$Kより、$$n_{\gamma, 0} \sim 412 {\rm cm}^{-3}$$となります。

## 相対論的物質(ニュートリノ)の場合

統計力学の知識より、占有率は$$e^{-\epsilon / (k_B T)}$$、ニュートリノはフェルミオンより、カノニカル分布分配関数は

$$
Z = \sum_{n=0}^1 e^{-nh\nu/(k_B T)} 
= 1+ e^{-h\nu / (k_B T)}
$$

ここでニュートリノは質量0を仮定します。この仮定により光子と同様の計算で平均個数・状態密度を求めることができます。

$$
f_{\rm FD} (\nu)
= \frac{1}{Z} e^{-h\nu/ (k_B T)} 
= \frac{1}{1+e^{h\nu / (k_B T)}}
$$

よってエネルギー密度$$\rho_\gamma c^2$$は、(ニュートリノ1個のエネルギー)$$\times$$(平均個数)$$\times$$状態密度$$\times$$独立モード数1を積分したものです。

$$
\rho_\nu c^2 
= \int_0^\infty d\nu \int_0^{4\pi} d\Omega \frac{h\nu }{e^{h\nu / k_B T}+ 1} \frac{2\nu^2}{c^3} 
= \frac{8\pi}{c^3} \frac{k_B^4 T^4}{h^3} \int_0^\infty \frac{x^3}{e^x+1} dx
$$

$$
\frac{1}{e^{2x}-1} 
= \frac{1}{(e^x+1)(e^x - 1)}
= \frac{1}{2} (\frac{1}{e^x - 1} - \frac{1}{e^x + 1}) \ \Longrightarrow \ 
\frac{1}{e^x + 1} = \frac{1}{e^x - 1} - \frac{2}{e^{2x} - 1}
$$

より

$$
\int_0^\infty \frac{x^3}{e^x+1} dx 
= \int_0^\infty (\frac{x^3}{e^x - 1} - \frac{2x^3}{e^{2x} - 1}) dx 
= \int_0^\infty \frac{x^3}{e^x - 1} dx - \frac{1}{8} \int_0^\infty \frac{X^3}{e^X - 1} dX 
= \frac{7}{8} \int_0^\infty \frac{x^3}{e^x - 1} dx
$$

これらより

$$
p_\nu = \frac{1}{3} \rho_\nu c^2, \ \rho_\nu c^2 = \frac{7}{8} \rho_\gamma c^2
$$

よって$$w_\nu = \frac{1}{3}$$です。  
ちなみに

$$
T_\nu 
= \left( \frac{4}{11} \right)^{1/3} T_{\rm CMB} 
\sim 1.95 \ [{\rm K}], \ n_\nu \sim 112 \ [{\rm cm}^{-3}]
$$

です。

## 宇宙膨張を加速させるもの(ダークエネルギー)の場合

フリードマン方程式より

$$
\frac{\ddot{a}}{a} 
= -\frac{4\pi G}{3} (\rho_{\rm DE} + \frac{3p_{\rm DE}}{c^2}) 
= -\frac{4\pi G}{3} \rho_{\rm DE} (1+3w_{\rm DE})
$$

加速膨張では$$\ddot{a} > 0$$より$$w_{\rm DE} < -\frac{1}{3}$$となります。

## 空間(真空)の場合

空間は宇宙に膨張も収縮ももたらさないとすると、フリードマン方程式より

$$
1+3w_K = 0 \ \Longrightarrow \ w_K = -\frac{1}{3}
$$

です。

{% include adsense.html %}
