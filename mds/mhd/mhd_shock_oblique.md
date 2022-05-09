---
layout: default
title: 磁気流体での斜め衝撃波
parent: 宇宙磁気流体力学
math: mathjax3
permalink: /mhd/mhd_shock_oblique
nav_order: 17
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

# 磁気流体での斜め衝撃波

## 基礎方程式

磁気流体が2次元運動をしており、そこで衝撃波が発生した場合を考えます。下図のように衝撃波面に垂直な方向を$$x$$, 衝撃波面に平行な方向を$$y$$にとります。衝撃波面は$$x$$方向に伝播していきますが、ここではすでに衝撃波の伝播速度と同じ速度で運動する系で衝撃波を見ているものとします。そして$$y$$方向に適当に運動する系に移動することで、衝撃波面の上流側では$$\mathbf{v}_1 \parallel \mathbf{B}_1$$のようになっているものとします。

![](/assets/images/mhd/mhd_shock_oblique_001.png)

```
流体の速度は非相対論的で、流体の運動にのみガリレイ変換が施されたと考えます。
```

また衝撃波は定常状態にあり、等速度で伝播していくとします。以降、衝撃波面の上流側の物理量には1, 下流側の物理量には2の添字をつけて式変形を行います。  
[磁気流体での垂直衝撃波](/mhd/mhd_shock_perp)と同様に、衝撃波面を挟んで成り立つ[質量保存則](/mhd/continuity)より

$$
\rho_1 v_{1x} 
= \rho_2 v_{2x} \tag{1}
$$

続いて[運動量保存則](/mhd/momentum)です。$$x$$方向の運動量保存は

$$
\underbrace{\frac{\partial}{\partial}(\rho v_{x})}_{定常より0} + \partial_j \left\{ \rho v_x v_j - \frac{1}{4\pi} B_x B_j + \left( P + \frac{1}{8\pi} \right) \delta_{xj} \right\} 
= 0
$$

から

$$
\rho_1 v_{1x} v_{1x} - \frac{1}{4\pi} B_{1x} B_{1x} + P_1 + \frac{1}{8\pi} B_1^2 
= \rho_2 v_{2x} v_{1x} - \frac{1}{4\pi} B_{2x} B_{2x} + P_2 + \frac{1}{8\pi} B_2^2 \tag{2}
$$

[垂直衝撃波](/mhd/mhd_shock_perp)のときと違い、$$y$$方向の運動量保存も考慮しなければなりません。

$$
\rho_1 v_{1y} v_{1x} - \frac{1}{4\pi} B_{1y} B_{1x} 
= \rho_2 v_{2y} v_{2x} - \frac{1}{4\pi} B_{2y} B_{2x} \tag{3}
$$

[エネルギー保存則](/mhd/energy)より

$$
\left( \frac{1}{2} \rho_1 v_1^2 + \rho_1 e_1 + P_1 \right) v_{1x} + S_{1x} 
= \left( \frac{1}{2} \rho_2 v_2^2 + \rho_2 e_2 + P_2 \right) v_{2x} + S_{2x} \tag{4}
$$

ここで

$$
e = \frac{1}{\gamma - 1} \frac{P}{\rho}, \qquad \mathbf{S} = \frac{c}{4\pi} \mathbf{E} \times \mathbf{B} \tag{5}
$$

はそれぞれ流体の内部エネルギーと[ポインティングベクトル](/astroelec/em_energy_momentum)です。　　
[オームの法則](/mhd/ohm)より、理想磁気流体を考えて電気伝導度が$$\sigma \rightarrow \infty$$とすると

$$
\mathbf{j} 
= \sigma \left( \mathbf{E} + \mathbf{v} \times \frac{\mathbf{B}}{c} \right) \ \Longrightarrow \ 
\mathbf{E} 
= \frac{\mathbf{j}}{\sigma} - \mathbf{v} \times \frac{\mathbf{B}}{c} 
\underbrace{=}_{\sigma \gg 1} - \mathbf{v} \times \frac{\mathbf{B}}{c} \tag{6}
$$

以上の(4), (5), (6)式より

