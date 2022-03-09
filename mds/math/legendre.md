---
layout: default
title: ルジャンドル多項式
parent: 数学
math: mathjax3
permalink: /math/legendre
nav_order: 14
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

# ルジャンドル多項式

## 母関数展開からの導出

母関数展開

$$
\frac{1}{\sqrt{1-2zw+w^2}} 
= \sum_{n=0}^\infty P_n(z) w^n \tag{1}
$$

によって定義される$$P_n(z)$$をルジャンドル多項式と呼びます。$$X = 2zw - w^2$$とおいて、左辺を$$X=0$$の周りでTaylor展開すると

$$
\begin{align}
\frac{1}{\sqrt{1-X}} 
&= 1 + \frac{1}{2} X + \frac{1}{2!} \frac{1}{2} \frac{3}{2} X^2 + \frac{1}{3!} \frac{1}{2} \frac{3}{2} \frac{5}{2} X^3 + \cdots + \frac{1}{m!} \frac{(2m)!}{2^m m!} \frac{1}{2^m} X^m + \cdots \notag \\
&= \sum_{m=0}^\infty \frac{1}{m!} \frac{(2m)!}{2^m m!} \frac{1}{2^m} X^m \tag{2}
\end{align}
$$

のようになります。一方

$$
X^m 
= (2zw - w^2)^m 
= \sum_{\ell=0}^m {}_\ell C_{m-\ell} (2zw)^\ell (-w^2)^{m-\ell} 
= \sum_{\ell=0}^m \frac{(-1)^{m-\ell} m!}{\ell ! (m-\ell)!} (2z)^\ell w^{2m-\ell} \tag{3}
$$

より、これを(2)式に代入すると

$$
\frac{1}{\sqrt{1-2zw+w^2}} 
= \sum_{m=0}^\infty \frac{1}{m!} \frac{(2m)!}{2^m m!} \frac{1}{2^m} \sum_{\ell =0}^m \frac{(-1)^{m-\ell} m!}{\ell ! (m-\ell)!} (2z)^\ell w^{2m-\ell} \notag
= \sum_{m=0}^\infty \sum_{\ell=0}^m \frac{(2m)!}{2^m m!} \frac{1}{2^{m-\ell}} \frac{(-1)^{m-\ell}}{\ell ! (m-\ell)!} z^\ell w^{2m-\ell} \tag{4}
$$

となります。ここで$$n = 2m-\ell, \ell=n-2k$$のようにパラメータを変換し、$$\ell, m$$を消去することを考えましょう。すると$$n = k+m$$であり、さらに$$\ell$$についての総和を取る範囲が

$$
0 \leq \ell \leq m \ \Longrightarrow \ 
0 \leq n - 2k \leq n-2k \ \Longrightarrow \ 
2k \leq n \leq n+k \tag{5}
$$

のようになります。これより$$k$$に対して$$n \geq 2k, k\geq 0$$という条件を得ることができます。すると(4)式は

$$
\frac{1}{\sqrt{1-2zw+w^2}} 
= \sum_{n=0}^\infty \sum_{k=0}^{[n/2]} \frac{(2n-2k)!}{2^{n-k} (n-k)!} \frac{1}{2^k} \frac{(-1)^k}{(n-2k)! k!} z^{n-2k} w^n 
= \sum_{n=0}^\infty \sum_{k=0}^{[n/2]} \frac{(2n-2k)!}{2^n (n-k)!} \frac{(-1)^k}{(n-2k)! k!} z^{n-2k} w^n \tag{6}
$$

途中の$$[n/2]$$は$$n/2$$を超えない整数を表すガウス記号です。以上より(6)式と(1)式を比較して

$$
P_n (z) 
= \frac{1}{2^n} \sum_{k=0}^{[n/2]} \frac{(-1)^k (2n-2k)!}{k! (n-k)! (n-2k)!} z^{n-2k} \tag{7}
$$

とわかります。  

