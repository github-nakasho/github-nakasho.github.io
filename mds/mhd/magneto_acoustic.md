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

[音波の導出部分で出てきた分散関係式(20)](/mhd/sound_wave)において重力と回転を無視($$g =0, \boldsymbol{\Omega}=\mathbf{0}$$)し、さらに$$\mathbf{k} \cdot \hat{\mathbf{B}}_0 = k \cos \theta_B$$であることを用いて整理します。ここで$$\hat{\mathbf{B}}_0 = \mathbf{B}_0 / B_0$$です。

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

しかし、上述の議論だけでは実際にこの波動伝播中の流体がどのような振る舞いをしているのかを把握することができません。よって以下では固有値・固有ベクトルの方法を用いて、この分散関係式とその固有ベクトルを求めてみましょう。(1)式より

$$
\omega^2 \mathbf{v}_1 
= k^2 v_A^2 \cos^2 \theta_B \mathbf{v}_1 + \{ (v_A^2 + C_s^2) (\mathbf{k} \cdot \mathbf{v}_1) -k v_A^2 \cos \theta_B (\mathbf{v}_1 \cdot \hat{\mathbf{B}}_0)\} \mathbf{k} - kv_A^2 \cos \theta_B (\mathbf{k} \cdot \mathbf{v}_1) \hat{\mathbf{B}}_0 
$$

今、背景磁場の方向として$$\hat{\mathbf{B}}_0$$は$$z$$方向を向いているとすると、$$\mathbf{k} \cdot \hat{\mathbf{B}}_0 = k \cos \theta_B$$より$$\mathbf{k} = (k \sin \theta_B, 0, k \cos \theta_B)$$のように書くことができます。規格化された波数ベクトルを$$\hat{\mathbf{k}} = \mathbf{k} / k$$、さらに$$\mathbf{v}_1 = (v_{1x}, v_{1y}, v_{1z})$$から

$$
\begin{aligned}
( \omega^2 - k^2 v_A^2 \cos^2 \theta_B) \mathbf{v}_1 
&= k \{ (v_A^2 + C_s^2) (v_{1x} \sin \theta_B + v_{1z} \cos \theta_B) - v_A^2 v_{1z} \cos \theta_B \} \mathbf{k} \\
& \qquad \qquad - k^2 v_A^2 \cos \theta_B (v_{1x} \sin \theta_B + v_{1z} \cos \theta_B) \hat{\mathbf{B}}_0 \\
&= k^2 \{ (v_A^2 + C_s^2) v_{1x} \sin \theta_B + C_s^2 v_{1z} \cos \theta_B\} \hat{\mathbf{k}} - k^2 v_A^2 \cos \theta_B (v_{1x} \sin \theta_B + v_{1z} \cos \theta_B) \hat{\mathbf{B}}_0
\end{aligned}
$$

以上からこれをベクトルの成分をあらわに書くと

$$
\left( \begin{array}{c}
(k^2 v_A^2 + k^2 C_s^2 \sin^2 \theta_B - \omega^2) v_{1x} + k^2 C_s^2 \sin \theta_B \cos \theta_B v_{1z} \\
(k^2 v_A^2 \cos^2 \theta_B - \omega^2) v_{1y} \\
k^2 C_s^2 \sin \theta_B \cos \theta_B v_{1x} + (k^2 C_s^2 \cos^2 \theta_B - \omega^2) v_{1z}
\end{array} \right) 
= \mathbf{0} 
$$

これを行列を用いて書けば

$$
\left( \begin{array}{ccc}
k^2 v_A^2 + k^2 C_s^2 \sin^2 \theta_B - \omega^2 & 0 & k^2 C_s^2 \sin \theta_B \cos \theta_B \\
0 & k^2 v_A^2 \cos^2 \theta_B - \omega^2 & 0 \\
k^2 C_s^2 \sin \theta_B \cos \theta_B & 0 & k^2 C_s^2 \cos^2 \theta_B - \omega^2 
\end{array} \right) 
\left( \begin{array}{c}
v_{1x} \\
v_{1y} \\
v_{1z}
\end{array}\right) 
= \mathbf{0} \tag{5}
$$

