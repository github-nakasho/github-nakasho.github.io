---
layout: default
title: ラプラス変換
parent: 数学
math: mathjax3
permalink: /math/laplace_transform
nav_order: 22
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

# ラプラス変換

階段関数やデルタ関数で表される入力に対する線形システムの応答は、[フーリエ変換](/math/fourier_transform)およびその応用である周波数応答関数を用いて調べることができるのでした。
周波数応答関数は、準定常的な正弦波入力に対する応答を取り扱うのに便利です。
しかし、入力の急激な変化に対して生じる過渡現象の応答を調べるには、ここで述べるラプラス変換や、その応用である伝達関数を用いる方が便利です。  

## ラプラス変換の定義とその基礎的な特徴

[フーリエ変換](/math/fourier_transform)は、次のように定義されているのでした。

$$
\hat{E} (\omega) 
= \frac{1}{2\pi} \int_{-\infty}^\infty E(t) e^{i\omega t} dt \tag{1}
$$

もし時刻 $$t=0$$ に衝撃的に運動が始まり、$$t>0$$ では $$E(t) = 1$$ となるような関数 $$E(t)$$ を考えましょう。
実はこの関数は $$L^1$$ に属さず、厳密な意味で[フーリエ変換](/math/fourier_transform)を施すことができません。
これらの不便な点を改め、様々な意味で使いやすくしたのが、ラプラス (Laplace) 変換です。  
関数 $$f(t)$$ を $$0 \leq t \leq \infty$$ で定義された関数とし、さらに複素変数 $$s = \sigma + i \omega$$ を用いて

$$
F(s) 
= \int_0^\infty f(t) e^{-st} dt \tag{2}
$$

が存在するとき、これを $$f(t)$$ の ラプラス変換と言います。
演算子記号では

$$
F(s) 
\equiv \mathcal{L} [f(t)] \tag{3}
$$

のように表現します。  
$$s$$ が純虚数 ($$\sigma = 0$$) かつ $$t < 0$$ で $$f(t) = 0$$ とすると、$$F(s)$$ は[フーリエ変換](/math/fourier_transform)に一致します。
$$f(t)$$ は $$L^1$$ に属する必要はなく、例えばディラックのデルタ関数を含んでいても問題はありません。
これは、$$e^{-\sigma t}$$ の収束因子がかけられていることからもわかります。

{: .note}
フーリエ変換・逆変換で現れる因子 $$e^{i\omega t}, e^{-i\omega t}$$ の指数の符号は、フーリエ変換後に逆変換して元に戻ればどちらでもよいという話をしました。
もちろん、ラプラス変換でも $$s \rightarrow -s$$ のように定義すれば $$e^{st}$$ とすることができますが、慣習的に $$e^{-st}$$ を用います。


## ラプラス正変換・負変換

$$t = 0$$ を含まない変換を、特にラプラス正変換と呼び、次のように定義します。

$$
\mathcal{L}_+ [f(t)] 
= \int_{+0}^\infty f(t) e^{-st} dt \tag{4}
$$

また、ゼロを含んだ変換をラプラス負変換と呼び、次のように表します。

$$
\mathcal{L}_- [f(t)] 
= \int_{-0}^\infty f(t) e^{-st} dt \tag{5}
$$

関数 $$f(t)$$ が有限な関数であれば、$$\mathcal{L}_+ [f(t)] = \mathcal{L}_- [f(t)]$$ となります。
しかし一般には、$$\mathcal{L}_+ [f(t)] \neq \mathcal{L}_- [f(t)]$$ となることに注意が必要です。
例えば、デルタ関数 $$\delta (t)$$ のラプラス正変換は $$\mathcal{L}_+ [\delta (t)] = 0$$ ですが、ラプラス負変換の場合には

$$
\mathcal{L}_- [\delta (t)] 
= \int_{-0}^\infty \delta(t) e^{-st} dt 
= e^0 
= 1 \tag{6}
$$

となり、確かに正変換と負変換とで異なる値をとっています。

## ラプラス変換の例