$$
\left( \frac{1}{2} \rho_1 v_1^2 + \frac{\gamma}{\gamma -1} P_1\right) v_{1x} - \frac{1}{4\pi} [(\mathbf{v}_1 \times \mathbf{B}_1) \times \mathbf{B}_1]_x 
= \left( \frac{1}{2} \rho_2 v_2^2 + \frac{\gamma}{\gamma -1} P_2\right) v_{2x} - \frac{1}{4\pi} [(\mathbf{v}_2 \times \mathbf{B}_2) \times \mathbf{B}_2]_x
$$

ベクトル解析より

$$
\begin{aligned}
[(\mathbf{v} \times \mathbf{B}) \times \mathbf{B}]_i 
&= \epsilon_{ijk} (\mathbf{v} \times \mathbf{B})_j B_k 
= \epsilon_{ijk} \epsilon_{k \ell m} v_\ell B_m B_k 
= \epsilon_{kij} \epsilon_{k \ell m} v_\ell B_m B_k \\
&= (\delta_{k\ell} \delta_{im} - \delta_{i\ell} \delta_{km}) v_\ell B_m B_k 
= v_k B_i B_k - v_i B_k B_k 
= [(\mathbf{v} \cdot \mathbf{B}) \mathbf{B} - B^2 \mathbf{v}]_i
\end{aligned}
$$

から

$$
\begin{align}
&\left( \frac{1}{2} \rho_1 v_1^2 + \frac{\gamma}{\gamma-1} P_1\right) v_{1x} - \frac{1}{4\pi} (v_{1x} B_{1x} + v_{1y} B_{1y}) B_{1x} + \frac{1}{4\pi} B_1^2 v_{1x} \notag \\
&= \left( \frac{1}{2} \rho_2 v_2^2 + \frac{\gamma}{\gamma-1} P_2\right) v_{2x} - \frac{1}{4\pi} (v_{2x} B_{2x} + v_{2y} B_{2y}) B_{2x} + \frac{1}{4\pi} B_2^2 v_{2x} \tag{7}
\end{align}
$$

となります。  
次に、[磁場のガウス則(磁気単極子がないことを表す式)](/astroelec/em_energy_momentum)より

$$
\nabla \cdot \mathbf{B} = 0 \ \Longrightarrow \ 
B_{1x} = B_{2x} \tag{8}
$$

が満たされる必要があります。  
そして[誘導方程式](/mhd/induction)より

$$
\nabla \times (\mathbf{v} \times \mathbf{B}) 
= \frac{\partial \mathbf{B}}{\partial t} 
\underbrace{=}_{定常より} \mathbf{0}
$$

[磁気流体垂直衝撃波](/mhd/mhd_shock_perp)のときと同様に、衝撃波面に垂直に交差するような一辺$$\ell$$の正方形で面積積分すると

$$
\begin{align}
& \iint_S \nabla \times (\mathbf{v} \times \mathbf{B}) \cdot d\mathbf{S} 
= \oint_C (\mathbf{v} \times \mathbf{B}) \cdot d \mathbf{s} 
= (v_{1x} B_{1y}- v_{1y} B_{1x}) \ell - (v_{2x} B_{2y} - v_{2y} B_{2x}) \ell 
= 0 \notag \\
& \Longrightarrow \ 
v_{1x} B_{1y}- v_{1y} B_{1x} = v_{2x} B_{2y} - v_{2y} B_{2x} \tag{9}
\end{align}
$$

先程の$$\mathbf{v}_1 \parallel \mathbf{B}_1$$となるような座標系で衝撃波を観測していることから

$$
v_{1y} 
= \frac{B_{1y}}{B_{1x}} v_{1x} \tag{10}
$$

が成立します。(9), (10)式から、実は衝撃波の下流側でも

$$
v_{2y} 
= \frac{B_{2y}}{B_{2x}} v_{2x} \tag{11}
$$

すなわち$$\mathbf{v}_2 \parallel \mathbf{B}_2$$が成り立ちます。

## 式変形

(1)式より

$$
\frac{\rho_2}{\rho_1} = \frac{v_{1x}}{v_{2x}} 
\equiv X \tag{12}
$$

さらに

$$
\frac{P_2}{P_1} \equiv Y, \qquad \frac{B_{2y}}{B_{1y}} \equiv Z \tag{13}
$$

を定義します。(8), (10), (11)より

$$
\frac{v_{2y}}{v_{1y}} 
= \frac{\frac{B_{2y}}{B_{2x}} v_{2x}}{\frac{B_{1y}}{B_{1x}} v_{1x}} 
= \frac{B_{2y}}{B_{1y}} \frac{v_{2x}}{v_{1x}} 
= \frac{Z}{X} \tag{14}
$$

