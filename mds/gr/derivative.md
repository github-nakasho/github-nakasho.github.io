---
layout: default
title: 共変微分
parent: 一般相対性理論
math: mathjax3
permalink: /gr/derivative
nav_order: 7
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

# 共変微分

## 共変微分とは

あるベクトルの微分を考えたとき

$$
\partial_\mu {\bf A}({\bf x}) 
=\partial_\mu (A^\nu ({\bf x}){\bf e}_\nu ({\bf x})) 
=\partial_\mu (A^\nu ({\bf x})) {\bf e}_\nu ({\bf x}) + A^\nu ({\bf x}) (\partial_\mu{\bf e}_\nu ({\bf x}))
$$

微分の定義から

$$
\partial_\mu A 
= \lim_{d{\bf x} \rightarrow {\bf 0}} \frac{A ({\bf x}+ d{\bf x}) - A({\bf 
 x})}{d{\bf x}} 
$$

となります。このとき位置$${\bf x}$$の局所慣性系に移ったとき、位置$${\bf x} + d{\bf x}$$は局所慣性系ではなくなる可能性があります。逆に、位置$${\bf x} + d{\bf x}$$の局所慣性系に移ったときには、位置$${\bf x}$$は局所慣性系でなくなる可能性があります。よって、位置$${\bf x}, {\bf x}+ d{\bf x}$$のように異なる位置で変換則が異なるために、同じ物理量でも直接の比較は不可能となります。そこで上式のような微分の方法ではなく、新しい微分の仕方を定義しなければなりません。

その方法として、位置$${\bf x}$$での基底ベクトルの微分方法を

$$
\partial_\mu {\bf e}_\nu ({\bf x}) 
= \Gamma^{\alpha}_{\mu \nu}({\bf x}) {\bf e}_\alpha ({\bf x})
$$

のように表現しましょう。これは基底ベクトルの微分をその位置の基底ベクトルで展開し、その時の展開係数を**クリストッフェル記号$$\Gamma$$**で表したものです。

このとき$${\bf A}$$の微分は

$$
\partial_\mu {\bf A} 
= (\partial_\mu A^\alpha + A^\nu \Gamma^\alpha_{\mu \nu}){\bf e}_\alpha
$$

となります。よってこのベクトルの成分の微分

$$
\nabla_\mu A^\alpha 
= \partial_\mu A^\alpha + A^\nu \Gamma^\alpha_{\mu \nu} 
\equiv A^\alpha_{;\mu}
$$

を共変微分と呼び、新しい微分方法として定義します。最初の項はこれまで通りの成分の微分、そして第二項は先ほど説明した基底の微分のお釣りが付いています。

## 演習問題: クリストッフェル記号はテンソルか？

$$
\partial_\mu {\bf e}_\nu 
= \Gamma^\alpha_{\mu \nu} {\bf e}_\alpha 
$$

を$$x'$$系に変換しましょう。

$$
\begin{aligned}
(左辺) 
&= \partial_{\mu'} {\bf e}_{\nu'} 
= \partial_{\mu'} \left(\frac{\partial x^\gamma}{\partial x^{\nu'}} {\bf e}_\gamma \right)
= \frac{\partial^2 x^\gamma}{\partial x^{\mu'} \partial x^{\nu'}} {\bf e}_\gamma + \frac{\partial x^\gamma}{\partial x^{\nu'}} \underbrace{\frac{\partial {\bf e}_\gamma}{\partial x^{\mu'}}}_{連鎖律} \\
&= \frac{\partial^2 x^\gamma}{\partial x^{\mu'} \partial x^{\nu'}} {\bf e}_\gamma + \frac{\partial x^\gamma}{\partial x^{\nu'}} \frac{\partial x^\beta}{\partial x^{\mu'}} \frac{\partial {\bf e}_\gamma}{\partial x^\beta}
=\frac{\partial^2 x^\alpha}{\partial x^{\mu'} \partial x^{\nu'}} {\bf e}_\alpha + \frac{\partial x^\gamma}{\partial x^{\nu'}} \frac{\partial x^\beta}{\partial x^{\mu'}} \Gamma^\alpha_{\beta \gamma} {\bf e}_\alpha
\end{aligned}
$$

$$
(右辺) 
= \Gamma'^\alpha_{\mu \nu}\frac{\partial x^\beta}{\partial x^{\alpha'}} {\bf e}_\beta 
=\Gamma'^\beta_{\mu \nu}\frac{\partial x^\alpha}{\partial x^{\beta'}} {\bf e}_\alpha
$$

よって$${\bf e}_\alpha$$の係数のみを比較しましょう。

