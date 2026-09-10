---
layout: default
title: 誤差関数
parent: 数学
math: mathjax3
permalink: /math/error_function
nav_order: 25
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

# 誤差関数 (error function)

ここでは、プラズマ物理や統計で頻繁に現れる、誤差関数についてまとめています。

## 定義

誤差関数は、積分を用いて次のように定義されます。

$$
\mathrm{erf} (x) 
\equiv \frac{2}{\sqrt{\pi}} \int_0^x e^{-t^2} dt \tag{1}
$$

この関数は

$$
\mathrm{erf} (\infty) 
= \frac{2}{\sqrt{\pi}} \underbrace{\int_0^\infty e^{-t^2} dt}_{ガウス積分の半分} 
= 1 \tag{2}
$$

のように、規格化されています。
また相補的な誤差関数 (complementary error function) として

$$
\mathrm{erfc} (x) 
\equiv 1 - \mathrm{erf} (x) 
= \frac{2}{\sqrt{\pi}} \int_0^\infty e^{-t^2} dt - \frac{2}{\sqrt{\pi}} \int_0^x e^{-t^2} dt 
= \frac{2}{\sqrt{\pi}} \int_x^\infty e^{-t^2} dt \tag{3}
$$

も定義されます。

## 基本的な性質

$$
\mathrm{erf} (-x) 
= \frac{2}{\sqrt{\pi}} \int_0^{-x} e^{-t^2} dt 
\underbrace{=}_{t \rightarrow -t} \frac{2}{\sqrt{\pi}} \int_0^{x} e^{-t^2} (-dt) 
= - \mathrm{erf} (x) \tag{4}
$$

のように、誤差関数は奇関数であることがわかります。  
誤差関数の導関数は、その定義から

$$
\frac{d}{dx} \mathrm{erf} (x) 
= \frac{2}{\sqrt{\pi}} e^{-x^2} \tag{5}
$$

です。
導関数が $$- \infty < x< \infty$$ で常に正であることから、$$\mathrm{erf} (x)$$ は単調増加関数であることもわかります。  
逆に、誤差関数を積分したものは

$$
\begin{align}
\int \mathrm{erf} (x) dx 
&\underbrace{=}_{部分積分} x \mathrm{erf} (x) - \int x \underbrace{\frac{d}{dx} \mathrm{erf} (x)}_{(5)} dx 
\underbrace{=}_{(5)} x \mathrm{erf} (x) - \frac{2}{\sqrt{\pi}} \underbrace{\int x e^{-x^2} dx}_{= - e^{-x^2} / 2} \notag \\
&= x \mathrm{erf} (x) + \frac{e^{-x^2}}{\sqrt{\pi}}  \tag{6}
\end{align}
$$

のように計算できます。  
erf, erfc をグラフに描画すると、次のようになります。

![](/assets/images/math/error_function_01.png)

## 級数展開

erf の $$x \ll 1$$ での振る舞いを調べるために、erf をテイラー展開してみましょう。
そのために、まずは $$e^{-t^2}$$ を展開したものを考えます。

$$
e^{-t^2} 
= \sum_{n=0}^\infty \frac{(-1)^n t^{2n}}{n!} \tag{7}
$$

そして

$$
\int_0^x t^{2n} dt 
= \frac{x^{2n+1}}{2n+1} \tag{8}
$$

より、erf は

$$
\mathrm{erf} (x) 
= \frac{2}{x} \sum_{n=0}^\infty \frac{(-1)^n x^{2n+1}}{n! (2n+1)} 
= \frac{2}{x} \left( x - \frac{x^3}{3} + \frac{x^5}{10} - \frac{x^7}{42} + \cdots \right) \tag{9}
$$

のように表現することができます。  
同様に、$$x \gg 1$$ についても考えてみましょう。
この場合は、erfc について調べるのが便利です。
(3) 式の積分部分は、$$e^{-t^2} = - \frac{1}{2t} \frac{d}{dt} e^{-t^2}$$ であることを用いて