です。これらを用いて基礎方程式を計算していきましょう。(2), (8), (12), (13), (14)式より式より

$$
\begin{aligned}
&\rho_1 v_{1x}^2 + P_1 + \frac{1}{8\pi} B_{1y}^2 
= \rho_1 v_{1x}^2 \frac{1}{X} + P_1 Y + \frac{1}{8\pi} B_{1y}^2 Z^2 \\
&\Longrightarrow \ 
\rho_1 v_{1x}^2 \left(1-\frac{1}{X} \right) + P_1(1-Y) + \frac{1}{8\pi} B_{1y}^2 (1-Z^2) = 0 
\end{aligned}
$$

両辺に$$X / \rho_1$$をかけて[音速](/mhd/sound_wave)$$C_s^2 = \gamma P / \rho$$を用いて整理すると

$$
v_{1x}^2 (X-1) + \frac{C_{s1}^2}{\gamma} X (1-Y) + \frac{1}{8\pi \rho_1} B_{1y}^2 X(1-Z^2) = 0 \tag{15}
$$

続いて(3), (8), (10), (12), (13), (14)式より

$$
\rho_{1} v_{1y} v_{1x} - \frac{1}{4\pi} B_{1y} B_{1x} 
= \rho_1 v_{1y} v_{1x} \frac{Z}{X} - \frac{1}{4\pi} B_{1y} B_{1x} Z
$$

これを整理すると

$$
Z 
= \frac{\rho_1 v_{1y} v_{1x} - \frac{1}{4\pi} B_{1y} B_{1x}}{\rho_1 v_{1y} v_{1x} \frac{1}{X} - \frac{1}{4\pi} B_{1y} B_{1x}} 
\underbrace{=}_{(10)} \frac{v_{1y} v_{1x} - \frac{1}{4\pi \rho_1} \frac{v_{1y}}{v_{1x}} B_{1x}^2}{v_{1y} v_{1x} \frac{1}{X} - \frac{1}{4\pi \rho_1} \frac{v_{1y}}{v_{1x}} B_{1x}^2} 
= \frac{v_{1x}^2 - \frac{1}{4\pi \rho_1} B_{1x}^2}{v_{1x}^2 - \frac{1}{4\pi \rho_1} B_{1x}^2 X} X
$$

となります。今、流体の速度ベクトルと磁場ベクトルが平行な系で考えているので、これは

$$
Z 
= \frac{B_{2y}}{B_{1y}} 
= \frac{v_1^2 - \frac{1}{4\pi \rho_1} B_1^2}{v_1^2 - \frac{1}{4\pi \rho_1} B_1^2 X} X 
= \frac{v_1^2 - v_A^2}{v_1^2 - v_A^2 X} X \tag{16}
$$

と変形することができます。ここで[アルヴェーン速度](/mhd/alfven_wave)を用いました。(14), (16)式より

$$
\frac{v_{2y}}{v_{1y}} 
= \frac{v_1^2 - v_A^2}{v_1^2 - v_A^2 X} \tag{17}
$$

最後に(7)式の変形を行います。実は

$$
- \frac{1}{4\pi} (v_{1x} B_{1x} + v_{1y} B_{1y}) B_{1x} + \frac{1}{4\pi} B_1^2 v_{1x} 
= \frac{1}{4\pi} B_{1y}^2 v_{1x} - \frac{1}{4\pi} v_{1y} B_{1y} B_{1x} 
\underbrace{=}_{10} 0 
$$

となります。これは$$\mathbf{v} \parallel \mathbf{B}$$の座標系に移っていることから、$$\mathbf{j} = \mathbf{v} \times \mathbf{B}/c = \mathbf{0}$$に必ずなるためです。よって(7)式は

$$
\left( \frac{1}{2} \rho_1 v_1^2 + \frac{\gamma}{\gamma-1}P_1 \right) v_{1x} 
= \left( \frac{1}{2} \rho_1 v_2^2 X + \frac{\gamma}{\gamma-1}P_1 Y\right) \frac{1}{X} v_{1x} \ \Longrightarrow \ 
\frac{1}{2} \rho_1 (v_1^2 - v_2^2) X = \frac{\gamma}{\gamma-1} P_1(Y-X)
$$