$$
\frac{\partial x^\alpha}{\partial x^{\beta'}} \Gamma'^\beta_{\mu\nu} 
= \frac{\partial^2 x^\alpha}{\partial x^{\mu'} \partial x^{\nu'}} + \frac{\partial x^\gamma}{\partial x^{\nu'}} \frac{\partial x^\beta}{\partial x^{\mu'}} \Gamma^\alpha_{\beta \gamma}
$$

この両辺に$$\frac{\partial x^{\sigma'}}{\partial x^\alpha}$$をかけて整理します。

$$
\underbrace{\frac{\partial x^{\sigma'}}{\partial x^\alpha} \frac{\partial x^{\alpha}}{\partial x^{\beta'}}}_{\delta^{\sigma'}_{\beta'}}\Gamma'^\beta_{\mu \nu}
=\Gamma'^\sigma_{\mu \nu}
=\frac{\partial x^{\sigma'}}{\partial x^\alpha} \frac{\partial^2 x^\alpha}{\partial x^{\mu'} \partial x^{\nu'}} + \frac{\partial x^{\sigma'}}{\partial x^\alpha} \frac{\partial x^\gamma}{\partial x^{\nu'}} \frac{\partial x^\beta}{\partial x^{\mu'}} \Gamma^\alpha_{\beta \gamma}
$$

ご覧のように、テンソルの変換のときにはつかなかった第一項が現れます。よってクリストッフェル記号はテンソルではありません。

## 演習問題: 共変微分されたベクトル成分はテンソルか？

$$
\begin{aligned}
\nabla_\mu' A^{\sigma'} 
&= \partial_{\mu'} A^{\sigma'} +  A^{\nu'} \Gamma'^{\sigma}_{\mu \nu} 
= \partial_{\mu'} \left( \frac{\partial x^{\sigma'}}{\partial x^{\beta}} A^{\beta} \right) + \frac{\partial x^{\nu'}}{\partial x^{\rho}} A^{\rho} \frac{\partial x^{\sigma'}}{\partial x^{\alpha}} \frac{\partial^2 x^{\alpha}}{\partial x^{\mu'} \partial x^{\nu'}} + \frac{\partial x^{\nu'}}{\partial x^{\rho}} A^{\rho} \frac{\partial x^{\sigma'}}{\partial x^{\alpha}} \frac{\partial x^{\gamma}}{\partial x^{\nu'}}  \frac{\partial x^{\beta}}{\partial x^{\mu'}} \Gamma^{\alpha}_{\beta \gamma} \\
&= \partial_{\mu'} \left( \frac{\partial x^{\sigma'}}{\partial x^{\beta}} A^{\beta} \right) + \frac{\partial x^{\nu'}}{\partial x^{\rho}} A^{\rho} \frac{\partial x^{\sigma'}}{\partial x^{\alpha}} \frac{\partial^2 x^{\alpha}}{\partial x^{\mu'} \partial x^{\nu'}} + \delta_\rho^\gamma A^\rho \frac{\partial x^{\sigma'}}{\partial x^{\alpha}} \frac{\partial x^{\beta}}{\partial x^{\mu'}} \Gamma^\alpha_{\beta \gamma}
\end{aligned}
$$

$$
\partial_{\mu'} \left( \frac{\partial x^{\sigma'}}{\partial x^{\beta}} A^{\beta} \right) 
= \frac{\partial x^{\alpha}}{\partial x^{\mu'}} \frac{\partial}{\partial x^{\alpha}} \left( \frac{\partial x^{\sigma'}}{\partial x^{\beta}} A^\beta \right) 
=\frac{\partial x^{\alpha}}{\partial x^{\mu'}} \frac{\partial A^\beta}{\partial x^{\alpha}} \frac{\partial x^{\sigma'}}{\partial x^{\beta}} + \frac{\partial x^{\alpha}}{\partial x^{\mu'}} \frac{\partial^2 x^{\sigma'}}{\partial x^{\alpha} \partial x^\beta} A^\beta    
$$

