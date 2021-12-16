---
layout: default
title: 球Bessel関数と球Neumann関数
parent: 数学
math: mathjax3
permalink: /math/sph_bessel
nav_order: 13
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

# 球ベッセル、球ノイマン関数の公式導出

## 球ベッセル関数と球ノイマン関数

0以上の整数$$n$$に対して、球ベッセル関数$$j_n$$と球ノイマン関数$$y_n$$を以下のように定義します。

$$
j_n (z) 
= \sqrt{\frac{\pi}{2z}} J_{n+1/2} (z) 
= \frac{\sqrt{\pi}}{2} \sum_{k=0}^\infty \frac{(-1)^k}{\Gamma(n+k+3/2) k!} \left(\frac{z}{2}\right)^{n+k} = (-1)^n z^n \left(\frac{1}{z} \frac{d}{dz} \right)^n \frac{\sin z}{z}
$$

$$
y_n (z) 
= (-1)^{n+1} \sqrt{\frac{\pi}{2z}} J_{-n-1/2} (z) 
= (-1)^{n+1} \frac{\sqrt{\pi}}{2} \sum_{\ell=0}^\infty \frac{(-1)^\ell}{\Gamma(-n+\ell+1/2) \ell!} \left(\frac{z}{2}\right)^{-n+\ell-1} 
= (-1)^{n+1} z^n \left(\frac{1}{z} \frac{d}{dz} \right)^n \frac{\cos z}{z}
$$

ここで$$J$$はベッセル関数です。半整数次のベッセル関数を用いて定義しています。

## 球ハンケル関数

上述の2つの函数を用いて、第1, 2種ハンケル関数$$h_n^{(1)}, h_n^{(2)}$$をそれぞれ

$$
h_n^{(1)} \equiv j_n + i y_n
$$

$$
h_n^{(2)} \equiv j_n - i y_n
$$

と定義します。定義式より

$$
h_n^{(1)} 
= (-1)^n z^n  \left( \frac{1}{z} \frac{d}{dz} \right)^n (\frac{\sin z}{z} - i\frac{\cos z}{z}) 
= (-1)^{n+1} i z^n \left( \frac{1}{z} \frac{d}{dz} \right)^n \frac{e^{iz}}{z}
$$

$$
h_n^{(2)} 
= (-1)^n z^n  \left( \frac{1}{z} \frac{d}{dz} \right)^n (\frac{\sin z}{z} + i\frac{\cos z}{z}) 
= (-1)^{n} i z^n  \left( \frac{1}{z} \frac{d}{dz} \right)^n \frac{e^{-iz}}{z}
$$

と書けます。これをさらに$$z^2$$微分を用いて整理しましょう。

$$
\ell = z^2 \ \Longrightarrow \ d\ell = 2zdz \ \Longrightarrow \ 
\frac{d}{d\ell} = \frac{d}{dz^2} = \frac{1}{2z} \frac{d}{dz} \ \Longrightarrow \ 
\left(\frac{1}{z} \frac{d}{dz} \right)^n 
= 2^n \left(\frac{d}{dz^2} \right)^n
$$

より

$$
h_n^{(1)} = (-1)^{n+1} (2z)^n \left( \frac{d}{dz^2}\right)^n \frac{e^{iz}}{z}
$$

$$
h_n^{(2)} = (-1)^{n} (2z)^n \left( \frac{d}{dz^2}\right)^n \frac{e^{-iz}}{z}
$$

## 球ハンケル関数が満たす漸化式

簡単のため、微分演算子$$\hat{a} \equiv d/dz^2$$を定義ます。

$$
[z^2, \hat{a}] f(z^2) 
= z^2 \hat{a} f(z^2) -\hat{a} (z^2 f(z^2)) 
= z^2 \hat{a} f(z^2) - f(z^2) -z^2 \hat{a} f(z^2) 
= -f(z^2)
$$

より、この演算子は交換関係

$$
z^2 \hat{a} - \hat{a} z^2 = -1
$$

を満たします。また任意の演算子において

$$
[A, BC] 
= ABC-BCA 
= (ABC-BAC) + (BAC- BCA) 
= [A, B]C + B[A, C]
$$

が成立するので

