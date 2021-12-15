---
layout: default
title: Christoffel記号
parent: 一般相対性理論
math: mathjax3
permalink: /gr/christoffel
nav_order: 8
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

# クリストッフェル記号

クリストッフェル記号の定義を「微分を表現する展開係数」と表現しました。しかしそれでは微分が登場するたびに、その空間の曲がり具合から定義を確認し直す必要があります。それではあまりに面倒です。  
そのためにクリストッフェル記号を計算して、その定義を見直すことにしましょう。

## 計算

等価原理より、必ず局所慣性系$$\bar{x}$$に移ることができるので

$$
\begin{aligned}
\partial_\mu {\bf e}_\nu 
&= \partial_\mu \left( \frac{\partial \bar{x}^\alpha}{\partial x^\nu} {\bar{\bf e}}_\alpha \right)
= \frac{\partial^2 \bar{x}^\alpha}{\partial x^\mu \partial x^\nu} \bar{\bf e}_\alpha + \frac{\partial \bar{x}^\alpha}{\partial x^\nu} \frac{\partial {\bar{\bf e}}_\alpha}{\partial x^\mu} 
= \frac{\partial^2 \bar{x}^\alpha}{\partial x^\mu \partial x^\nu} {\bar{\bf e}}_\alpha + \frac{\partial \bar{x}^\alpha}{\partial x^\nu} \frac{\partial \bar{x}^\beta}{\partial x^\mu} \frac{\partial \bar{\bf e}_\alpha}{\partial x^\beta} 
= \frac{\partial^2 \bar{x}^\alpha}{\partial x^\mu \partial x^\nu} {\bar{\bf e}}_\alpha \\
&= \partial_\nu \left( \frac{\partial {\bar{x}^\alpha}}{\partial x^\mu } {\bar{\bf e}}_\alpha \right)
= \partial_\nu {\bf e}_\mu
\end{aligned}
$$

途中、局所慣性系では$$\frac{\partial \bar{\bf e}_\alpha}{\partial x^\beta} = {\bf 0}$$となることを用いました。これは例えばデカルト座標系ではどこでも単位ベクトル$${\bf e}_x$$の向き・長さが変化しないことを考えれば想像できます。

$$
\partial_\mu {\bf e}_\nu 
= \Gamma^\alpha_{\mu \nu} {\bf e}_\alpha 
= \partial_\nu {\bf e}_\mu 
= \Gamma^\alpha_{\nu \mu} {\bf e}_\alpha \ \Longrightarrow \ 
\Gamma^\alpha_{\mu \nu} = \Gamma^\alpha_{\nu \mu}
$$

が導けます。次に計量メトリックの微分を考えると

$$
\partial_\alpha g_{\mu \nu} 
= \partial_\alpha ({\bf e}_\mu \cdot {\bf e}_\nu) 
= (\partial_\alpha {\bf e}_\mu) \cdot {\bf e}_\nu + {\bf e}_\mu \cdot (\partial_\alpha {\bf e}_\nu) 
= \Gamma^\beta_{\alpha \mu} {\bf e}_\beta \cdot {\bf e}_\nu + \Gamma^\beta_{\alpha \nu} {\bf e}_\beta \cdot {\bf e}_\mu 
= \Gamma^\beta_{\alpha \mu} g_{\beta \nu} + \Gamma^\beta_{\alpha \nu} g_{\beta \mu}
$$

$$
\therefore \partial_\alpha g_{\mu \nu} = \Gamma^\beta_{\alpha \mu} g_{\beta \nu} + \Gamma^\beta_{\alpha \nu} g_{\beta \mu}
$$

サイクリックに$$\alpha, \mu, \nu$$を入れ替えて

$$
\partial_\mu g_{\nu \alpha} = \Gamma^\beta_{\mu \nu} g_{\beta \alpha} + \Gamma^\beta_{\mu \alpha} g_{\beta \nu} 
= \Gamma^\beta_{\mu \nu} g_{\beta \alpha} + \Gamma^\beta_{\alpha \mu} g_{\beta \nu}
$$

サイクリックに$$\alpha, \mu, \nu$$を入れ替え、かつ両辺にマイナスをつけると

$$
- \partial_\nu g_{\alpha \mu} = - \Gamma^\beta_{\nu \alpha} g_{\beta \mu} - \Gamma^\beta_{\nu \mu} g_{\beta \alpha} 
= - \Gamma^\beta_{\alpha \nu} g_{\beta \mu} - \Gamma^\beta_{\mu \nu} g_{\beta \alpha}
$$

3つの式を足し合わせて、逆行列をかけることで

$$
\partial_\alpha g_{\mu \nu} + \partial_\mu g_{\nu \alpha} - \partial_\nu g_{\alpha \mu} 
= 2 \Gamma^\beta_{\alpha \mu} g_{\beta \nu} \ \Longrightarrow \ 
\Gamma^\beta_{\alpha \mu} \underbrace{g_{\beta \nu} g^{\nu \gamma}}_{\delta^\gamma_\beta} 
= \Gamma^\gamma_{\alpha \mu} 
= \frac{1}{2} g^{\nu \gamma} (\partial_\alpha g_{\mu \nu} + \partial_\mu g_{\nu \alpha} - \partial_\nu g_{\alpha \mu})
$$

を得ます。  
ちなみに局所慣性系では計量テンソルはミンコフスキーメトリックに等しいので、この式からクリストッフェル記号は0となることがわかります。

{% include adsense.html %}