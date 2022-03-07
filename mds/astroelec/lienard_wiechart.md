---
layout: default
title: リエナー・ブィーヒェルトポテンシャル
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/lienard_wiechart
nav_order: 6
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

# リエナー・ブィーヒェルトポテンシャル

運動する一つの荷電粒子による電磁ポテンシャルを求めましょう。電荷$$q$$の粒子が$$\mathbf{r} = \mathbf{r}_0(t)$$の軌跡に沿って運動しているとします。このとき運動速度は$$\mathbf{u} = \dot{\mathbf{r}}_0 (t)$$となります。電荷密度・電流密度が

$$
\rho_e (\mathbf{r}, t) 
= q \delta^3 (\mathbf{r}-\mathbf{r}_0(t)), \ 
\mathbf{j}_e(\mathbf{r}, t) = q \mathbf{u}(t) \delta^3 (\mathbf{r}-\mathbf{r}_0(t)) \tag{1}
$$

で与えられるとします。

以下、[ローレンツゲージ](/astroelec/potential_gauge)が選ばれているものとして計算を行います。したがって、電磁ポテンシャルを求める方程式は

$$
\Box \phi 
= - 4\pi \rho_e \tag{2}
$$

$$
\Box \mathbf{A} 
= -\frac{4\pi}{c} \mathbf{j}_e \tag{3}
$$

のように与えられます。

## $$\phi$$の計算

[ダランベレシアンとグリーン関数の議論](/astroelec/retarded_green)から、$$\Box \phi (\mathbf{r}, t) = - 4\pi \rho_e(\mathbf{r}, t)$$の解は

$$
\phi(\mathbf{r}, t) 
= 4\pi \int_{-\infty}^\infty dt'\iiint_{-\infty}^\infty d^3\mathbf{r} G( \mathbf{r} -\mathbf{r}', t-t') \rho_e (\mathbf{r}', t') \tag{4}
$$

[遅延グリーン関数を求めた時の議論](/astroelec/retarded_green)から、$$\Box G(\mathbf{r}, t) = - \delta^3 (\mathbf{r}) \delta (t)$$を満たすグリーン関数の解と$$\rho_e (\mathbf{r}, t) = q \delta^3 (\mathbf{r} - \mathbf{r}_0 (t))$$を、(2)式に代入します。

