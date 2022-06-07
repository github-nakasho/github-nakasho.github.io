---
layout: default
title: レイリーの基準
parent: 宇宙磁気流体力学
math: mathjax3
permalink: /mhd/rayleigh_criterion
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

# レイリーの基準 (Rayleigh's criterion)

ここではガス円盤や回転する円柱流体において、不安定性が起こる基準についてメモします。

## 磁場なし回転流体の安定性

何らかの中心力により、ある軸の周りに完全流体が円盤を形成しているとしましょう。中心軸から半径$$R$$の位置での流体の角速度を$$\Omega (R)$$とします。半径$$R_1$$の位置で円運動している、単位質量を持つ流体要素1の角速度$$\Omega (R_1) = \Omega_1$$は、この流体要素が持つ角運動量を$$L_1$$として

$$
L_1 
= R_1 \cdot R_1 \Omega_1 \ \Longrightarrow \
\Omega_1 = \Omega(R_1) 
= \frac{L_1}{R_1^2} \tag{1}
$$

のように書くことができます。この状態に半径方向に微小な摂動を加え、中心軸からの距離を$$R_1 + dR$$に変化させたとしましょう。このとき、角運動量は保存したまま動径方向に移動したと考えると

$$
\Omega_1' 
= \frac{L_1}{(R_1 + dR)^2} \tag{2}
$$

のように角速度が変化します。一方、もともと半径$$R_1 + dR$$にいた単位質量を持つ流体要素2の角速度は、先程の流体要素1で求めたときと同様に

$$
\Omega_2 
= \Omega(R_1 + dR) 
= \frac{L_2}{(R_1+dR)^2} \tag{3}
$$

と書けます。摂動により半径が変化した流体要素1の遠心力が、元からその場所にいた流体要素2の遠心力より大きいとき、流体要素1はさらに外側へと追いやられることになります。よってこの状況は不安定であることを意味します。この議論から、この流れが安定である条件は

$$
\begin{align}
(R_1+dR) \Omega_1'^2 < (R_1+dR) \Omega_2^2 
&\Longrightarrow \ 
\frac{\overbrace{L_1^2}^{(1)}}{(R_1 + dR)^3} 
= \frac{R_1^4 \Omega(R_1)^2}{(R_1 + dR)^3} < (R_1 + dR) \Omega(R_1 + dR)^2 \notag \\
&\Longrightarrow \ 
R_1^4 \Omega(R_1)^2 - (R_1+dR)^4 \Omega(R_1 + dR)^2 < 0 \tag{4}
$$

$$dR$$を微小としているので、微分の定義から求めたかった安定条件は

$$
\frac{\partial}{\partial R} \{ R^2 \Omega(R)\}^2 > 0 \tag{5}
$$

のようになります。これをレイリーの基準と呼びます。$$R^2 \Omega$$は半径$$R$$における角運動量です。角運動量がこの分布に従っていれば、この流れは安定と言えます。

## 弱磁場極限での磁気回転不安定性との比較

[磁気回転不安定性](/mhd/mri)の分散関係式は

$$
\omega^2 - k_z^2 v_{Az}^2 
= \pm \sqrt{4\Omega^2 \omega^2 + (\omega^2 - k_z^2 v_{Az}^2) \frac{d\Omega^2}{d\ln R}} \tag{6}
$$

で与えられるのでした。磁気回転不安定性が起こらない安定条件をここから求めてみましょう。

$$
\omega^2 - k_z^2 v_{Az}^2 
= \pm \sqrt{\left( 4\Omega^2 + \frac{d\Omega^2}{d \ln R} \right) (\omega^2 - k_z^2 v_{Az}^2) + 4\Omega^2 k_z^2 v_{Az}^2}
$$

ここで$$\kappa = 4\Omega^2 + \frac{d\Omega^2}{d \ln R}$$のように置き、両辺を2乗すると

$$
\tilde{\omega}^4 - \kappa \tilde{\omega}^2 - 4\Omega^2 k_z^2 v_{Az}^2 = 0
$$

となります。ここでさらに$$\tilde{\omega}^2 = \omega^2 - k_z^2 v_{Az}^2 $$としました。この方程式の解は

$$
\tilde{\omega}^2 
= \omega^2 - k_z^2 v_{Az}^2 
= \frac{\kappa \pm \sqrt{\kappa^2 + 16\Omega^2 k_z^2 v_{Az}^2}}{2} \tag{7} 
$$

$$\omega^2 < 0$$のとき、不安定な波数が存在します。よって安定である条件は

$$
\omega^2 = k_z^2 v_{Az}^2 + \frac{\kappa \pm \sqrt{\kappa^2 + 16\Omega^2 k_z^2 v_{Az}^2}}{2} > 0 \ \Longrightarrow \ 
2 k_z^2 v_{Az}^2 + \kappa > \mp \sqrt{\kappa^2 + 16\Omega^2 k_z^2 v_{Az}^2}
$$

両辺を2乗して整理すると

$$
\kappa^2 + 4 \kappa k_z^2 v_{Az}^2 + 4 k_z^4 v_{Az}^4 > \kappa^2 + 16 \Omega^2 k_z^2 v_{Az}^2 \ \Longrightarrow \ 
\kappa + k_z^2 v_{Az}^2 > 4\Omega^2 \ \Longrightarrow \ 
k_z^2 v_{Az}^2 + \frac{d\Omega^2}{d\ln R} > 0
$$

先程のレイリーの基準との比較を行うために弱磁場極限$$v_{Az} \rightarrow 0$$を考えると、安定条件は

$$
\frac{d\Omega^2}{d\ln R} > 0 \ \Longrightarrow \ 
\frac{d\Omega^2}{dR} > 0 \tag{8}
$$

となります。これは円盤の外側に向かうにつれて角速度が減少するような差動回転をしている円盤においては、必ず不安定となる波数が存在することを示しています。先程のレイリーの基準(5)式では、角運動量が円盤の外側に向かうにつれて減少している場合なら不安定なのでした。レイリーの基準だけを考えると、降着円盤のようなケプラー回転円盤や銀河円盤のようなフラット回転円盤は安定です。しかし磁場が少しでも存在すると、これらは不安定であることがわかります。  
磁気回転不安定性の弱磁場極限とレイリーの基準が一致しないのは、どこかで磁気流体近似や局所解析近似が破れているからかも知れません。

# 参考文献

* [Balbus & Hawley, 1991, "A Powerful Local Shear Instability in Weakly Magnetized Disks. I. Linear Analysis"](https://adsabs.harvard.edu/full/1991ApJ...376..214B)
* [Balbus & Hawley, 1991, "A Powerful Local Shear Instability in Weakly Magnetized Disks. II. Nonlinear Evolution"](https://adsabs.harvard.edu/full/1991ApJ...376..214B)
* Chandrasekhar, "Hydrodyanmic and Hydromagnetic Stability"
* Priest, "Solar Magnetohydrodynamics"
* Tajima & Shibata, "Plasma Astrophysics"
* 柴田一成, 福江純, 松元亮治, 嶺重慎, "活動する宇宙" 

{% include adsense.html %}