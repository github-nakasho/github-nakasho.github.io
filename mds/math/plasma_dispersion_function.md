---
layout: default
title: プラズマ分散関数
parent: 数学
math: mathjax3
permalink: /math/plasma_dispersion_function
nav_order: 26
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

# プラズマ分散関数

ここでは、運動論的なプラズマ物理学に由来する関数である、プラズマ分散関数 (plasma dispersion function) についてまとめています。
より具体的な応用については、プラズマ物理学のセクションをご参照ください。

## 定義

複素変数 $$\zeta$$ を用い、プラズマ分散関数を次のように定義します。

$$
Z (\zeta) 
\equiv \frac{1}{\sqrt{\pi}} \int_{-\infty}^\infty \frac{e^{-z^2}}{z-\zeta} dz, \quad (\mathrm{Im}(\zeta) > 0) \tag{1}
$$

この定義からわかるように、プラズマ分散関数 $$Z(\zeta)$$ は複素平面の上半分で定義される解析関数であり、下半分の平面へは解析接続によって定義されます。

## 解析接続

ここではプラズマ分散関数とは別のものとして、積分経路を実軸上に固定したままの関数

$$
g(\zeta) 
= \frac{1}{\sqrt{\pi}} \int_{-\infty}^\infty \frac{e^{-z^2}}{z - \zeta} dz \tag{2}
$$

を考えてみましょう。
ただし、$$\zeta$$ は実数ではないとします。

![](/assets/images/math/plasma_dispersion_function_01.png)  
$$\zeta$$ (極) の位置と積分路の関係を表す図。  

$$g$$ は上半平面・下半平面のどちらでも正則です。
しかしこの場合、両者は実軸を越えて解析的に接続しません。
これを、ソホツキー・プレメリの公式 (Sokhotski-Plemelj theorem) から示してみましょう。
$$\mathcal{P}$$ を主値積分とすると、これは

$$
\frac{1}{z - x \mp i \epsilon} 
= \mathcal{P} \frac{1}{z - x} \pm i\pi \delta(z - x) \tag{3}
$$

のように書かれます。
これを用いて、極の位置が実軸に近い場合を比較すると

$$
g(x + i 0) - g(x - i 0) 
= 2i \sqrt{\pi} e^{-x^2} 
\neq 0 \tag{4}
$$

となり、実軸全体を挟んで不連続に値が飛んでしまいます。
この飛びの大きさは、極が積分路を横切るときに失われる留数の値に一致します。  
この問題は、積分経路を実軸上に固定したことにより発生したものです。
そこで、この不連続を避けるには、$$\zeta$$ が正則関数であり続けるように積分経路そのものを変化させましょう。
そのために、極が常に積分路の上側にあるように、積分路を変形します。
これにより極が積分経路を横切らないために、留数は失われることなく、関数は下半平面に極が存在する場合でも滑らかに接続します。

![](/assets/images/math/plasma_dispersion_function_02.png)  
積分経路の変更。  

この変形された積分経路を、物理ではランダウ経路と呼びます。  
$$\zeta$$ が実数の場合、極は積分経路上にあります。
$$\zeta = x$$ とすると、ソホツキー・プレメリの公式から

$$
\lim_{\epsilon \rightarrow +0} \frac{1}{z - x - i\epsilon} 
= \mathcal{P} \frac{1}{z - x} + i \pi \delta (z - x) \tag{5}
$$

です。
するとプラズマ分散関数 (1) 式は、極を上に避けるような半円での積分を考えることで

$$
Z(x) 
= \frac{1}{\sqrt{\pi}} \mathcal{P} \int_{-\infty}^\infty \frac{e^{-z^2}}{z-x} dz + i\sqrt{\pi} e^{-x^2} \tag{6}
$$

のようになります。  
同様に、$$\mathrm{Im} (\zeta) < 0$$ では、極を完全に一周するような積分路になります。
そのため

$$
Z(x) 
= \frac{1}{\sqrt{\pi}} \mathcal{P} \int_{-\infty}^\infty \frac{e^{-z^2}}{z-x} dz + 2i\sqrt{\pi} e^{-x^2} \tag{7}
$$

