---
layout: default
title: 球面調和関数
parent: 数学
math: mathjax3
permalink: /math/spherical
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

# Spherical harmonics (球面調和関数)

$$
\frac{1}{\sin \theta} \frac{\partial}{\partial \theta} \left( \sin \theta \frac{\partial Y(\theta, \varphi)}{\partial \theta} \right) + \frac{1}{\sin^2 \theta} \frac{\partial^2 Y(\theta, \varphi)}{\partial \varphi^2} + \ell (\ell+1) Y(\theta, \varphi) 
= 0 \tag{1}
$$

の解を$$Y(\theta \varphi) = \Theta (\theta) \Phi (\varphi) = \Theta e^{im\varphi}$$のように変数分離すると

$$
\frac{e^{im\varphi}}{\sin\theta} \frac{\partial}{\partial \theta} \left( \sin \theta \frac{\partial \Theta}{\partial \theta} \right) - \frac{\Theta}{\sin^2 \theta} m^2 e^{im\varphi} + \ell (\ell+1) \Theta e^{im\varphi} = 0 \ \Longrightarrow \ 
\frac{1}{\sin \theta} \frac{\partial}{\partial \theta} \left( \sin\theta \frac{\partial \Theta}{\partial \theta}\right) + \left\{ \ell (\ell+1) - \frac{m^2}{\sin^2 \theta}\right\} \Theta 
= 0
$$

となります。ここで$$x=\cos \theta, dx= -\sin \theta d\theta = - \sqrt{1-x^2}d\theta \quad (-1 \leq x \leq 1)$$と置くと

$$
\frac{d}{dx} \left\{ (1-x^2) \frac{d\Theta}{dx} \right\} + \left\{ \ell(\ell+1) - \frac{m^2}{1-x^2} \right\} \Theta 
= 0 \tag{2}
$$

これは[Legendre陪多項式](/math/associated_legendre)が満たす微分方程式と同じ形です。よって$$\Theta (\theta) = P_\ell^m (\cos \theta)$$です。$$Y(\theta, \varphi) \propto P_\ell^m (\cos \theta) e^{im\varphi}$$の規格直交性から係数を考えると

