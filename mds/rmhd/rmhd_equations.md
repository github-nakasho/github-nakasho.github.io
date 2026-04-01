---
layout: default
title: 相対論的磁気流体の基礎方程式
parent: 相対論的磁気流体力学
math: mathjax3
permalink: /rmhd/rmhd_equations
nav_order: 10
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

# 相対論的な磁気流体の基礎方程式

## 基礎方程式の導出

### エネルギー・運動量保存則

物質と電磁場を合わせた全系のエネルギー運動量の保存則は

$$
\frac{\partial}{\partial x^\nu} (T_M^{\mu \nu} + T_F^{\mu \nu}) 
= 0 \tag{1}
$$

のように書かれます。
ここで、物質は完全流体であるとして

$$
T_M^{\mu \nu} 
= \frac{\varepsilon + P}{c^2} u^\mu u^\nu + P \eta^{\mu \nu} \tag{2}
$$

とします。
また流体を構成する粒子についての生成・消滅は考慮せず、粒子数が保存するとして、連続の式

$$
\frac{\partial}{\partial x^\mu} (nu^\mu) 
= 0 \ \Longrightarrow \ 
\frac{\partial}{\partial t} (n\gamma) + \nabla \cdot (n\gamma \mathbf{v}) 
= 0 \tag{3}
$$