$$
\frac{\partial x^{\sigma'}}{\partial x^{\alpha}} \frac{\partial^2 x^{\alpha}}{\partial x^{\mu'} \partial x^{\nu'}} 
= \frac{\partial}{\partial x^{\mu'}} \left( \frac{\partial x^{\sigma'}}{\partial x^{\alpha}} \frac{\partial x^{\alpha}}{\partial x^{\nu'}} \right) - \frac{\partial^2 x^{\sigma'}}{\partial x^{\mu} \partial x^\alpha} \frac{\partial x^{\alpha}}{\partial x^{\nu'}} 
= - \frac{\partial x^{\beta}}{\partial x^{\mu'}} \frac{\partial^2 x^{\sigma'}}{\partial x^{\beta} \partial x^\alpha} \frac{\partial x^{\alpha}}{\partial x^{\nu'}}
= - \frac{\partial x^{\beta}}{\partial x^{\mu'}} \frac{\partial^2 x^{\sigma'}}{\partial x^{\beta} \partial x^\alpha} \frac{\partial x^{\alpha}}{\partial x^{\nu'}}        
$$

以上より

$$
\begin{aligned}
\nabla'_\mu A^{\sigma'} 
&= \frac{\partial x^{\alpha}}{\partial x^{\mu'}} \frac{\partial A^{\beta}}{\partial x^{\alpha}} \frac{\partial x^{\sigma'}}{\partial x^{\beta}} + \frac{\partial x^{\alpha}}{\partial x^{\mu'}} \frac{\partial^2 x^{\sigma'}}{\partial x^{\alpha} \partial x^\beta} A^\beta - \frac{\partial x^{\nu'}}{\partial x^{\rho}} A^\rho \frac{\partial x^{\beta}}{\partial x^{\mu'}} \frac{\partial^2 x^{\sigma'}}{\partial x^\beta \partial x^{\alpha}} \frac{\partial x^{\alpha}}{\partial x^{\nu'}} + A^\rho \frac{\partial x^{\sigma'}}{\partial x^{\alpha}} \frac{\partial x^{\beta}}{\partial x^{\mu'}} \Gamma^\alpha_{\beta \rho} \\
&= \frac{\partial x^{\alpha}}{\partial x^{\mu'}} \frac{\partial A^{\beta}}{\partial x^{\alpha}} \frac{\partial x^{\sigma'}}{\partial x^{\beta}} + \frac{\partial x^{\beta}}{\partial x^{\mu'}} \frac{\partial^2 x^{\sigma'}}{\partial x^\beta\partial x^{\alpha}} A^\rho - A^\rho \frac{\partial x^{\beta}}{\partial x^{\mu'}} \frac{\partial^2 x^{\sigma'}}{\partial x^\beta \partial x^{\alpha}} \beta_\rho^\alpha + A^\rho \frac{\partial x^{\sigma'}}{\partial x^{\beta}} \frac{\partial x^{\alpha}}{\partial x^{\mu'}} \Gamma^\beta_{\alpha \rho} \\
&= \frac{\partial x^{\alpha}}{\partial x^{\mu'}} \frac{\partial A^{\beta}}{\partial x^{\alpha}} \frac{\partial x^{\sigma'}}{\partial x^{\beta}} + A^\rho \frac{\partial x^{\sigma'}}{\partial x^{\beta}} \frac{\partial x^{\alpha}}{\partial x^{\mu'}} \Gamma^\beta_{\alpha \rho} 
= \frac{\partial x^{\alpha}}{\partial x^{\mu'}} \frac{\partial x^{\sigma'}}{\partial x^{\beta}} (\partial_\alpha A^\beta+ A^\rho \Gamma^\beta_{\alpha \rho}) 
= \frac{\partial x^{\alpha}}{\partial x^{\mu'}} \frac{\partial x^{\sigma'}}{\partial x^{\beta}} \nabla_\alpha A^\beta
\end{aligned}
$$

よってこれは2階のテンソルです。

## スカラー量の共変微分

基底ベクトルの微分がないので

$$
\nabla_\mu \phi = \partial_\mu \phi
$$

## 反変ベクトルの共変微分

$$
\nabla_\mu (B^\nu A_\nu) 
= A_\nu (\nabla_\mu B^\nu) + B^\nu (\nabla_\mu A_\nu) 
= A_\nu (\partial_\mu B^\nu + \Gamma^\nu_{\gamma \mu} B^\gamma) + B^\nu (\nabla_\mu A_\nu) 
= A_\nu (\partial_\mu B^\nu) + A_\gamma \Gamma^\gamma_{\nu \mu} B^\nu + B^\nu (\nabla_\nu A_\nu)
$$

一方で、スカラーの共変微分より

$$
\nabla_\mu (B^\nu A_\nu) 
= \partial_\mu (B^\nu A_\nu) 
= B^\nu (\partial_\mu A_\nu) + A_\nu (\partial_\mu B^\nu)
$$

$$
\therefore \ \nabla_\mu A_\nu 
= \partial_\mu A_\nu - A_\gamma \Gamma^\gamma_{\nu \mu}
$$

{% include adsense.html %}