この行列の形から速度の摂動は$$\mathbf{k}, \mathbf{B}_0$$の両方に垂直な方向の変動$$v_{1y}$$の横波と、$$\mathbf{k}, \mathbf{B}_0$$の張る面内での変動$$(v_{1x}, v_{1z})$$とに分けて考えることができます。

### $$y$$方向

$$y$$方向の速度の摂動式は

$$
(k^2 v_A^2 \cos^2 \theta_B-\omega^2) v_{1y} = 0 
\ \Longrightarrow \ 
\omega 
= kv_A \cos \theta_B \tag{6}
$$

のように、[シア・アルヴェーン波](/mhd/alfven_wave)の分散関係式を得ます。

### $$x, z$$方向

$$y$$方向とは独立に、$$x, z$$方向について

$$
\left( \begin{array}{cc}
k^2 v_A^2 + k^2 C_s^2 \sin^2 \theta_B - \omega^2 & k^2 C_s^2 \sin \theta_B \cos \theta_B \\
k^2 C_s^2 \sin \theta_B \cos \theta_B & k^2 C_s^2 \cos^2 \theta_B - \omega^2
\end{array} \right) \left( \begin{array}{c}
v_{1x} \\
v_{1z}
\end{array} \right) 
= \mathbf{0} \tag{7}
$$

任意の$$(v_{1x}, v_{1z})$$で(7)式が成り立つためには、係数行列の行列式が0になれば良いでしょう。よって

$$
\begin{aligned}
&\left| \begin{array}{cc}
k^2 v_A^2 + k^2 C_s^2 \sin^2 \theta_B - \omega^2 & k^2 C_s^2 \sin \theta_B \cos \theta_B \\
k^2 C_s^2 \sin \theta_B \cos \theta_B & k^2 C_s^2 \cos^2 \theta_B - \omega^2
\end{array} \right| \\
&= (\omega^2 - k^2 v_A^2 - k^2 C_s^2 \sin^2 \theta_B) (\omega^2 - k^2 C_s^2 \cos^2 \theta_B) - k^4 C_s^4 \sin^2 \theta_B \cos^2 \theta_B \\
&= \omega^4 - k^2 (v_A^2 + C_s^2) \omega^2 + k^4 v_A^2 C_s^2 \cos^2 \theta_B 
= 0
\end{aligned}
$$

となり、分散関係式

$$
\omega^2 
= \frac{1}{2} k^2 \left\{ v_A^2 + C_s^2 \pm \sqrt{(v_A^2 + C_s^2)^2 - 4 C_s^2 v_A^2 \cos^2 \theta_B}\right\} \tag{8}
$$

を得ます。これは(4)式と同じです。  
このように分散関係式を得るのは簡単ですが、一般の磁場の大きさの場合においてこの波動中の流体の振る舞いを調べるのは簡単ではありません。よって以下ではある条件の下での(7)式の固有ベクトルを算出してみましょう。

### $$C_s^2 \gg v_A^2$$(ガス圧優勢)のとき 

$$\alpha \equiv v_A^2 / C_s^2$$とおくと、(8)式から

$$
\begin{aligned}
\omega^2
&= \frac{1}{2} k^2 C_s^2 \{ \alpha + 1 \pm \sqrt{(\alpha+1)^2 -4\alpha \cos^2 \theta_B} \} 
\underbrace{\simeq}_{\alpha^2 \sim 0} \frac{1}{2} k^2 C_s^2 \{ \alpha + 1 \pm \sqrt{1 + 2\alpha -4\alpha \cos^2 \theta_B} \} \\
&\underbrace{\simeq}_{テイラー展開} \frac{1}{2} k^2 C_s^2 [\alpha + 1 \pm \{ 1+ (1-2 \cos^2 \theta_B) \alpha \}]
\end{aligned}
$$

**(i). 速い磁気音波**

ここで$$\pm$$部分で$$+$$(速い磁気音波)を考えると

$$
\omega_+^2 
= k^2 C_s^2 (1+\alpha \sin^2 \theta_B)
$$

となります。ここから、(7)式の両辺を$$k^2 C_s^2$$で割ると

