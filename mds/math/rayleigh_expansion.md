---
layout: default
title: レイリーの展開公式
parent: 数学
math: mathjax3
permalink: /math/rayleigh_expansion
nav_order: 18
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

# レイリー展開の公式

## ヘルムホルツ方程式の解の性質

関数$$f(r, \theta, \varphi)$$がヘルムホルツ方程式

$$
\nabla^2 f + k^2 f 
= 0 \tag{1}
$$

を満たすとします($$k \neq 0$$)。このとき、関数$$f$$が特殊関数を用いてどのように記述されるかを見てみましょう。  
[3次元極座標系でのラプラシアン](/math/laplacian)より

$$
\nabla^2 
= \frac{\partial^2}{\partial r^2} + \frac{2}{r} \frac{\partial }{\partial r} + \frac{1}{r^2 \sin \theta} \frac{\partial}{\partial \theta} \left( \sin \theta \frac{\partial}{\partial \theta}\right) + \frac{1}{r^2 \sin^2 \theta} \frac{\partial^2}{\partial \varphi^2} \tag{2}
$$ 

ここで関数$$f$$を$$f(r, \theta, \varphi) = R(r) Y(\theta, \varphi)$$のように変数分離します。すると(1), (2)式より

$$
Y \left( \frac{\partial^2 R}{\partial r^2} + \frac{2}{r} \frac{\partial R}{\partial r} \right) + k^2 R Y + R \left\{ \frac{1}{r^2 \sin \theta} \frac{\partial}{\partial \theta} \left( \sin \theta \frac{\partial Y}{\partial \theta} \right) + \frac{1}{r^2 \sin^2 \theta} \frac{\partial^2 Y}{\partial \varphi^2}\right\} 
= 0
$$

両辺に$$r^2 / (RY)$$をかけて整理します。

$$
\frac{r^2}{R} \left( \frac{\partial^2 R}{\partial r^2} + \frac{2}{r} \frac{\partial R}{\partial r} \right) + k^2 r^2 
= -\frac{1}{Y} \left\{ \frac{1}{\sin \theta} \frac{\partial}{\partial \theta} \left( \sin \theta \frac{\partial Y}{\partial \theta} \right) + \frac{1}{\sin^2 \theta} \frac{\partial^2 Y}{\partial \varphi^2}\right\} \tag{3}
$$

左辺は$$r$$のみの変数、右辺は$$\theta, \varphi$$のみの変数で構成されているので、これらは定数です。この定数を$$n(n+1)$$と置きましょう(詳細は適当な物理数学の教科書をご参照ください)。すると$$r$$だけから構成される左辺は

$$
\frac{r^2}{R} \left( \frac{\partial^2 R}{\partial r^2} + \frac{2}{r} \frac{\partial R}{\partial r} \right) + k^2 r^2 
= n (n+1)
$$

のようになります。ここで両辺に$$R / (k^2 r^2)$$をかけ、さらに$$r' = kr$$のように変数変換して式を整理すると