## ロドリゲスの公式

これの別表記を考えていきましょう。

$$
(z^2-1)^n 
= \sum_{k=0}^n {}_k C_{n-k} (-1)^k z^{2(n-k)} 
= \sum_{k=0}^n \frac{n!}{k! (n-k)!} (-1)^k z^{2(n-k)} \tag{8}
$$

この両辺の$$z$$の$$n$$階微分を考えると

$$
\begin{align}
\frac{d^n}{dz^n} (z^2-1)^n 
&= \sum_{k=0}^n \frac{n!}{k! (n-k)!} (-1)^k \frac{d^n}{dz^n} z^{2(n-k)} \notag \\
&= \sum_{k=0}^{[n/2]} \frac{n!}{k! (n-k)!} (-1)^k (2n-2k) (2n-2k-1) \cdots (2n-2k-n+1) z^{n-2k} \notag \\
&= \sum_{k=0}^{[n/2]} \frac{n!}{k! (n-k)!} (-1)^k \frac{(2n-2k)!}{(2n-2k-n)!} z^{n-2k}
= n! \sum_{k=0}^{[n/2]} \frac{(-1)^k (2n-2k)!}{k! (n-k)! (n-2k)!} z^{n-2k} \tag{9}
\end{align}
$$

これと(7)式を比較すると

$$
P_n(z) 
= \frac{1}{2^n n!} \frac{d}{dz^n} (z^2-1)^n \tag{10}
$$

となります。これをRodriguesの公式と呼びます。

## シュラーフリの公式

留数定理より、関数$$f(z)$$の$$n$$階微分を$$f^{(n)}$$とすると

$$
f^{(n)} (z) 
= \frac{n!}{2 \pi i} \oint_C \frac{f(t)}{(t-z)^{n+1}} dt
$$

の様に書けます。ここで$$C$$は点$$z$$を正方向に1回転する積分路です。これに$$f(z) = (z^2-1)^n/(2^n n!)$$を代入すると、(10)式より

$$
P_n (z) = \frac{1}{2^n 2 \pi i} \oint_C \frac{(t^2-1)^n}{(t-z)^{n+1}} dt \tag{11}
$$

これをSchlafliの公式と呼びます。

{% include adsense.html %}

## 漸化式

(1)式の両辺を$$w$$で微分すると

$$
\begin{align}
&\frac{z-w}{(1-2zw+w^2)^{3/2}} 
= n\sum_{n=1}^\infty P_n (z) w^{n-1} 
= n\sum_{n=0}^\infty P_n (z) w^{n-1} \notag \\ 
&\Longrightarrow \ 
\frac{z-w}{\sqrt{1-2zw + w^2}} 
= \sum_{n=0}^\infty n P_n (z) (1-2zw + w^2) w^{n-1} \notag \\
&= \sum_{n=0}^\infty (n+1) P_{n+1} (z) w^{n} -2z \sum_{n=0}^\infty n P_n (z) w^n + \sum_{n=1}^\infty (n-1) P_{n-1} (z) w^n \tag{12}
\end{align}
$$

また最左辺は(1)式より

$$
(z-w) \sum_{n=0}^\infty P_n (z) w^n 
= z \sum_{n=0}^\infty P_n (z) w^n - \sum_{n=1}^\infty P_{n-1} w^n
$$

よって、$$w^n$$の係数を比較することで

$$
(n+1) P_{n+1} - (2n+1) z P_n + n P_{n-1} 
= 0 \quad (n \geq 1) \tag{13}
$$

を得ます。さらに(1)式を$$z$$で微分すると

$$
\frac{w}{(1-2zw+w^2)^{3/2}} 
= \sum_{n=0}^\infty P_n' w^n \tag{14}
$$

この式の両辺に$$z/w$$をかけると

$$
\frac{z}{(1-2zw+w^2)^{3/2}} 
= z \sum_{n=0}^\infty P_n' w^{n-1}
= z \sum_{n=0}^\infty P_{n+1}' w^{n} \tag{15}
$$

