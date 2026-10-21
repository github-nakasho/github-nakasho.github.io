---
layout: default
title: 第一種修正ベッセル関数
parent: 数学
math: mathjax3
permalink: /math/modified_bessel_first
nav_order: 27
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

# 第一種修正ベッセル関数　(工事中...)

ここでは、修正ベッセル関数の中でも、第一種の修正ベッセル関数についてまとめていきます。

## 定義

第一種修正ベッセル関数は、次のように定義されます。

$$
\begin{align}
I_n(z) 
&\equiv i^{-n} J_n(iz) 
= i^{-n} \left( \frac{iz}{2} \right)^n \sum_{k=0}^\infty \frac{(-1)^k}{k! (n+k)!} \left( \frac{iz}{2} \right)^{2k} \notag \\
&= \left( \frac{z}{2} \right)^n \sum_{k=0}^\infty \frac{(-1)^k (i^2)^k}{k! (n+k)!} \left( \frac{z}{2} \right)^{2k} 
= \left( \frac{z}{2} \right)^n \sum_{k=0}^\infty \frac{1}{k! (n+k)!} \left( \frac{z}{2} \right)^{2k} \tag{1}
\end{align}
$$

ここで [$$J_n (z)$$ はベッセル関数](/math/bessel)です。

## 母関数