となります。先程と同様に[音速](/mhd/sound_wave)$$C_{s1}^2 = \gamma P/\rho$$を用いて整理すると

$$
Y = X + \frac{\gamma-1}{2 C_{s1}^2} v_1^2 \left( 1-\frac{v_2^2}{v_1^2}\right) X
$$

となります。ここで$$\mathbf{v} = v_1 (\cos \theta, \sin \theta)$$のように書けることを用いると

$$
v_{2x}^2 = \frac{v_{2x}^2}{v_{1x}^2} v_{1x}^2 
\underbrace{=}_{(12)} v_1^2 \cos^2 \theta \frac{1}{X^2}, \quad
v_{2y}^2 = \frac{v_{2y}^2}{v_{1y}^2} v_{1y}^2 
\underbrace{=}_{(14)} v_1^2 \sin^2 \theta \frac{Z^2}{X^2} \tag{18}
$$

より

$$
\begin{aligned}
Y 
&= X + \frac{\gamma-1}{2 C_{s1}^2} v_1^2 \left\{ 1 - \left( \cos^2 \theta \frac{1}{X^2} + \sin^2 \theta \frac{Z^2}{X^2} \right) \right\} X 
= X + \frac{\gamma-1}{2} \frac{v_1^2}{C_{s1}^2} \frac{X^2 - \cos^2 \theta - Z^2 \sin^2 \theta}{X} \\
&= X + \frac{\gamma-1}{2} \frac{v_1^2}{C_{s1}^2} \frac{X^2 - 1 + \sin^2 \theta (1-Z^2)}{X}
\end{aligned}
$$

以上から

$$
1-Y 
= \frac{2 C_{s1}^2 X(1-X) - v_1^2 (\gamma-1) \{ X^2 - 1+\sin^2 \theta (1-Z^2)\}}{2 C_{s1}^2 X} \tag{19}
$$

となります。(15), (19)式より

$$
v_1^2 \cos^2 \theta (X-1) + \frac{1}{2} X v_{A1}^2 \sin^2 \theta (1-Z^2) + \frac{1}{2\gamma} [2 C_{s1}^2 X(1-X) - v_1^2 (\gamma-1) \{ X^2 - 1+\sin^2 \theta (1-Z^2)\}] 
= 0
$$

(17)式から

$$
1-Z^2 
= 1- \frac{(v_1^2 -v_{A1}^2)^2}{(v_1^2 -v_{A1}^2 X)^2} X^2 
= \frac{v_1^4 (1-X^2) + 2 v_{A1}^2 v_1^2 (X-1) X}{(v_1^2 -v_{A1}^2 X)^2} 
= v_1^2 (X-1) \frac{- v_1^2 (X+1) +2 v_{A1}^2 X}{(v_1^2 -v_{A1}^2 X)^2}
$$

と計算できるので

$$
\begin{aligned}
&v_1^2 \cos^2 \theta (X-1)+ \frac{1}{2} X v_{A1}^2 \sin^2 \theta v_1^2 (X-1) \frac{- v_1^2 (X+1) +2 v_{A1}^2 X}{(v_1^2 -v_{A1}^2 X)^2} \\
& \quad + \frac{1}{2\gamma} \left[2 C_{s1}^2 X(1-X) - v_1^2 (\gamma-1) \left\{ X^2 -1 + \sin^2 \theta v_1^2 (X-1) \frac{2 v_{A1}^2 X- v_1^2 (X+1)}{(v_1^2 -v_{A1}^2 X)^2}\right\} \right] = 0
\end{aligned}
$$

上式において$$X=1$$の解は衝撃波のない自明な解なので、以下では$$X \neq 1$$で考えます。よってこの両辺を$$X-1$$で割ることで

$$
\begin{aligned}
&2 \gamma v_1^2 \cos^2 \theta + \gamma X v_{A1}^2 \sin^2 \theta v_1^2 \frac{- v_1^2 (X+1) +2 v_{A1}^2 X}{(v_1^2 -v_{A1}^2 X)^2} 
- 2 C_{s1}^2 X \\
& \quad - v_1^2 (\gamma-1) \left\{ X +1 + \sin^2 \theta v_1^2 \frac{2 v_{A1}^2 X- v_1^2 (X+1)}{(v_1^2 -v_{A1}^2 X)^2}\right\} 
= 0 
\end{aligned}
$$