(15)式の最後の等号には$$P_0'=0$$を用いました。(14), (15)式の辺々を引き算すると

$$
\frac{z-w}{(1-2zw+w^2)^{3/2}} 
= \sum_{n=0}^\infty (z P_{n+1}' - P_n') w^n 
$$

(12)式の途中から

$$
\sum_{n=0}^\infty (n+1) P_{n+1} (z) w^n 
= \sum_{n=0}^\infty (z P_{n+1}' - P_n') w^n \ \Longrightarrow \ 
(n+1) P_{n+1} = z P_{n+1}' - P_n' \tag{16}
$$

という漸化式を得ます。他にもLegendre多項式が満たす漸化式をいくつか証明しましょう。(13)式の両辺を$$z$$で微分すると

$$
\begin{aligned}
(n+1) P_{n+1}' - (2n+1) (P_n + zP_n') + n P_{n-1}' 
&= (n+1) (P_{n+1}' - zP_n') - n\underbrace{(zP_n'-P_{n-1}')}_{(16)式のn \rightarrow n-1} - (2n+1) P_n \\
&= (n+1) (P_{n+1}' - zP_n') - (n+1)^2 P_n 
= 0
\end{aligned}
$$

以上より

$$
P_{n+1}' - zP_n' - (n+1) P_n 
= 0 \tag{17}
$$

また(17)式の左辺第2項に(16)式の$$n \rightarrow n-1$$を適用すれば

$$
P_{n+1}' -nP_n -P_{n-1}'-(n+1) P_n 
= P_{n+1}' -(2n+1) P_n - P_{n-1}' 
= 0 \tag{18}
$$

さらに(17)式において$$n \rightarrow n-1$$とすれば

$$
P_n' - zP_{n-1} -n P_{n-1} 
\underbrace{=}_{(16)のn \rightarrow n-1} P_n' - z(zP_n'-nP_n) - n P_{n-1} 
= (1-z^2) P_n" + nzP_n-nP_{n-1} 
=0 \tag{19}
$$

となります。また(1)式で$$z \rightarrow -z$$と置換すると

$$
\frac{1}{\sqrt{1+2zw+w^2}} 
= \sum_{n=0}^\infty P_n(-z)w^n
$$

同様に(1)式で$$w \rightarrow -w$$と置換すると

$$
\frac{1}{\sqrt{1+2zw+w^2}} 
= \sum_{n=0}^\infty P_n(z) (-1)^n w^n
$$

この2つを比較することで

$$
P_n(-z) = (-1)^n P_n(z) \tag{20}
$$

{% include adsense.html %}

## ルジャンドルの微分方程式

Legendre多項式が満たす微分方程式を導出しましょう。$$f(z) = (z^2-1)^n$$とすると

$$
f' 
= 2zn (z^2-1)^{n-1} 
= \frac{2zn}{z^2-1} f
$$

$$
f'' 
= 2n(z^2-1)^{n-1} + 4z^2 n (n-1) (z^2-1)^{n-2} 
= \frac{2n}{z^2-1} f + \frac{2z(n-1)}{z^2-1} f' \ \Longrightarrow \
(z^2-1) f'' - 2z(n-1) f' -2nf 
= 0
$$

この式の両辺を$$d^n/dz^n$$微分します。このとき

$$
\frac{d^n}{dz^n} \{ (z^2-1) f''\} 
= \sum_{k=0}^n {}_n C_k \left\{ \frac{d^k}{dz^k} (z^2-1)\right\} \left\{ \frac{d^{n-k}}{dz^{n-k}} f'' \right\} 
= (z^2-1) \frac{d^n}{dz^n} f'' + 2zn \frac{d^{n-1}}{dz^{n-1}} f'' + 2\frac{n(n-1)}{2} \frac{d^{n-2}}{dz^{n-2}} f'' 
$$

