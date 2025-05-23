---
layout: default
title: ヘニエイ法
parent: 恒星物理学
math: mathjax3
permalink: /stellar/henyey
nav_order: 30
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

# 数値計算

恒星の構造を計算するとき、ガスの主要構成要素である水素とヘリウムが完全電離していると近似できる内部領域と、不完全電離状態となる可能性のある外側の部分とを分けて取り扱う手法がよく用いられます。
その境界は、さほど進化が進んでいない恒星では$$M_r /M = 0.97 - 0.98$$に設定されます。
境界での$$M_r$$の値を$$M_f$$と書くと、$$M_r > M_f$$ではそこに含まれる質量は恒星全体の数パーセントですが、温度は$$10^3-10^4$$Kから$$10^6$$Kまで変化し、密度は$$10^{-12} \mathrm{g/cm^3}$$から$$0.01-0.1 \mathrm{g/cm^3}$$まで大きく変化します。
またその領域では密度が小さいため、中心からの距離は星の半径の数十パーセント以上変化する場合が多くあります。
$$M_r > M_f$$の領域に対する微分方程式は多くの場合、表面からルンゲ・クッタ法により数値積分されます。
そして$$(L, R)$$に対する$$T(M_f), P(M_f)$$の値は、$$M_r \leq M_f$$に対する計算の境界条件として用いられます。  
一般的には$$M_r > M_f$$の領域では、エネルギーの発生は無視できるほど小さいとします。
そのため$$L_r = L$$として、エネルギー保存の式(7.2.4)は数値積分を行いません。
また、核融合反応による元素組成の変化は無いと考えられます。
この領域では密度が小さいため、対流が発生したときのエネルギー輸送の効率が良くありません。
そのため、そこで起きる対流に対しては混合距離モデルが適用され、温度勾配$$\nabla_\mathrm{T} = \nabla_\mathrm{conv}$$が求められます。
それに対し内部領域$$M_r < M_f$$で対流が起きた場合には、そこでのガス密度が大きく、対流によるエネルギー輸送効率は良くなります。
そのため、温度勾配は断熱的温度勾配に非常に近く、$$\nabla_\mathrm{T} = \min (\nabla_\mathrm{rad}, \nabla_\mathrm{ad})$$とされます。

## Henyey法による恒星の内部構造計算

