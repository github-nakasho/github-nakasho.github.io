---
layout: default
title: 3次元極座標系での運動量保存
parent: 宇宙磁気流体力学
math: mathjax3
permalink: /mhd/momentum_sph
nav_order: 15
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

# 3次元曲座標での磁気流体の運動量保存

## 運動量保存と一般座標における表示

[磁気流体の運動方程式を運動量保存則](/mhd/momentum)は

$$
\frac{\partial}{\partial t} (\rho v^i) + \nabla_j \left\{ \left( P + \frac{1}{8\pi} B^2 \right) \delta^{j}_i + \rho v^i v^j - \frac{1}{4\pi} B^i B^j \right\} 
= F^i \tag{1}
$$

のように書かれました。ここで$$v^i, B^i$$はそれぞれ流体の速度と磁場の$$i$$成分、$$\rho, P$$は質量密度と圧力、そして右辺の$$F^i$$は外力の$$i$$成分です。左辺第2項は運動量流束テンソル(momentum flux tensor)で

$$
\pi^{ij} 
\equiv \underbrace{\left( P + \frac{1}{8\pi} B^2 \right)}_{\equiv P_\mathrm{gm}} \delta_i^j + \rho v^i v^j - \frac{1}{4\pi} B^i B^j \tag{2}
$$

です。(1)式を3次元極座標系で具体的にどのように書かれるのかを考えましょう。そのためには(1)式をより一般的に、[共変微分](/gr/derivative)$$\nabla_\mu$$とエネルギー運動量テンソル$$T^{\mu \nu}$$を用いて

$$
\nabla_\mu T^{i\mu} 
= \nabla_0 T^{i0} + \nabla_j \pi^{ij} 
= F^i \tag{3}
$$

のように書きます。つまり一般座標変換に対して、一般相対論で学んだ共変な形で表現するのです。円筒座標系では$$T^{i0}$$は

$$
T^{i0} 
= (\rho \dot{r}, \rho \dot{\theta}, \rho \dot{\varphi}) 
= (\rho v_R, \rho \frac{v_\theta}{r}, \rho \frac{v_\varphi}{r \sin \theta}) \tag{4}
$$

となります。$$\pi^{ij}$$はエネルギー運動量テンソルの空間部分で、3次元デカルト座標系での具体的な成分は

$$
(\pi^{ij}) 
= \left( \begin{array}{ccc}
P_\mathrm{gm} + \rho v_x^2 - \frac{1}{4\pi} B_x^2 & \rho v_x v_y - \frac{1}{4\pi} B_x B_y & \rho v_x v_z - \frac{1}{4\pi} B_x B_z \\
\rho v_y v_x - \frac{1}{4\pi} B_y B_x & P_\mathrm{gm} + \rho v_y^2 - \frac{1}{4\pi} B_y^2 & \rho v_y v_z - \frac{1}{4\pi} B_y B_z \\
\rho v_z v_x - \frac{1}{4\pi} B_z B_x & \rho v_z v_y - \frac{1}{4\pi} B_z B_y & P_\mathrm{gm} + \rho v_z^2 - \frac{1}{4\pi} B_z^2 
\end{array} \right) 
\equiv \left( \begin{array}{ccc}
\pi^{xx} & \pi^{xy} & \pi^{xz} \\ 
\pi^{yx} & \pi^{yy} & \pi^{yz} \\ 
\pi^{zx} & \pi^{zy} & \pi^{zz} 
\end{array}\right)
\tag{5}
$$

のようになります。

## $$\pi^{ij}$$の変換

$$(x, y, z)$$デカルト座標系から$$(r, \theta, \varphi)$$極座標系に移ったときの$$(\pi^{ij})$$の成分を、同様に$$\pi^{rr}, \pi^{\theta \varphi}, \pi^{r \varphi}$$などのように書くことにします。  
デカルト座標で$$\mathbf{v} = (v_x, v_y, v_z), \mathbf{B} = (B_x, B_y, B_z)$$と記述されるベクトルを円筒座標系の成分に書き換えると