$$
\begin{align}
\int_0^{2\pi} d\varphi \int_0^\pi d\theta P_\ell^m e^{im\varphi} (P_{\ell'}^{m'} e^{im'\varphi})^\ast \sin \theta 
&= \int_0^{2\pi} e^{i(mm')\varphi} d\varphi \int_0^\pi P_\ell^m (\cos \theta) P_{\ell'}^{m'} (\cos \theta) \sin \theta d\theta \notag \\
&\underbrace{=}_{z = \cos \theta} 2\pi \delta_{m, m'} \int_{-1}^1 P_\ell^m (z) P_{\ell'}^{m'} (z) dz 
= \frac{(\ell+m)!}{(\ell-m)!} \frac{4\pi}{2\ell+1} \delta_{\ell \ell'} \tag{3} 
\end{align}
$$

よって(1)式の解を

$$
Y_\ell^m (\theta, \varphi) 
= (-1)^m \sqrt{\frac{2\ell + 1}{4\pi} \frac{(\ell-m)!}{(\ell+m)!}} P_\ell^m (\cos \theta) e^{im\varphi} \tag{4}
$$

と書くことにします。これを球面調和関数と呼びます。

教科書によって(-1)^mの有無があり、定義の仕方が違います。ご注意ください。
{: .label .label-yellow }

## 球面調和関数の対称性

球面調和関数のパリティ変換、すなわち位置ベクトル$$\mathbf{r} \rightarrow - \mathbf{r} \quad (\theta \rightarrow \pi - \theta, \varphi \rightarrow \varphi + \pi)$$に対するこの関数の変換性を考えましょう。

$$
\begin{align}
Y_\ell^m (\pi-\theta, \varphi+\pi) 
&= (-1)^m \sqrt{\frac{2\ell+1}{4\pi} \frac{(\ell-m)!}{(\ell+m)!}} \underbrace{P_\ell^m (\cos(\pi-\theta))}_{(-1)^{\ell+m} P_\ell^m(\cos \theta)} e^{im(\varphi+\pi)} \notag \\
&= (-1)^\ell (-1)^m \sqrt{\frac{2\ell+1}{4\pi} \frac{(\ell-m)!}{(\ell+m)!}} P_\ell^m (\cos \theta) e^{im \varphi}
= (-1)^m Y_\ell^m (\theta, \varphi) \tag{5}
\end{align}
$$

{% include adsense.html %}

## 球面調和関数の加法定理

$$\mathbf{x}=(\sin \theta \cos \varphi, \sin \theta \sin \varphi, \cos \theta), \mathbf{y}=(\sin \theta' \cos \varphi', \sin \theta' \sin \varphi', \cos \theta')$$のように、半径1の球面上の2点について、その内積を計算すると

$$
\mathbf{x} \cdot \mathbf{y} 
= \sin \theta \sin \theta' \cos(\varphi-\varphi') + \cos \theta \cos \theta' 
\equiv \cos \alpha \tag{6}
$$

のようになります。ここでこの$$\cos \alpha$$を用いたLegendre関数$$P_\ell$$を

$$
P_\ell (\cos \alpha) 
= \sum_{m=-\ell}^\ell b_m (\theta', \varphi') Y_\ell^m (\theta, \varphi) \tag{7}
$$

のように球面調和関数で展開します。このとき係数$$b_m$$に$$\theta', \varphi'$$の依存性を押し付けます。直交性より

$$
b_m (\theta', \varphi') 
= \int_0^\pi d\theta \int_0^{2\pi} d\varphi P_\ell (\cos \gamma) Y_\ell^m (\theta, \varphi)^\ast \sin \theta \tag{8}
$$

と求めることができます。ここで$$\gamma$$は適当な角度です。同様に

$$
Y_\ell^{m \ast} 
= \sum_{m'=-\ell}^\ell B_{mm'}Y_\ell^{m'} (\alpha, \beta) \tag{9}
$$

のように$$Y_\ell^{m\ast}$$を$$Y_\ell^{m'}(\alpha, \beta)$$で展開します。$$\beta$$も適当な角度です。やはり直交性から

$$
B_{mm'} 
= \int_{4\pi} Y_\ell^{m} (\theta, \varphi)^\ast Y_\ell^{m'}(\alpha, \beta)^\ast d\Omega_{\alpha, \beta} \tag{10}
$$

と書けます。特に$$m'=0$$のとき

$$
B_{m0} 
= \sqrt{\frac{2\ell+1}{4\pi}} \int_{4\pi} Y_\ell^m (\theta, \varphi)^\ast P_\ell^0 (\cos \alpha) d\Omega_{\alpha, \beta}
= \sqrt{\frac{2\ell+1}{4\pi}} \int_{4\pi} Y_\ell^m (\theta, \varphi)^\ast P_\ell (\cos \alpha) d\Omega_{\alpha, \beta} \tag{11}
$$

この立体角積分は$$\alpha, \beta$$で行うこととしていますが、全立体角積分なので、$$\theta, \varphi$$での全立体角の積分に変えても結果は同じでなければなりません。よって

$$
B_{m0} 
= \sqrt{\frac{2\ell+1}{4\pi}} \int_0^\pi d\theta \int_0^{2\pi} d\varphi Y_\ell^{m \ast} P_\ell (\cos \alpha) \sin \theta 
\underbrace{=}_{(8)} \sqrt{\frac{2\ell+1}{4\pi}} b_m (\theta', \varphi') \tag{12}
$$

[Legendre陪関数の元の定義](/math/associated_legendre)より

$$
P_n^m(z)
=(1-z^2)^{m/2} \frac{d^m P_n}{dz^m} \ \Longrightarrow \ 
P_n^m (1) 
= P_n^m(-1) 
= \delta_{m0} \tag{13}
$$

が成り立ちます。よって

$$
Y_\ell^m (0, \beta) 
= (-1)^m \sqrt{\frac{2\ell+1}{4\pi} \frac{(\ell-m)!}{(\ell+m)!}} \delta_{m0} e^{im\varphi} \tag{14}
$$

(9)式に$$\alpha=0$$を代入すると

$$
Y_\ell^m(\theta, \varphi)^\ast 
= \sum_{m'=-\ell}^\ell B_{mm'} (-1)^{m'} \sqrt{\frac{2\ell+1}{4\pi} \frac{(\ell-m')!}{(\ell+m')!}} \delta_{m' 0} e^{im'\varphi} 
= \sqrt{\frac{2\ell+1}{4\pi}} B_{m0} \tag{15}
$$

その定義から、$$\alpha$$は$$\mathbf{x}, \mathbf{y}$$のなす角度でした。よって$$\alpha=0$$は$$\theta=\theta', \varphi=\varphi'$$を意味します。

$$
Y_\ell^m (\theta', \varphi')^\ast 
= \sqrt{\frac{2\ell+1}{4\pi}} \underbrace{B_{m0}}_{(8)} 
= \frac{2\ell+1}{4\pi} b_m (\theta', \varphi') \tag{16}
$$

よって

$$
P_\ell (\cos \alpha) 
= P_\ell (\mathbf{x} \cdot \mathbf{y}) 
\underbrace{=}_{5} \frac{4\pi}{2\ell + 1} \sum_{m=-\ell}^\ell Y_\ell^m (\theta', \varphi')^\ast Y_\ell^m (\theta, \varphi) \tag{17}
$$

これは三角関数における加法定理$$\cos (\theta - \theta') = \cos \theta' \cos \theta + \sin \theta \sin \theta'$$を一般化したものと考えることができます。

## ウンゼルトの定理

(17)式において$$\mathbf{x} = \mathbf{y}$$とすると、$$P_\ell(\mathbf{x}\cdot \mathbf{y}) =P_\ell(1)=1$$より

$$
\sum_{m=-\ell}^\ell Y_\ell^m (\theta', \varphi')^\ast Y_\ell^m (\theta, \varphi) 
= \frac{2\ell+1}{4\pi} \tag{18}
$$

と求まります。これをUnsoldの定理と呼びます。これは三角関数における$$\cos^2 \theta + \sin^2 \theta=1$$を一般化したものと考えることができます。

## 参考文献

[1] [田島, 近道, "改訂 演習工科の数学4 複素関数"](https://amzn.to/405zY0w)  
[2] [中山, "裳華房フィジックスライブラリー 物理数学 II"](https://amzn.to/3GxeWRt)  
[3] [福山, 小形, "基礎物理学シリーズ3 物理数学 I"](https://amzn.to/3o5YUaz)  

{% include adsense.html %}