となります。  
以上をまとめて

$$
Z(\zeta) 
= \frac{1}{\sqrt{\pi}} \mathcal{P} \int_{-\infty}^\infty \frac{e^{-z^2}}{z - \zeta} dz + i \sigma \sqrt{\pi} e^{-\zeta^2}, \quad 
\sigma 
= \left\{ \begin{array}{ll}
0 & \mathrm{Im}(\zeta) > 0 \\
1 & \mathrm{Im}(\zeta) = 0 \\
2 & \mathrm{Im}(\zeta) < 0
\end{array} \right. \tag{8}
$$

のように書くことができます。
$$\sigma$$ が不連続に変化していますが、これに応じて主値積分の側にも対応する不連続が存在するため、$$Z$$ 自身は連続かつ正則な関数となっています。

{% include adsense.html %}

## プラズマ分散関数が満たす微分方程式

$$Z(\zeta)$$ を $$\zeta$$ で微分すると

$$
\begin{align}
Z' 
&= \frac{1}{\sqrt{\pi}} \int_{-\infty}^\infty \frac{e^{-z^2}}{(z-\zeta)^2} dz 
\underbrace{=}_{部分積分} \frac{1}{\sqrt{\pi}} \left\{ \left[ - \frac{e^{-z^2}}{z-\zeta}\right]_{-\infty}^\infty - \int_{-\infty}^\infty \left( - \frac{1}{z - \zeta} \right) (-2z e^{-z^2}) dz\right\} \notag \\
&= - \frac{2}{\sqrt{\pi}} \int_{-\infty}^\infty \frac{z e^{-z^2}}{z-\zeta} dz 
= - \frac{2}{\sqrt{\pi}} \int_{-\infty}^\infty \frac{(z - \zeta + \zeta) e^{-z^2}}{z-\zeta} dz \notag \\
&= - \frac{2}{\sqrt{\pi}} \left( \int_{-\infty}^\infty e^{-z^2} dz + \zeta \int_{-\infty}^\infty \frac{e^{-z^2}}{z-\zeta} dz \right) 
\underbrace{=}_{(1)} - 2(1 + \zeta Z (\zeta)) \tag{9}
\end{align}
$$

以上から、プラズマ分散関数は

$$
Z' 
= -2 (1 + \zeta Z) \tag{10}
$$

という微分方程式を満たします。
これをさらに微分すると

$$
Z'' 
= -2 Z - 2 \zeta Z' 
\ \Longrightarrow \ Z'' + 2 \zeta Z' + 2Z 
= 0 \tag{11}
$$

を得ます。
これは[エルミート多項式が満たす微分方程式 $$y'' - 2 x y' + 2ny = 0$$](/math/hermite) に似ていることがわかります。
$$\zeta = is$$ とおいて、さらに $$Y(s) = Z(is)$$ のようにすれば

$$
\frac{dZ}{d\zeta} 
= - i Y', \quad \frac{d^2 Z}{d\zeta^2} 
= Y'' \tag{12}
$$

のような関係が得られることから、これらを (11) 式に代入することで

$$
Y'' - 2s Y' - 2 Y 
= 0 \tag{13}
$$

となります。
これは $$n = -1$$ の[エルミートの微分方程式](/math/hermite)であり、プラズマ分散関数 $$Z$$ は [$$n = -1$$ のエルミート多項式](/math/hermite)に対応する、とも言えます。
さらに、(11) 式を複数回微分していくと

$$
Z^{(3)} 
= - 2 Z' - 2 (Z' + \zeta Z'') 
= - 4 Z' - 2 \zeta Z'' \tag{14}
$$

$$
Z^{(4)} 
= -4 Z'' - 2 (Z'' + \zeta Z^{(3)}) 
= - 6 Z'' - 2 \zeta Z^{(3)} \tag{15}
$$

のようになることから、$$n$$ 階微分は

$$
Z^{(n+1)} 
= -2 (\zeta Z^{(n)} + n Z^{(n-1)}) \quad (n \geq 1) \tag{16}
$$

のようになります。
全ての高階微分が $$Z$$ と $$\zeta$$ で書けることから、ニュートン法や高次の摂動計算において、ヤコビアンを解析的に計算することが可能です。

## 級数展開

$$\zeta \ll 1$$ の場合に、$$Z = \sum_{n\geq 0} a_n \zeta^n$$ のようにテイラー展開したときの係数を求めてみましょう。
これを (10) 式に代入すると

$$
\sum_{n \geq 1} n a_n \zeta^{n-1} 
= - 2 - 2 \sum_{n\geq 0} a_n \zeta^{n+1} \tag{17}
$$

となります。
$$\zeta^n$$ の係数を比較することで

$$
a_1 = -2, \quad a_{n+1} 
= - \frac{2 a_{n-1}}{n+1} \ (n \geq 1) \tag{18}
$$

を得ます。
$$a_0$$ は

$$
a_0 
= Z(0) 
= \frac{1}{\sqrt{\pi}} \int_{-\infty}^\infty \frac{e^{-z^2}}{z} dz 
= i \sqrt{\pi} \tag{19}
$$

のように求まります。
途中の積分は、[sinc 関数の積分](/math/sinc)で計算したものを用いました。
$$a_0, a_1$$ から、(18) 式を順次計算していくことで

$$
a_2 = -i \sqrt{\pi}, \quad a_3 
= \frac{4}{3}, \quad a_4 
= \frac{i\sqrt{\pi}}{2}, \quad a_5 
= - \frac{8}{15}, \dots \tag{20}
$$

を得ます。
以上から

$$
Z(\zeta) 
= i \sqrt{\pi} - 2 \zeta - i \sqrt{\pi} \zeta^2 + \frac{4}{3} \zeta^3 + \frac{i\sqrt{\pi}}{2} \zeta^4 - \frac{8}{15} \zeta^5 + \cdots \quad (\zeta \ll 1) \tag{21}
$$

となります。
偶数次の項の係数は純虚数、奇数次の項の係数は実数になっていることがわかります。  
同様に、$$\zeta \gg 1$$ についても考えてみましょう。
ただしこれを求めるために、$$Z = - \sum_{n \geq 0} c_n \zeta^{-(2n+1)}$$ の形を仮定することにします。
先ほどと同じく、これを (10) 式の微分方程式に代入し、$$\zeta^{-2m}$$ の係数を比較することで

$$
(2m - 1) c_{m-1} - 2 c_m 
= 0 \ \Longrightarrow \ c_m 
= \frac{2m-1}{2} c_{m-1} \tag{21}
$$

また $$c_0 = 1$$ から順次計算していくと

$$
c_1 
= \frac{1}{2}, \quad c_2 
= \frac{3}{4}, \quad c_3 
= \frac{15}{8}, \dots \tag{22}
$$

を得ます。
以上から

$$
Z (\zeta) 
= - \frac{1}{\zeta} \left( 1 + \frac{1}{2} \zeta^{-2} + \frac{3}{4} \zeta^{-4} + \frac{15}{8} \zeta^{-6} + \cdots \right) \tag{23}
$$

と求まります。

## [誤差関数のファミリー](/math/error_function)との関係式

$$\mathrm{Im} (\zeta) > 0$$ とすると

$$
\frac{1}{z -\zeta} 
= i \int_0^\infty e^{-i (z - \zeta) s} ds \tag{24}
$$

のように変形することができます。
これを用いると、プラズマ分散関数は

$$
\begin{align}
Z(\zeta) 
&= \frac{1}{\sqrt{\pi}} \int_{-\infty}^\infty \left( \int_0^\infty e^{-z^2 - i (z - \zeta) s} ds\right) dz 
= \frac{1}{\sqrt{\pi}} \int_0^\infty e^{i \zeta s} \left( \int_{-\infty}^\infty e^{-z^2 - isz } dz\right) ds \notag \\
&\underbrace{=}_{ガウス積分} \frac{1}{\sqrt{\pi}} \int_0^\infty e^{i \zeta s} \sqrt{\pi} e^{-s^2 / 4} ds 
= i \int_0^\infty e^{i\zeta s - s^2 /4} ds 
\underbrace{=}_{s = 2u} 2i \int_0^\infty e^{2i\zeta u - u^2} du \tag{25}
\end{align}
$$

のようになります。
指数の肩の部分は $$2 i \zeta u - u^2 = - (u - i\zeta)^2 - \zeta^2$$ のように平方完成することができるため、さらに $$v = u - i\zeta$$ のような変数変換をすれば

$$
Z(\zeta) 
= 2i e^{-\zeta^2} \int_{-i\zeta}^{\infty - i\zeta} e^{-v^2} dv \tag{26}
$$

$$e^{-v^2}$$ は $$\vert \mathrm{Re}(v) \vert \rightarrow \infty$$ で急激に減衰するため、積分の終端である $$\infty - i\zeta$$ を $$\infty$$ としても差し支えないでしょう。
よって

$$
Z(\zeta) 
= 2i e^{-\zeta^2} \int_{-i\zeta}^{\infty} e^{-v^2} dv \tag{27}
$$

となります。
最後に、[ファデーエワ関数](/math/error_function#虚部誤差関数ドーソン関数ファデーエワ関数) が

$$
w(\zeta) 
= e^{-\zeta^2} \mathrm{erfc} (-iz) 
= \frac{2e^{-\zeta^2}}{\sqrt{\pi}} \int_{-i\zeta}^\infty e^{-v^2} dv \tag{28}
$$

であることを思い出せば、最終的に

$$
Z(\zeta) 
= i \sqrt{\pi} w(\zeta) \tag{29} 
$$

を得ます。
$$\zeta = x \ (x \in \mathbb{R})$$ の場合、[ファデーエワ関数](/math/error_function#虚部誤差関数ドーソン関数ファデーエワ関数)が

$$
w(x) 
= e^{-x^2} + \frac{2i}{\sqrt{\pi}} F(x) \tag{30}
$$

と書けることを用いると

$$
Z(x) 
= i\sqrt{\pi} e^{-x^2} - 2 F(x) \tag{31}
$$

のように書くこともできます。
さらに $$\zeta = i\xi \ (\xi \in \mathbb{R})$$ のように $$\zeta$$ が純虚数の場合

$$
Z(i\xi) 
= i\sqrt{\pi} w(i\xi) 
= i\sqrt{\pi} e^{\xi^2} \mathrm{erfc} (\xi) 
= i \sqrt{\pi} \mathrm{erfcx} \tag{32}
$$

のようにもなります。
ここで、[erfcx はスケール化された相補誤差関数](/math/error_function#スケール化された相補誤差関数-scaled-complementary-error-function)です。

## 対称性

[ファデーエワ関数の関係式 $$w(-\zeta) = 2 e^{-\zeta^2} - w(\zeta)$$](/math/error_function#ファデーエワ関数) から、プラズマ分散関数では次のような等式が成り立ちます。

$$
Z(-\zeta)
= i \sqrt{\pi} w(-\zeta) 
= i \sqrt{\pi} (2 e^{-\zeta^2} - w(\zeta)) 
= 2 i \sqrt{\pi} e^{-\zeta^2} - Z(\zeta) \tag{33}
$$

さらに [$$w(-\bar{\zeta}) = \overline{w(\zeta)}$$](/math/error_function#ファデーエワ関数) より

$$
Z(-\bar{\zeta}) 
= i \sqrt{\pi} w(-\bar{\zeta}) 
= i \sqrt{\pi} \overline{w(\zeta)} 
= - \overline{i \sqrt{\pi} w(\zeta)} 
= - \overline{Z(\zeta)} \tag{34}
$$

も成り立ちます。

## 参考文献

[1] [田中基彦, 西川恭治, "高温プラズマの物理学"](https://link.amazon/B0evrT2UD)  

{% include adsense.html %}