$$
\begin{align}
[z^2, \hat{a}^{n+1}] 
&= [z^2, \hat{a}\hat{a}^n] 
= [z^2, \hat{a}] \hat{a}^n + \hat{a}[z^2, \hat{a}^n] 
= -\hat{a}^n + \hat{a}[z^2, \hat{a}\hat{a}^{n-1}] 
= -\hat{a}^n + \hat{a}([z^2, \hat{a}]\hat{a}^{n-1}+ \hat{a} [z^2, \hat{a}^{n-1}]) \notag \\
&= -2\hat{a}^n + \hat{a}^2 [z^2, \hat{a}^{n-1}] 
= \cdots 
= -n \hat{a}^n + \hat{a}^n [z^2, \hat{a}] 
= (-n+1) \hat{a}^n \tag{1}
\end{align}
$$

$$
\therefore \ 
z^2 \hat{a}^{n+1} 
= \hat{a}^{n+1} z^2 - (n+1) \hat{a}^n
$$

よって

$$
\begin{align}
zh_{n+1}^{(1)} 
&= zi (-1)^{n+1} (2z)^{n+1} \hat{a}^{n+1} (e^{iz}/z) 
= 2i (-1)^{n+1} (2z)^{n} \underbrace{z^2\hat{a}^{n+1}}_{(1)} (e^{iz}/z) 
= 2i (-1)^{n+1} (2z)^{n} (\hat{a}^{n+1} z^2 - (n+1)\hat{a}^n) (e^{iz}/z) \notag \\
&= 2(n+1)h_n^{(1)} + 2i(-1)^n (2z)^n \hat{a}^{n+1} (ze^{iz}) \tag{2}
\end{align}
$$

$$
\begin{align}
zh_{n+1}^{(2)} 
&= zi (-1)^{n} (2z)^{n+1} \hat{a}^{n+1} (e^{-iz}/z) 
= 2i (-1)^{n} (2z)^{n} \underbrace{z^2\hat{a}^{n+1}}_{(1)} (e^{-iz}/z) 
= 2i (-1)^{n} (2z)^{n} (\hat{a}^{n+1} z^2 - (n+1)\hat{a}^n) (e^{-iz}/z) \notag \\
&= 2(n+1)h_n^{(2)} + 2i(-1)^n (2z)^n \hat{a}^{n+1} (ze^{-iz}) \tag{3}
\end{align}
$$

となります。ここで$$\hat{a} = d/dz^2 = d/d\ell$$とすると

$$
\hat{a}^2 (ze^{iz}) 
= \hat{a}^2 (\ell^{1/2} e^{i\ell^{1/2}}) 
= \hat{a} (\frac{1}{2} \ell^{-1/2} e^{i\ell^{1/2}} + \frac{1}{2} i e^{i\ell^{1/2}}) 
= \hat{a} \frac{1}{2} \ell^{-1/2} e^{i\ell^{1/2}} + \frac{1}{2} i \hat{a} e^{i\ell^{1/2}} 
= \frac{1}{2} \hat{a} (e^{iz}/z) - \frac{1}{4} (e^{iz}/z)
$$

$$
\hat{a}^2 (ze^{-iz}) 
= \hat{a}^2 (\ell^{1/2} e^{-i\ell^{1/2}}) 
= \hat{a} (\frac{1}{2} \ell^{-1/2} e^{-i\ell^{1/2}} - \frac{1}{2} i e^{i\ell^{1/2}}) 
= \hat{a} \frac{1}{2} \ell^{-1/2} e^{-i\ell^{1/2}} - \frac{1}{2} i \hat{a} e^{-i\ell^{1/2}} 
= \frac{1}{2} \hat{a} (e^{-iz}/z) - \frac{1}{4} (e^{-iz}/z)
$$

のように計算できます。これらを用いて(2), (3)をさらに整理していきます。

