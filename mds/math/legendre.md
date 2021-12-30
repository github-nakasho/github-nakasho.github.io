---
layout: default
title: Legendre多項式
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

{% include adsense.html %}