$$
\left\{ \begin{array}{l}
v_r = v_x \sin \theta \cos \varphi + v_y \sin \theta \sin \varphi + v_z \cos \theta \\
v_\theta = v_x \cos \theta \cos \varphi + v_y \cos \theta \sin \varphi - v_z \sin \theta \\
v_\varphi = - v_x \sin \varphi + v_y \cos \varphi 
\end{array} \right., \quad 
\left\{ \begin{array}{l}
B_r = B_x \sin \theta \cos \varphi + B_y \sin \theta \sin \varphi + B_z \cos \theta \\
B_\theta = B_x \cos \theta \sin \varphi + B_y \cos \theta \sin \varphi - B_z \sin \theta \\
B_\varphi = - B_x \sin \varphi + B_y \cos \varphi
\end{array} \right. \tag{6}
$$

のようになります。  
極座標での$$\pi^{ij}$$を求める前に以下の量を計算しておきましょう。$$(x, y, z)$$と$$(r, \theta, \varphi)$$との間には

$$
\left\{ \begin{array}{l}
x = r \sin \theta \cos \varphi \\
y = r \sin \theta \sin \varphi \\
z = r \cos \theta
\end{array} \right. \ \Longrightarrow \
\left\{ \begin{array}{l}
x^2 + y^2 + z^2 = r^2 \\
\tan^2 \theta = \frac{x^2 + y^2}{z^2} \\
\tan \varphi = \frac{y}{x}
\end{array} \right. \tag{7}
$$

のような関係があります。これより

$$
2 x 
= 2r \frac{\partial r}{\partial x} \ \Longrightarrow \ 
\frac{\partial r}{\partial x} 
= \frac{x}{r} 
= \sin \theta \cos \varphi \tag{8}
$$

$$
2 y 
= 2r \frac{\partial r}{\partial y} \ \Longrightarrow \ 
\frac{\partial r}{\partial y} 
= \frac{y}{r} 
= \sin \theta \sin \varphi \tag{9}
$$

$$
2 z 
= 2r \frac{\partial r}{\partial z} \ \Longrightarrow \ 
\frac{\partial r}{\partial z} 
= \frac{z}{r} 
= \cos \theta \tag{10}
$$

$$
\frac{2 \tan \theta}{\cos^2 \theta} \frac{\partial \theta}{\partial x} 
= \frac{2x}{z^2} \ \Longrightarrow \ 
\frac{\partial \theta}{\partial x} 
= \frac{\cos \theta \cos \varphi}{r} \tag{11}
$$

$$
\frac{2 \tan \theta}{\cos^2 \theta} \frac{\partial \theta}{\partial y} 
= \frac{2y}{z^2} \ \Longrightarrow \
\frac{\partial \theta}{\partial y} 
= \frac{\cos \theta \sin \varphi}{r} \tag{12}
$$

$$
\frac{2 \tan \theta}{\cos^2 \theta} \frac{\partial \theta}{\partial z} 
= - 2 \frac{x^2 + y^2}{z^2} \frac{1}{z} 
= - 2 \tan^2 \theta \frac{1}{r \cos \theta} \ \Longrightarrow \ 
\frac{\partial \theta}{\partial z} 
= - \frac{\sin \theta}{r} \tag{13}
$$

$$
\frac{1}{\cos^2 \varphi} \frac{\partial \varphi}{\partial x} 
= - \frac{y}{x^2} 
= - \frac{r \sin \theta \sin \varphi}{r^2 \sin^2 \theta \cos^2 \varphi} \ \Longrightarrow \ 
\frac{\partial \varphi}{\partial x} 
= - \frac{\sin \varphi}{r \sin \theta} \tag{14}
$$

$$
\frac{1}{\cos^2 \varphi} \frac{\partial \varphi}{\partial y} 
= \frac{1}{x} 
= \frac{1}{r \sin \theta \cos \varphi} \ \Longrightarrow \ 
\frac{\partial \varphi}{\partial y} 
= \frac{\cos \varphi}{r \sin \theta} \tag{15}
$$

$$
\frac{\partial \varphi}{\partial z} 
= 0 \tag{16}
$$

これらを用いて具体的に$$\pi$$の$$(r, \theta, \varphi)$$での形を求めていきましょう。2階のテンソルの成分の変換則は

$$
\pi^{i'j'} 
= \frac{\partial x^{i'}}{\partial x^k} \frac{\partial x^{j'}}{\partial x^\ell} \pi^{k \ell} \tag{17}
$$

のように与えられるので

$$
\begin{align}
\pi^{rr} 
&= \frac{\partial r}{\partial x} \frac{\partial r}{\partial x} \pi^{xx} + \frac{\partial r}{\partial x} \frac{\partial r}{\partial y} \pi^{xy} + \frac{\partial r}{\partial x} \frac{\partial r}{\partial z} \pi^{xz} + \frac{\partial r}{\partial y} \frac{\partial r}{\partial x} \pi^{yx} + \frac{\partial r}{\partial y} \frac{\partial r}{\partial y} \pi^{yy} \notag \\
& \qquad + \frac{\partial r}{\partial y} \frac{\partial r}{\partial z} \pi^{yz} + \frac{\partial r}{\partial z} \frac{\partial r}{\partial x} \pi^{zx} + \frac{\partial r}{\partial z} \frac{\partial r}{\partial y} \pi^{zy} + \frac{\partial r}{\partial z} \frac{\partial r}{\partial z} \pi^{zz} \notag \\
&= P_\mathrm{gm} + \rho v_r^2 - \frac{1}{4\pi} B_r^2 \tag{18}
\end{align}
$$

$$
\begin{align}
\pi^{r \theta} 
&= \frac{\partial r}{\partial x} \frac{\partial \theta}{\partial x} \pi^{xx} + \frac{\partial r}{\partial x} \frac{\partial \theta}{\partial y} \pi^{xy} + \frac{\partial r}{\partial x} \frac{\partial \theta}{\partial z} \pi^{xz} + \frac{\partial r}{\partial y} \frac{\partial \theta}{\partial x} \pi^{yx} + \frac{\partial r}{\partial y} \frac{\partial \theta}{\partial y} \pi^{yy} \notag \\
& \qquad + \frac{\partial r}{\partial y} \frac{\partial \theta}{\partial z} \pi^{yz} + \frac{\partial r}{\partial z} \frac{\partial \theta}{\partial x} \pi^{zx} + \frac{\partial r}{\partial z} \frac{\partial \theta}{\partial y} \pi^{zy} + \frac{\partial r}{\partial z} \frac{\partial \theta}{\partial z} \pi^{zz} \notag \\
&= \frac{1}{r} \left( \rho v_r v_\theta - \frac{1}{4\pi} B_r B_\theta \right) \tag{19}
\end{align}
$$

同様に計算を進めると

$$
\pi^{r\varphi} 
= \frac{1}{r \sin \theta} \left( \rho v_r v_\varphi - \frac{1}{4\pi} B_r B_\varphi \right) \tag{20}
$$

$$
\pi^{\theta \theta} 
= \frac{1}{r^2} \left( P_\mathrm{gm} + \rho v_\theta^2 - \frac{1}{4\pi} B_\theta \right) \tag{21}
$$

$$
\pi^{\theta \varphi} 
= \frac{1}{r^2 \sin \theta} \left( \rho v_\theta v_\varphi - \frac{1}{4\pi} B_\theta B_\varphi \right) \tag{22}
$$

$$
\pi^{\varphi \varphi} 
= \frac{1}{r^2 \sin^2 \theta} \left( P_\mathrm{gm} + \rho v_\varphi^2 - \frac{1}{4\pi} B_\varphi^2 \right) \tag{23}
$$


と求まります。以上をまとめて

$$
\begin{align}
(\pi^{ij}) 
&= \left( \begin{array}{ccc}
\pi^{rr} & \pi^{r\theta} & \pi^{r \varphi} \\
\pi^{\theta r} & \pi^{\theta \theta} & \pi^{\theta \varphi} \\
\pi^{\varphi r} & \pi^{\varphi \theta} & \pi^{\varphi \varphi}
\end{array}\right) \notag \\
&= \left( \begin{array}{ccc}
P_\mathrm{gm} + \rho v_r^2 - \frac{1}{4\pi} B_r^2 & \frac{1}{r} \left( \rho v_r v_\theta - \frac{1}{4\pi} B_r B_\theta \right) & \frac{1}{r \sin \theta} \left( v_r v_\varphi - \frac{1}{4\pi} B_r B_\varphi \right) \\
\frac{1}{r} \left( \rho v_\theta v_r - \frac{1}{4\pi} B_\theta B_r \right) & \frac{1}{r^2} \left( P_\mathrm{gm} + \rho v_\theta^2 - \frac{1}{4\pi} B_\theta^2 \right) & \frac{1}{r^2 \sin\theta} \left( \rho v_\theta v_\varphi - \frac{1}{4\pi} B_\theta B_\varphi \right) \\
\frac{1}{r \sin \theta} \left( \rho v_\varphi v_r - \frac{1}{4\pi} B_\varphi B_r \right) & \frac{1}{r^2 \sin \theta} \left( \rho v_\varphi v_\theta - \frac{1}{4\pi} B_\varphi B_\theta \right) & \frac{1}{r^2 \sin^2 \theta} \left( P_\mathrm{gm} + \rho v_\varphi^2 - \frac{1}{4\pi} B_\varphi^2 \right)
\end{array} \right) \tag{24}
\end{align}
$$

{% include adsense.html %} 

## テンソルの発散

(24)式を(3)式に代入して具体的に計算します。このとき、(3)式の$$\nabla_j \pi^{ij}$$部分はただの発散ではなく、テンソルの発散です。よってこの部分はちゃんと[テンソルの共変微分](/gr/tensor)を考える必要があります。よって、正しくは

$$
\nabla_0 T^{i0} + \nabla_j \pi^{ij} 
= \frac{\partial}{\partial t} T^{i0} + \partial_j \pi^{ij} + \Gamma^i_{\ell j} \pi^{\ell j} + \Gamma^j_{\ell j} \pi^{i\ell} 
= F^i \tag{25}
$$

を計算します。

```
第1項の共変微分をただの時間偏微分にしたのは、今の場合には座標基底が時間に依存しないためです。これは具体的にクリストッフェル記号を計算することでも確かめられます。  
結局、時間に関係する添字を持つクリストッフェル記号は全て0となります。
```

クリストッフェル記号は

$$
\Gamma^i_{jk} 
= \frac{1}{2} g^{i\ell} (g_{\ell j, k} + g_{\ell k, j} - g_{jk, \ell}) 
$$

です。そして極座標系のメトリックテンソルの成分は

$$
g_{rr} 
= 1, \quad g_{\theta \theta} 
= r^2, \quad g_{\varphi \varphi} 
= r^2 \sin^2 \theta, \quad 
g^{rr} 
= 1, \quad g^{\theta \theta} 
= \frac{1}{r^2}, \quad g^{\varphi \varphi} 
= \frac{1}{r^2 \sin^2 \theta}
$$

です。これ以外は0です。またその成分の微分は

$$
g_{\theta \theta, r} 
= 2r
$$

$$
g_{\varphi \varphi, r} 
= 2r \sin^2 \theta
$$

$$
g_{\varphi \varphi, \theta} 
= 2r^2 \sin \theta \cos \theta 
$$

以外は0であることもわかります。これらより

$$
\Gamma^r_{\theta \theta} 
= \frac{1}{2} g^{r \ell} (g_{\ell \theta, \theta} + g_{\ell \theta, \theta} - g_{\theta \theta, \ell}) 
\underbrace{=}_{\ell = rのみ} -r \tag{26}
$$

$$
\Gamma^r_{\varphi \varphi} 
= \frac{1}{2} g^{r \ell} (g_{\ell \varphi, \varphi} + g_{\ell \varphi, \varphi} - g_{\varphi \varphi, \ell}) 
\underbrace{=}_{\ell = rのみ} -r \sin^2 \theta \tag{27} 
$$

$$
\Gamma^{\theta}_{r \theta}
= \frac{1}{2} g^{\theta \ell} (g_{\ell r, \theta} + g_{\ell \theta, r} - g_{r \theta, \ell}) 
\underbrace{=}_{\ell = \theta のみ} \frac{1}{r} \tag{28}
$$

$$
\Gamma^\theta_{\theta r} 
= \Gamma^\theta_{r \theta} 
= \frac{1}{r} \tag{29}
$$

$$
\Gamma^\theta_{\varphi \varphi} 
= \frac{1}{2} g^{\theta \ell} (g_{\ell \varphi, \varphi} + g_{\ell \varphi, \varphi} - g_{\varphi \varphi, \ell}) 
\underbrace{=}_{\ell = \theta のみ} - \sin \theta \cos \theta \tag{30}
$$

$$
\Gamma^\varphi_{r \varphi} 
= \frac{1}{2} g^{\varphi \ell} (g_{\ell r, \varphi} + g_{\ell \varphi, r} - g_{r \varphi, \ell}) 
\underbrace{=}_{\ell = \varphi のみ} \frac{1}{r} \tag{31}  
$$

$$
\Gamma^\varphi_{\varphi r} 
= \Gamma^{\varphi}_{r \varphi} 
= \frac{1}{r} \tag{32}
$$

$$
\Gamma^\varphi_{\theta \varphi} 
= \frac{1}{2} g^{\varphi \ell} (g_{\ell \theta, \varphi} + g_{\ell \varphi, \theta} - g_{\theta \varphi, \ell})
\underbrace{=}_{\ell = \varphi のみ} \frac{\cos \theta}{\sin \theta} \tag{33} 
$$

$$
\Gamma^\varphi_{\varphi \theta} 
= \Gamma^\varphi_{\theta \varphi} 
= \frac{\cos \theta}{\sin \theta} \tag{34}
$$

これ以外の添字の組合せを持つクリトッフェル記号は全て0です。

(4), (24)-(34)式を用いて、最終的な3次元極座標系での運動量保存を導きましょう。まずは$$r$$成分です。

$$
\begin{align}
& \frac{\partial}{\partial t} (\rho v_r) + \partial_j \pi^{rj} + \Gamma^r_{\ell j} \pi^{\ell j} + \Gamma^j_{\ell j} \pi^{r \ell} \notag \\
&= \frac{\partial}{\partial t} (\rho v_r) + \partial_r \pi^{rr} + \partial_\theta \pi^{r\theta} + \partial_\varphi \pi^{r \varphi} -r \pi^{\theta \theta} - r\sin^2 \theta \pi^{\varphi \varphi} + \frac{1}{r} \pi^{rr} + \frac{1}{r} \pi^{rr} + \frac{\cos \theta}{\sin \theta} \pi^{r \theta} \notag \\
&= \frac{\partial}{\partial t} (\rho v_r) + \frac{1}{r^2} \frac{\partial}{\partial r} \left\{ r^2 \left( P_\mathrm{gm} + \rho v_r^2 - \frac{1}{4\pi} B_r^2 \right) \right\} + \frac{1}{r \sin \theta} \frac{\partial}{\partial \theta} \left\{ \sin \theta \left( \rho v_r v_\theta - \frac{1}{4\pi} B_r B_\theta \right) \right\} \notag \\
& \qquad + \frac{1}{r \sin \theta} \frac{\partial}{\partial \varphi} \left( \rho v_r v_\varphi - \frac{1}{4\pi} B_r B_\varphi \right) - \frac{1}{r} \left\{ 2 P_\mathrm{gm} + \rho (v_\theta^2 + v_\varphi^2) - \frac{1}{4\pi} (B_\theta^2 + B_\varphi^2) \right\} \tag{35}
\end{align} 
$$

続いて$$\theta$$成分です。

$$
\begin{align}
&\frac{\partial}{\partial t} \left( \rho \frac{v_\theta}{r} \right) + \partial_j \pi^{\theta j} + \Gamma^\theta_{\ell j} \pi^{\ell j} + \Gamma^j_{\ell j} \pi^{\theta \ell} \notag \\
&= \frac{1}{r} \frac{\partial}{\partial t} (\rho v_\theta) + \partial_r \pi^{\theta r} + \partial_\theta \pi^{\theta \theta} + \partial_z \pi^{\theta z} + \frac{1}{r} \pi^{r \theta} + \frac{1}{r} \pi^{\theta r} + \frac{1}{r} \pi^{\theta r} - \sin \theta \cos \theta \pi^{\varphi \varphi} + \frac{1}{r} \pi^{\theta r} + \frac{\cos \theta}{\sin \theta} \pi^{\theta \theta} \notag \\
&= \frac{1}{r} \frac{\partial}{\partial t} (\rho v_\theta) + \frac{1}{r} \frac{\partial}{\partial r} \left( \rho v_\theta v_r - \frac{1}{4\pi} B_\theta B_r\right) + \frac{1}{r^2 \sin \theta} \frac{\partial}{\partial \theta} \left\{ \sin \theta \left( P_\mathrm{gm} + \rho v_\theta^2 - \frac{1}{4\pi} B_\theta^2 \right) \right\} \notag \\
& \qquad + \frac{1}{r^2 \sin \theta} \frac{\partial}{\partial \varphi} \left( \rho v_\theta v_\varphi - \frac{1}{4\pi} B_\theta B_\varphi \right) + \frac{3}{r^2} \left( \rho v_\theta v_r - \frac{1}{4\pi} B_\theta B_r \right) - \frac{\cos \theta}{r^2 \sin \theta} \left( P_\mathrm{gm} + \rho v_\varphi^2 - \frac{1}{4\pi} B_\varphi^2 \right) \tag{36}
\end{align}
$$

最後に$$\varphi$$成分です。

$$
\begin{align}
&\frac{\partial}{\partial t} \left( \rho \frac{v_\varphi}{r \sin \theta} \right) + \partial_j \pi^{\varphi j} + \Gamma^\varphi_{\ell j} \pi^{\ell j} + \Gamma^j_{\ell j} \pi^{\varphi \ell} \notag \\
&= \frac{1}{r \sin \theta}\frac{\partial}{\partial t} (\rho v_\varphi) + \partial_R \pi^{\varphi R} + \partial_\theta \pi^{\varphi \varphi} + \partial_\varphi \pi^{\varphi \varphi} + \frac{1}{r} \pi^{r\varphi} + \frac{1}{r} \pi^{\varphi r} \notag \\
& \qquad + \frac{\cos \theta}{\sin \theta} \pi^{\varphi \theta} + \frac{\cos \theta}{\sin \theta} \pi^{\theta \varphi} + \frac{1}{r} \pi^{\varphi r} + \frac{1}{r} \pi^{\varphi r} + \frac{\cos \theta}{\sin \theta} \pi^{\varphi \theta} \notag \\
&= \frac{1}{r \sin \theta} \frac{\partial}{\partial t} (\rho v_\varphi) + \frac{\partial}{\partial r} \left\{ \frac{1}{r \sin \theta} \left( \rho v_\varphi v_r - \frac{1}{4\pi} B_\varphi B_r \right) \right\} + \frac{\partial}{\partial \theta} \left\{ \frac{1}{r^2 \sin \theta} \left( \rho v_\varphi v_\theta - \frac{1}{4\pi} B_\varphi B_\theta \right)\right\} \notag \\
& \qquad + \frac{\partial}{\partial \varphi} \left\{ \frac{1}{r^2 \sin^2 \theta} \left( P_\mathrm{gm} + \rho v_\varphi^2 - \frac{1}{4\pi} B_\varphi^2 \right)\right\} + \frac{4}{r^2 \sin \theta} \left( \rho v_\varphi v_r - \frac{1}{4\pi} B_\varphi B_r \right) \notag \\
& \qquad + \frac{3 \cos \theta}{r^2 \sin^2 \theta} \left( \rho v_\varphi v_\theta - \frac{1}{4\pi} B_\varphi B_\theta \right) \tag{37}
\end{align}
$$

## 保存系にする

グリッドを用いた(オイラー的な)磁気流体数値計算においては、グリッドに区切られたセル中心で物理量を定義します。隣のセルから入ってくる物理量を、受け取る側のセルは正しく受け取る必要があります。そのために基礎方程式を、$$\frac{\partial \rho}{\partial t} + \nabla \cdot (\rho \mathbf{v}) = 0$$のような保存系に近い形で書いておきましょう。3次元極座標系での発散は

$$
\nabla \cdot \mathbf{A} 
= \frac{1}{r^2} \frac{\partial}{\partial r} (r^2 A_r) + \frac{1}{r \sin \theta} \frac{\partial}{\partial \theta} (\sin \theta A_\theta) + \frac{1}{r \sin \theta} \frac{\partial A_\varphi}{\partial \varphi}
$$

です。これと(35)式より、$$r$$方向の運動量保存は

$$
\frac{\partial}{\partial t} (\rho v_r) + \nabla \cdot \left( \rho v_r \mathbf{v} - \frac{1}{4\pi} B_r \mathbf{B} + P_\mathrm{gm} \mathbf{e}_r \right) 
= \frac{1}{r} \left\{ 2P_\mathrm{gm} + \rho (v_\theta^2 + v_\varphi^2) - \frac{1}{4\pi} (B_\theta^2 + B_\varphi^2 ) \right\} + F_r \tag{38}
$$

となります。  
続いて(36)式から$$\theta$$方向の保存則をまとめましょう。[円筒座標系での運動量保存](/mhd/momentum_cyl)のときと同様に、$$L_\varphi = r \rho v_\theta$$の形にして式を整理します。

$$
\frac{1}{r^2} \frac{\partial}{\partial r} \left\{ r^2 \left( L_\varphi v_r - \frac{r}{4\pi} B_\theta B_r \right)\right\} 
= 3 \left( \rho v_\theta v_r - \frac{1}{4\pi} B_\theta B_r \right) + r \frac{\partial}{\partial r} \left( \rho v_\theta v_r - \frac{1}{4\pi} B_\theta B_r \right)
$$

より(36)式の全ての項に$$r^2$$をかけて

$$
\frac{\partial L_\varphi}{\partial t} + \nabla \cdot \left( L_\varphi \mathbf{v} - \frac{r}{4\pi} B_\theta \mathbf{B} + r P_\mathrm{gm} \mathbf{e}_\theta \right) 
= \cot \theta \left( P_\mathrm{gm} + \rho v_\varphi^2 - \frac{1}{4\pi} B_\varphi^2 \right) + r F_\theta \tag{39}
$$

のようになります。  
最後に(37)式から、$$\theta$$方向の保存則をまとめます。先程と同様に$$L_z = \rho v_\varphi r \sin \theta$$の式として整理することを目指します。全ての項に$$r \sin \theta$$をかけると

$$
\begin{aligned}
&\frac{\partial}{\partial t} \rho v_\varphi + r \frac{\partial}{\partial r} \left\{ \frac{1}{r} \left( \rho v_\varphi v_r - \frac{1}{4\pi} B_\varphi B_r\right) \right\} + \frac{\sin \theta}{r} \frac{\partial}{\partial \theta} \left\{ \frac{1}{\sin \theta} \left( \rho v_\varphi v_\theta - \frac{1}{4\pi} B_\varphi B_\theta \right)\right\} \notag \\
& \qquad + \frac{1}{r \sin \theta} \frac{\partial}{\partial \varphi} \left( P_\mathrm{gm} + \rho v_\varphi^2 - \frac{1}{4\pi} B_\varphi^2 \right) + \frac{4}{r} \left( \rho v_\varphi v_r - \frac{1}{4\pi} B_\varphi B_r \right) + \frac{3 \cos \theta}{r \sin \theta} \left( \rho v_\varphi v_\theta - \frac{1}{4\pi} B_\varphi B_\theta \right) \notag \\
& = F_\varphi
\end{aligned}
$$

左辺第3項と最後の項より

$$
\frac{\sin \theta}{r} \frac{\partial}{\partial \theta} \left\{ \frac{1}{\sin \theta} \left( \rho v_\varphi v_\theta - \frac{1}{4\pi} B_\varphi B_\theta \right)\right\} + \frac{3 \cos \theta}{r \sin \theta} \left( \rho v_\varphi v_\theta - \frac{1}{4\pi} B_\varphi B_\theta \right) 
= \frac{1}{r} \frac{\partial}{\partial \theta} \left( \rho v_\varphi v_\theta - \frac{1}{4\pi} B_\varphi B_\theta \right) + \frac{2 \cos \theta}{r \sin \theta} \left( \rho v_\varphi v_\theta - \frac{1}{4\pi} B_\varphi B_\theta \right)
$$

これにさらに$$r \sin \theta$$をかけて整理すると

$$
\frac{\sin \theta}{r} \frac{\partial}{\partial \theta} \left( r \rho v_\varphi v_\theta - \frac{r}{4\pi} B_\varphi B_\theta \right) + \frac{2 \sin \theta \cos \theta}{r \sin \theta} \left(r \rho v_\varphi v_\theta - \frac{r}{4\pi} B_\varphi B_\theta \right) 
= \frac{1}{r \sin \theta} \frac{\partial}{\partial \theta} \left\{ \sin \theta \left( r \rho v_\varphi v_\theta \sin \theta - \frac{r}{4\pi} B_\varphi B_\theta \sin \theta \right)\right\}
$$

のようになります。同様に左辺第2項と5項目は

$$
r \frac{\partial}{\partial r} \left\{ \frac{1}{r} \left( \rho v_\varphi v_r - \frac{1}{4\pi} B_\varphi B_r \right)\right\} + \frac{4}{r} \left( \rho v_\varphi v_r - \frac{1}{4\pi} B_\varphi B_r \right) 
= \frac{1}{r^3} \frac{\partial}{\partial r} \left\{ r^2 \left( \rho r v_\varphi v_r - \frac{r}{4\pi} B_\varphi B_r \right)\right\}
$$

以上から(37)式の両辺に$$r^2 \sin^2 \theta$$をかけて整理すると

$$
\frac{\partial L_z}{\partial t} + \nabla \cdot \left( L_z \mathbf{v} - \frac{r\sin \theta}{4\pi} B_\varphi \mathbf{B} + r \sin \theta P_\mathrm{gm} \mathbf{e}_\varphi \right) 
= r \sin \theta F_\varphi \tag{40}
$$

のようになります。

## 源泉項の意味

ここでは(39)式で発生した源泉項について考えましょう。下図のように、ある$$\varphi=一定$$の平面で考えます。

![](/assets/images/mhd/momentum_sph_001.png)

このときの遠心力は$$\rho v_\varphi^2 / r \sin \theta$$となります。この遠心力の$$\theta$$方向成分は$$\rho v_\varphi^2 \cot \theta / r$$となり、これに$$r$$をかけたものが(39)式の源泉項に一致します。

# 参考文献

[1] 富阪幸治, 花輪知幸, 牧野淳一郎, "シミュレーション天文学"  
[2] [Ohsuga, 2007, "Two-dimensional Radiation-hydrodynamic Model for Supercritical Disk Accretion Flows onto Neutron Stars"](https://academic.oup.com/pasj/article/59/5/1033/1429517)

{% include adsense.html %} 
