---
layout: default
title: Einsteinテンソル
parent: 一般相対性理論
math: mathjax3
permalink: /gr/einstein_tensor
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

# アインシュタインテンソル

ビアンキの恒等式から導かれるアインシュタインテンソルの導出を行います。

## リッチテンソルとリッチスカラー

ビアンキの恒等式より

$$
\nabla_\lambda R^\alpha_{\gamma \mu \alpha} + \nabla_\mu R^\alpha_{\gamma \alpha \lambda} + \nabla_\alpha R^\alpha_{\gamma \lambda \mu}
= 0 \tag{1}
$$

が成り立つのでした。ここでリッチテンソルという、リーマンテンソルから派生したものを新たに

$$
R_{\mu \nu} \equiv R^\alpha_{\mu \alpha \nu}
$$

として定義します。$$\nabla_\lambda g_{\mu \nu} = 0$$より

$$
\begin{aligned}
(1) &\Longrightarrow \ - \nabla_\lambda R_{\gamma \mu} + \nabla_\mu R_{\gamma \lambda} + \nabla_\alpha R^\alpha_{\gamma \lambda \mu} = 0 
\ \underbrace{\Longrightarrow}_{g^{\lambda \gamma } \times} \ 
- \nabla_\lambda g^{\lambda \gamma} R_{\gamma \mu} + \nabla_\mu  g^{\lambda \gamma} R_{\gamma \lambda} +  g^{\lambda \gamma} \nabla_\alpha R^\alpha_{\gamma \lambda \mu} = 0 \\
& \Longrightarrow \ - \nabla_\lambda R^\lambda_{\mu} + \nabla_\mu  R^\lambda_{\lambda} + \nabla_\alpha g^{\lambda \gamma} g^{\alpha \sigma} \underbrace{R_{\sigma \gamma \lambda \mu}}_{= - R_{\gamma \sigma \lambda \mu}} 
= - \nabla_\lambda R^\lambda_{\mu} + \nabla_\mu R^\lambda_{\lambda} - \nabla_\alpha g^{\alpha \sigma} g^{\lambda \gamma} R_{\gamma \sigma \lambda \mu} \\
&\qquad \qquad = - \nabla_\lambda R^\lambda_{\mu} + \nabla_\mu R^\lambda_{\lambda} - \nabla_\alpha g^{\alpha \sigma} R^\lambda_{\sigma \lambda \mu} 
= 0
\end{aligned}
$$

ここでリッチスカラーを

$$
R \equiv g^{\mu \nu} R_{\mu \nu} = R^\mu_{\ \mu}
$$

と定義すると

$$
\begin{aligned}
& \nabla_\alpha R^\alpha_{\ \mu} - \nabla_\mu R + \nabla_\alpha g^{\alpha \sigma} R_{\sigma \mu} 
= \nabla_\alpha g^{\alpha \sigma} R_{\sigma \mu} - \nabla_\mu R + \nabla_\alpha g^{\alpha \sigma} R_{\sigma \mu} 
= 2 \nabla_\alpha g^{\alpha \sigma} R_{\sigma \mu} - \nabla_\mu R = 0 \\
&\underbrace{\Longrightarrow}_{g^{\beta \mu}} \ 2 \nabla_\alpha R^{\alpha \beta} - \nabla_\alpha R g^{\alpha \beta}= 0
\end{aligned}
$$

## アインシュタインテンソル

先ほどまでの式変形で

$$
G^{\alpha \beta} \equiv R^{\alpha \beta} - \frac{1}{2} R g^{\alpha \beta}
$$

を定義すると、式変形の結果は

$$
\nabla_\alpha G^{\alpha \beta} = 0
$$

となります。$$G^{\alpha \beta}$$をアインシュタインテンソルと呼びます。

{% include adsense.html %}
