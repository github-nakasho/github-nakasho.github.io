---
layout: default
title: 磁気音波
parent: 宇宙磁気流体力学
math: mathjax3
permalink: /mhd/magneto_acoustic
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

# 磁気音波 (Magnetoacoustic waves, magnetosonic waves)

ここでは圧力を復元力として伝播する[音波](/mhd/sound_wave)と[アルヴェーン波](/mhd/alfven_wave)がお互いに影響を及ぼし合った場合の波を考えます。

## 簡単な導出

[音波の導出部分で出てきた分散関係式(20)](/mhd/sound_wave)において重力と回転を無視($$g =0, \boldsymbol{\Omega}=\mathbf{0}$$)し、さらに$$\mathbf{k} \cdot \hat{\mathbf{B}}_0 = k \cos \theta_B$$であることを用いて整理します。

$$
\begin{align}
\frac{\omega^2}{v_A^2} \mathbf{v}_1 
&= \frac{C_s^2}{v_A^2} (\mathbf{k} \cdot \mathbf{v}_1) \mathbf{k} + k^2 \cos^2 \theta_B \mathbf{v}_1 + \left\{ (\mathbf{k} \cdot \mathbf{v}_1) - k \cos \theta_B (\mathbf{v}_1 \cdot \hat{\mathbf{B}}_0)\right\} \mathbf{k} - (\mathbf{k} \cdot \mathbf{v}_1) k \cos \theta_B \hat{\mathbf{B}}_0 \notag \\
&= k^2 \cos^2 \theta_B \mathbf{v}_1 + \left\{ \left( 1+\frac{C_s^2}{v_A^2} \right)(\mathbf{k} \cdot \mathbf{v}_1) - k \cos \theta_B (\mathbf{v}_1 \cdot \hat{\mathbf{B}}_0)\right\} \mathbf{k} - k \cos \theta_B (\mathbf{k} \cdot \mathbf{v}_1) \hat{\mathbf{B}}_0 \tag{1}
\end{align}
$$

まず、(1)式と$$\mathbf{k}$$との内積を取ります。

$$
\begin{aligned}
\frac{\omega^2}{v_A^2} \mathbf{v}_1 \cdot \mathbf{k} 
&= k^2 \cos^2 \theta_B \mathbf{v}_1 \cdot \mathbf{k} + \left\{ \left( 1 + \frac{C_s^2}{v_A^2} \right) (\mathbf{k} \cdot \mathbf{v}_1) - k \cos \theta_B (\mathbf{v}_1 \cdot \hat{\mathbf{B}}_0)\right\} k^2 - k \cos \theta_B (\mathbf{k} \cdot \mathbf{v}_1) (\mathbf{k} \cdot \hat{\mathbf{B}}_0) \\
&= \left\{ k^2 \cos^2 \theta_B + k^2 \left( 1+ \frac{C_s^2}{v_A^2} \right) -k^2 \cos^2 \theta_B \right\} (\mathbf{k} \cdot \mathbf{v}_1) - k^3 \cos \theta_B (\mathbf{v}_1 \cdot \hat{\mathbf{B}}_0) \\
&= k^2 \left( 1+\frac{C_s^2}{v_A^2} \right) \mathbf{k} \cdot \mathbf{v}_1 - k^3 \cos \theta_B (\mathbf{v}_1 \cdot \hat{\mathbf{B}}_0) 
\end{aligned}
$$

これを整理すると

$$
\left\{ \frac{\omega^2}{v_A^2} - k^2 \left( 1+\frac{C_s^2}{v_A^2} \right) \right\} (\mathbf{k} \cdot \mathbf{v}_1) 
= k^3 \cos \theta_B \mathbf{v}_1 \cdot \hat{\mathbf{B}}_0 \tag{2}
$$

次に(1)式と$$\hat{\mathbf{B}}_0$$との内積を取ります。

$$
\begin{align}
\frac{\omega^2}{v_A^2} \mathbf{v}_1 \cdot \hat{\mathbf{B}}_0 
&= k^2 \cos^2 \theta_B \mathbf{v}_1 \cdot \hat{\mathbf{B}}_0 + \left\{ \left( 1+\frac{C_s^2}{v_A^2} \right) (\mathbf{k} \cdot \mathbf{v}_1) - k \cos \theta_B (\mathbf{v}_1 \cdot \hat{\mathbf{B}}_0)\right\} \mathbf{k} \cdot \hat{\mathbf{B}}_0 - k \cos \theta_B (\mathbf{k} \cdot \mathbf{v}_1) \notag \\
&= \left( 1 + \frac{C_s^2}{v_A^2}\right) k\cos \theta_B \mathbf{k} \cdot \mathbf{v}_1 - k \cos \theta_B \mathbf{k} \cdot \mathbf{v}_1 
= \frac{C_s^2}{v_A^2} k \cos \theta_B \mathbf{k} \cdot \mathbf{v}_1 \tag{3}
\end{align}
$$

(2), (3)式から、$$\mathbf{k} \cdot \mathbf{v}_1, \mathbf{v}_1 \cdot \hat{\mathbf{B}}_0$$を消去すると

$$
\left\{ \frac{\omega^2}{v_A^2} - k^2 \left( 1 + \frac{C_s^2}{v_A^2} \right) \right\} \frac{v_A^2}{C_s^2 k \cos \theta_B} 
= k^3 \cos \theta_B \frac{v_A^2}{\omega^2} \ \Longrightarrow \
\frac{\omega^4}{k^4} - (v_A^2 + C_s^2) \frac{\omega^2}{k^2} - C_s^2 v_A^2 \cos^2 \theta_B 
= 0
$$

となります。この$$\omega^2 / k^2$$に関する2次方程式を解くと

$$
\frac{\omega^2}{k^2} 
= \frac{(v_A^2 + C_s^2) \pm \sqrt{(v_A^2 + C_s^2)^2 - 4 C_s^2 v_A^2 \cos^2 \theta_B}}{2} \tag{4}
$$

となり、分散関係式を得ます。$$+$$符号の位相速度の大きい波を速い磁気音波(fast-mode)、$$-$$符号の位相速度の小さい波を遅い磁気音波(slow-mode)と呼びます。速い磁気音波と遅い磁気音波における位相速度の背景磁場に対する角度依存性をフリードリックスダイアグラムにまとめると以下のようになります。音速$$C_s$$とアルヴェーン速度$$v_A$$の大きさによって振る舞いが変化します。

![](/assets/images/mhd/magneto_acoustic_001.png)

## 固有値・固有ベクトルを用いた解法

しかし、上述の議論だけでは実際にこの波動伝播中の流体がどのような振る舞いをしているのかを把握することができません。よって以下では固有値・固有ベクトルの方法を用いて、この分散関係式とその固有ベクトルを求めてみましょう。


# 参考文献

[1] Priest, "Solar Magnetohydrodynamics"  
[2] 観山正見, 野本憲一, 二間瀬敏史, "天体物理学の基礎 II"  

{% include adsense.html %} 

