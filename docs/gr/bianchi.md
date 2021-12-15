---
layout: default
title: Bianchiの恒等式
parent: 一般相対性理論
math: mathjax3
permalink: /gr/bianchi
nav_order: 11
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

# ビアンキの恒等式

## 恒等式の導出

$$
[\nabla_\lambda, [\nabla_\mu, \nabla_\nu]] 
= \nabla_\lambda(\nabla_\mu \nabla_\nu - \nabla_\nu \nabla_\mu) - (\nabla_\mu \nabla_\nu - \nabla_\nu \nabla_\mu) \nabla_\lambda
$$

$$
[\nabla_\mu, [\nabla_\nu, \nabla_\lambda]] 
= \nabla_\mu(\nabla_\nu \nabla_\lambda - \nabla_\lambda \nabla_\nu) - (\nabla_\nu \nabla_\lambda - \nabla_\lambda \nabla_\nu) \nabla_\mu
$$

$$
[\nabla_\nu, [\nabla_\lambda, \nabla_\mu]] 
= \nabla_\nu(\nabla_\lambda \nabla_\mu - \nabla_\mu \nabla_\lambda) - (\nabla_\lambda \nabla_\mu - \nabla_\mu \nabla_\lambda) \nabla_\nu
$$

より

$$
([\nabla_\lambda, [\nabla_\mu, \nabla_\nu]]+[\nabla_\mu, [\nabla_\nu, \nabla_\lambda]] + [\nabla_\nu, [\nabla_\lambda, \nabla_\mu]]) A^\alpha = 0
$$

これと

$$
\begin{aligned}
[\nabla_\lambda, [\nabla_\mu, \nabla_\nu]] A^\alpha 
&= \nabla_\lambda ([\nabla_\mu, \nabla_\nu] A^\alpha) -[\nabla_\mu, \nabla_\nu] (\nabla_\lambda A^\alpha) 
=  \nabla_\lambda (R^\gamma_{\lambda \mu \nu} A^\gamma) - (-R^\gamma_{\lambda \mu \nu} \nabla_\gamma A^\alpha + R^\alpha_{\gamma \mu \nu} \nabla_\lambda A^\gamma) \\
&= (\nabla_\lambda R^\alpha_{\gamma \mu \nu}) A^\gamma + R^\gamma_{\lambda \mu \nu} \nabla_\gamma A^\alpha
\end{aligned}
$$

より

$$
(\nabla_\lambda R^\alpha_{\gamma \mu \nu} + \nabla_\mu R^\alpha_{\gamma \nu \lambda} + \nabla_\nu R^\alpha_{\gamma \lambda \mu}) A^\gamma + (R^\gamma_{\lambda \mu \nu} + R^\gamma_{\mu \nu \lambda} + R^\gamma_{\nu \lambda \mu}) \nabla_\gamma A^\alpha 
= 0
$$

$$A^\gamma, \nabla_\gamma A^\alpha$$は任意のベクトルなのでこれが恒等的に成り立つためには、この2つの係数は0でなければなりません。

$$
\therefore \ \nabla_\lambda R^\alpha_{\gamma \mu \nu} + \nabla_\mu R^\alpha_{\gamma \nu \lambda} + \nabla_\nu R^\alpha_{\gamma \lambda \mu} = 0
$$

$$
\therefore \ R^\gamma_{\lambda \mu \nu} + R^\gamma_{\mu \nu \lambda} + R^\gamma_{\nu \lambda \mu} = 0
$$

この2つをビアンキの恒等式と呼びます。

{% include adsense.html %}