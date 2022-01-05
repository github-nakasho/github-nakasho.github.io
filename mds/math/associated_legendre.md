---
layout: default
title: Legendre陪関数
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

# 参考文献

[1] 田島, 近藤, "改訂演習工科の数学4, 複素関数"  
[2] 中山, "裳華房フィジックスライブリー, 物理数学II"  
[3] 福山, 小形, "基礎物理学シリーズ3, 物理数学I"  

{% include adsense.html %}