$$
\frac{d^n}{dz^n} (zf') 
= \sum_{k=0}^n {}_n C_k \left\{ \frac{d^k}{dz^k} z\right\} \left\{ \frac{d^{n-k}}{dz^{n-k}} f' \right\}
= z \frac{d^n}{dz^n} f' + n \frac{d^{n-1}}{dz^{n-1}} f' 
= z \frac{d^n}{dz^n} f' + n \frac{d^n}{dz^n} f
$$

より

$$
\begin{aligned}
&(z^2-1) \frac{d^n}{dz^n} f'' + 2zn \frac{d^n }{dz^n} f' + n (n-1) \frac{d^n}{dz^n} f - 2n \frac{d^n}{dz^n} f - 2n (n-1) z \frac{d^n}{dz^n} f' - 2n(n-1) \frac{d^n}{dz^n} f \\
&= (z^2-1) \frac{d^2}{dz^2} f^{(n)} + 2z \frac{d}{dz} f^{(n)} - n(n+1) f^{(n)} = 0
\end{aligned}
$$

ここで(10)式より、両辺を$$2^n n!$$で割れば

$$
(1-z^2) \frac{d^2}{dz^2} P_n (z) - 2z \frac{d}{dz} P_n (z) + n(n+1) P_n (z) 
= 0 \tag{21}
$$

となります。これをLegendreの微分方程式と呼び、Legendre多項式はこの微分方程式の解となっていることがわかります。

## ルジャンドル多項式の直交性

直交性を証明しましょう。そのためにまずは次の計算を行います。

$$
\begin{aligned}
\int_{-1}^1 z^m P_n (z) dz 
&\underbrace{=}_{(10)} \frac{1}{2^n n!} \int_{-1}^1 z^m \frac{d^n}{dz^n} (z^2-1)^n dz 
= \frac{1}{2^n n!} \left\{ \left[z^m \frac{d^{n-1}}{dz^{n-1}} (z^2-1)^n \right]_{-1}^1 - \int_{-1}^1 m z^{m-1} \frac{d^{n-1}}{dz^{n-1}} (z^2-1)^n \right\} \\
&= - \frac{m}{2^n n!} \int_{-1}^1 z^{m-1} \frac{d^{n-1}}{dz^{n-1}} (z^2-1)^n dz
\end{aligned}
$$

$$[\cdots ]$$部分は$$z^2-1$$が必ず1つ残るため、$$z = \pm 1$$で必ず0となります。この作業を$$k$$回$$(k \leq n, m)$$回繰り返すと

$$
\int_{-1}^1 z^m P_n(z) dz 
= \frac{(-1)^k m!}{(m-k)! 2^n n!} \int_{-1}^1 z^{m-k} \frac{d^{n-k}}{dz^{n-k}} (z^2-1)^n dz 
$$

を得ます。ここで$$n, m$$について場合分けして考えましょう。

### $$n > m$$のとき

この作業を$$k=m$$まで行うことができて

$$
\int_{-1}^1 z^m P_n(z) dz 
= \frac{(-1)^m m!}{2^n n!} \int_{-1}^1 \frac{d^{n-m}}{dz^{n-m}} (z^2-1)^n dz 
= \frac{(-1)^m m!}{2^n n!} \left[ \frac{d^{n-m-1}}{dz^{n-m-1}} (z^2-1)^n\right]_{-1}^1 
= 0
$$

### $$m >n$$のとき

この作業を$$k=n$$まで行うことができて

$$
\begin{aligned}
\int_{-1}^1 z^m P_n(z) dz 
&= \frac{(-1)^n m!}{(m-n)! 2^n n!} \int_{-1}^1 z^{m-n} (z^2-1)^n dz \\
&= \frac{(-1)^n m!}{(m-n)! 2^n n!} \left\{ \left[ \frac{z^{m-n+1}}{m-n+1} (z^2-1)^n\right]_{-1}^1 - \int_{-1}^1 \frac{2n z^{m-n+2}}{m-n+1} (z^2-1)^{n-1} dz \right\} \\
&= \frac{(-1)^n m!}{(m-n)! 2^n n!} \frac{-2n}{m-n+1} \int_{-1}^1 z^{m-n+2} (z^2-1)^{n-1} dz
= \cdots \\
&= \frac{(-1)^n m!}{(m-n)! 2^n n!} \frac{(-2)^n n!}{(m-n+1)(m-n+3) \cdots (m-n+2n+1)} \int_{-1}^1 z^{m-n+2} dz
\end{aligned}
$$

最後の積分部分は$$m-n$$が奇数か偶数かで計算結果が変わります。よって

$$
\int_{-1}^1 z^m P_n(z) dz 
= \left\{ \begin{array}{ll}
0 & (m-nが奇数)\\
\frac{2 m! }{(m-n)!} \frac{(m-n-1)(m-n-3) \cdots 1}{(m-n+2n+1) \cdots (m-n+1)(m-n-1) \cdots 1} & (m-nが偶数)
\end{array} \right. \tag{22}
$$

### ルジャンドル多項式の直交性

この2つの場合分けから、先程の式は$$m>n$$かつ$$m-n$$が偶数の場合のみ値を持ちます。$$P_m(z)$$は$$z$$の$$m$$次多項式であるため、$$m \neq n$$であれば、$$P_m (z), P_n (z)$$はどちらかは必ず他方より小さな次数の多項式となります。上式は$$m, n$$を入れ替えても成り立つ式であるため

$$
\int_{-1}^1 P_m (z) P_n (z) 
= 0 \quad (m \neq n)
$$

がどのような$$m, n$$でも成立します。  
$$m=n$$のとき、$$P_n (z)$$の最高次の項の係数は(7)式より$$(2n)!/(2^n n!^2)$$、それ以外の項は積分値が0となることから

$$
\begin{aligned}
\int_{-1}^1 P_n (z) P_n (z) dz
&= \frac{(2n)!}{2^n n!^2} \int_{-1}^1 z^n P_n (z) dz 
\underbrace{=}_{(22)} \frac{(2n)!}{2^n n!^2} \frac{2n!}{(2n+1)(2n-1) \cdots 1} \notag \\
&= \frac{2n (2n-1) \cdots 2 \cdot 1 }{2n (2n-2) \cdots 4 \cdot 2} \frac{2}{(2n+1)(2n-1) \cdots 3 \cdot 1} 
= \frac{2}{2n+1}
\end{aligned}
$$

以上より

$$
\int_{-1}^1 P_m (z) P_n (z) dz 
= \frac{2}{2n+1} \delta_{mn} \tag{23}
$$

という直交性が示されました。

{% include adsense.html %}

## ルジャンドル多項式の概形

以下にいくつかの$$n$$に対するLegendre多項式を図示するスクリプトを示します。

```python
import numpy as np
import matplotlib.pyplot as plt
import scipy.special as sc

if __name__ == '__main__':
    # set variables
    ix = 100
    xmin = -1.0
    xmax = 1.0
    nmin = 0
    nmax = 5
    # set x coordinate
    x = np.linspace(xmin, xmax, ix)
    # main loop of plotting Bessel functions
    for n in range(nmin, nmax):
        ei = sc.eval_legendre(n, x)
        string = "n={}".format(n)
        plt.plot(x, ei, label=string)
        plt.legend()
    # make plot window
    plt.show()
```

そしてこのスクリプトを用いて図示された結果は以下のようになります。

![Legendre多項式。](/assets/images/math/legendre.png)

# 参考文献

[1] 田島, 近藤, "改訂演習工科の数学4, 複素関数"  
[2] 中山, "裳華房フィジックスライブリー, 物理数学II"  
[3] 福山, 小形, "基礎物理学シリーズ3, 物理数学I"  

{% include adsense.html %}