$$
\begin{align}
\int_x^\infty e^{-t^2} dt 
&= \int_x^\infty \left( - \frac{1}{2t} \frac{d}{dt} e^{-t^2} \right) dt
\underbrace{=}_{部分積分} \left[ - \frac{e^{-t^2}}{2t} \right]_{x}^\infty - \int_x^\infty \frac{e^{-t^2}}{2t^2} dt \notag \\
&= \frac{e^{-x^2}}{2x} - \frac{1}{2} \int_x^\infty \frac{e^{-t^2}}{t^2} dt \tag{10}
\end{align}
$$

のように書き直すことができます。
さらに

$$
\begin{align}
\int_x^\infty \frac{e^{-t^2}}{t^2} dt 
&= \int_x^\infty \left( - \frac{1}{2t^3} \frac{d}{dt} e^{-t^2} \right) dt 
\underbrace{=}_{部分積分} \left[ - \frac{e^{-t^2}}{2t^3} \right]_x^\infty - \int_x^\infty \frac{3 e^{-t^2}}{2 t^4} dt \notag \\
&= \frac{e^{-x^2}}{2 x^3} - \frac{3}{2} \int_x^\infty \frac{e^{-t^2}}{t^4} dt \tag{11}
\end{align}
$$

のように、部分積分を繰り返します。
これにより

$$
\mathrm{erfc} (x) 
= \frac{e^{-x^2}}{\sqrt{\pi} x} \left( 1 - \frac{1}{2x^2} + \frac{3}{4x^4} - \frac{15}{8x^6} + \cdots \right) 
= \frac{e^{-x^2}}{\sqrt{\pi} x} \sum_{n=0}^\infty (-1)^n \frac{(2n-1)!!}{(2x^2)^n} \tag{12}
$$

を得ます。
(12) 式の先頭に出てきた $$\frac{e^{-x^2}}{\sqrt{\pi} x}$$ は、ガウス分布の裾の確率を表すものとして、あらゆる場面で出てきます。

{% include adsense.html %}

## スケール化された相補誤差関数 (scaled complementary error function)

(12) 式において、先頭に出てきた $$e^{-x^2}$$ は $$x$$ が少し大きくなっただけで急激に小さな値となるため、数値計算で用いると容易にアンダーフローを起こします。
そこで、実際に計算する場合には、次のスケールかされた相補誤差関数を用います。

$$
\mathrm{erfcx} (x) 
\equiv e^{x^2} \mathrm{erfc} (x) \tag{13}
$$

その定義から

$$
\mathrm{erfcx} (0) 
= \mathrm{erfc} (0) 
= 1 \tag{14}
$$

であり、(12) 式から単調減少関数であることもわかります。
また、(13) 式のように定義しておけば、(12) 式から$$x \rightarrow \infty$$ で

$$
\mathrm{erfcs} (x) \ \longrightarrow \ \frac{1}{\sqrt{\pi} x} \tag{15} 
$$

に漸近することがわかります。
実際に etfcx を描画すると、次のようになります。

![](/assets/images/math/error_function_02.png)

## 虚部誤差関数・ドーソン関数

虚部誤差関数 erfi を、次のように定義します。

$$
\mathrm{erfi} (x) 
\equiv -i \mathrm{erf} (ix) 
= - \frac{2i}{\sqrt{\pi}} \int_0^{ix} e^{-t^2} dt 
\underbrace{=}_{t \rightarrow it} - \frac{2i}{\sqrt{\pi}} \int_0^{x} e^{t^2} (i dt) 
= \frac{2}{\sqrt{\pi}} \int_0^x e^{t^2} dt \tag{16}
$$

となります。
グラフは、次のようになります。

![](/assets/images/math/error_function_03.png)

