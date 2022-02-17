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

以降では定量的な導出を行いましょう。簡単のため[音波の導出の時に示した(20)式](/mhd/sound_wave)において重力と磁場を無視して$$g = 0, \mathbf{B}_0 =\mathbf{0}$$とし、さらに非圧縮($$\mathbf{k} \cdot \mathbf{v}_1 = 0$$、すなわち横波)を仮定すると

$$
\omega^2 \mathbf{v}_1 
= - 2i \omega \boldsymbol{\Omega} \times \mathbf{v}_1 \tag{4}
$$

となります。この式の両辺を$$\mathbf{k}$$との外積をとり、式変形を行います。

$$
\omega^2 \mathbf{k} \times \mathbf{v}_1 
= -2i \omega \mathbf{k} \times (\boldsymbol{\Omega} \times \mathbf{v}_1) 
= -2i \omega \{ \underbrace{(\mathbf{k} \cdot \mathbf{v}_1)}_{=0} \boldsymbol{\Omega} - (\mathbf{k} \cdot \boldsymbol{\Omega}) \mathbf{v}_1\} 
= 2i\omega (\mathbf{k} \cdot \boldsymbol{\Omega}) \mathbf{v}_1 \tag{5}
$$

この両辺の大きさを計算することでベクトル量からスカラー量への変換を行い、$$\omega$$の式にします。このとき$$\mathbf{k} \cdot \mathbf{v}_1=0$$より$$\\|\mathbf{k} \times \mathbf{v}_1 \\| = k v_1$$と簡単に書くことができるので

$$
\{\omega^2 (\mathbf{k} \times \mathbf{v}_1)\} \{\omega^2 (\mathbf{k} \times \mathbf{v}_1)\}^\ast 
= \{2i\omega (\mathbf{k} \cdot \boldsymbol{\Omega}) \mathbf{v}_1\} \{2i\omega (\mathbf{k} \cdot \boldsymbol{\Omega}) \mathbf{v}_1\}^\ast \ \Longrightarrow \
\omega^4 k^2 v_1^2 
= 4\omega^2 (\mathbf{k} \cdot \boldsymbol{\Omega})^2 v_1^2
$$

よって

$$
\omega 
= \pm \frac{2(\mathbf{k} \cdot \boldsymbol{\Omega})}{k} \tag{6}
$$

伝播方向$$\mathbf{k}$$と系の回転軸(角速度ベクトル$$\boldsymbol{\Omega}$$)の成す角を$$\theta_\Omega$$と書くと、(6)式より

$$
\omega 
= \pm 2 \Omega \cos \theta_\Omega \ \Longrightarrow \ 
v_p 
= \pm \frac{2\Omega \cos \theta_\Omega}{k} \tag{7}
$$

とわかります。また群速度は(6)式より

$$
\begin{align}
\mathbf{v}_g 
&= \frac{\partial \omega}{\partial \mathbf{k}} 
= \pm 2 \frac{\partial}{\partial k_i} \frac{k_j \Omega_j}{(k_m k_m)^{1/2}} \mathbf{e}_i 
= \pm 2 \frac{\delta_{ij} \Omega_j (k_m k_m)^{1/2} - \frac{1}{2} (k_m k_m)^{-1/2} 2 k_m \delta_{im} k_j \Omega_j}{k_m k_m} \mathbf{e}_i \notag \\
&= \pm 2 \frac{k^2 \boldsymbol{\Omega} - (\mathbf{k} \cdot \boldsymbol{\Omega}) \mathbf{k}}{k^3} 
= \pm \frac{\mathbf{k} \times (2 \boldsymbol{\Omega} \times \mathbf{k})}{k^3} \tag{8}
\end{align}
$$

よってその大きさは

$$
v_g 
= \frac{2\Omega \sin \theta_\Omega}{k} \tag{9}
$$

(6), (8)式より

$$
\sqrt{v_p^2 + v_g^2} 
= \frac{2\Omega}{k} \tag{10}
$$

のように整理すると$$\theta_\Omega$$nに依存しない形が出てきます。これは$$\mathbf{v}_p \perp \mathbf{v}_g$$を意味しており、[内部重力波](/mhd/gravity)と同様に、そのエネルギーは波数ベクトルとは垂直な方向に伝播していくとわかります。

## 慣性波のヘリシティ

$$\mathbf{v}_1$$が従う(4)式の形から、$$\mathbf{v}_1$$は波動の伝播に従って円運動を行います。よって慣性波は円偏波です。この波動の渦度ベクトル$$\nabla \times \mathbf{v}_1$$と$$\mathbf{v}_1$$との内積を計算すると

$$
\mathbf{v}_1 \cdot (\nabla \times \mathbf{v}_1) 
= \mathbf{v}_1 \cdot (i \mathbf{k} \times \mathbf{v}_1) 
\underbrace{=}_{(5)} - \mathbf{v}_1 \cdot \frac{2 (\mathbf{k} \cdot \boldsymbol{\Omega})}{\omega} \mathbf{v}_1 
\underbrace{=}_{(6)} \mp k v_z^2 \tag{11} 
$$

のようになります。よって渦度ベクトルは$$\mathbf{v}_1$$と平行か反平行であることがわかります。これは[ヘリシティ](/astroelec/polarization)として知られる量です。

# 参考文献

[1] Priest, "Solar Magnetohydrodynamics"  
[2] 観山正見, 野本憲一, 二間瀬敏史, "天体物理学の基礎 II"  

{% include adsense.html %} 

