---
layout: default
title: Riemann幾何学
parent: 一般相対性理論
math: mathjax3
permalink: /gr/riemann
nav_order: 2
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

# リーマン幾何学

基底ベクトルの変換則

$$
e_{\nu}^{\prime}=\frac{\partial x^{\mu}}{\partial x^{\prime \nu}} e_{\mu}
$$

を導出しましょう。重要な変換則です。

## ベクトル変換

ベクトルを

$$
\mathbf{A}=\sum_{\mu=0}^{3} A^{\mu} \mathbf{e}_{\mu}=A^{\mu}(\mathbf{x}) \mathbf{e}_{\mu}(\mathbf{x})
$$

のように基底ベクトル$${\bf e}$$を用いて、縮約して書きます。これをアインシュタイン縮約と呼びます。ここで$${\bf e}_\mu ({\bf x})$$は座標の基底ベクトルです。また縮約の仕方ですが、ギリシャ文字の場合は0から3までの和、ローマ字の場合は1から3までの和、とします。また、位置ベクトルについても

$$
\mathbf{x}=(c t, x, y, z)=\left(x^{0}, x^{1}, x^{2}, x^{3}\right)
$$

のように書きます。では$${\bf x}$$を$$x$$系から$$x'$$系に変換することを考えましょう。このとき、基底も$$\mathbf{e}_{\mu}(\mathbf{x}) \rightarrow \mathbf{e}_{\mu}^{\prime}\left(\mathbf{x}^{\prime}\right)$$へと変換されるので

$$
\mathbf{x}=x^{\mu} \mathbf{e}_{\mu}(\mathbf{x})=\mathbf{x}^{\prime}=x^{\prime \mu} \mathbf{e}_{\mu}^{\prime}\left(\mathbf{x}^{\prime}\right)
$$

のように書かれます。このとき微小な変位ベクトル$$d{\bf x}$$は

$$
d \mathbf{x}=d x^{\mu} \mathbf{e}_{\mu}(\mathbf{x})=d \mathbf{x}^{\prime}=d x^{\prime \mu} \mathbf{e}_{\mu}^{\prime}(\mathbf{x})=d x^{\prime \nu} \mathbf{e}_{\nu}^{\prime}(\mathbf{x})
$$

と表現されます。両辺を$$dx'^{\nu}$$で偏微分すれば

$$
\mathbf{e}_{\nu}^{\prime}=\frac{\partial x^{\mu}}{\partial x^{\prime \nu}} \mathbf{e}_{\mu}
$$

これが座標基底の変換則です。

## 例題: 2次元デカルト座標系から2次元極座標系への変換

$$
d \mathbf{x}=d x \mathbf{e}_{x}+d y \mathbf{e}_{y}
$$

$$(x, y) \rightarrow(r, \theta)$$への変換を考えましょう。変換則より

$$
\left\{\begin{aligned}
\mathbf{e}_{r} &=\frac{\partial x}{\partial r} \mathbf{e}_{x}+\frac{\partial y}{\partial r} \mathbf{e}_{y} \\
\mathbf{e}_{\theta} &=\frac{\partial x}{\partial \theta} \mathbf{e}_{x}+\frac{\partial y}{\partial \theta} \mathbf{e}_{y}
\end{aligned}\right. \ \Longrightarrow \ 
\left\{\begin{array}{l}
\mathbf{e}_{r}=\cos \theta \mathbf{e}_{x}+\sin \theta \mathbf{e}_{y} \\
\mathbf{e}_{\theta}=-r \sin \theta \mathbf{e}_{x}+r \cos \theta \mathbf{e}_{y}
\end{array}\right.
$$

途中、$$r ^ 2 = x ^ 2 + y ^ 2, \tan \theta = y/x$$を用いました。$${\textbf e}_\theta$$は原点からの距離$$r$$に依存することがわかります。これは同じ$$d\theta$$でも、原点から近い場所と遠い場所で変位が異なるためです。

{% include adsense.html %}