が成立します。
ここで、[電磁場のエネルギー運動量テンソル](/astroelec/em_energy_momentum#電磁場のエネルギー運度量テンソル)は

$$
T_F^{\mu \nu} 
= \frac{1}{4\pi} \left( F^{\mu \lambda} F^\nu{}_\lambda - \frac{1}{4} \eta^{\mu \nu} F^{\lambda \rho} F_{\lambda \rho}\right) \tag{4}
$$

あり、[$$F^{\mu \lambda}$$は電磁場テンソル](/astroelec/emtensor)です。
ここから

$$
\partial_\nu T^{\mu \nu} 
= \frac{1}{4\pi} \partial_\nu \left( F^{\mu \lambda} F^\nu{}_\lambda - \frac{1}{4} \eta^{\mu \nu} F^{\lambda \rho} F_{\lambda \rho} \right)
= \frac{1}{4\pi} (F^\nu{}_\lambda \partial_\nu F^{\mu \lambda} + F^{\mu \lambda} \partial_\nu F^\nu{}_\lambda) - \frac{1}{16 \pi} \partial^\mu (F^{\lambda \rho} F_{\lambda \rho}) \tag{5}
$$

です。
[マクスウェル方程式の4元表現](/astroelec/emtensor#マクスウェル方程式の電磁場テンソル表現)を用いて、これをさらに整理しましょう。
4元電流ベクトルを$$j^\mu$$として

$$
\partial_\nu F^\nu{}_\lambda 
= - \partial_\nu F_\lambda{}^\nu 
= - \frac{4\pi}{c} j_\lambda \tag{6}
$$

を用いれば

$$
\begin{align}
\partial_\nu T^{\mu \nu} 
&= \frac{1}{4\pi} \left( F^\nu{}_\lambda \partial_\nu F^{\mu \lambda} - F^{\mu \lambda} \frac{4\pi}{c} j_\lambda \right) - \frac{1}{16 \pi} \partial^\mu (F^{\lambda \rho} F_{\lambda \rho}) \notag \\
&= - \frac{1}{c} F^{\mu \nu} j_\nu + \frac{1}{4\pi} \left( F^\nu{}_\lambda \partial_\nu F^{\mu \lambda} - \frac{1}{2} F^{\nu \lambda} \partial^\mu F_{\nu \lambda} \right) \tag{7}
\end{align}
$$

となります。
[マクスウェル方程式の4元表現のもう一つの式](/astroelec/emtensor#マクスウェル方程式の電磁場テンソル表現)から

$$
\begin{align}
\partial_\mu F_{\nu \lambda} + \partial_\nu F_{\lambda \mu} + \partial_\lambda F_{\mu \nu} 
= 0 &\Longrightarrow \ 
\partial^\mu F_{\nu \lambda} + \partial_\nu F_\lambda{}^\mu + \partial_\lambda F^\mu{}_\nu  
= 0 \notag \\
&\Longrightarrow \ 
\partial^\mu F_{\nu \lambda} 
= - \partial_\nu F_\lambda{}^\mu - \partial_\lambda F^\mu{}_\nu 
= \partial_\nu F^\mu{}_\lambda - \partial_\lambda F^\mu{}_\nu \tag{8}
\end{align}
$$

を用いて、(7)式の第二項の$$(\cdots)$$部分を整理してみましょう。
すると

$$
\begin{align}
(\cdots) 
&= F^\nu{}_\lambda \partial_\nu F^{\mu \lambda} - \frac{1}{2} F^{\nu \lambda} (\partial_\nu F^\mu{}_\lambda - \partial_\lambda F^\mu{}_\nu) 
= F^\nu{}_\lambda \partial_\nu F^{\mu \lambda} - \frac{1}{2} F^{\nu \lambda} \partial_\nu F^\mu{}_\lambda + \frac{1}{2} F^{\nu \lambda} \partial_\lambda F^\mu{}_\nu \notag \\
&= F^\nu{}_\lambda \partial_\nu F^{\mu \lambda} - \frac{1}{2} F^{\nu \lambda} \partial_\nu F^\mu{}_\lambda - \frac{1}{2} F^{\lambda \nu} \partial_\lambda F^\mu{}_\nu
= F^\nu{}_\lambda \partial_\nu F^{\mu \lambda} - F^{\nu \lambda} \partial_\nu F^\mu{}_\lambda \notag \\
&= F^\nu{}_\lambda \partial_\nu F^{\mu \lambda} - F^{\nu \lambda} \partial_\nu \eta_{\lambda \alpha} F^{\mu \alpha} 
= F^\nu{}_\lambda \partial_\nu F^{\mu \lambda} - F^{\nu}{}_\alpha \partial_\nu F^{\mu \alpha} 
= 0 \tag{9}
\end{align}
$$

のようになることから、結局

$$
\partial_\nu T^{\mu \nu} 
= - \frac{1}{c} F^{\mu \nu} j_\nu \tag{10}
$$

を得ます。
(1), (10)式より、流体の運動方程式は

$$
\partial_\nu T_M^{\mu \nu}
= \frac{1}{c} F^{\mu \nu} j_\nu \tag{11}
$$

のようになります。  
(1)式より、全系のエネルギー保存則と運動量保存則は

$$
\frac{1}{c} \frac{\partial}{\partial t} \left\{ (\varepsilon + P) \gamma^2 - P + \frac{1}{8\pi} (B^2 + E^2)\right\} + \nabla \cdot \left\{ \frac{\varepsilon + P}{c} \gamma^2 \mathbf{v} + \frac{1}{4\pi} \mathbf{E} \times \mathbf{B}\right\} 
= 0 \tag{12}
$$

$$
\frac{1}{c} \frac{\partial}{\partial t} \left\{ \frac{\varepsilon + P}{c} \gamma^2 \mathbf{v} + \frac{1}{4\pi} \mathbf{E} \times \mathbf{B}\right\} + \nabla \cdot \left[ \frac{\varepsilon + P}{c^2} \gamma^2 \mathbf{v}\mathbf{v} - \frac{1}{4\pi} (\mathbf{E} \mathbf{E} + \mathbf{B} \mathbf{B}) + \left\{ P +\frac{1}{8\pi} (E^2 + B^2) \right\} \mathbf{I} \right]
= 0 \tag{13}
$$

のようになります。
後述しますが、電場$$\mathbf{E}$$は理想磁気流体条件から決定される量であり、力学変数ではないことに注意しましょう。
このように磁気流体力学では、エネルギー運動量保存と粒子数保存と状態方程式、そして次に出てくる誘導方程式を基礎方程式系とする分野です。
流体の速度・エネルギー密度・圧力・数密度・および磁場が力学変数であり、電場・電荷密度・電流密度は力学変数でなく、磁場と速度から決まる従属的な変数とみなします。

{% include adsense.html %} 

### 誘導方程式と相対論的磁気流体での磁力線の凍結

これらを解こうとすると、4元電流ベクトル$$j_\nu$$をどのように与えるかが問題となります。
電荷密度や電流密度は、本来は物質が担っているものです。
個々の荷電粒子の運動や分布関数を用いた記述の場合には、4元電流ベクトルの表式は自明に与えることができます。
流体的な記述の場合、物質がイオンと電子からなり、それぞれを流体とみなしてその数密度と速度を力学変数とすれば、これら変数の代わりに物質全体の密度・速度・電荷密度・電流密度を力学変数と取ることができます。
それに対し、電磁流体力学では、電荷密度や電流密度を流体の運動を記述する力学変数とはみなさず、[マクスウェル方程式(6)](/astroelec/emtensor#マクスウェル方程式の電磁場テンソル表現)に従って電磁場から決まる量であるとみなします。
これは電流に対し、オームの法則がいつでも適用可能であると仮定することに対応します。
ここでは、流体がそれらの電荷密度と電流密度を与えることができるだけの、十分な数密度を持っているという前提があることに注意しましょう。
特に、電気伝導率が無限大で電気抵抗が無視できる理想磁気流体に対しては、この仮定は流体の固有系で電場が消えるという理想磁気流体力学条件

$$
\mathbf{E} + \frac{\mathbf{v}}{c} \times \mathbf{B} 
= \mathbf{0} \tag{14}
$$

に帰着します。
多くの場合には、理想磁気流体の仮定はよく成立しているため、以降では理想磁気流体に限り考えていくことにしましょう。
(14)式の回転を取ると

$$
\nabla \times \mathbf{E} + \frac{1}{c} \nabla \times (\mathbf{v} \times \mathbf{B}) 
= \mathbf{0} \tag{15}
$$

です。
ここに[マクスウェル方程式のファラデーの法則](/astroelec/em_energy_momentum)

$$
\nabla \times \mathbf{E} 
= - \frac{1}{c} \frac{\partial \mathbf{B}}{\partial t} \tag{16}
$$

を用いれば

$$
\frac{\partial \mathbf{B}}{\partial t} 
= \nabla \times (\mathbf{v} \times \mathbf{B}) \tag{17}
$$

のように、誘導方程式を得ることができます。
これは磁場の時間発展が、磁場と流体の速度で決定されることを意味する式です。
この誘導方程式は、[非相対論的な磁気流体力学での場合と全く同じ形](/mhd/induction)をしています。
ここから非相対論的な場合と同様に、磁力線が流体に凍結していることを示してみましょう。
そのために、$$\frac{\mathbf{B}}{n\gamma}$$の[ラグランジュ微分](/mhd/euler_lagrange)を計算します。

$$
\begin{align}
\frac{d}{dt} \left( \frac{\mathbf{B}}{n\gamma}\right) 
&= \frac{1}{n\gamma} \frac{d\mathbf{B}}{dt} - \frac{1}{(n\gamma)^2} \frac{d}{dt} (n\gamma) \mathbf{B} \notag \\
&= \frac{1}{n\gamma} \left\{ \frac{\partial \mathbf{B}}{\partial t} + (\mathbf{v} \cdot \nabla) \mathbf{B}\right\} - \frac{1}{(n\gamma)^2} \left\{ \frac{\partial}{\partial t} (n\gamma) + (\mathbf{v} \cdot \nabla) (n\gamma) \right\} \mathbf{B} \tag{18}
\end{align}
$$

ここに(3), (17)式を用いれば

$$
\begin{align}
\frac{d}{dt}\left( \frac{\mathbf{B}}{n\gamma}\right) 
&= \frac{1}{n\gamma} \{\nabla \times (\mathbf{v} \times \mathbf{B}) + (\mathbf{v} \cdot \nabla) \mathbf{B}\} - \frac{1}{(n\gamma)^2} \left\{ - \nabla \cdot (n\gamma \mathbf{v}) + (\mathbf{v} \cdot \nabla) (n\gamma) \right\} \mathbf{B} \notag \\
&= \frac{1}{n\gamma} \{\nabla \times (\mathbf{v} \times \mathbf{B}) + (\mathbf{v} \cdot \nabla) \mathbf{B}\} + \frac{\nabla \cdot \mathbf{v}}{n\gamma} \mathbf{B} \tag{19}
\end{align}
$$

のように整理されます。
さらに、[マクスウェル方程式から$$\nabla \cdot \mathbf{B} = 0$$](/astroelec/em_energy_momentum)を用いれば

$$
\begin{align}
[\nabla \times (\mathbf{v} \times \mathbf{B})]_i 
&= \epsilon_{ijk} \partial_j \epsilon_{k\ell m} v_\ell B_m 
= \epsilon_{kij} \epsilon_{k \ell m} \partial_j (v_\ell B_m) 
= (\delta_{i\ell} \delta_{jm} - \delta_{im} \delta_{j\ell}) \partial_j (v_\ell B_m) \notag \\
&= \partial_j (v_i B_j) - \partial_j (v_j B_i) 
= B_j (\partial_j v_i) + v_i (\partial_j B_j) - B_i (\partial_j v_j) - v_j (\partial_j B_i) \notag \\
&= [(\mathbf{B} \cdot \nabla) \mathbf{v} + \underbrace{(\nabla \cdot \mathbf{B})}_{=0} \mathbf{v} - (\nabla \cdot \mathbf{v}) \mathbf{B} - (\mathbf{v} \cdot \nabla) \mathbf{B}]_i \notag \\
&= [(\mathbf{B} \cdot \nabla) \mathbf{v} - (\nabla \cdot \mathbf{v}) \mathbf{B} - (\mathbf{v} \cdot \nabla) \mathbf{B}]_i \tag{20}
\end{align}
$$

のように計算できることから

$$
\frac{d}{dt} \left( \frac{\mathbf{B}}{n\gamma}\right) 
= \frac{1}{n\gamma} \{ (\mathbf{B} \cdot \nabla) \mathbf{v} - (\nabla \cdot \mathbf{v}) \mathbf{B}\} + \frac{\nabla \cdot \mathbf{v}}{n\gamma} \mathbf{B} 
= \left( \frac{\mathbf{B}}{n\gamma} \cdot \nabla \right) \mathbf{v} \tag{21}
$$

を得ます。
これが流体中の任意の線要素$$\delta \boldsymbol{\ell}$$の運動による時間変化を記述する式

$$
\frac{d}{dt} (\delta \boldsymbol{\ell}) 
= (\delta \boldsymbol{\ell} \cdot \nabla) \mathbf{v} \tag{21}
$$

と同じ形をしていることから、磁力線が流体要素に凍結していることが示せました。

## 参考文献

[] [Rezzolla & Zanotti, "Relativistic Hydrodynamics"](https://amzn.to/4t57unb)  
[] [高原文郎, "特殊相対論"](https://amzn.to/4s9Z0KJ)  

{% include adsense.html %} 