を得ます。さらに両辺に$$(v_1^2-v_{A1}^2 X)^2$$をかけてさらに変形を進めます。

$$
\begin{aligned}
&(v_1^2-v_{A1}^2 X)^2 \{2 \gamma v_1^2 \cos^2 \theta - 2C_{s1}^2 X - v_1^2 (\gamma-1) (X+1) \} + \{ 2 v_{A1}^2 X- v_1^2 (X+1)\} \\
&\quad + \{ 2 v_{A1}^2 X - v_1^2 (X+1)\} \{ \gamma X v_{A1}^2 v_1^2 \sin^2 \theta - v_1^4 (\gamma-1) \sin^2 \theta\} 
= 0 
\end{aligned}
$$

第二項の整理から進めましょう。

$$
\begin{aligned}
(第2項) 
&= \{ 2 v_{A1}^2 X - v_1^2 (X+1)\} \{ \gamma X v_{A1}^2 - v_1^2 (\gamma-1) \} v_1^2 \sin^2 \theta \\
&= \{ 2 \gamma X^2 v_{A1}^4 - 2 v_{A1}^2 v_1^2 X (\gamma-1) -\gamma X (X+1) v_1^2 v_{A1}^2 + v_1^4 (\gamma-1) (X+1)\} 
\end{aligned}
$$

ここで$$\alpha = v_1^2 - v_{A1}^2 X$$として、$$v_1^4$$を無理矢理ここから作り出して整理します。

$$
\alpha^2 
= v_1^4 - 2 v_1^2 v_{A1}^2 X + v_{A1}^4 X^2 \ \Longrightarrow \ 
v_1^4 
= \alpha^2 + 2 v_1^2 v_{A1}^2 X - X^2 v_{A1}^4
$$

これを用いると

$$
\begin{aligned}
(第2項) 
&= \{ 2 \gamma v_{A1}^2 X^2 - 2 v_1^2 v_{A1}^2 (\gamma-1) X - (\gamma X + \gamma) v_1^2 v_{A1}^2 X + (\gamma-1)(X+1) \alpha^2 \\
& \qquad + 2 v_1^2 v_{A1}^2 (\gamma-1) (X+1) - v_{A1}^4 (\gamma-1)X^2 (X+1)\} v_1^2 \sin^2 \theta \\
&= [\{ 2\gamma - (\gamma-1)(X+1) \} v_{A1}^4 X^2 + \{ -2(\gamma-1) - (\gamma X + \gamma) + 2(\gamma-1) (X+1)\} v_1^2 v_{A1}^2 X \\
& \qquad + (\gamma-1)(X+1) \alpha^2] v_1^2 \sin^2 \theta \\
&= \{(\gamma-\gamma X + X+1) v_{A1}^4 X^2 + (\gamma X -2X-\gamma) v_1^2 v_{A1}^2 X + (\gamma -1)(X+1) \alpha^2\} v_1^2 \sin^2 \theta
\end{aligned}
$$

となります。以上から元の式は

$$
\begin{aligned}
&\alpha^2 \{2 \gamma v_1^2 \cos^2 \theta - 2C_{s1}^2 X - v_1^2 (\gamma-1) (X+1) \} + \{ 2 v_{A1}^2 X- v_1^2 (X+1)\} \\
& \qquad + \{(\gamma-\gamma X + X+1) v_{A1}^4 X^2 + (\gamma X -2X-\gamma) v_1^2 v_{A1}^2 X + (\gamma -1)(X+1) \alpha^2\} v_1^2 \sin^2 \theta \\
&= \alpha^2 \{ -2 C_{s1}^2 X + (\gamma-\gamma X+X+1) v_1^2 \cos^2 \theta \} + [\{X(1-\gamma)+(\gamma +1)\} v_{A1}^2 X- \{\gamma + X(\gamma-2)\} v_1^2] v_1^2 v_{A1}^2 X \sin^2 \theta 
= 0
\end{aligned}
$$

となります。整理すると、磁気流体の斜め衝撃波の圧縮率$$X$$が満たす方程式は

$$
\begin{align}
&(v_1^2 - v_{A1}^2 X)^2 \left[ C_{s1}^2 X + \frac{1}{2} \{ X(\gamma-1)-(\gamma+1) \} v_1^2 \cos^2 \theta \right] \notag \\
&+ \frac{1}{2} [\{\gamma + X(\gamma-2)\} v_1^2 - \{(\gamma +1) - X(\gamma-1)\} v_{A1}^2 X] v_1^2 v_{A1}^2 X \sin^2 \theta 
= 0 \tag{20}
\end{align}
$$

