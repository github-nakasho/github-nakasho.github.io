---
layout: default
title: ルジャンドル陪関数
parent: 数学
math: mathjax3
permalink: /math/associated_legendre
nav_order: 15
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

# ルジャンドル陪多項式

$$m$$が整数かつ$$-1 < x < 1$$のとき

$$
P_n^m (z) 
\equiv (1-z^2)^{m/2} \frac{d^m P_n (z)}{dz^m} \tag{1}
$$

で定義される関数をassociated Legendre多項式と呼びます。

## ルジャンドル陪多項式が満たす微分方程式

$$P_n (z)$$は[Legendre多項式](/math/legendre)です。Legendre多項式はLegendreの微分方程式を満たします。

$$
(1-z^2) \frac{d^2 P_n}{dz^2} - 2z \frac{d P_n}{dz} + n(n+1) P_n 
=0 \tag{2}
$$

この式の$$m$$階微分を考えます。

$$
\frac{d^m}{dz^m} (zP_n) 
= \frac{d^{m-1}}{dz^{m-1}} \left( P_n + z \frac{d P_n}{dz} \right) 
= \frac{d^{m-2}}{dz^{m-2}} \left( 2 \frac{d P_n}{dz} + z \frac{d^2 P_n}{dz^2} \right) 
= \cdots 
= m \frac{d^{m-1} P_n}{dz^{m-1}} + z \frac{d^m P_n}{dz^m} 
$$

$$
\begin{aligned}
\frac{d^m}{dz^m} (z^2 P_n) 
&= \frac{d^{m-1}}{dz^{m-1}} \left( 2z P_n + z^2 \frac{d P_n}{dz} \right) 
= \sum_{\ell = 1}^m \frac{d^{m-\ell}}{dz^{m-\ell}} \frac{d^{\ell-1} P_n}{dz^{\ell-1}} + z^2 \frac{d^m P_n}{dz^m} \\
&= \sum_{\ell=1}^m \left\{ 2(m-\ell) \frac{d^{m-2} P_n}{dz^{m-2}} + 2z \frac{d^{m-1} P_n}{dz^{m-1}}\right\} + z^2 \frac{d^m P_n}{dz^m} 
= m(m-1) \frac{d^{m-2} P_n}{dz^{m-2}} + 2mz \frac{d^{m-1} P_n}{dz^{m-1}} + z^2 \frac{d^m P_n}{dz^m} 
\end{aligned}
$$

の2つより、(2)式の$$m$$階微分は

$$
\begin{align}
&\frac{d^{m+2} P_n}{dz^{m+2}} - m(m-1) \frac{d^{m} P_n}{dz^{m}} - 2mz \frac{d^{m+1} P_n}{dz^{m+1}} - z^2 \frac{d^{m+2} P_n}{dz^{m+2}} - 2m \frac{d^{m+1} P_n}{dz^{m+1}} - 2z \frac{d^{m+2} P_n}{dz^{m+2}} + n(n+1) \frac{d^m P_n}{dz^m} \notag \\
&= (1-z^2) \frac{d^{m+2} P_n}{dz^{m+2}} - 2(m+1) z \frac{d^{m+1} P_n}{dz^{m+1}} + \{n(n+1)-m(m+1)\} \frac{d^{m} P_n}{dz^{m}} 
= 0 \tag{3}
\end{align}
$$

さらに$$v = (1-z^2)^{m/2} \frac{d^m P_n}{dz^m}= (1-z^2)^{m/2} P_n^{(m)}$$とすると

$$
\begin{align}
&\frac{dv}{dz} 
= -mz (1-z^2)^{m/2-1} P_n^{(m)} + (1-z^2)^{m/2} \frac{d P_n^{(m)}}{dz} 
= -\frac{mz}{1-z^2} v + (1-z^2)^{m/2} \frac{d P_n^{(m)}}{dz} \notag \\ 
&\Longrightarrow \ 
(1-z^2)^{m/2} \frac{d P_n^{(m)}}{dz} = \frac{dv}{dz} + \frac{mz}{1-v^2} v \tag{4}
\end{align}
$$

