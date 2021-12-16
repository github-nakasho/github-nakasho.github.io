---
layout: default
title: Friedmann方程式を解く
parent: 宇宙論
math: mathjax3
permalink: /cosmo/solve_friedmann
nav_order: 10
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

# フリードマン方程式を解く

ここではフリードマン方程式を変形し、それぞれの物質が優勢のときに、スケール因子がどのように時間発展していくかを解いてみましょう。

## フリードマン方程式を変形

フリードマン方程式より

$$
\begin{aligned}
\frac{\dot{a}^2}{a^2} = H^2
&= H_0^2 \underbrace{\frac{8\pi G}{3H_0^2}}_{1/\rho_{\rm cr, 0}} (\rho_m + \rho_r + \rho_{\rm DE}) -\frac{Kc^2}{a^2} \\
&= H_0^2 (\Omega_{m, 0} (1+z)^3 + \Omega_{r, 0} (1+z)^4 + \Omega_{\rm DE, 0} (1+z)^{3(1+w_{\rm DE})} + \Omega_{K, 0} (1+z)^2)
\end{aligned}
$$

ここで$$\Omega_{K, 0} = -Kc^2/H_0^2$$としました。これを一般の場合に解くことは困難なので、4つのパターンにわけてときます。

## 曲率優勢の場合

ここでは$$\Omega_{m, 0} = \Omega_{r, 0} = \Omega_{\rm DE, 0} = 0$$とします。

$$
\dot{a}^2 = H_0^2 \Omega_{K, 0} \ \Longrightarrow \ 
a = \sqrt{\Omega_{K, 0}} H_0 t = H_0 t
$$

ここで現在のことを考えてみましょう。$$a_0 = H_0 t_0 = 1$$より$$t_0 = 1/ H_0$$となります。これはハッブルの法則

$$
v = H_0 \ell \ \Longrightarrow \ t_0 = \ell/v = 1/H_0 \sim 10^{10} \ [{\rm yr} \ h^{-1}]
$$

を表していることがわかります。

## 物質優勢の場合

$$
\dot{a}^2 = \frac{H_0^2 \Omega_{m, 0}}{a} \ \Longrightarrow \ 
\dot{a} = H_0 \sqrt{\Omega_{m, 0}} a^{-1/2} \ \Longrightarrow \ 
a^{1/2} da =  H_0 \sqrt{\Omega_{m, 0}} dt \ \Longrightarrow \ 
a = \left( \frac{3}{2} H_0 \sqrt{\Omega_{m,0}} H_0 t\right)^{2/3}
$$

ここで先ほどと同様に現在のことを考えます。すると

$$
a_0 = \left(\frac{3}{2} H_0 \sqrt{\Omega_{m,0}} t_0 \right)^{3/2} = 1 \ \Longrightarrow \ 
t_0 = \frac{2}{3} \frac{1}{H_0 \sqrt{\Omega_{m,0}}}
$$

となります。

## 放射優勢の場合

$$
\dot{a}^2 = H_0^2 \Omega_{r, 0} a^{-2} \ \Longrightarrow \ 
a da = \sqrt{\Omega_{r,0}} H_0 dt \ \Longrightarrow \ 
a = \sqrt{2\Omega_{r,0}^{1/2}H_0 t}
$$

## ダークエネルギー優勢の場合

$$w_{\rm DE, 0} = w_{\Lambda, 0} = -1$$として

$$
\dot{a}^2 = H_0^2 \Omega_{\rm DM, 0} a^2 \ \Longrightarrow \ 
a = e^{\sqrt{\Omega_{\rm DM, 0}} H_0 (t-t_0)}
$$

になります。特にスケール因子$$a(t)$$が指数関数で表現される宇宙をド・ジッター宇宙(de Sitter Universe)と呼びます。

{% include adsense.html %}