$$
\frac{1}{r'^2} \frac{d}{dr'} \left( r'^2 \frac{d R}{dr'} \right) + \left( 1- \frac{n(n+1)}{r'^2}\right) R 
= 0 \tag{4}
$$

のようになります。(4)式は[球ベッセル関数が満たす微分方程式(10)式](/math/sph_bessel)に一致するので$$R (kr)= j_n(kr)$$とわかります。  
言わずもがな、(3)式の$$\theta, \varphi$$のみで構成される右辺の部分は[球面調和関数が満たす微分方程式](/math/spherical)です。以上の議論から、ヘルムホルツ方程式(1)式の解は一般に

$$
f(r, \theta, \varphi) 
= \sum_{\ell=0}^\infty \sum_{m=-\ell}^\ell A_{\ell m} j_\ell (kr) Y_\ell^m (\theta, \varphi) \tag{5}
$$

と記述されることがわかります。ここで$$A_{\ell m}$$は展開係数です。

実は球ノイマン関数も(4)式も満たすので、これも含めなくてはいけません。今回は省略します。
{: .label .label-yellow }

## 公式の導出

$$f = e^{ikr \cos \theta}$$とすると

$$
\nabla^2 e^{ikr \cos \theta}
= \frac{\partial^2}{\partial r^2} e^{ikr \cos \theta} + \frac{2}{r} \frac{\partial}{\partial r} e^{ikr \cos \theta} + \frac{1}{r^2 \sin \theta} \frac{\partial}{\partial \theta} \left( \sin \theta \frac{\partial}{\partial \theta}\right) e^{ikr \cos \theta} 
= -k^2 e^{ikr \cos \theta}
$$

よりこの関数は(1)式を満たすので、これは(5)式のように記述できます。ただし$$f = e^{ikr \cos \theta}$$は$$\varphi$$に依存しないので、$$m \neq 0$$では$$A_{\ell m}=0$$でなければなりません。よって

$$
e^{ikr \cos \theta} 
= \sum_{\ell =0}^\infty A_{\ell 0} j_\ell (kr) Y_{\ell 0}
$$

$$m=0$$での[球面調和関数](/math/spherical)と[ルジャンドル陪多項式](/math/associated_legendre)より

$$
Y_{\ell 0} 
= \sqrt{\frac{2\ell + 1}{4\pi}} P_{\ell}^0 (\cos \theta) 
= \sqrt{\frac{2\ell + 1}{4\pi}} P_{\ell} (\cos \theta)
$$

より

$$
e^{ikr \cos \theta} 
= \sum_{\ell =0}^\infty A_{\ell} j_\ell (kr) P_\ell (\cos \theta) 
$$

係数$$A_\ell$$を求めるために、[ルジャンドル多項式の直交性(23)式](/math/legendre)を用います。

$$
\begin{align}
\int_{-1}^1 e^{ikr \cos \theta} P_m (\cos \theta) d \cos \theta 
&= \sum_{\ell=0}^\infty A_\ell j_\ell (kr) \int_{-1}^1 P_\ell (\cos \theta) P_m (\cos \theta) d \cos \theta 
= \sum_{\ell=0}^\infty A_\ell j_\ell (kr) \frac{2}{2\ell + 1} \delta_{\ell m} \notag\\
&= A_m j_m (kr) \frac{2}{2m+1} \tag{6}
\end{align}
$$

ここで[球ベッセル関数の定義式](/math/sph_bessel)より

$$
j_m (kr) 
= \frac{\sqrt{\pi}}{2} \sum_{n=0}^\infty \frac{(-1)^n}{\Gamma (m + n + 3/2) n!} \left( \frac{kr}{2}\right)^{m + n}
$$

ここで$$kr \rightarrow 0$$の極限を考えます。すると$$n=0$$以外の$$kr$$の高次の項を無視して

$$
j_m (kr) 
\simeq \frac{\sqrt{\pi}}{2} \frac{1}{\Gamma (m + 3/2)} \left( \frac{kr}{2}\right)^{m} 
= \frac{2^m m!}{(2m + 1)!} (kr)^m
$$

と記述されます。途中[半整数の階乗に関するガンマ関数の公式](/math/gamma)を用いました。　　
(6)式から係数$$A_\ell$$を求めるにあたり、(6)式において$$kr \rightarrow 0$$の極限をとった両辺に$$\frac{d^m}{d(kr)^m}$$を作用させたものを考えます。

$$
(右辺) 
= \frac{2 A_m}{2m + 1} \frac{d^m}{d(kr)^m} \left( \lim_{kr \rightarrow 0} j_m (kr) \right)
= \frac{2 A_m}{2m+1} \frac{2^m m!}{(2m+1)!} m!
$$

$$
(左辺)
= \lim_{kr \rightarrow 0} \frac{d^m}{d(kr)^m} \int_{-1}^1 e^{ikr \cos \theta} P_m (\cos \theta) d\cos \theta 
= \int_{-1}^1 (i \cos \theta)^m P_m (\cos \theta) d\cos \theta
$$

ここで[ルジャンドル多項式の直行性を示す途中で導かれた式(22)式](/math/legendre)より、$$x = \cos \theta$$と置くとこれは

$$
\int_{-1}^1 x^m P_m dx 
= \frac{2 \cdot m!}{(2m+1)!!} 
= \frac{2 \cdot m! 2m!!}{(2m+1)!} 
= \frac{2\cdot 2^m m! m!}{(2m+1)!}
$$

と求まります。これらより

$$
A_m = (2m+1) i^m 
$$

よって最終的に

$$
e^{ikr \cos \theta} 
= \sum_{\ell=0}^\infty i^\ell (2\ell + 1) j_\ell (kr) P_\ell (\cos \theta) \tag{7}
$$

という公式を得ます。これをレイリーの展開公式(Rayleigh's formula)と呼びます。これは波動関数をある角運動量$$\ell$$ごとに展開する方法(部分波展開)に用いられます。

# 参考文献

[1] 田島, 近藤, "改訂演習工科の数学4, 複素関数"  
[2] 中山, "裳華房フィジックスライブリー, 物理数学II"  
[3] 福山, 小形, "基礎物理学シリーズ3, 物理数学I"  
[4] 伊理 正夫, 藤野 和建, "数値計算の常識"  

{% include adsense.html %}