そして

$$
\begin{aligned}
\frac{d^2v}{dz^2} 
&= - \frac{m(1-z^2) -mz(-2z)}{(1-z^2)^2} v- \frac{mz}{1-z^2}\frac{dv}{dz} -\frac{mz}{1-z^2} \underbrace{(1-z^2)^{m/2} \frac{dP_n^{(m)}}{dz}}_{(4)} + (1-z^2)^{m/2} \frac{d^2 P_n^{(m)}}{dz^2} \\
&= - \frac{m+mz^2}{(1-z^2)^2} v - \frac{mz}{1-z^2} \frac{dv}{dz} - \frac{mz}{1-z^2} \left( \frac{dv}{dz} + \frac{mz}{1-v^2} v \right)+ (1-z^2)^{m/2} \frac{d^2 P_n^{(m)}}{dz^2} \\
&= - \frac{m+mz^2 (1+m)}{(1-z^2)^2} v - \frac{2mz}{1-z^2} \frac{dv}{dz} + (1-z^2)^{m/2} \frac{d^2 P_n^{(m)}}{dz^2} 
\end{aligned}
$$

から

$$
(1-z^2)^{m/2} \frac{d^2 P_n^{(m)}} 
= \frac{d^2 v}{dz^2} + \frac{m+mz^2 (1+m)}{(1-z^2)^2} v + \frac{2mz}{1-z^2} \frac{dv}{dz}
$$

より、(3)式に$$(1-z^2)^{m/2}$$をかければ

$$
\begin{align}
&(1-z^2) \frac{d^2 v}{dz^2} + \frac{m + mz^2 + m^2z^2}{1-z^2} v + 2mz \frac{dv}{dz} - 2(m+1)z \frac{dv}{dz} - \frac{2(m+1)mz^2}{1-z^2} v + \{ n(n+1)-m(m+1)\} v 
= 0 \notag \\
&\Longrightarrow \ 
(1-z^2) \frac{d^2 v}{dz^2} - 2z \frac{dv}{dz} + \left\{ n(n+1)- \frac{m^2}{1-z^2} \right\} v 
= 0 \tag{5}
\end{align}
$$

よって(1)式によって定義されたassociated Legendre多項式は(5)式の微分方程式を満たします。これをassociated Legendre微分方程式と呼びます。

{% include adsense.html %}

## ルジャンドル陪多項式の直交性

次に直交性を示しましょう。

$$
\int_{-1}^1 P_\ell^m P_n^m dz 
= \int_{-1}^1 (1-z^2)^m \frac{d^m P_\ell}{dz^m} \frac{d^m P_n}{dz^m} dz 
= \left[ (1-z^2)^m \frac{d^{m-1} P_\ell}{dz^{m-1}} \frac{d^m P_n}{dz^m}\right]_{-1}^1 - \int_{-1}^1 \frac{d^{m-1} P_\ell}{dz^{m-1}} \frac{d}{dz} \left\{ (1-z^2)^m \frac{d^m P_n}{dz^m}\right\} dz
$$

ここで(3)式を$$m \rightarrow m-1$$としたものの両辺に$$(1-z^2)^{m-1}$$をかけると

$$
\begin{aligned}
&(1-z^2)^m \frac{d}{dz} \frac{d^m P_n}{dz^m} -2m(1-z^2)^{m-1} z \frac{d^m P_n}{dz^m} + \{ n(n+1)-m(m-1)\} (1-z^2)^{m-1} \frac{d^{m-1} P_n}{dz^{m-1}} \\
&= \frac{d}{dz} \left\{ (1-z^2)^{m} \frac{d^{m} P_n}{dz^{m}}\right\} + (n-m+1)(n+m) (1-z^2)^{m-1} \frac{d^{m-1} P_n}{dz^{m-1}} 
= 0
\end{aligned}
$$

より

