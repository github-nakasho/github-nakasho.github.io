---
layout: default
title: 円筒座標系・3次元極座標での誘導方程式
parent: 宇宙磁気流体力学
math: mathjax3
permalink: /mhd/induction_cyl_sph
nav_order: 16
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

# 誘導方程式の変換

散逸などのない理想的な磁気流体での誘導方程式

$$
\frac{\partial \mathbf{B}}{\partial t} 
= \nabla \times (\mathbf{v} \times \mathbf{B}) \tag{1}
$$

を円筒座標と3次元極座標系での表記に書き換えましょう。このとき、この式を他の[質量保存(連続の式)](/mhd/continuity)や[運動量保存](/mhd/momentum)の形と同じく、発散の形にします。

## 円筒座標系

円筒座標系での回転に注意して

$$
\begin{aligned}
\frac{\partial B_R}{\partial t} 
&= \frac{1}{R} \frac{\partial}{\partial \varphi} (v_R B_\varphi - B_R v_\varphi) + \frac{\partial}{\partial z} (v_R B_z - B_R v_z) \\
&= \frac{1}{R} \frac{\partial}{\partial R} \{ R (v_R B_R - B_R v_R)\} + \frac{1}{R} \frac{\partial}{\partial \varphi} (v_R B_\varphi - B_R v_\varphi) + \frac{\partial}{\partial z} (v_R B_z - B_R v_z) \\
&= - \nabla \cdot (B_R \mathbf{v} - v_R \mathbf{B})
\end{aligned}
$$

以上より

$$
\frac{\partial B_R}{\partial t} + \nabla \cdot (B_R \mathbf{v} - v_R \mathbf{B}) 
= 0 \tag{2}
$$

続いて$$B_\varphi$$の時間微分の式です。

$$
\begin{aligned}
\frac{\partial B_\varphi}{\partial t} 
&= \frac{\partial}{\partial z} (v_\varphi B_z - B_\varphi v_z) + \frac{\partial}{\partial R} (v_\varphi B_R - B_\varphi v_R) \\
&= \frac{1}{R} \frac{\partial}{\partial R} \{ R(v_\varphi B_R - B_\varphi v_R)\} + \frac{1}{R} \frac{\partial}{\partial \varphi} (v_\varphi B_\varphi - B_\varphi v_\varphi) + \frac{\partial}{\partial z}(v_\varphi B_z - B_\varphi v_z) - \frac{v_\varphi B_R - B_\varphi v_R}{R} \\
&= - \nabla \cdot (B_\varphi \mathbf{v} - v_\varphi \mathbf{B}) +  \frac{B_\varphi v_R - v_\varphi B_R}{R}
\end{aligned}
$$

よって

$$
\frac{\partial B_\varphi}{\partial t} + \nabla \cdot (B_\varphi \mathbf{v} - v_\varphi \mathbf{B}) 
= \frac{B_\varphi v_R - v_\varphi B_R}{R} \tag{3}
$$

となります。円筒座標系での表記による源泉項が登場します。  
最後に$$B_z$$の時間微分です。

$$
\begin{aligned}
\frac{\partial B_z}{\partial t} 
&= \frac{1}{R} \frac{\partial}{\partial R} \{ R (v_z B_R - B_z v_R)\} + \frac{1}{R} \frac{\partial}{\partial \varphi} (v_z B_\varphi - B_z v_\varphi) \\
&= \frac{1}{R} \frac{\partial}{\partial R} \{ R (v_z B_R - B_z v_R)\} + \frac{1}{R} \frac{\partial}{\partial \varphi} (v_z B_\varphi - B_z v_\varphi) + \frac{\partial}{\partial z} (v_z B_z - B_z v_z) \\
&= - \nabla \cdot (B_z \mathbf{v} - v_z \mathbf{B})
\end{aligned}
$$

よって

$$
\frac{\partial B_z}{\partial z} + \nabla \cdot (B_z \mathbf{v} - v_z \mathbf{B}) 
= 0 \tag{4}
$$

のようになります。

## 3次元極座標系

同様に、$$(r, \theta \varphi)$$での表記を考えます。