$$
\begin{aligned}
zh_{n+1}^{(1)} 
&= 2(n+1)h_n^{(1)} + 2i(-1)^n (2z)^n \hat{a}^{n-1} \hat{a}^2 (ze^{iz}) 
= 2(n+1)h_n^{(1)} + 2i(-1)^n (2z)^n \hat{a}^{n-1} (\frac{1}{2} \hat{a} (e^{iz}/z) - \frac{1}{4} (e^{iz}/z)) \\
&= 2(n+1)h_n^{(1)} - i (-1)^{n+1} (2z)^n \hat{a}^n (e^{iz}/z) - zi (-1)^n (2z)^{n-1} \hat{a}^{n-1} (e^{iz}/z)
=(2n+1) h_n^{(1)} - zh_{n-1}^{(1)}
\end{aligned}
$$

$$
\therefore \ \frac{2n+1}{z} h_{n}^{(1)} = h_{n+1}^{(1)} + h_{n-1}^{(1)}
$$

$$
\begin{aligned}
zh_{n+1}^{(2)} 
&= 2(n+1)h_n^{(2)} + 2i(-1)^{n} (2z)^n \hat{a}^{n-1} \hat{a}^2 (ze^{-iz}) 
= 2(n+1)h_n^{(2)} + 2i(-1)^{n} (2z)^n \hat{a}^{n-1} (\frac{1}{2} \hat{a} (e^{-iz}/z) - \frac{1}{4} (e^{-iz}/z)) \\
&= 2(n+1)h_n^{(2)} - i (-1)^{n} (2z)^n \hat{a}^n (e^{-iz}/z) - (-1)^2 zi (-1)^{n} (2z)^{n-1} \hat{a}^{n-1} (e^{-iz}/z)
=(2n+1) h_n^{(2)} - zh_{n-1}^{(2)}
\end{aligned}
$$

$$
\therefore \ \frac{2n+1}{z} h_{n}^{(2)} = h_{n+1}^{(2)} + h_{n-1}^{(2)}
$$

のような漸化式を満たします。  

さらに$$h_n^{(1)}, h_n^{(2)}$$を微分したものを考えましょう。

$$
\frac{d h_n^{(1)}}{dz} 
= 2ni (-1)^{n+1} (2z)^{n-1} \hat{a}^n (e^{iz}/z) + i(-1)^{n+1} (2z)^n \frac{d}{dz} (\hat{a}^n (e^{iz}/z))
$$

ここで$$\ell = z^2 \rightarrow \hat{a} = \frac{d}{d\ell} = (2z)^{-1} d/dz$$より

$$
\frac{dh_n^{(1)}}{dz} 
= 2ni (-1)^{n+1} (2z)^{n-1} \hat{a}^n (e^{iz}/z) + i(-1)^{n+1} (2z)^{n+1} \hat{a}^{n+1} (e^{iz}/z) 
= \frac{n}{z} h_n^{(1)} - h_{n+1}^{(1)} \tag{4}
$$

同様に

$$
\frac{dh_n^{(2)}}{dz} 
= 2ni (-1)^{n} (2z)^{n-1} \hat{a}^n (e^{-iz}/z) + i(-1)^{n} (2z)^{n+1} \hat{a}^{n+1} (e^{-iz}/z) 
= \frac{n}{z} h_n^{(2)} - h_{n+1}^{(2)}
$$

これらを用いて、以下の漸化式を得ることができます。

$$
\frac{dh_n^{(1)}}{dz} 
= \frac{n}{z} h_n^{(1)} - \frac{1}{z} ((2n+1) h_n^{(1)} - zh_{n-1}^{(1)}) 
= - \frac{n+1}{z} h_n^{(1)} + h_{n-1}^{(1)} \tag{5}
$$

$$
\frac{dh_n^{(2)}}{dz} 
= \frac{n}{z} h_n^{(2)} - \frac{1}{z} ((2n+1)h_n^{(2)}-z h_{n-1}^{(2)}) 
= -\frac{n+1}{z} h_n^{(2)} + h_{n-1}^{(2)} \tag{6}
$$

$$
\frac{dh_n^{(1)}}{dz} 
= \frac{n}{2n+1} (h_{n+1}^{(1)} + h_{n-1}^{(1)}) - h_{n+1}^{(1)} 
= - \frac{n+1}{2n+1} h_{n+1}^{(1)} + \frac{n}{2n+1} h_{n-1}^{(1)} \tag{7}
$$

