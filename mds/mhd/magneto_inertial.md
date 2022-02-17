---
layout: default
title: 磁気流体慣性波
parent: 宇宙磁気流体力学
math: mathjax3
permalink: /mhd/magneto_inertial
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

# 磁気流体慣性波 (Magnetohydrodynamic inertial waves)

[慣性波の導出](/mhd/inertial)では重力と磁場を無視し、流体も非圧縮としました。ここでは磁場の影響も考慮した場合に、どのような波動が伝播するかを考察しましょう。[音波の導出部分で用いた(20)式](/mhd/sound_wave)において$$g = \mathbf{k} \cdot \mathbf{v}_1 = 0$$とすると

$$
\omega^2 \mathbf{v}_1 
= -2i\omega \boldsymbol{\Omega} \times \mathbf{v}_1 + v_A^2 [(\mathbf{k} \cdot \hat{\mathbf{B}}_0) \{(\mathbf{k} \cdot \hat{\mathbf{B}}_0) \mathbf{v}_1 - (\mathbf{v}_1 \cdot \hat{\mathbf{B}}_0) \mathbf{k}\}]
$$

です。ここで$$v_A = B_0 / \sqrt{4\pi \rho_0}$$は[Alfvén速度](/mhd/alfven_wave)です。両辺において$$\mathbf{k}$$との外積を取ると

$$
\omega^2 \mathbf{k} \times \mathbf{v}_1 
= -2 i \omega \mathbf{k} \times (\boldsymbol{\Omega} \times \mathbf{v}_1) + \underbrace{v_A^2 (\mathbf{k} \cdot \hat{\mathbf{B}}_0)^2}_{\equiv \omega_A^2} \mathbf{k} \times \mathbf{v}_1 
= -2i \omega \{ \underbrace{(\mathbf{k} \cdot \mathbf{v}_1)}_{=0} \boldsymbol{\Omega} - (\mathbf{k} \cdot \boldsymbol{\Omega}) \mathbf{v}_1\} + \omega_A^2 \mathbf{k} \times \mathbf{v}_1
$$

と計算できるので、整理すると

$$
(\omega^2 - \omega_A^2) \mathbf{k} \times \mathbf{v}_1 
= 2i \omega (\mathbf{k} \cdot \boldsymbol{\Omega}) \mathbf{v}_1 
$$

この両辺の大きさを取ると$$\mathbf{k} \cdot \mathbf{v}_1=0$$から$$\\| \mathbf{k} \times \mathbf{v}_1\\| = k v_1$$と書けるので

$$
(\omega^2 - \omega^2_A) kv_1 
= \pm 2 \omega (\mathbf{k} \cdot \boldsymbol{\Omega}) v_1 \ \Longrightarrow \ 
\omega^2 \mp \omega_I \omega - \omega_A^2 
= 0 \tag{1}
$$

ここで$$\omega_I \equiv 2 (\mathbf{k} \cdot \boldsymbol{\Omega}) / k$$は[慣性波の振動数](/mhd/inertial)です。(1)式の2次関数を解くにあたり、$$\omega_A, \omega_I$$の大きさで場合分けします。この2つの比は、$$\mathbf{k}, \boldsymbol{\Omega}, \mathbf{B}_0$$が平行なとき

$$
\frac{\omega_A}{\omega_I} 
= \frac{v_A k}{2k\Omega/ k} 
= \frac{v_A k}{2 \Omega} \tag{2}
$$

## $$\omega_A / \omega_I \gg 1$$の場合

太陽の場合、磁場がとても強く$$\omega_A / \omega_I \gg 1$$(磁場が支配的)であることが知られています。すると(1)式の解は

$$
\omega^2 
= \omega_A^2 \left( 1 \pm \frac{\omega_I}{\omega_A} \frac{\omega}{\omega_A} \right) 
\underbrace{\simeq}_{\omega \simeq \omega_A} \omega_A^2 \left( 1\pm \frac{\omega_I}{\omega_A} \right) \tag{3}
$$

のようになります。これはCoriolis力によってAlfvén波のモードがわずかに2つに分裂することを意味します。

## $$\omega_A / \omega_I \ll 1$$の場合

今度は銀河円盤のように$$\omega_A / \omega_I \ll 1$$(回転が支配的)の場合を考えましょう。すると(1)式の解は

$$
\begin{align}
\omega 
&= \frac{\pm \omega_I \pm \sqrt{\omega_I^2 + 4\omega_A^2}}{2} 
= \frac{\pm \omega_I \pm \omega_I \sqrt{1 + 4\omega_A^2/\omega_I^2}}{2} 
\simeq \frac{\omega_I}{2} \left\{ \pm 1 \pm \left( \frac{2\omega_A^2}{\omega_I^2} \right)\right\} \notag \\
&= \omega_I + \frac{\omega_A^2}{\omega_I}, \frac{\omega_A^2}{\omega_I} 
\simeq \omega_I, \frac{\omega_A}{\omega_I} \omega_A \tag{4}
\end{align}
$$

最初の解は普通の慣性波、そして2つ目の解は磁気流体慣性波(Magnetohydrodynamic inertial wave)と呼ばれ、普通のAlfven波よりも伝播速度がかなり遅いことがわかります。

# 参考文献

[1] Priest, "Solar Magnetohydrodynamics"  
[2] 観山正見, 野本憲一, 二間瀬敏史, "天体物理学の基礎 II"  

{% include adsense.html %} 