を満たし、さらに

$$
X = \frac{\rho_2}{\rho_1} 
= \frac{v_{1x}}{v_{2x}}, \quad \frac{B_{2y}}{B_{1y}} 
= \frac{v_1^2 - v_{A_1}^2}{v_1^2 - v_{A1}^2 X} X , \quad \frac{P_2}{P_1} 
= X + \frac{\gamma-1}{2 C_{s1}^2} v_1^2 \left( 1 - \frac{v_2^2}{v_1^2}\right) X \tag{21}
$$

などを満たします。

## Fast shock と slow shock

衝撃波なので$$X > 1$$、すなわち衝撃波面を通過後に流体が圧縮されいる場合を考えましょう。すると$$v_{2x}<v_{1x}$$より、(21)式から$$P_2/P_1>1$$も成り立ちます。これより

$$
\frac{B_{2y}}{B_{1y}} 
= \frac{v_1^2 - v_{A1}^2}{v_1^2 - v_{A1}^2 X} X 
$$

から、以下の2種類の衝撃波が考えられることがわかります。

* $$v_{A1}^2 X > v_{A1}^2 > v_1^2$$のとき、上式から$$B_{2y}/B_{1y}<1$$となります。すなわち衝撃波面に平行な方向の磁場成分が小さくなります。これをslow shockと呼びます。
* $$v_1^2 > v_{A1}^2 X > v_{A1}^2$$のとき、上式から$$B_{2y}/B_{1y}>1$$となります。すなわち衝撃波面に平行な方向の磁場成分が大きくなります。これをfast shockと呼びます。

もう少し定量的に考えてみましょう。(20)式において簡単のため等温($$\gamma = 1$$)、そして$$X \rightarrow 1$$の極限で考えると

$$
\begin{aligned}
&(v_1^2 - v_{A1}^2) (C_{s1}^2 - v_1^2 \cos^2 \theta) - v_1^2 v_{A1}^4 \sin^2 \theta 
= 0 \\
&\underbrace{\Longrightarrow}_{\times \cos^2 \theta} \ (v_1^2 - v_{A1}^2) \{ v_{1x}^4  - (C_{s1}^2 + v_{A1}^2) v_{1x}^2 + C_s^2 v_{A1}^2 \cos^2 \theta \} 
= 0
\end{aligned}
$$

のようになります。途中$$v_{1x} = v_1 \cos \theta$$を用いました。するとこの解としては

* $$v_1 = v_{A1}$$の解: [アルヴェーン波](/mhd/alfven_wave)
* $$v_{1x}^4  - (C_{s1}^2 + v_{A1}^2) v_{1x}^2 + C_s^2 v_{A1}^2 \cos^2 \theta=0$$の解: [速い磁気音波と遅い磁気音波](/mhd/magneto_acoustic)

の3つが存在することがわかります。これと[垂直磁気流体衝撃波](/mhd/mhd_shock_perp)からの類推より、fast shockは$$v_1$$が速い磁気音波の位相速度を超えたときに発生し、slowcshockは$$v_1$$が遅い磁気音波の位相速度を超えたときに発生すると考えられます。

```
ここの厳密な証明の仕方がわかりません...(20)式の3次方程式を解く必要あり？
```

Fast shockは[垂直磁気流体衝撃波](/mhd/mhd_shock_perp)と同様に、衝撃波面の下流の$$y$$方向磁場は圧縮により強まります($$B_{2y}>B_{1y})$$。(8)式から磁場の$$x$$成分は変わらないため、磁場の向きが下左図のように変化します。今、流体の速度と磁場が平行な系で物事を考えているため、同時に$$y$$方向の速度も大きくなります($$v_{2y}>v_{1y}$$)。  
逆にslow shockは、衝撃波面の下流の$$y$$方向の磁場は弱くなります($$B_{2y}<B_{1y}$$)。よって磁場の向きは下右図のように変化します。同時に$$y$$方向の速度も小さくなります($$v_{2y}<v_{1y}$$)。

![](/assets/images/mhd/mhd_shock_oblique_002.png)

$$v_1 = v_{A1}$$の解が表す衝撃波(fast shockとslow shockの中間のため、中間衝撃波とも呼ばれることがあります)の詳細な議論は、後ほど行います。

