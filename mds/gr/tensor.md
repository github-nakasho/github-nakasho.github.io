---
layout: default
title: テンソルの共変微分
parent: 一般相対性理論
math: mathjax3
permalink: /gr/tensor
nav_order: 9
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

# テンソルの共変微分

ベクトルの共変微分の次はテンソルの共変微分の計算も行いましょう。

## 計算

$$
\nabla_\mu A^\alpha = \partial_\mu A^\alpha + A^\beta \Gamma^\alpha_{\beta \mu}
$$

$$
\nabla_\mu B_\alpha = \partial_\mu B_\alpha - B_\beta \Gamma^\beta_{\mu \alpha}
$$

より

$$
\begin{aligned}
\nabla_\mu T_{\alpha \beta} 
&= \nabla_\mu (A_\alpha B_\beta) 
= (\nabla_\mu A_\alpha) B_\beta + A_\alpha (\nabla_\mu B_\beta) 
= (\partial_\mu A_\alpha)B_\beta - A_\nu \Gamma^\nu_{\mu \alpha} B_\beta + A_\alpha (\partial_\mu B_\beta) - A_\alpha B_\nu \Gamma^\nu_{\mu \beta} \\
&= \partial_\mu (A_\alpha B_\beta) - \Gamma^\nu_{\mu \alpha} A_\nu B_\beta - \Gamma^\nu_{\mu \beta} A_\alpha B_\nu \ \Longrightarrow \
\therefore \ \nabla_\mu T_{\alpha \beta} 
= \partial_\mu T_{\alpha \beta} - \Gamma^\nu_{\mu \alpha} T_{\nu \beta} - \Gamma^\nu_{\mu \beta} T_{\alpha \nu}
\end{aligned}
$$

## 計算例: 計量テンソルの共変微分

$$
\begin{aligned}
\nabla_\mu g_{\alpha \beta} 
&= \partial_\mu g_{\alpha \beta} - \Gamma^\gamma_{\mu \alpha} g_{\gamma \beta} - \Gamma^\gamma_{\mu \beta} g_{\alpha \gamma} \\
&= \partial_\mu g_{\alpha \beta} - \frac{1}{2} g^{\nu \gamma} g_{\gamma\beta} (\partial_\mu g_{\alpha \nu} + \partial_\alpha g_{\nu \mu} - \partial_\nu g_{\mu \alpha}) - \frac{1}{2} g^{\nu \gamma} g_{\alpha \gamma} (\partial_\mu g_{\beta \nu} + \partial_\beta g_{\nu \mu} - \partial_{\nu} g_{\mu \beta})\\
&= \partial_\mu g_{\alpha \beta} - \frac{1}{2} (\partial_\mu g_{\alpha \beta} + \partial_\alpha g_{\beta \mu} - \partial_\beta g_{\mu \alpha}) - \frac{1}{2} (\partial_\mu g_{\beta \alpha} + \partial_\beta g_{\alpha \mu} - \partial_{\alpha} g_{\mu \beta})
= \partial_\mu g_{\alpha \beta} - \frac{1}{2} 2 \partial_\mu g_{\alpha \beta} = 0 
\end{aligned}
$$

となり、計量テンソルの形に関係なく恒等的に0となります。

{% include adsense.html %}