$$
\begin{align}
\phi 
&= 4\pi \int_{-\infty}^\infty dt' \iiint_{-\infty}^\infty d^3 \mathbf{r}' \frac{1}{4\pi} \frac{\delta(t-t'-\frac{\left| \mathbf{r}-\mathbf{r}'\right|}{c})}{\left| \mathbf{r}- \mathbf{r}'\right|} q \delta^3( \mathbf{r}'- \mathbf{r}_0 (t')) \notag \\
&= q \int_{-\infty}^\infty dt' \frac{\delta(t-t'-\frac{\left| \mathbf{r}- \mathbf{r}_0(t')\right|}{c})}{\left| \mathbf{r}- \mathbf{r}_0(t') \right|} \quad (t>t') \tag{5}
\end{align}
$$

ここで

$$
f(t')=-t'+t-\frac{\left| \mathbf{r} - \mathbf{r}_0 (t')\right|}{c}
$$

とおくと、デルタ関数の公式より

$$
\phi 
= q \frac{1}{\left| \mathbf{r}- \mathbf{r}_0(t_\mathrm{ret})\right|} \frac{1}{\displaystyle{\left| \left. \frac{df}{dt'}\right|_{t=t_\mathrm{ret}}\right|}} \tag{6}
$$

となります。途中で出現した

$$
t_\mathrm{ret} \equiv t-\frac{|\mathbf{r} - \mathbf{r}_0(t_\mathrm{ret})|}{c}
$$

は遅延時刻(retarded time)です。分母部分の計算を行いましょう。

$$
\begin{align}
\frac{df}{dt'} 
&= -1 -\frac{1}{c} \frac{d}{dt'} \left| \mathbf{r}- \mathbf{r}_0(t')\right| 
= -1 -\frac{1}{c} \frac{ \mathbf{r}- \mathbf{r}_0(t')}{\left| \mathbf{r}- \mathbf{r}_0(t')\right|} \cdot \left( -\frac{d \mathbf{r}_0(t')}{dt'}\right) \notag \\
&= -1 +\frac{1}{c}\frac{ \mathbf{R} (t')}{R(t')} \cdot \mathbf{u} 
\quad (\mathbf{R}(t') \equiv \mathbf{r}- \mathbf{r}_0(t')) \tag{7}
\end{align}
$$

さらに$$\boldsymbol{\beta}(t) \equiv \frac{\mathbf{u}(t)}{c}, \mathbf{n}(t) \equiv \frac{ \mathbf{R}(t)}{R(t)}$$を導入すると

$$
\phi
=\frac{q}{R(t_\mathrm{ret}) \left|-1+ \mathbf{n} (t_\mathrm{ret})\cdot \boldsymbol{\beta} (t_\mathrm{ret})\right|} \tag{8}
$$

$$\mathbf{n}(t_\mathrm{ret})\cdot \boldsymbol{\beta} (t_\mathrm{ret}) < 1$$より$$\kappa(t_\mathrm{ret}) \equiv 1-\mathbf{n}(t_\mathrm{ret})\cdot \boldsymbol{\beta}(t_\mathrm{ret})$$として

$$
\phi
=\frac{q}{R(t_\mathrm{ret}) \left(1-\mathbf{n}(t_\mathrm{ret})\cdot \boldsymbol{\beta} (t_\mathrm{ret})\right)} =\frac{q}{R(t_\mathrm{ret})\kappa(t_\mathrm{ret})} \tag{9}
$$

## $$\mathbf{A}$$の計算

(3)に対して同様の計算を行いましょう。

$$
\begin{align}
\mathbf{A}( \mathbf{r}, t) 
&= \frac{4\pi}{c} \int_{-\infty}^\infty dt' \iiint_{-\infty}^\infty d^3 \mathbf{r}' \frac{1}{4\pi} \frac{\delta(t-t'-\frac{| \mathbf{r}-\mathbf{r}'|}{c})}{| \mathbf{r} - \mathbf{r}'|} q \mathbf{u}(t') \delta^3( \mathbf{r}'-\mathbf{r}_0(t')) \notag \\
&= \frac{q}{c} \int_{-\infty}^\infty dt'\frac{\delta(t-t'-\frac{| \mathbf{r}- \mathbf{r}_0(t')|}{c})}{| \mathbf{r}-\mathbf{r}_0(t')|} \mathbf{u}(t') 
= \frac{q}{c}\frac{ \mathbf{u}(t_\mathrm{ret})}{| \mathbf{r}- \mathbf{r}_0(t_\mathrm{ret})|} \frac{1}{\left|-1+\frac{1}{c} \frac{ \mathbf{r}- \mathbf{r}_0(t_\mathrm{ret})}{| \mathbf{r}- \mathbf{r}_0(t_\mathrm{ret})|}\cdot \mathbf{u}(t_\mathrm{ret})\right|} \notag \\
&= \frac{q \mathbf{u}(t_\mathrm{ret})}{c R(t_\mathrm{ret})} \frac{1}{\left| -1+ \mathbf{n}(t_\mathrm{ret}) \cdot \boldsymbol{\beta} (t_\mathrm{ret})\right|} 
= \frac{q \mathbf{u}(t_\mathrm{ret})}{cR(t_\mathrm{ret}) \kappa(t_\mathrm{ret})}
=\frac{q \boldsymbol{\beta} (t_\mathrm{ret})}{R(t_\mathrm{ret}) \kappa(t_\mathrm{ret})} \tag{10}
\end{align}
$$

(9), (10)式を合わせてリエナー・ヴィーヒェルトポテンシャルと呼びます。

{% include adsense.html %} 
