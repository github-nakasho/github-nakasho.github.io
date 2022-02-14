---
layout: default
title: 慣性波
parent: 宇宙磁気流体力学
math: mathjax3
permalink: /mhd/inertial
nav_order: 11
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

# 慣性波 (inertial waves)

## 直感的な導出

線形化された流体の運動方程式から、回転によって生じるコリオリ力の項のみを考えてみましょう。

$$
\frac{\partial \mathbf{v}_1}{\partial t} 
= - 2 \boldsymbol{\Omega} \times \mathbf{v}_1 \tag{1}
$$

さらに角速度ベクトルは$$z$$成分しか持たないとします。すなわち$$\boldsymbol{\Omega} = \Omega \mathbf{e}_z$$と考えると

$$
\frac{\partial v_{1x}}{\partial t} = 2 \Omega v_{1y}, \quad 
\frac{\partial v_{1y}}{\partial t} = -2 \Omega v_{1x} \tag{2}
$$

となり、この連立微分方程式の解は

$$
v_{1x} 
= A \cos (kz-2\Omega t), \quad 
v_{1y}
= A \sin (kz - 2\Omega t) \tag{3}
$$

のような波動解とわかります。これを慣性波(inertial waves)と呼びます。この波動を生み出す復元力はコリオリ力であり、コリオリ力は流体要素に$$xy$$平面内を円運動させるような加速度を生み出します。結果として、回転軸と平行に角速度$$2\Omega$$の波動が伝播していきます。

## 定量的な導出

# 参考文献

[1] Priest, "Solar Magnetohydrodynamics"  
[2] 観山正見, 野本憲一, 二間瀬敏史, "天体物理学の基礎 II"  
[3] 福江純, 和田圭一, 梅村雅之, "宇宙流体力学の基礎"  

{% include adsense.html %} 