$$
\begin{aligned}
\left( \begin{array}{cc}
\alpha + \sin^2 \theta_B - \frac{\omega^2}{k^2 C_s^2} & \sin \theta_B \cos \theta_B \\
\sin \theta_B \cos \theta_B & \cos^2 \theta_B - \frac{\omega^2}{k^2 C_s^2}
\end{array} \right) 
\left(\begin{array}{c} 
v_{1x} \\
v_{1z} 
\end{array}\right) 
&= \left( \begin{array}{cc}
\alpha + \sin^2 \theta_B - 1-\alpha \sin^2 \theta_B & \sin \theta_B \cos \theta_B \\
\sin \theta_B \cos \theta_B & \cos^2 \theta_B - 1-\alpha \sin^2 \theta_B
\end{array} \right) 
\left(\begin{array}{c} 
v_{1x} \\
v_{1z} 
\end{array}\right) \\
&= \left( \begin{array}{cc}
- (1-\alpha) \cos^2 \theta_B & \sin \theta_B \cos \theta_B \\
\sin \theta_B \cos \theta_B & - (1+\alpha) \sin^2 \theta_B
\end{array} \right) 
\left(\begin{array}{c} 
v_{1x} \\
v_{1z} 
\end{array}\right) 
= \mathbf{0}
\end{aligned}
$$

以上の連立方程式から

$$
\frac{v_{1x}}{v_{1z}} 
= (1+\alpha) \tan \theta_B \ \Longrightarrow \ 
\mathbf{v}_1 
= v_{1} ((1+\alpha)\sin \theta_B, \cos \theta_B)
$$

ここで$$v_{1} = \\|\mathbf{v}_1\\|$$としました。これより

$$
\mathbf{v}_1 \cdot \mathbf{k} 
= v_{1} k (1+\alpha \sin \theta_B) \tag{9}
$$

$$\alpha \ll 1$$から、(9)式は必ず正の値を取ります。波の進行方向を表す波数ベクトルと流体の速度ベクトルが同じ向きであることから、この場合の速い磁気音波は縦波的(音波的)であるとわかります。

**(ii). 遅い磁気音波**

同様に$$\pm$$で$$-$$(遅い磁気音波)を考えましょう。

$$
\omega_-^2 
= k^2 C_s^2 \alpha \cos^2 \theta_B
$$

です。よって

$$
\begin{aligned}
\left( \begin{array}{cc}
\alpha + \sin^2 \theta_B - \frac{\omega^2}{k^2 C_s^2} & \sin \theta_B \cos \theta_B \\
\sin \theta_B \cos \theta_B & \cos^2 \theta_B - \frac{\omega^2}{k^2 C_s^2}
\end{array} \right) 
\left(\begin{array}{c} 
v_{1x} \\
v_{1z} 
\end{array}\right) 
&= \left( \begin{array}{cc}
\alpha + \sin^2 \theta_B - \alpha \cos^2 \theta_B & \sin \theta_B \cos \theta_B \\
\sin \theta_B \cos \theta_B & \cos^2 \theta_B - \alpha \cos^2 \theta_B
\end{array} \right) 
\left(\begin{array}{c} 
v_{1x} \\
v_{1z} 
\end{array}\right) \\
&= \left( \begin{array}{cc}
(1+\alpha) \sin^2 \theta_B & \sin \theta_B \cos \theta_B \\
\sin \theta_B \cos \theta_B & (1-\alpha) \cos^2 \theta_B
\end{array} \right) 
\left(\begin{array}{c} 
v_{1x} \\
v_{1z} 
\end{array}\right) 
= \mathbf{0}
\end{aligned}
$$

となります。以上の連立方程式から

$$
\frac{v_{1x}}{v_{1z}} 
= - (1-\alpha) \cot \theta_B \ \Longrightarrow \ 
\mathbf{v}_1 
= v_1 (-(1-\alpha) \cos \theta_B, \sin \theta_B)
$$

これより

$$
\mathbf{v}_1 \cdot \mathbf{k} 
= v_1 k \alpha \sin \theta_B \cos \theta_B 
$$

今、$$\alpha \ll 1$$よりこの値は十分に小さく、よって$$C_s^2 \gg v_A^2$$の極限では遅い磁気音波は横波的であることがわかります。

# 参考文献

[1] Priest, "Solar Magnetohydrodynamics"  
[2] 観山正見, 野本憲一, 二間瀬敏史, "天体物理学の基礎 II"  

{% include adsense.html %} 

