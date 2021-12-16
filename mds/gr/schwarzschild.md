---
layout: default
title: Schwarzschildの外部解
parent: 一般相対性理論
math: mathjax3
permalink: /gr/schwarzschild
nav_order: 26
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

# シュバルツシルトの外部解

星の外での時空を求めるので以下の仮定を行います。

$$
P = \rho = 0
$$

$$
\frac{dM}{dr} = 0 \ \Longrightarrow \ M = {\rm Const}
$$

それでは導出を行いましょう。

## 導出

[TOV方程式](/gr/tov)を導く途中の式より

$$
\Phi' = \frac{1}{r \left(r- \frac{2GM}{c^2}\right)} \frac{GM}{c^2} 
= \frac{1}{2} ( \frac{1}{r-\frac{2GM}{c^2}} - \frac{1}{r}) \ \Longrightarrow \ 
\Phi = \frac{1}{2} \ln (1-r_g/r) + C
$$

ここで$$r_g \equiv 2GM/c^2$$, そして$$C$$は積分定数です。

$$
\lim_{r \rightarrow \infty} \Phi = C = 0
$$

$$
\therefore \ g_{00} 
= -e^{2\Phi} 
= -(1-r_g/r)
$$

これとTOV方程式を求める途中の式とを合わせて、シュバルツシルトの外部解は

$$
ds^2 
= -(1-r_g / r) c^2 dt^2 + \frac{1}{1-r_g/r} dr^2 + r^2 (d\theta^2 + \sin^2 \theta d\varphi^2)
$$

と求まります。

{% include adsense.html %}