この erfi を用いることで、次のドーソン関数 (Dawson's function) $$F(x)$$ を

$$
F(x) 
\equiv e^{-x^2} \int_0^x e^{t^2} dt 
= \frac{\sqrt{\pi}}{2} e^{-x^2} \mathrm{erfi} (x) \tag{17}
$$

のように書き換えることができます。
ドーソン関数は、次のような関数です。

![](/assets/images/math/error_function_04.png)

## ファデーエワ関数

また、スケール化された複素相補誤差関数を

$$
w(z) 
\equiv e^{-z^2} \mathrm{erfc} (-iz) \tag{18}
$$

のように定義することもできます。
これはファデーエワ関数 (Faddeeva function) と呼ばれます。
ファデーエワ関数は、複素数値を持つ関数です。
実軸上での実部・虚部の値を次に示します。

![](/assets/images/math/error_function_05.png)

複素数平面上でのファデーエワ関数の絶対値は、次のようになります。

![](/assets/images/math/error_function_06.png)

$$e^{-z^2}$$ から、$$\mathrm{Im}(z) < 0$$ の部分では急激にその大きさが増大します。  
$$z = x \ (x \in \mathbb{R})$$ の場合、ファデーエワ関数は

$$
\begin{align}
w(x) 
&= e^{-x^2} \mathrm{erfc} (-ix) 
\underbrace{=}_{(3)} e^{-x^2} (1 - \mathrm{erf} (-ix)) 
\underbrace{=}_{(4)} e^{-x^2} (1 + \mathrm{erf} (ix)) \notag \\
&\underbrace{=}_{(16)} e^{-x^2} + e^{-x^2} \frac{-1}{i} \mathrm{erfi} (x) 
\underbrace{=}_{(17)} e^{-x^2} + \frac{2i}{\sqrt{\pi}} F(x) \tag{19}
\end{align}
$$

となります。
また、ファデーエワ関数において

$$
\begin{align}
&w(z) + w(-z) 
= e^{-z^2} \{ \mathrm{erfc} (-iz) + \mathrm{erfc} (iz) \} 
= e^{-z^2} \{ 2 - \underbrace{\mathrm{erf} (-iz)}_{(2)} - \mathrm{erf} (iz) \}
= 2 e^{-z^2} \notag \\
&\Longrightarrow \ w(-z) 
= 2 e^{-z^2} - w(z) \tag{20}
\end{align}
$$

が成り立ちます。  
もう一つ、$$w(-\bar{z})$$ について関係式を導出してみましょう。
$$w(z)$$ は

$$
w(z) 
= e^{-z^2} \mathrm{erfc} (-iz) 
\underbrace{=}_{z = iu} e^{u^2} \mathrm{erfc} (u) 
= \mathrm{erfcx} (u) \tag{21}  
$$

のように書き直すことができます。
(12) 式より、erfc に $$e^{x^2}$$ をかけた erfcx を級数展開したとき、その各項の係数は常に実数です。
よって $$\mathrm{erfcx} (u) = \sum_n a_n u^n$$ のように書くことにしましょう ($$a_n$$ は実数)。
すると

$$
\mathrm{erfcx} (\bar{u}) 
= \sum_n a_n \bar{u}^n 
= \sum_n \overline{a_n} \overline{u^n} 
= \overline{\sum_n a_n u^n} 
\underbrace{=}_{(13)} \overline{\mathrm{erfcx} (u)} \tag{22} 
$$

のようになることから

$$
w(-\bar{z}) 
= e^{-\bar{z}^2} \mathrm{erfc} (i\bar{z}) 
\underbrace{=}_{z = iu} e^{\bar{u}^2} \mathrm{erfc} (\bar{u}) 
\underbrace{=}_{(13)} \mathrm{erfcx} (\bar{u}) 
= \overline{\mathrm{erfcx} (u)} 
= \overline{w(z)} \tag{23} 
$$

 が成り立つことがわかります。

## 参考文献

[1] [特殊関数グラフィックスライブラリー, 誤差関数](https://math-functions-1.watson.jp/sub1_spec_070.html)  
[2] [Wolfram MathWorld, Erf](https://mathworld.wolfram.com/Erf.html)  
[3] [Wolfram MathWorld, Dawson's Integral](https://mathworld.wolfram.com/DawsonsIntegral.html)  

{% include adsense.html %}