$$
\int_{-1}^1 P_\ell^m P_n^m dz 
= \{ n(n+1)-m(m-1)\} \int_{-1}^1 (1-z^2)^{m-1} \frac{d^{m-1}P_n}{dz^{m-1}} \frac{d^{m-1} P_\ell}{dz^{m-1}} dz 
$$

$$P_n, P_\ell$$の$$m$$階微分を変形して$$m-1$$階微分に書き換えたときに、積分の前に係数$$(n-m+1)(n+m)$$が出てきていることがわかります。$$P_n, P_\ell$$の$$m-1$$階微分を変形して$$m-2$$階微分の式に書き直したときには、$$(n-m+2)(n+m-1)$$が係数として新たに出てくることがわかります。これを繰り返すと

$$
\begin{align}
\int_{-1}^1 P_\ell^m P_n^m dz 
&= (n-m+1)(n-m+2)(n+m)(n+m-1) \int_{-1}^1 (1-z^2)^{m-2} \frac{d^{m-2} P_n}{dz^{m-2}}\frac{d^{m-2} P_\ell}{dz^{m-2}} dz \notag \\
&= \cdots \notag \\
&= (n-m+1)(n-m+2) \cdots (n-m+(m-1)) \notag \\
&\qquad \qquad \times (n-m+m) (n+m)(n+m-1) \cdots (n+2) (n+1) \int_{-1}^1 P_n P_\ell dz \notag \\
&= (n+m) (n+m-1) \cdots (n+1) n (n-1) \cdots (n-m+2) (n-m+1) \int_{-1}^1 P_n P_\ell dz \notag \\
&= \frac{(n+m)!}{(n-m)!} \int_{-1}^1 P_n P_\ell dz 
\underbrace{=}_{Legendre多項式の直交性}  \frac{(n+m)!}{(n-m)!} \frac{2}{2n+1} \delta_{\ell n} \tag{6}
\end{align}
$$

となり、Legendre陪多項式の直交性が示されました。

## ルジャンドル陪多項式の公式

[Legendre多項式](/math/legendre)において成り立つ公式

$$
P_n (-z) 
= (-1)^n P_n (z) \tag{7}
$$

より

$$
P_n^m (-z) 
= (1-z^2)^{m/2} \frac{d^m}{d(-z)^m} P_n(-z) 
= (1-z^2)^{m/2} (-1)^{m+n} \frac{d^m }{dz^m} P_n(z) 
= (-1)^{m+n} P_n^m (z) \tag{8}
$$

が成り立ちます。そもそものLegendre多項式の総和表現

$$
P_n (z) 
= \frac{1}{2^n} \sum_{k=0}^{[n/2]} \frac{(-1)^k (2n-2k)!}{k! (n-k)! (n-2k)!} z^{n-2k} \tag{9}
$$

から、$$P_n(z)$$は$$z^n, z^{n-2}, \cdots$$の足し合わせとわかります。よって(1)式から、Legendre陪多項式は$$n > m$$のときのみ値を持つことがわかります。これを踏まえて$$P_n^{-m}$$を考えましょう。そのために

$$
\frac{d^{n+m}}{dz^{n+m}} (1-z^2)^n 
= \frac{d^{n+m}}{dz^{n+m}} (1-z)^n (1+z)^n 
= \sum_{\ell=0}^{n+m} {}_{n+m} C_\ell \left\{ \frac{d^\ell}{dz^\ell} (1-z)^n\right\} \left\{ \frac{d^{n+m-\ell}}{dz^{n+m-\ell}} (1+z)^n\right\}
$$

を式変形します。

$$
\begin{align}
\frac{d^\ell}{dz^\ell} (1-z)^n 
&= \frac{d^{\ell-1}}{dz^{\ell-1}} n (-1) (1-z)^{n-1} 
= \frac{d^{\ell-2}}{dz^{\ell-2}} n (n-1) (-1)^2 (1-z)^{n-2} 
= \cdots \notag \\
&= n (n-1) \cdots (n-\ell+1) (-1)^\ell (1-z)^{n-\ell} 
= \frac{(-1)^\ell n!}{(n-\ell)!} (1-z)^{n-\ell} \tag{10}
\end{align}
$$