$$
\begin{aligned}
\frac{\partial B_r}{\partial t} 
&= \frac{1}{r \sin \theta} \frac{\partial}{\partial \theta} \{ \sin \theta (v_r B_\theta - B_r v_\theta)\} + \frac{1}{r \sin \theta} \frac{\partial}{\partial \varphi} (v_r B_\varphi - B_r v_\varphi) \\
&= \frac{1}{r^2} \frac{\partial}{\partial r} \{r^2 (v_r B_r - B_r v_r)\} + \frac{1}{r \sin \theta} \frac{\partial}{\partial \theta} \{ \sin \theta (v_r B_\theta - B_r v_\theta)\} + \frac{1}{r \sin \theta} \frac{\partial}{\partial \varphi} (v_r B_\varphi - B_r v_\varphi) \\
&= - \nabla \cdot (B_r \mathbf{v} - v_r \mathbf{B})
\end{aligned}
$$

よって

$$
\frac{\partial B_r}{\partial t} + \nabla \cdot (B_r \mathbf{v} - v_r \mathbf{B}) 
= 0 \tag{5}
$$

次は$$B_\theta$$の時間微分です。

$$
\begin{aligned}
\frac{\partial B_\theta}{\partial t} 
&= \frac{1}{r \sin \theta} \frac{\partial}{\partial \varphi} (v_\theta B_\varphi - B_\theta v_\varphi) + \frac{1}{r} \frac{\partial}{\partial r} \{ r (v_\theta B_r - B_\theta v_r)\} \\
&= \frac{1}{r^2} \frac{\partial}{\partial r} \{ r^2 (v_\theta B_r - B_\theta v_r)\} + \frac{1}{r \sin \theta} \frac{\partial}{\partial \theta} \{ \sin \theta (v_\theta B_\theta - B_\theta v_\theta)\} + \frac{1}{r \sin \theta} \frac{\partial}{\partial \varphi} (v_\theta B_\varphi - B_\theta v_\varphi) - \frac{v_\theta B_r - B_\theta v_r}{r} \\
&= - \nabla \cdot (B_\theta \mathbf{v} - v_\theta \mathbf{B}) + \frac{ B_\theta v_r - v_\theta B_r}{r}
\end{aligned}
$$

これより

$$
\frac{\partial B_\theta}{\partial t} + \nabla \cdot (B_\theta \mathbf{v} - v_\theta \mathbf{B}) 
= \frac{ B_\theta v_r - v_\theta B_r}{r} \tag{6}
$$

となります。円筒座標系と同様に源泉項が登場します。  
最後に$$B_\varphi$$の時間微分です。

$$
\begin{aligned}
\frac{\partial B_\varphi}{\partial t} 
&= \frac{1}{r} \frac{\partial}{\partial r} \{r(v_\varphi B_r - B_\varphi v_r)\} + \frac{1}{r} \frac{\partial}{\partial \theta} (v_\varphi B_\theta - B_\varphi v_\theta) \\
&= \frac{1}{r^2} \frac{\partial}{\partial r} \{r^2 (v_\varphi B_r - B_\varphi v_r)\} + \frac{1}{r \sin \theta} \frac{\partial}{\partial \theta} \{ \sin \theta (v_\varphi B_\theta - B_\varphi v_\theta)\} + \frac{1}{r \sin \theta} \frac{\partial}{\partial \varphi} (v_\varphi B_\varphi - B_\varphi v_\varphi) \\
& \qquad - \frac{v_\varphi B_r - B_\varphi v_r}{r} - \frac{\cot \theta}{r} (v_\varphi B_\theta - B_\varphi v_\theta) \\
&= - \nabla \cdot (B_\varphi \mathbf{v} - v_\varphi \mathbf{B}) + \frac{B_\varphi v_r- v_\varphi B_r}{r} + \frac{\cot \theta}{r} (B_\varphi v_\theta - v_\varphi B_\theta) 
\end{aligned}
$$

$$
\frac{\partial B_\varphi}{\partial t} + \nabla \cdot (B_\varphi \mathbf{v} - v_\varphi \mathbf{B}) 
= \frac{B_\varphi v_r- v_\varphi B_r}{r} + \frac{\cot \theta}{r} (B_\varphi v_\theta - v_\varphi B_\theta) \tag{7}
$$

となります。ここでも源泉項が発生します。

{% include adsense.html %} 