[ベッセル関数の母関数展開](/math/bessel#ベッセル関数の積分表示)は

$$
\exp \left\{ \frac{z}{2} \left( t - \frac{1}{t} \right) \right\} 
= \sum_{n=-\infty}^\infty J_n(z) t^n \tag{2}
$$

のように与えられるのでした。
(1) 式の定義から、$$z \rightarrow iz, t \rightarrow i^{-1} t$$ のように置換すると

$$
(左辺) 
= \exp \left\{ \frac{iz}{2} \left( \frac{t}{i} - \frac{i}{t} \right)\right\} 
= \exp \left\{ \frac{z}{2} \left( t + \frac{1}{t} \right)\right\} \tag{3}
$$

$$
(右辺) 
= \sum_{n=-\infty}^\infty J_n(iz) (i^{-1} t)^n 
= \sum_{n=-\infty}^\infty i^{-n} J_n(iz) t^n \tag{4}
$$

となります。
以上より第一種の修正ベッセル関数の母関数が

$$
\exp \left\{ \frac{z}{2} \left( t + \frac{1}{t} \right)\right\} 
= \sum_{n=-\infty}^\infty I_n(z) t^n \tag{5}
$$

のようになることがわかります。
この母関数展開において、$$t \rightarrow 1/t$$ とすると

$$
\exp \left\{ \frac{z}{2} \left( t + \frac{1}{t} \right) \right\} 
= \sum_{n=-\infty}^\infty I_n (z) t^{-n} \tag{6}
$$

となります。
これと (5) 式において $$n \rightarrow -n$$ としたものが等しいため

$$
I_{-n} (z) 
= I_n (z) \tag{7}
$$

のような、対称性もわかります。

## 積分表示

(5) 式において、$$t = e^{i\varphi}$$ とおくと

$$
(左辺) 
= \exp \left\{ \frac{z}{2} \left( e^{i\varphi} + e^{-i\varphi} \right)\right\} 
= e^{z\cos \varphi} \tag{8}
$$

のようになることから

$$
e^{z\cos \varphi} 
= \sum_{m=-\infty}^\infty I_m(z) e^{im\varphi} \tag{9}
$$

となります。
すなわち、$$e^{z\cos \varphi}$$ をフーリエ級数展開すると、その係数は $$I_n(z)$$ となります。
右辺において、総和を $$-\infty \leq m \leq -1, m = 0, 1 \leq m \leq \infty$$ のように分解しましょう。

$$
\begin{align}
e^{z\cos \varphi} 
&= I_0 (z) + \sum_{m=1}^\infty I_m(z) e^{im\varphi} + \sum_{m=-1}^{-\infty} I_m(z) e^{im\varphi} \notag \\
&= I_0 (z) + \sum_{m=1}^\infty I_m(z) e^{im\varphi} + \sum_{m=1}^{\infty} \underbrace{I_{-m}(z)}_{(7)} e^{-im\varphi} \notag \\
&= I_0 (z) + \sum_{m=1}^\infty I_m(z) (e^{im\varphi} + e^{-im\varphi}) 
= I_0 (z) + 2 \sum_{m=1}^\infty I_m(z) \cos m\varphi \tag{10}
\end{align}
$$

となります。
(10) 式の両辺に $$e^{-in\varphi}$$ をかけ、$$\int_{-\pi}^\pi d\varphi$$ で積分を行うと

$$
\int_{-\pi}^\pi e^{i(m-n)\varphi} d\varphi 
= 2\pi \delta_{mn} \tag{11}
$$

より

$$
I_n(z) 
= \frac{1}{2\pi} \int_{-\pi}^\pi e^{z\cos \varphi} e^{-in \varphi} d\varphi \tag{12}
$$

のように求まります。
$$e^{-in\varphi} = \cos n\varphi - i\sin n \varphi$$ のうち、$$\sin n \varphi$$ は奇関数であるため、$$\int_{-\pi}^\pi d\varphi$$ の積分でゼロとなります。
$$e^{z\cos \varphi}, \cos n \varphi$$ はともに偶関数であるため、(12) 式は

$$
I_n(z) 
= \frac{1}{\pi} \int_{0}^\pi e^{z\cos \varphi} \cos n\varphi d\varphi \tag{13}
$$

のように書き換えることもできます。

## ベッセル関数の積分と第一種修正ベッセル関数の関係式

[ウェーバーの積分](/math/bessel#ウェーバーの積分)から

$$
\int_0^\infty x J_0(ax) e^{-b^2 x^2} dx 
= \frac{1}{2b^2} e^{-\frac{a^2}{4b^2}} \tag{14} 
$$

のように書けるのでした。
また[ベッセル関数の加法定理](/math/bessel#ベッセル関数の加法定理)から

$$
\begin{align}
&J_n (ax) e^{in\chi}
= \sum_{m=-\infty}^\infty J_{n+m} (ux) J_m (vx) e^{im\varphi} \notag \\
&\underbrace{\Longrightarrow}_{n=0} \ 
J_0 (ax) 
= \sum_{m=-\infty}^\infty J_{m} (ux) J_m (vx) e^{im\varphi}, \quad (a^2 = u^2 + v^2 - 2uv \cos \varphi) \tag{15}
\end{align}
$$

となります。
これを (14) 式に代入すると

$$
\sum_{m=-\infty}^\infty e^{im\varphi} \int_0^\infty x J_m(ux) J_m(vx) e^{-b^2 x^2} dx 
= \frac{1}{2b^2} e^{-\frac{u^2 + v^2}{4b^2}} e^{\frac{uv \cos\varphi}{2b^2}} \tag{16}
$$

のようになります。
ここで $$z = \frac{uv}{2b^2}$$ とおくと

$$
e^{z\cos \varphi} 
= 2b^2 e^{\frac{u^2 + v^2}{4b^2}} \sum_{m=-\infty}^\infty e^{im\varphi} \int_0^\infty x J_m (ux) J_m(vx) e^{-b^2 x^2} dx \tag{17}
$$

のように整理されます。
(17) 式と (9) 式を見比べることで

$$
I_m (\frac{uv}{2b^2}) 
= 2b^2 e^{\frac{u^2 + v^2}{4b^2}} \int_0^\infty x J_m (ux) J_m (vx) e^{-b^2 x^2} dx \tag{18}
$$

のように、第一種修正ベッセル関数とベッセル関数の関係式を導くことができました。

## 総和を含む関係式

(18) 式において、$$v = u, b=1$$ とすると

$$
I_m (u^2 / 2) 
= 2 e^{u^2 / 2} \int_0^\infty x J_m^2 (ux) e^{-x^2} dx \tag{19}
$$

となります。
この両辺を $$\sum_{m=-\infty}^\infty$$ で総和をとると、右辺は

$$
\begin{align}
\int_0^\infty x \sum_{m=-\infty}^\infty J_m^2(ux) e^{-x^2} dx 
&= \int_0^\infty x e^{-x^2} dx 
= - \frac{1}{2} \int_0^\infty \left( \frac{d}{dx} e^{-x^2} \right) dx \notag \\
&= - \frac{1}{2} \left[ e^{-x^2} \right]_0^\infty 
= \frac{1}{2} \tag{20}
\end{align}
$$

となります。
途中、[ベッセル関数の公式 $$\sum_{n=-\infty}^\infty J_n^2 (z) = 1$$](/math/bessel#ベッセル関数の二乗の総和) を用いました。
以上より

$$
\sum_{m=-\infty}^\infty I_m(u^2 / 2) 
= e^{u^2/ 2} \ \Longrightarrow \ 
\sum_{m=-\infty}^\infty e^{-z} I_m(z) 
= 1 \tag{21}
$$

を得ます。
最後に $$z = u^2/ 2$$ のようにしました。  
この両辺を $$z$$ で微分すれば

$$
\sum_{m=-\infty}^\infty (-e^{-z} I_m(z) + e^{-z} I_m'(z)) 
= 0 \ \Longrightarrow \sum_{m=-\infty}^\infty e^{-z} I_m'(z) 
= \sum_{m=-\infty}^\infty e^{-z} I_m(z) 
\underbrace{=}_{(21)} 1 \tag{22} 
$$

も成り立ちます。  
さらに (10) 式の両辺 $$\varphi$$ の 微分を計算しましょう。

$$
-z \sin \varphi e^{z\cos \varphi} 
= - 2 \sum_{m=1}^\infty I_m (z) m \sin m \varphi
$$

もう一度微分を行うと

$$
(左辺) 
= -z \{ \cos \varphi e^{z\cos \varphi} + \sin \varphi (-z\sin \varphi e^{z\cos \varphi})\} 
= -z e^{z \cos \varphi} (\cos \varphi - z \sin^2 \varphi)
$$

$$
(右辺) 
= -2 \sum_{m=1}^\infty I_m(z) m^2 \cos m \varphi
$$

ここに $$\varphi = 0$$ を代入すれば

$$
-z e^z 
= -2 \sum_{m=1}^\infty m^2 I_m(z) \tag{23}
$$

となります。
(23) 式において $$m \rightarrow -m$$ のようにしても、(7) 式から $$(-m)^2 I_{-m}(z) = m^2 I_m(z)$$ です。
よって

$$
z e^z 
= \sum_{m=-\infty}^{-1} m^2 I_m(z) + \sum_{m=1}^\infty m^2 I_m(z) \tag{24}
$$

のように書くことができます。
さらに $$m = 0$$ では $$ m^2 I_m(z) = 0$$ であるため、$$m = 0$$ を総和に含めても、右辺に変わりはありません。
最終的に

$$
\sum_{m = -\infty}^\infty m^2 e^{-z} I_m(z) 
= z \tag{25}
$$

を得ます。









## 参考文献


{% include adsense.html %}