## 不連続面

ここでは$$B_x \rightarrow 0$$の極限を考えましょう。先程の図からわかるように、fast shockは[垂直磁気流体衝撃波](/mhd/mhd_shock_perp)に近づきます。一方、slow shockは$$v_{1x}=v_{2x}=B_{1x}=B_{2x}=0$$から、波面を挟んで$$v_y, B_y$$の値が異なるだけの不連続面となります。このとき

$$
P_1 + \frac{1}{8\pi} B_{1y}^2 
= P_2 + \frac{1}{8\pi} B_{2y}^2 
$$

のような圧力平衡さえ成り立っていれば良く、$$v_y, B_y$$は任意の値を取ります。  
そして$$B_{1x} = B_{2x} \neq 0$$で、流れのない$$v_{1x} = v_{2x} = 0$$のような場合を考えましょう。速度・磁場・圧力は連続ですが、密度と温度は不連続でも構わないような接触不連続面(constact or entropy discontinuity)が考えられます。

## スイッチオフ衝撃波

$$v_1 \rightarrow v_{A1}$$の極限で発生する磁気流体斜め衝撃波について考えましょう。$$X \neq 1$$と(16)式

$$
\frac{B_{2y}}{B_{1y}} = \frac{v_1^2 - v_{A1}^2 }{v_1^2 - v_{A1}^2 X} X
$$

から、$$B_{1y} \neq 0$$であっても、$$B_{2y}=0$$となるような衝撃波の存在が示唆されます。下図のように磁場の$$y$$方向が消える(スイッチがオフになる)ことから、これをスイッチオフ衝撃波(switch-off shocks)と呼びます。
今、考えている極限から、この衝撃波は$$v_{1x} = v_{A1, x} = \sqrt{B_{1x}^2 / 4\pi \rho_1}$$の[アルヴェーン速度](/mhd/alfven_wave)で伝播していくことがわかります。  
このスウィッチオフ衝撃波の性質をより定量的に議論をするために、(20)式において$$v_1 = v_{A1}, X \neq 1$$として整理をしていきましょう。

$$
v_{A1}^4 (1-X)^2 \left[ C_{s1}^2 + \frac{1}{2} \{X(\gamma-1) - (\gamma+1)\} v_{A1}^2 \cos^2 \theta\right] 
+ \frac{1}{2} [\{ \gamma + X(\gamma-2)\} v_{A1}^2 - \{(\gamma+1) - X(\gamma-1)\} X v_{A1}^2] v_{A1}^4 X \sin^2 \theta = 0
$$

両辺に$$2/v_{A1}^6$$をかけます。このとき、$$A \equiv C_{s1}^2 / v_{A1}^2$$と置いて式変形をしましょう。すると

$$
(1-X)^2 [2 XA + \{ X(\gamma-1) - (\gamma+1) \}\cos^2 \theta] + \{ \gamma(1-X)^2 + X (1-X)\} X \sin^2 \theta = 0
$$

となります。今、$$X \neq 1$$を考えているので、両辺を$$1-X$$で割り、計算を進めると

$$
f(X) 
\equiv (2A + \gamma -1) X^2 - \{ 2A + \gamma(1+\cos^2 \theta) \} X + (\gamma+1) \cos^2 \theta 
= 0 \tag{22}
$$

$$(2A+\gamma -1)$$は$$A = C_{s1}^2 / v_{A1}^2 > 0, \gamma > 1$$より、常に正です。よって$$f(X)$$は下に凸の2次関数であると分かります。$$f(X) = 0$$の解は

$$
X = \frac{2A + \gamma(1+\cos^2 \theta) \pm \sqrt{\{ 2A + \gamma (1+\cos^2 \theta)\}^2 - 4 (2A + \gamma-1) (\gamma+1) \cos^2 \theta}}{2 (2A + \gamma -1)}
$$

です。一般解

## スイッチオン衝撃波

## 中間衝撃波

# 参考文献

[1] Priest, "Solar Magnetohydrodynamics"  
[2] [草野完也, "宇宙における高速流と衝撃波研究の最前線, 太陽フレアにおける高速流とスローショック"](http://www.jspf.or.jp/Journal/PDF_JSPF/jspf2007_04/jspf2007_04-372.pdf)

{% include adsense.html %} 