恒星全体のほとんどの質量を含む内部領域では、微分方程式が差分方程式に変換され、ヘニエイ法 (Henyey method)と呼ばれる緩和法により解が求められます。
Henyey法による恒星内部の構造計算は、[Henyey et al. (1964)](1964ApJ...139..306H)により導入されました。
これを改良した亜種がたくさん研究されてきましたが、ここではその一つの方法の原理について見ていきましょう。  
微分方程式[(7.1.1)-(7.1.4)式](/stellar/model_computation#星の構造と進化を記述する微分方程式)を、中心の境界条件との関係をよくするために、次のように並べましょう。

$$
\begin{aligned}
\frac{dr}{dM_r} 
&= \frac{1}{4\pi r^2 \rho} \\
\frac{dL_r}{dM_r} 
&= \epsilon_\mathrm{n} - \epsilon_\nu - T \frac{S-S(M_r, t-\Delta t)}{\Delta t} \\
\frac{dP}{dM_r} 
&= - \frac{GM_r}{4\pi r^4} \\
\frac{dT}{dM_r} 
&= - \frac{GM_r T}{4\pi r^4 P} \min (\nabla_\mathrm{rad}, \nabla_\mathrm{ad})
\end{aligned} \tag{7.2.1}
$$

ここで$$S(M_r, t-\Delta t)$$は、前ステップの時間$$t-\Delta$$でのエントロピーの分布を表し、時間$$t$$に対する構造を計算するときにはすでに判明している量です。
これらの式をまとめて、次のように書くことにします。

$$
\frac{d y_i}{dx} 
= f_i(x, y_j) \quad (i, j = 1, 2, 3, 4) \tag{7.2.2}
$$

恒星中を$$N$$個の領域 $$(x^1, x^2, \dots, x^N)$$に分割し、上式を差分形にしましょう。
$$n=1, 2, \dots, N-1$$に対し

$$
\frac{y_i^{n+1}-y_i^n}{\Delta x^n} 
= \frac{1}{2} \left\{ f_i(x^n, y_j^n) + f_i(x^{n+1}, y_j^{n+1})\right\} \tag{7.2.3}
$$

のように表されます。
ここで$$\Delta x^n \equiv x^{n+1} - x^n$$です。
そして、内側と外側の境界条件をそれぞれ

$$
g_k(y_j^1) 
= 0 \quad (k=1, 2) \tag{7.2.4}
$$

$$
\ell_k (y_j^N) 
= 0 \quad (k=1, 2) \tag{7.2.5}
$$

と表すことにします。
今、$$y_i^n$$にある近似の値$$\bar{y}_i^n$$が与えられているとし、それに対する補正値$$\delta y_i^n$$を求めることを考えましょう。
すなわち

$$
y_i^n 
= \bar{y}_i^n + \delta y_i^n \tag{7.2.6}
$$

であり、$$\vert \delta y_i^n \vert \ll \vert \bar{y}_i^n \vert$$であると仮定します。
これを(7.2.3)式に代入し、$$\delta y_i^n$$に対して2次以上の項を無視すると、$$i = 1, 2, 3, 4$$そして$$n = 1, 2, \dots, N-1$$に対して

$$
\sum_{j=1}^4 \left( \frac{\Delta x^n}{2} \frac{\partial f_i^n}{\partial y_j^n} + \delta_{ij}\right) \delta y_j^n + \sum_{j=1}^4 \left( \frac{\Delta x^n}{2} \frac{\partial f_i^{n+1}}{\partial y_j^{n+1}} - \delta_{ij}\right) \delta y_j^{n+1} + d_i^n 
= 0 \tag{7.2.7}
$$

を得ます。
ここで$$\delta_{ij}$$はクロネッカーのデルタであり、さらに

$$
d_i^n 
= \frac{\Delta x^n}{2} \{f_i(x^n, \bar{y}_j^n) + f_i(x^{n+1}, \bar{y}_j^{n+1})\} - (\bar{y}_j^{n+1} - \bar{y}_j^n) \tag{7.2.8}
$$

です。
また、境界条件(7.2.4), (7.2.5)式からは

$$
\sum_{j=1}^4 \frac{\partial g_k}{\partial y_j^1} \delta y_j^1 + g_k 
= 0 \quad (k=1, 2) \tag{7.2.9}
$$

$$
\sum_{j=1}^4 \frac{\partial \ell_k}{\partial y_j^N} \delta y_j^N + \ell_k 
= 0 \quad (k=1, 2) \tag{7.2.10}
$$

が得られます。
こららの式が各領域での量とどのように関係しているかを、次の巨大な行列の形に表すことができます。

{% include adsense.html %} 

$$
\left( \begin{array}{cccccccccccccccc}
\ast & \ast & \ast & \ast &&&&&&&&&&&&&&&\\
\ast & \ast & \ast & \ast &&&&&&&&&&&&&&&\\
\circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare &&&&&&&&&&&&\\
\circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare &&&&&&&&&&&&\\
\circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare &&&&&&&&&&&&\\
\circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare &&&&&&&&&&&&\\
&&&& \circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare &&&&&&&&\\
&&&& \circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare &&&&&&&&\\
&&&& \circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare &&&&&&&&\\
&&&& \circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare &&&&&&&&\\
&&&&&&&&&&&&&& \ddots & \ddots &&&&& \\
&&&&&&&&&&&&&&& \ddots & \ddots &&&& \\
&&&&&&&&&&&&&&&&&&& \circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare &&&& \\
&&&&&&&&&&&&&&&&&&& \circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare &&&& \\
&&&&&&&&&&&&&&&&&&& \circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare &&&& \\
&&&&&&&&&&&&&&&&&&& \circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare &&&& \\
&&&&&&&&&&&&&&&&&&&&&&& \circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare \\
&&&&&&&&&&&&&&&&&&&&&&& \circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare \\
&&&&&&&&&&&&&&&&&&&&&&& \circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare \\
&&&&&&&&&&&&&&&&&&&&&&& \circ & \circ & \circ & \circ & \blacksquare & \blacksquare & \blacksquare & \blacksquare \\
&&&&&&&&&&&&&&&&&&&&&&&&&&& \times & \times & \times & \times \\
&&&&&&&&&&&&&&&&&&&&&&&&&&& \times & \times & \times & \times 
\end{array} \right) 
\left(  \begin{array}{c}
  \delta y_1^1 \\
  \delta y_2^1 \\
  \delta y_3^1 \\
  \delta y_4^1 \\
  \delta y_1^2 \\
  \delta y_2^2 \\
  \delta y_3^2 \\
  \delta y_4^2 \\
  \delta y_1^3 \\
  \delta y_2^3 \\
  \delta y_3^3 \\
  \delta y_4^3 \\
  \\
  \\
  \\
  \vdots \\
  \vdots \\
  \\
  \\
  \\
  \delta y_1^{N-2} \\
  \delta y_2^{N-2} \\
  \delta y_3^{N-2} \\
  \delta y_4^{N-2} \\
  \delta y_1^{N-1} \\
  \delta y_2^{N-1} \\
  \delta y_3^{N-1} \\
  \delta y_4^{N-1} \\
  \delta y_1^{N} \\
  \delta y_2^{N} \\
  \delta y_3^{N} \\
  \delta y_4^{N}
  \end{array} \right)
= \left( \begin{array}{c}
-g_1 \\
-g_2 \\
-d_1^1 \\
-d_2^1 \\
-d_3^1 \\
-d_4^1 \\
-d_1^2 \\
-d_2^2 \\
-d_3^2 \\
-d_4^2 \\
\\
\\
\\
\vdots \\
\vdots \\
\\
\\
\\
-d_1^{N-2} \\
-d_2^{N-2} \\
-d_3^{N-2} \\
-d_4^{N-2} \\
-d_1^{N-1} \\
-d_2^{N-1} \\
-d_3^{N-1} \\
-d_4^{N-1} \\
-\ell_1 \\
-\ell_2 
\end{array} \right)
$$

この巨大な行列において

$$
\ast
\equiv \frac{\partial g_k}{\partial y_j^1}, \circ 
\equiv \frac{\Delta x^n}{2} \frac{\partial f_i^n}{\partial y_j^n} + \delta_{ij}, \blacksquare
\equiv \frac{\Delta x^n}{2} \frac{\partial f_i^{n+1}}{\partial y_j^{n+1}} - \delta_{ij}, \times
\equiv \frac{\partial \ell_k}{\partial y_j^N} 
$$

などとしました。
この巨大な係数行列をヘニエイ行列 (Henyey matrix) $$H$$と呼ぶこともあります。  
2つの内側の境界条件と$$n=1$$に対する最初の2つの差分方程式のみを書き出してみましょう。

$$
\sum_{j=1}^4 \frac{\partial g_1}{\partial y_j^1} \delta_j^1 + g_1
= 0 \tag{7.2.11}
$$

$$
\sum_{j=1}^4 \frac{\partial g_2}{\partial y_j^1} \delta_j^1 + g_2
= 0 \tag{7.2.12}
$$

$$
\sum_{j=1}^4 \left( \frac{\Delta x^1}{2} \frac{\partial f_1^1}{\partial y_j^1} + \delta_{1j}\right) \delta y_j^1 + \sum_{j=1}^4 \left( \frac{\Delta x^1}{2} \frac{\partial f_1^2}{\partial y_j^2} - \delta_{1j}\right) \delta y_j^2 + d_1^1 
= 0 \tag{7.2.13}
$$

$$
\sum_{j=1}^4 \left( \frac{\Delta x^1}{2} \frac{\partial f_2^1}{\partial y_j^1} + \delta_{2j}\right) \delta y_j^1 + \sum_{j=1}^4 \left( \frac{\Delta x^1}{2} \frac{\partial f_2^2}{\partial y_j^2} - \delta_{2j}\right) \delta y_j^2 + d_2^1 
= 0 \tag{7.2.14}
$$

を1つのグループにして

$$
\sum_{j=1}^4 A_{ij} \delta_j^1 + \sum_{j=1}^4 B_{ij} \delta_j^2 
= c_i \quad または \quad
\boldsymbol{A} \delta \boldsymbol{y}^1 + \boldsymbol{B} \delta \boldsymbol{y}^2 
= \boldsymbol{c} \tag{7.2.15}
$$

のように表すことができます。
ここで$$\mathbf{y} = (y_1, y_2, y_3, y_4)^t$$です。
以下、太字の大文字は行列、太字の小文字はベクトルを表すものとします。
この式を変形すると

$$
\delta \boldsymbol{y}^1 
= \boldsymbol{A}^{-1} (\boldsymbol{c} - \boldsymbol{B} \delta \boldsymbol{y}^2) \tag{7.2.16}
$$

のようになります。
一般の領域$$n$$に対して

$$
\delta \boldsymbol{y}^n 
=\boldsymbol{\Gamma}^n \delta \mathbf{y}^{n+1} + \boldsymbol{\gamma}^n \tag{7.2.17} 
$$

の関係があるとすると、(7.2.16)式は

$$
\boldsymbol{\Gamma}^1 
= - \boldsymbol{A}^{-1} \boldsymbol{B}, \quad
\boldsymbol{\gamma}^1 
= \boldsymbol{A}^{-1} \boldsymbol{c} \tag{7.2.18}
$$

となることを表しています。  
(7.2.7)式で、$$n-1$$で$$j=3, 4$$に対する2つの式と、$$n$$で$$j=1,2$$に対する2つの式を見比べてみましょう。

$$
\sum_{j=1}^4 \left( \frac{\Delta x^n}{2} \frac{\partial f_3^{n-1}}{\partial y_j^{n-1}} + \delta_{3j} \right) \delta y_j^{n-1} + \sum_{j=1}^4 \left( \frac{\Delta x^n}{2} \frac{\partial f_3^{n}}{\partial y_j^{n}} - \delta_{3j} \right) \delta y_j^{n} 
= - d_3^{n-1} \tag{7.2.19}
$$

$$
\sum_{j=1}^4 \left( \frac{\Delta x^n}{2} \frac{\partial f_4^{n-1}}{\partial y_j^{n-1}} + \delta_{4j} \right) \delta y_j^{n-1} + \sum_{j=1}^4 \left( \frac{\Delta x^n}{2} \frac{\partial f_4^{n}}{\partial y_j^{n}} - \delta_{4j} \right) \delta y_j^{n} 
= - d_4^{n-1} \tag{7.2.20}
$$

$$
\sum_{j=1}^4 \left( \frac{\Delta x^n}{2} \frac{\partial f_1^{n}}{\partial y_j^{n}} + \delta_{1j} \right) \delta y_j^{n} + \sum_{j=1}^4 \left( \frac{\Delta x^n}{2} \frac{\partial f_1^{n+1}}{\partial y_j^{n+1}} - \delta_{1j} \right) \delta y_j^{n+1} 
= - d_1^{n} \tag{7.2.21}
$$

$$
\sum_{j=1}^4 \left( \frac{\Delta x^n}{2} \frac{\partial f_2^{n}}{\partial y_j^{n}} + \delta_{2j} \right) \delta y_j^{n} + \sum_{j=1}^4 \left( \frac{\Delta x^n}{2} \frac{\partial f_2^{n+1}}{\partial y_j^{n+1}} - \delta_{2j} \right) \delta y_j^{n+1} 
= - d_2^{n} \tag{7.2.22}
$$

ただし、$$n=2, 3, \dots, N-1$$です。
この4つの式を組合せ

$$
\boldsymbol{S}^{n-1} \delta \boldsymbol{y}^{n-1} + \boldsymbol{P}^n \delta \boldsymbol{y}^n + \boldsymbol{Q}^{n+1} \delta \boldsymbol{y}^{n+1} 
= \boldsymbol{q}^n \tag{7.2.23}
$$

のように表しましょう。
さらに(7.2.17)式で$$n \rightarrow n-1$$とした式

$$
\delta \boldsymbol{y}^{n-1} 
= \boldsymbol{\Gamma}^{n-1} \delta \boldsymbol{y}^n + \boldsymbol{\gamma}^{n-1} \tag{7.2.17'}
$$

を、(7.2.23)式に代入しましょう。
すると

$$
(\boldsymbol{S}^{n-1} \boldsymbol{\Gamma}^{n-1} + \boldsymbol{P}^n) \delta \boldsymbol{y}^n + \boldsymbol{Q}^{n+1} \delta \boldsymbol{y}^{n+1} 
= \boldsymbol{q}^n - \boldsymbol{S}^{n-1} \boldsymbol{\gamma}^{n-1}
$$

を得ます。
この式を変形しましょう。

$$
\delta \boldsymbol{y}^n 
= - (\boldsymbol{S}^{n-1} \boldsymbol{\Gamma}^{n-1} + \boldsymbol{P}^n)^{-1} \boldsymbol{Q}^{n+1} \delta \boldsymbol{y}^{n+1} + (\boldsymbol{S}^{n-1} \boldsymbol{\Gamma}^{n-1} + \boldsymbol{P}^n)^{-1} (\boldsymbol{q}^n - \boldsymbol{S}^{n-1} \boldsymbol{\gamma}^{n-1}) \tag{7.2.24}
$$

そしてこの式と(7.2.17)式を比較することで

$$
\boldsymbol{\Gamma}^n 
= - (\boldsymbol{S}^{n-1} \boldsymbol{\Gamma}^{n-1} + \boldsymbol{P}^n)^{-1} \boldsymbol{Q}^{n+1} \tag{7.2.25}
$$

$$
\boldsymbol{\gamma}^n 
= (\boldsymbol{S}^{n-1} \boldsymbol{\Gamma}^{n-1} + \boldsymbol{P}^n)^{-1} (\boldsymbol{q}^n - \boldsymbol{S}^{n-1} \boldsymbol{\gamma}^{n-1}) \tag{7.2.26}
$$

とわかります。
(7.2.18)式から始めて、(7.2.25), (7.2.26)式を繰り返し用いることにより、$$\boldsymbol{\Gamma}^n, \boldsymbol{\gamma}^n$$が$$n=1, 2, \dots, N-1$$に対して求めることができます。  
$$n=N-1$$までの$$\boldsymbol{\Gamma}^n, \boldsymbol{\gamma}^n$$の決定までで、また用いられていない式は(7.2.7)式の$$n=N-1$$に対する$$i=3,4$$の式

$$
\sum_{j=1}^4 \left( \frac{\Delta x^N}{2} \frac{\partial f_3^{N-1}}{\partial y_j^{N-1}} + \delta_{3j}\right) \delta y_j^{N-1} + \sum_{j=1}^4 \left( \frac{\Delta x^N}{2} \frac{\partial f_3^{N}}{\partial y_j^{N}} - \delta_{3j}\right) \delta y_j^{N} 
= -d_3^{N-1} \tag{7.2.27}
$$

$$
\sum_{j=1}^4 \left( \frac{\Delta x^N}{2} \frac{\partial f_4^{N-1}}{\partial y_j^{N-1}} + \delta_{4j}\right) \delta y_j^{N-1} + \sum_{j=1}^4 \left( \frac{\Delta x^N}{2} \frac{\partial f_4^{N}}{\partial y_j^{N}} - \delta_{4j}\right) \delta y_j^{N} 
= -d_4^{N-1} \tag{7.2.28}
$$

そして表面近傍での境界条件を表す(7.2.10)式

$$
\sum_{j=1}^4 \frac{\partial \ell_1}{\partial y_j^N} \delta y_j^N 
= - \ell_1 \tag{7.2.29}
$$

$$
\sum_{j=1}^4 \frac{\partial \ell_2}{\partial y_j^N} \delta y_j^N 
= - \ell_2 \tag{7.2.30}
$$

です。
これらの式と次の$$i=1, 2, 3, 4$$の4本の式

$$
\delta \boldsymbol{y}^{N-1} 
= \boldsymbol{\Gamma}^{N-1} \delta \boldsymbol{y}^N + \boldsymbol{\gamma}^{N-1} \tag{7.2.31}
$$

を、8個の未知数$$\delta y_j^{N}, \delta y_j^{N-1} \ (j=1, 2, 3, 4)$$について解きましょう。
$$\delta y_j^N, \delta y_j^{N-1}$$が得られると、次に(7.2.17')式を順次適用することで、すべての$$\delta y_j^n$$を計算できます。
これらの$$\delta y_j^n$$を使ってもとの値に対する補正を行います。

$$
\boldsymbol{y}^n 
= \bar{\boldsymbol{y}}^n + f \delta \boldsymbol{y}^n \quad (0 < f < 1) \tag{7.2.31}
$$

この操作を$$\max \left( \left\vert \frac{\delta y_j^n}{y_j^n}\right\vert \right)$$が十分に小さくなるまで反復し、解を計算します。  
このように、ある元素組成分布(ある進化段階)に対する構造(圧力、密度、温度分布など)が得られると、次に時間を進めるために時間ステップを決め、(7.2.8)式によってその時間に起こる元素組成分布の変化を計算します。
その新しい元素組成分布に対する構造を再び上述の方法で得ることにより、時間ステップだけ進んだ時間の恒星の構造が決まります。
この繰り返しにより、恒星の進化を数値計算によって追跡することができます。

## 参考文献

[1] [Henyey et al., 1964, "A New Method of Automatic Computation of Stellar Evolution"](1964ApJ...139..306H)  
[2] [Kippenhahn, Weigert & Weiss, "Stellar Structure and Evolution"](https://amzn.to/43pXiva)  
[3] [野本憲一, 定金晃三, 佐藤勝彦, "恒星"](https://amzn.to/4kHBvFv)  

{% include adsense.html %} 