### ヘヴィサイドの階段関数

ヘヴィサイドの階段関数は

$$
\Theta (t) 
= \left\{ \begin{array}{ll}
0 & (t<0) \\
1 & (t>0)
\end{array} \right. \tag{7}
$$

のように定義されるのでした。
これをラプラス変換してみましょう。
ラプラス変換では、積分範囲は $$t>0$$ に限られているため

$$
\mathcal{L}[\Theta(t)] 
= \int_0^\infty e^{-st} dt 
= -\frac{1}{s} [0 - 1] 
= \frac{1}{s} \tag{8}
$$

のように、簡単になります。
[フーリエ変換](/math/fourier_transform)では $$\delta(\omega) - \frac{1}{2\pi i \omega}$$ のような少し厄介な形でしたが、ラプラス変換ではスッキリとした形で書くことができています。

### 導関数

関数 $$f(t)$$ の導関数 $$\frac{df}{dt}$$ のラプラス変換を計算しましょう。

$$
\begin{align}
\mathcal{L} \left[ \frac{df}{dt} \right] 
&= \int_0^\infty \frac{df}{dt} e^{-st} dt 
\underbrace{=}_{部分積分} \left[ f(t) e^{-st} \right]_0^\infty - \int_0^\infty f(t) (-s) e^{-st} dt 
= -f(0) + s \mathcal{L} [f(t)] \notag \\
&= s F(s) - f(0) \tag{9}
\end{align}
$$

のようになります。
ここで、$$F(s)$$ は $$f(t)$$ のラプラス変換です。
同様に、2階微分したもののラプラス変換は

$$
\begin{align}
\mathcal{L} \left[ \frac{d^2 f}{dt^2}\right] 
&= \int_0^\infty \frac{d^2 f}{dt^2} e^{-st} dt 
= \left[ \frac{df}{dt} e^{-st} \right]_0^\infty + s \int_0^\infty \frac{df}{dt} e^{-st} dt 
= - \left. \frac{df}{dt} \right\vert_{t=0} + s \mathcal{L} \left[ \frac{df}{dt} \right] \notag \\
& \underbrace{=}_{(9)} s^2 F(s) - s f(0) - f^{(1)}(0) \tag{10}
\end{align}
$$

のようになります。
ここで $$f^{(1)}$$ は、関数 $$f$$ の一階微分です。
最後に、3階微分したもののラプラス変換は

$$
\begin{align}
\mathcal{L} \left[ \frac{d^3 f}{dt^3}\right] 
&= \int_0^\infty \frac{d^3 f}{dt^3} e^{-st} dt 
= \left[ \frac{d^2f}{dt^2} e^{-st} \right]_0^\infty + s \int_0^\infty \frac{d^2f}{dt^2} e^{-st} dt 
= - f^{(2)}(0) + s \mathcal{L} \left[ \frac{d^2f}{dt^2}\right] \notag \\
&\underbrace{=}_{(10)} s^3 F(s) - s^2 f(0) - s f^{(1)} (0) - f^{(2)} (0) \tag{11}
\end{align}
$$

のように計算できます。
以上から、一般に $$f(t)$$ の $$n$$ 階微分 $$f^{(n)} (t)$$ のラプラス変換は

$$
\mathcal{L} [f^{(n)} (t)] 
= s^n F(s) - \sum_{i=0}^{n-1} s^{n-i-1} f^{(i)} (0) \tag{12}
$$

のように書くことができます。

{: .note}
すでに示したように、微分をラプラス変換すると、$$f(0)$$ などの初期値が残ります。
後の応用部分で示すように、これにより[微分方程式](/math/laplace_transform#応用-ラプラス変換を用いた微分方程式解法)や過渡現象の初期条件を自動的に扱うことができます。

{% include adsense.html %}

### 関数の積分

先ほどの微分の場合と同様に便宜上、$$f(t)$$ を積分したものを $$f^{(-1)} (t)$$ のように表すことにしましょう。
これは

$$
f^{(-1)} (t) 
= \int_0^t f(\tau) d\tau \tag{13}
$$

のように表現できることから、このラプラス変換は

$$
\mathcal{L} [f^{(-1)} (t)] 
= \int_0^\infty \left( \int_0^t f(\tau) d \tau \right) e^{-st} dt 
= \left[ -\frac{e^{-st}}{s} \int_0^t f(\tau) d\tau \right]_0^\infty + \frac{1}{s} \int_0^\infty f(t) e^{-st} dt \tag{14}
$$

のように整理されます。
関数 $$f(\tau)$$ の積分において、$$\lim_{t \rightarrow 0} \int_0^t f(\tau) d\tau = 0$$ を満たすような関数 $$f$$ について考えているとすると

$$
\mathcal{L} [f^{(-1)} (t)] 
= \frac{1}{s} \int_0^\infty f(t) e^{-st} dt 
= \frac{1}{s} F(s) \tag{15}
$$

のようになります。
先ほどのようにこの操作を繰り返すことで、$$n$$ 回積分した関数 $$f^{(-n)} (t)$$ のラプラス変換が

$$
\mathcal{L} [f^{(-n)} (t)] 
= \frac{1}{s^n} F(s) \tag{16}
$$

と求まります。

### 指数関数

$$e^{at}$$ のラプラス変換は

$$
\mathcal{L}[e^{at}] 
= \int_0^\infty e^{at} e^{-st} dt 
= \frac{1}{a-s} [e^{(a-s)t}]_0^\infty 
= \frac{1}{s-a} \tag{17}
$$

のようになります。
ただし、$$a<s$$ とします。

### べき乗

$$t^\nu$$ のラプラス変換を計算しましょう。

$$
\mathcal{L} [t^\nu] 
= \int_0^\infty t^\nu e^{-st} dt 
\underbrace{=}_{st = \tau} \int_0^\infty \left( \frac{\tau}{s}\right)^\nu e^{-\tau} \frac{d\tau}{s} 
= \frac{1}{s^{\nu+1}} \underbrace{\int_0^\infty \tau^\nu e^{-\tau} d\tau}_{=\Gamma(\nu+1)} 
= \frac{\Gamma (\nu+1)}{s^{\nu+1}} \tag{18}
$$

途中、[ガンマ関数](/math/gamma)の公式を用いました。
$$\nu=n$$ (正の整数) のとき、$$\Gamma(n+1) = n!$$ となります。

### $$e^{at} f(t)$$

この関数のラプラス変換を計算しましょう。

$$
\mathcal{L} [e^{at} f(t)] 
= \int_0^\infty e^{at} f(t) e^{-st} dt 
= \int_0^\infty f(t) e^{-(s-a)t} dt 
= F(s-a) \tag{19} 
$$

ここで、$$F(s)$$ は $$f(t)$$ のラプラス変換です。
すなわち、$$e^{at}$$ はラプラス変換結果を $$-a$$ だけシフトさせる効果があるとわかります。

### 三角関数

$$f(t) = \cos \omega t$$ のラプラス変換を計算しましょう。

$$
\begin{align}
\mathcal{L} [\cos \omega t] 
&= \int_0^\infty \cos \omega t e^{-st} dt 
= \int_0^\infty \frac{e^{i\omega t} + e^{-i\omega t}}{2} e^{-st} dt \notag \\
&= \frac{1}{2} \left( \int_0^\infty e^{(i\omega-s)t} dt + \int_0^\infty e^{-(i\omega +s)t} dt\right) \notag \\
&= \frac{1}{2} \left( \frac{1}{i\omega - s} \left[ e^{(i\omega -s)t} \right]_0^\infty - \frac{1}{i\omega + s} \left[ e^{-(i\omega +s)t} \right]_0^\infty \right) \notag \\
&= \frac{1}{2} \left( \frac{-1}{i\omega - s} + \frac{1}{i\omega + s} \right) 
= \frac{1}{2} \frac{-2s}{(i\omega + s) (i\omega -s)}
= \frac{s}{s^2 + \omega^2} \tag{20}
\end{align}
$$

同様に $$\sin \omega t$$ のラプラス変換も

$$
\begin{align}
\mathcal{L} [\sin \omega t] 
&= \int_0^\infty \sin \omega t e^{-st} dt 
= \int_0^\infty \frac{e^{i\omega t} - e^{-i\omega t}}{2i} e^{-st} dt \notag \\
&= \frac{1}{2i} \left( \int_0^\infty e^{(i\omega-s)t} dt - \int_0^\infty e^{-(i\omega +s)t} dt\right) \notag \\
&= \frac{1}{2i} \left( \frac{1}{i\omega - s} \left[ e^{(i\omega -s)t} \right]_0^\infty + \frac{1}{i\omega + s} \left[ e^{-(i\omega +s)t} \right]_0^\infty \right) \notag \\
&= \frac{1}{2i} \left( \frac{-1}{i\omega - s} - \frac{1}{i\omega + s} \right) 
= \frac{1}{2i} \frac{-2i\omega}{(i\omega + s) (i\omega -s)}
= \frac{\omega}{s^2 + \omega^2} \tag{21}
\end{align}
$$

のように求まります。

### 双曲線関数

$$
\begin{align}
\mathcal{L} [\cosh at] 
&= \int_0^\infty \cosh at e^{-st} dt 
= \int_0^\infty \frac{e^{at} + e^{-at}}{2} e^{-st} dt \notag \\
&= \frac{1}{2} \left( \int_0^\infty e^{(-s+a) t} dt + \int_0^\infty e^{(-s -a) t} dt \right) 
= \frac{1}{2} \left( \frac{1}{s-a} + \frac{1}{s+a} \right) 
= \frac{s}{s^2 - a^2} \tag{22}
\end{align}
$$

$$
\begin{align}
\mathcal{L} [\sinh at] 
&= \int_0^\infty \sinh at e^{-st} dt 
= \int_0^\infty \frac{e^{at} - e^{-at}}{2} e^{-st} dt \notag \\
&= \frac{1}{2} \left( \int_0^\infty e^{(-s+a) t} dt - \int_0^\infty e^{(-s -a) t} dt \right) 
= \frac{1}{2} \left( \frac{1}{s-a} - \frac{1}{s+a} \right) 
= \frac{a}{s^2 - a^2} \tag{23}
\end{align}
$$

## 畳み込み定理

[フーリエ変換](/math/fourier_transform)のときと同様に、ラプラス変換でも[畳み込み定理](/math/fourier_transform#畳み込み定理)が成り立ちます。
これを示してみましょう。
畳み込み操作を、次のように定義します。

$$
f \ast g(t) 
= \int_0^t f(t') g(t-t') dt' \tag{24}
$$

[フーリエ変換](/math/fourier_transform#畳み込み定理)のときとは異なり、積分範囲が $$[0, t]$$ となっています。
時刻 $$t$$ での応答 (記憶の蓄積) が、それ以前の入力 $$f(\tau) \ (\tau \leq t)$$ の蓄積で決定される、という物理的要請によるものです。
また $$t<0$$ では $$f(t) = g(t) = 0$$ とすることで、$$t=0$$ から物理現象が始まったとしています。  
この畳み込みのラプラス変換を計算しましょう。

$$
\mathcal{L} [f \ast g] 
= \int_0^\infty \left( \int_0^t f(t') g(t-t') dt' \right) e^{-st} dt 
= \int_0^\infty \int_0^t f(t') g(t-t') e^{-st} dt' dt \tag{25}
$$

この2重積分は、$$tt'$$平面での面積積分と見ることができます。
その積分領域は $$0 \leq t' \leq t < \infty$$ であるため、下図のような $$tt'$$ 平面上での三角形部分となります。

![](/assets/images/math/laplace_transform_01.png)  

よって $$t'$$ を先に固定し、$$t$$ については $$t' \leq t < \infty$$ の範囲で積分するようにしましょう。
このようにして積分順序を入れ替えると、次のようになります。

$$
\begin{align}
\mathcal{L} [f \ast g] 
&= \int_0^\infty \left( \int_{t'}^\infty f(t') g(t-t') e^{-st} dt \right) dt' 
\underbrace{=}_{u=t-t'}  \int_0^\infty \left( \int_{0}^\infty f(t') g(u) e^{-s(u+t')} du \right) dt' \notag \\
&= \int_0^\infty f(t') e^{-st'} dt' \int_{0}^\infty g(u) e^{-su} du 
= F(s) G(s) \tag{26}
\end{align}
$$

のようになります。
ここで $$G(s) = \mathcal{L} [g(t)]$$ のようにしました。

## ラプラス逆変換

ある関数 $$f(t)$$ のラプラス変換 $$F(s)$$ を、元の関数 $$f(t)$$ に戻す操作を、ラプラス逆変換と呼びます。
この逆変換は、複素平面上で実軸上の点 $$C$$ を通り、虚数軸に平行な直線に沿っての積分

$$
f(t) 
= \frac{1}{2\pi i} \int_{C-i\infty}^{C+i\infty} F(s) e^{st} ds \tag{27}
$$

のように与えられます。
演算子記号では $$\mathcal{L}^{-1}$$ を用い

$$
f(t) 
= \mathcal{L}^{-1} [F(s)] \tag{28}
$$

のように書きます。
こうして、$$f(t)$$ と $$F(s)$$ は1対1の対応をしています。
ラプラス逆変換を与える積分 (27) を、ブロムイッチ・ワグナー (Bromwich-Wagner) の積分といいます。  
ラプラス逆変換を計算する場合、複素平面での積分計算が必要となります。
毎回これを実行するのは骨が折れるため、実際にラプラス変換・ラプラス逆変換の計算を行うときには、ラプラス変換の早見表を用いるのが便利です。
次の部分では、実際にラプラス変換・逆変換を用いた解法や応用について見てみましょう。

{% include adsense.html %}

## 応用

### ラプラス変換を用いた微分方程式解法

ここまでの知識を用いて、次の $$y(t)$$ の微分方程式を解いてみましょう。
ただし、初期条件として $$y(0) = y'(0) = 1$$ が与えられているとします。

$$
y'' + 4y' + 3y 
= 0 \tag{29}
$$

未知の関数 $$y(t)$$ をラプラス変換したものを $$Y(s)$$ とすると

$$
\mathcal{L}[y'(t)] 
\underbrace{=}_{(9)} s Y(s) - y(0) 
= sY(s) - 1 \tag{30} 
$$

$$
\mathcal{L}[y''(t)] 
\underbrace{=}_{(10)} s^2 Y(s) - s y(0) - y'(0) 
= s^2 Y(s) - s - 1 \tag{31} 
$$

よって、(29)式をラプラス変換したものは

$$
s^2 Y(s) - s - 1 + 4 (sY(s) - 1) + 3Y(s) 
= (s^2 + 4s + 3) Y(s) - s - 5 
= 0 \tag{32}
$$

のようになります。
このようにラプラス変換をして得られるもう一つの方程式を、補助方程式と呼びます。
これを $$Y(s)$$ について解きましょう。

$$
Y(s) 
= \frac{s + 5}{s^2 + 4s + 3} 
= \frac{s + 5}{(s + 1)(s + 3)} \tag{33} 
$$

このままではラプラス逆変換をすることができません。
そこで

$$
\frac{s + 5}{(s + 1)(s + 3)} 
= \frac{A}{s+1} + \frac{B}{s+3} \tag{34}
$$

のように部分分数分解を行うことで、ラプラス逆変換できる形に直しましょう。
すると

$$
A(s+3) + B (s+1) 
= (A+B) s + (3A + B) 
= s + 5 \ \Longrightarrow \ 
A = 2, \ B = -1 \tag{35}
$$

のようになります。
よって最終的に

$$
Y(s) 
= \frac{2}{s+1} - \frac{1}{s+3} \tag{36}
$$

のように求まります。
これをラプラス逆変換しましょう。
(17)式より

$$
y(t) 
= 2e^{-t} - e^{-3t} \tag{37}
$$

のように、$$y(t)$$ を求めることができました。
これは $$y(0) = y'(0) = 1$$ の初期条件、そして微分方程式(29)を満たす解であることがわかります。

{: .note}
部分分数分解をしてラプラス変換できる形にするテクニックは、様々な応用問題で頻出します。
覚えておきましょう。

### 抵抗力のある運動方程式

流体中に浮遊する質量 $$m$$ の微粒子 (例えばコロイド粒子) の運動は、次の運動方程式で与えられます。

$$
\frac{dv}{dt} 
= - \frac{v}{\tau} + f(t) \tag{38}
$$

ここで $$v$$ は粒子の速度、$$\tau \equiv m / \zeta$$ は緩和時間、そして $$f(t)$$ は外力です。
$$\tau$$ を定義するために出てきた $$m$$ は微粒子の質量で、$$\zeta$$ は摩擦係数を表します。
これを、ラプラス変換を用いて解いてみましょう。
(9)式より

$$
s V(s) - v(0) 
= - \frac{V(s)}{\tau} + F(s) \ \Longrightarrow \ 
\left( s + \frac{1}{\tau} \right) V(s) 
= \frac{v(0)}{s + \frac{1}{\tau}} + \frac{F(s)}{s + \frac{1}{\tau}} \ \Longrightarrow \ \tag{39}
$$

ここで $$v, f$$ のラプラス変換をそれぞれ $$V, F$$ としました。
ラプラス変換により、初期条件の寄与と外力に寄与を、分離することができました。
(39)式をラプラス逆変換しましょう。
(17)式より

$$
\mathcal{L}^{-1} \left[ \frac{v(0)}{s + \frac{1}{\tau}}\right] 
= v(0) e^{-t/\tau} \tag{40}
$$

を得ます。
これは外力が存在せず、摩擦により初期の運動が減衰する様子を表しています。
第二項については、$$F(s)$$ と $$\frac{1}{s + \frac{1}{\tau}}$$ の積なので、畳み込み定理 (26)式より

$$
\mathcal{L}^{-1} \left[ \frac{F(s)}{s+\frac{1}{\tau}}\right] 
= \int_0^t f(t') e^{-(t-t')/\tau} dt' \tag{41}
$$

のようになるため、この方程式の解は

$$
v(t) 
= v(0) e^{-t/\tau} + \int_0^t f(t') e^{-(t-t')/\tau} dt' \tag{42}
$$

のようになります。
初期の速度 $$v(0)$$ が時間 $$t$$ の経過により緩和したもの $$v(0) e^{-t/\tau}$$ と、時刻 $$t'$$ の に加えられた外力 $$f(t')$$ が $$t-t'$$ の経過により緩和したものを $$0 \leq t' \leq t$$ で積分したものを足し合わせた形となっています。

{: .note}
外力 $$f(t)$$ が流体分子から受ける力の絶えず変動する部分 (揺動力) である場合、特に $$\overline{f(t)} = 0, \overline{f(t) f(t')} = 2\zeta k_B T \delta (t-t')$$ のような平均値と相関関数を持つ場合、(38)の微粒子の運動方程式をランジュバン (Langevin) 方程式と呼びます。そしてこのような微粒子の熱運動をブラウン運動と呼びます。

## 参考文献

[1] [霜田光一, 桜井 捷海, "エレクトロニクスの基礎"](https://amzn.to/4wAOuib)  
[2] [寺沢寛一, "自然科学者のための数学概論 応用編"](https://amzn.to/4w0blCD)  
[3] [森口繁一, 宇田川銈久, 一松信, "岩波 数学公式II 級数・フーリエ解析"](https://amzn.to/4oNhDDg)  
[4] [久保亮五, "大学演習 熱学・統計力学"](https://amzn.to/4oQ5uxy)  
[5] [H・ハーケン, "協同現象の数理 -物理、生物、化学的系における自律形成"](https://amzn.to/4uXdIoO)  

{% include adsense.html %}