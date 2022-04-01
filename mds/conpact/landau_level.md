---
layout: default
title: ランダウ準位と中性子星磁場の観測
parent: コンパクト天体
math: mathjax3
permalink: /compact/landau_level
nav_order: 2
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

# ランダウ準位と中性子星磁場の観測

## 磁場中を運動する荷電粒子の量子力学

$$z$$方向に一様磁場$$\mathbf{B} = (0, 0, B)$$が存在するときの、荷電粒子の振る舞いについて考えましょう。磁場が存在する場合のハミルトニアンは、適当な座標変換を施すことで

$$
H 
= \frac{1}{2m} \left( \mathbf{p} - \frac{q}{c} \mathbf{A} \right)^2 \tag{1}
$$

のように書かれます。ここで$$m, q$$はそれぞれ粒子の質量と電荷、そして$$\mathbf{p}, \mathbf{A}$$はそれぞれ運動量ベクトルと磁場を再現するベクトルポテンシャルです。

```
注意: cgs単位系を用いています。
```

ここで

$$
\pi_x = \hat{p}_x - \frac{q}{c} A_x, \quad
\pi_y = \hat{p}_y - \frac{q}{c} A_y \tag{2}
$$

のようにおくと、(1)式は

$$
H = \frac{1}{2m} (\pi_x^2 + \pi_y^2) \tag{3}
$$

のようになります。$$\pi_x, \pi_y$$の交換関係は

$$
\begin{align}
[\pi_x, \pi_y] 
&= \left[ \hat{p}_x - \frac{q}{c} A_x, \hat{p}_y - \frac{q}{c} A_y \right] 
= -\frac{q}{c} [\hat{p}_x, A_y] - \frac{q}{c} [A_x, \hat{p}_y] \notag \\
&= - \frac{q}{c} \left( \frac{\hbar}{i} \frac{\partial A_y}{\partial x} + A_y p_x - A_y p_x\right) -q \left( A_x p_y - \frac{\hbar}{i} \frac{\partial A_x}{\partial y} - A_x p_y\right) \notag \\
&= - \frac{q\hbar}{ic} \left( \frac{\partial A_y}{\partial x} - \frac{\partial A_x}{\partial y}\right) 
= i \frac{q \hbar B}{c} 
= i \frac{\hbar^2}{\ell_B^2} \tag{4}
\end{align}
$$

のように計算されます。ここで$$\ell_B \equiv \sqrt{\frac{\hbar c}{qB}}$$は磁気長と呼ばれる、距離の次元を持つパラメータです。さらに

$$
a = \frac{\ell_B}{\sqrt{2} \hbar} (\pi_x + i \pi_y), \quad
a^\dagger = \frac{\ell_B}{\sqrt{2} \hbar} (\pi_x - i \pi_y) \tag{5}
$$

のような演算子を導入すると、(3)式は

$$
H 
= \frac{1}{4m} \{ (\pi_x + i \pi_y)(\pi_x - i \pi_y) + (\pi_x - i \pi_y)(\pi_x + i \pi_y)\} 
= \frac{\hbar \omega_c}{2} (a a^\dagger + a^\dagger a)
$$

のようになります。ここで$$\omega_c = \frac{qB}{mc}$$は[サイクロトロン振動数](/astroelec/uniform_mag)です。さらに$$a, a^\dagger$$の交換関係は

$$
[a, a^\dagger] 
= \frac{\ell_B^2}{2\hbar^2} (-i [\pi_x, \pi_y] + i [\pi_y, \pi_x]) 
\underbrace{=}_{(4)} 1
$$

より、ハミルトニアンはさらに

$$
H 
= \hbar \omega_c \left( a^\dagger a + \frac{1}{2}\right) \tag{7}
$$

のように変形されます。このハミルトニアンは調和振動子と同じ形をしているため、エネルギー準位も同様に

$$
E_n 
= \hbar \omega_c \left( n + \frac{1}{2} \right) \tag{8}
$$

となります。このエネルギー準位をランダウ準位(Landau level)と呼びます。

## 中性子星の強磁場の観測

[電子の場合のサイクロトロン振動数](/astroelec/uniform_mag)は$$\omega_{ce} \simeq 1.9 \times 10^7 B [s^{-1}]$$より

$$
\hbar \omega_c 
\simeq \frac{\hbar c}{c} 1.9 \times 10^7 B [s^{-1}]
\simeq \frac{200 \mathrm{Mef} \cdot \mathrm{fm}}{3 \times 10^{10} \mathrm{cm/s}} \times 1.9 \times 10^7 B [s^{-1}] 
\simeq 13 \left( \frac{B}{10^{12} [\mathrm{G}]}\right) \ [\mathrm{keV}] \tag{9}
$$

のようになり計算されます(ちゃんと計算すると11.6程度になります)。このことから、ランダウ準位による共鳴吸収をいくつか観測すれば、中性子星の強磁場を推定することが可能です。

# 参考文献

[1] 小山勝二, 嶺重慎, "シリーズ現代の天文学8 ブラックホールと高エネルギー現象"  
[2] [Makishima et al., 1990, "Discovery of a Prominent Cyclotron Absorption Feature from the Transient X-Ray Pulsar X0331+53"](https://ui.adsabs.harvard.edu/abs/1990ApJ...365L..59M/abstract)  

{% include adsense.html %}