同様に

$$
\frac{d^{n+m-\ell}}{dz^{n+m-\ell}} (1+z)^n 
= \frac{n!}{(\ell -m)!} (1+z)^{\ell -m} \tag{11}
$$

となります。(9)式の最初の部分は$$(1-z)^n$$の$$\ell$$階の微分より、$$\ell>n$$の項は0となります。よって$$\ell < n$$のみ考えれば良いでしょう。さらに後ろの部分は$$(1+z)^n$$の$$n+m-\ell$$階の微分より、$$n+m-\ell > n$$の項は0となります。よって$$\ell >m$$のみ考えれば良いとわかります。よって(9)式の和の取り方に注意して、上の2つの変形から

$$
\frac{d^{n+m}}{dz^{n+m}} (1-z^2)^n 
= \sum_{\ell=m}^n {}_{n+m} C_\ell \frac{(-1)^\ell n!}{(n-\ell)!} (1-z)^{n-\ell} \frac{n!}{(\ell-m)!} (1+z)^{\ell-m}
$$

となります。わかりやすく式変形を進めるために$$p=\ell-m$$と置くと

$$
\begin{align}
\frac{d^{n+m}}{dz^{n+m}} (1-z^2)^n 
&= \sum_{p=0}^{n-m} {}_{n+m} C_{p+m} \frac{(-1)^{p+m} n!}{(n-p-m)!} (1-z)^{n-p-m} \frac{n!}{p!} (1+z)^p \notag \\
&= \sum_{p=0}^{n-m} {}_{n+m} C_{p+m} \frac{(-1)^{p+m} n!}{(n-p-m)!} \frac{(1-z)^{n-p}}{(1-z)^m} \frac{n!}{p!} \frac{(1+z)^{p+m}}{(1+z)^m} \notag \\
&= \frac{(-1)^m}{(1-z^2)^m} \frac{(n+m)!}{(n-m)!} \sum_{p=0}^{n-m} \frac{(n-m)!}{p! (n-m-p)!} \underbrace{\frac{(-1)^p n!}{(n-p)!} (1-z)^{n-p}}_{(10)} \underbrace{\frac{n!}{(m+p)!} (1+z)^{p+m}}_{(11)} \notag \\
&= \frac{(-1)^m}{(1-z^2)^m} \frac{(n+m)!}{(n-m)!} \sum_{p=0}^{n-m} {}_{n-m} C_p \left\{ \frac{d^p}{dz^p} (1-z)^n\right\} \left\{ \frac{d^{n-p-m}}{dz^{n-p-m}} (1+z)^n\right\} \notag \\
&= \frac{(-1)^m}{(1-z^2)^m} \frac{(n+m)!}{(n-m)!} \frac{d^{n-m}}{dz^{n-m}} (1-z^2)^n \notag 
\end{align}
$$

以上より

$$
\frac{1}{2^n n!} (1-z^2)^{m/2} \frac{d^{n+m}}{dz^{n+m}} (1-z^2)^n 
= \frac{(-1)^m}{2^n n!} \frac{(n+m)!}{(n-m)!} (1-z^2)^{-m/2} \frac{d^{n-m}}{dz^{n-m}} (1-z^2)^n
$$

[Legendre多項式のRodriguesの公式](/math/legendre)と(1)式より

$$
P_n^m (z) 
= (-1)^m \frac{(n+m)!}{(n-m)!} P_n^{-m} (z) \tag{12}
$$

を得ます。

# 参考文献

[1] 田島, 近藤, "改訂演習工科の数学4, 複素関数"  
[2] 中山, "裳華房フィジックスライブリー, 物理数学II"  
[3] 福山, 小形, "基礎物理学シリーズ3, 物理数学I"  

{% include adsense.html %}