$$
\frac{d h_n^{(2)}}{dz} 
= \frac{n}{2n+1} (h_{n+1}^{(2)} + h_{n-1}^{(2)}) - h_{n+1}^{(2)} 
= - \frac{n+1}{2n+1} h_{n+1}^{(2)} + \frac{n}{2n+1} h_{n-1}^{(2)} \tag{8}
$$

## 球ハンケル関数の満たす微分方程式

さらに$$z \times$$ (4)式より

$$
z\frac{d h_n^{(1)}}{dz} 
= n h_n^{(1)} - z h_{n+1}^{(1)} 
$$

この両辺を$$z$$で微分すると

$$
\begin{align}
&\frac{d h_n^{(1)}}{dz} + z \frac{d^2 h_n^{(1)}}{dz^2} 
= n \frac{d h_n^{(1)}}{dz} - h_{n+1}^{(1)} - z \underbrace{\frac{d h_{n+1}^{(1)}}{dz}}_{(5)} 
= n \frac{d h_n^{(1)}}{dz} - h_{n+1}^{(1)} - z (-\frac{n+2}{z} h_{n+1}^{(1)} + h_{n}^{(1)}) \notag \\
&= n \frac{d h_n^{(1)}}{dz} + (n+1) \underbrace{h_{n+1}^{(1)}}_{(4)} - z h_{n}^{(1)} \notag \\
&\Longrightarrow \ 
\frac{d h_n^{(1)}}{dz} + z \frac{d^2 h_n^{(1)}}{dz^2} 
= n \frac{d h_n^{(1)}}{dz} + (n+1) (\frac{n}{z} h_n^{(1)} - \frac{d h_n^{(1)}}{dz}) - z h_n^{(1)} 
= -\frac{d h_n^{(1)}}{dz} + \frac{n (n+1)}{z} h_n^{(1)} - z h_n^{(1)} \notag \\
&\Longrightarrow \ 
\frac{2}{z} \frac{d h_n^{(1)}}{dz} + \frac{d^2 h_n^{(1)}}{dz^2} 
= \frac{n(n+1)}{z^2} h_n^{(1)} - h_n^{(1)} \tag{9}
\end{align}
$$

$$
\therefore \ \frac{1}{z^2} \frac{d}{dz} \left( z^2 \frac{dh_n^{(1)}}{dz}\right) + \left( 1- \frac{n(n+1)}{z^2}\right) h_n^{(1)} 
= 0
$$

これが球ハンケル関数が満たす微分方程式です。

{% include adsense.html %}

## 球ベッセル関数と球ノイマン関数が満たす微分方程式

球ハンケル関数の定義より、球ベッセル関数・球ノイマン関数は球ハンケル関数の重ね合わせで表現されます。よってこれまで示した漸化式と微分方程式は球ベッセル関数・球ノイマン関数も満たします。よって

$$
\frac{d^2 j_n}{dz^2} + \frac{2}{z} \frac{d j_n}{dz} + (1-\frac{n(n+1)}{z^2}) j_n = 0 \tag{10}
$$

$$
\frac{d^2 y_n}{dz^2} + \frac{2}{z} \frac{d y_n}{dz} + (1-\frac{n(n+1)}{z^2}) y_n = 0 \tag{11}
$$

をそれぞれ満たします。

## 公式の導出

$$
z y_n \times (10) 
= z y_n \frac{d^2 j_n}{dz^2} + 2 y_n \frac{d j_n}{dz} + z( 1- \frac{n(n+1)}{z^2}) y_n j_n = 0
$$

$$
z j_n \times (11) 
= z j_n \frac{d^2 y_n}{dz^2} + 2 j_n \frac{d y_n}{dz} + z( 1- \frac{n(n+1)}{z^2}) j_n y_n = 0
$$

これら2式の辺々を引き算すると

$$
z(y_n \frac{d^2 j_n}{dz^2} - j_n \frac{d^2 y_n}{dz^2}) + 2 (y_n \frac{d j_n}{dz} - j_n \frac{d y_n}{dz}) 
= 0 
\ \Longrightarrow \ 
\frac{d}{dz} (z^2 (j_n \frac{dy_n}{dz} - y_n \frac{dj_n}{dz})) = 0
$$

$$
\therefore \ j_n \frac{dy_n}{dz} - y_n \frac{dj_n}{dz} = \frac{C}{z^2}
$$

