---
layout: default
title: メトリックテンソル
parent: 一般相対性理論
math: mathjax3
permalink: /gr/metric
nav_order: 3
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

# メトリックテンソル

## メトリックテンソルの定義

微小変位ベクトルを

$$
d{\bf x} 
= dx^\mu {\bf e}_\mu
$$

のように書きます。するとその大きさの2乗は

$$
ds^ 2 
= d{\textbf x} \cdot d{ \textbf x } 
= (dx^\mu { \textbf e}_\mu) \cdot (dx^\nu { \textbf e}_\nu) 
= ({ \textbf e}_\mu \cdot { \textbf e}_\nu) dx^\mu dx^\nu
$$

のように表現できます。この

$$
g_{\mu \nu} \equiv { \textbf e}_\mu({ \textbf x} ) \cdot {\textbf e}_\nu ({ \textbf x} ) {\tag1}
$$

をメトリックテンソル(計量テンソル)と呼びます。これを用いると微小変位ベクトルの大きさの2乗は

$$
ds^2 
= g _{ \mu \nu} dx^\mu dx^\nu
$$

のように書くことができます。

(1)式の定義から$$g _{\mu \nu} = g_{\nu \mu}$$という性質を持つため、**$$g_{ \mu \nu}$$の独立な成分は10個**です。

## メトリックの逆行列

(厳密性はさておき)メトリックは行列です。であればその逆行列を考えておく必要があります。それを

$$
g^{\mu \nu} \equiv (g_{\mu \nu})^{-1} \ \Longrightarrow \ g^{\mu \nu} g_{\nu \alpha} = \delta^\mu_\alpha
$$

のように**添字を下から上に変えたもので定義**します。

## ミンコフスキーメトリック

局所慣性系において、メトリックテンソルは平坦で簡単なものとして記述されます。すなわち

$$
(g_{ \mu \nu} ) = (\eta_{ \mu \nu} ) = 
 \left( \begin{array}{cccc}
 -1&0&0&0 \\ 0&1&0&0 \\ 0&0&1&0 \\0&0&0&1
\end{array} \right)
$$

のように**ミンコフスキーメトリック**となります。

## 例題: 2次元デカルト座標系のメトリックテンソル

$$
g_{xx} 
= g_{yy} 
= 1, \ 
g_{xy} = g_{yx} = 0
$$

より、計量テンソルは

$$
(g_{\mu \nu}) 
= \left( \begin{array}{cccc}
0&0&0&0 \\ 0&1&0&0 \\ 0&0&1&0 \\0&0&0&0
\end{array} \right)
$$

また

$$
ds^2 
= g_{\mu \nu} dx^\mu dx^\nu
= dx^2 + dy^2
$$

です。

## 例題: 2次元極座標系のメトリックテンソル

$$
g_{rr} = 1, \  
g_{\theta \theta} 
= r^2, \ 
g_{r\theta} = g_{\theta r} = 0
$$

より、計量テンソルは

$$
(g_{\mu \nu}) 
= \left( \begin{array}{cccc}
0&0&0&0 \\
0&1&0&0 \\
0&0&r^2&0 \\
0&0&0&0
\end{array} \right)
$$

また

$$
ds^2 
= g_{\mu \nu} dx^\mu dx^\nu
= dr^2 + r^2d\theta^2
$$

です。

{% include adsense.html %}