ここで$$C$$は積分定数です。この定数を$$j_n, y_n$$の定義式から実際に計算していきます。

$$
\frac{d j_n}{dz} 
= \frac{\sqrt{\pi}}{2} \sum_{k=0}^\infty \frac{(-1)^k (n+k)}{\Gamma(n+k+3/2) k!} \frac{z^{n+k-1}}{2^{n+k}}
= \frac{\sqrt{\pi}}{2z} \sum_{k=0}^\infty \frac{(-1)^k (n+k)}{\Gamma(n+k+3/2) k!} \frac{z^{n+k}}{2^{n+k}}
$$

$$
\frac{d y_n}{dz} 
= (-1)^{n+1} \frac{\sqrt{\pi}}{2} \sum_{\ell=0}^\infty \frac{(-1)^\ell (-n+\ell -1)}{\Gamma(-n+\ell+1/2) \ell!} \frac{z^{-n+\ell-2}}{2^{-n+\ell-1}}
= (-1)^{n+1} \frac{\sqrt{\pi}}{z^2} \sum_{\ell=0}^\infty \frac{(-1)^\ell (-n+\ell -1)}{\Gamma(-n+\ell+1/2) \ell!} \frac{z^{-n+\ell}}{2^{-n+\ell}}
$$

より

$$
j_n \frac{dy_n}{dz} 
= \frac{(-1)^{n+1} \pi}{2z^2} \sum_{k=0}^\infty \sum_{\ell=0}^\infty \frac{(-1)^{k+\ell} (-n+\ell-1)}{\Gamma(n+k+3/2) \Gamma(-n+ \ell +1/2) k! \ell!} \frac{z^{k+\ell}}{2^{k+\ell}}
$$

$$k, \ell$$の2重の総和のために計算は煩雑になると思われますが、興味があるのは$$z^{-2}$$の係数のみです。$$z^{-2}$$はすべに式の先頭に出てきているので、総和の部分は$$k=\ell=0$$のみを考えれば良いことがわかります。

$$
\begin{aligned}
(j_n \frac{dy_n}{dz}のz^{-2}の項) 
&= \frac{(-1)^{n+1} \pi}{2z^2} \frac{-n-1}{\Gamma(n+3/2) \Gamma(-n+1/2)} 
= \frac{(-1)^{n+1} \pi}{2z^2} \frac{-n-1}{(n+1/2)\Gamma(n+1/2) \Gamma(-n+1/2)} \\
&= \frac{(-1)^{n+1} \pi}{2z^2} \frac{-n-1}{(n+1/2)(-1)^n \pi} 
= \frac{n+1}{2n+1}\frac{1}{z^2} 
\end{aligned}
$$

同様に

$$
y_n \frac{dj_n}{dz} 
= \frac{(-1)^{n+1} \pi}{2z^2} \sum_{k=0}^\infty \sum_{\ell=0}^\infty \frac{(-1)^{k+\ell} (n+k)}{\Gamma(n+k+3/2) \Gamma(-n+ \ell +1/2) k! \ell!} \frac{z^{k+\ell}}{2^{k+\ell}}
$$

より

$$
\begin{aligned}
(y_n \frac{dj_n}{dz}のz^{-2}の項) 
&= \frac{(-1)^{n+1} \pi}{2z^2} \frac{n}{\Gamma(n+3/2) \Gamma(-n+1/2)} 
= \frac{(-1)^{n+1} \pi}{2z^2} \frac{n}{(n+1/2)\Gamma(n+1/2) \Gamma(-n+1/2)} \\
&= \frac{(-1)^{n+1} \pi}{2z^2} \frac{n}{(n+1/2)(-1)^n \pi} 
= - \frac{n}{2n+1}\frac{1}{z^2} 
\end{aligned}
$$

途中、[ガンマ関数の公式](/math/gamma)を用いました。以上より

$$
j_n \frac{dy_n}{dz} - y_n \frac{dj_n}{dz} 
= \frac{1}{z^2}
$$

が成り立ちます。

# 参考文献

* 裳華房フィジックスライブラリー物理数学II, 中山
* [Wolfram MathWorld](http://mathworld.wolfram.com/)

{% include adsense.html %}