---
layout: default
title: 相対論的運動による微分断面積の変換
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/cross_section_transform
nav_order: 114
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

# 微分断面積の変換

まずは、微分散乱断面積を定義するときに現れる微小立体角$$d\Omega = \sin \theta d\theta d\varphi$$が、ローレンツ変換に対してどのように変換されるかを調べてみましょう。
この微分立体角の定義で使われている角度$$(\theta, \varphi)$$は、散乱前後の粒子の運動方向とします。
すなわち、ここでは運動速度の変換則を考えることになります。
実験室系を$$O$$、実験室系の$$x$$軸に沿って速度$$v$$で運動している系を$$\bar{O}$$としましょう。
実験室系での粒子の速度の3次元成分をそれぞれ$$\mathbf{u} = (u^1, u^2, u^3)$$とすると、これを速度$$v$$で$$x$$軸方向で動く座標系に移った場合の速度は

$$
\bar{u}^1 
= \frac{u^1 - v}{1-vu^1}, \quad \bar{u}^2 
= \frac{1}{\gamma} \frac{u^2}{1-vu^1}, \quad \bar{u}^3 
= \frac{1}{\gamma} \frac{u^3}{1-vu^1} \tag{1}
$$

のようになります。
これを逆に解いて

$$
u^1 
= \frac{\bar{u}^1 + v}{1+v \bar{u}^1}, \quad u^2 
= \frac{1}{\gamma} \frac{\bar{u}^2}{1+v \bar{u}^1}, \quad u^3 
= \frac{1}{\gamma} \frac{\bar{u}^3}{1+v \bar{u}^1} \tag{2}
$$

と書くこともできます。
今、$$(u^1, u^2, u^3) = (u \cos \theta, u \sin \theta \cos \varphi, u \sin \theta \sin \varphi), (\bar{u}^1, \bar{u}^2, \bar{u}^3 ) = (\bar{u} \cos \bar{\theta}, \bar{u} \sin \bar{\theta} \cos \varphi, \bar{u} \sin \bar{\theta} \sin \varphi)$$のように、$$\varphi = \bar{\varphi}$$であるとすると、独立なものは

$$
\bar{u} \cos \bar{\theta} 
= \frac{u \cos \theta - \beta}{1-\beta u \cos \theta}, \quad \bar{u} \sin \bar{\theta} 
= \frac{1}{\gamma} \frac{u\sin \theta}{1-\beta u \cos \theta} \tag{3}
$$

もしくは

$$
u \cos \theta 
= \frac{\bar{u}\cos \bar{\theta} + \beta}{1+\beta \bar{u} \cos \bar{\theta}}, \quad  u \sin \theta 
= \frac{1}{\gamma} \frac{\bar{u} \sin \bar{\theta}}{1+\beta \bar{u} \cos \bar{\theta}} \tag{4}
$$

となります。
これらより

$$
\tan \bar{\theta} 
= \frac{1}{\gamma} \frac{u\sin \theta}{u \cos \theta - \beta}, \quad
\tan \theta 
= \frac{1}{\gamma} \frac{\bar{u} \sin \bar{\theta}}{\bar{u} \cos \bar{\theta} + \beta} \tag{5}
$$

を得ます。
$$1+\tan^2 \theta = \frac{1}{\cos^2 \theta}$$より

$$
1 + \left( \frac1\gamma \frac{\bar{u} \sin \bar{\theta}}{\bar{u} \cos \bar{\theta} + \beta }\right)^2 
= \frac{1}{\cos^2 \theta} \ \Longrightarrow \ 
\cos \theta 
= \frac{\gamma \left( \cos \bar{\theta} + \frac{\beta}{\bar{u}} \right)}{\sqrt{\sin^2 \bar{\theta} + \gamma^2 \left( \cos \bar{\theta} + \frac{\beta}{\bar{u}}\right)^2}} \tag{6}
$$

この両辺の微小量をとると

$$
\begin{aligned}
- \sin \theta d\theta 
&= \gamma \frac{-\sin \bar{\theta} \sqrt{\sin^2 \bar{\theta} + \gamma^2 \left( \cos \bar{\theta} + \frac{\beta}{\bar{u}}\right)^2} - \left(\cos \bar{\theta} + \frac{\beta}{\bar{u}}\right) \frac{1}{2} \left\{ \sin^2 \bar{\theta} + \gamma^2 \left( \cos \bar{\theta} + \frac{\beta}{\bar{u}}\right)^2 \right\}^{-1/2} \left\{ 2\sin \bar{\theta} \cos \bar{\theta} - 2\gamma^2 \left(\cos \bar{\theta} + \frac{\beta}{\bar{u}}\right) \sin \bar{\theta} \right\}}{\sin^2 \bar{\theta} + \gamma^2 \left( \cos \bar{\theta} + \frac{\beta}{\bar{u}}\right)^2} d\bar{\theta} \\
&= \gamma \sin \bar{\theta} \frac{- \left\{ \sin^2 \bar{\theta} + \gamma^2 \left( \cos \bar{\theta} + \frac{\beta}{\bar{u}}\right) \right\} - \left( \cos \bar{\theta} + \frac{\beta}{\bar{u}}\right) \left\{\cos \bar{\theta} - \gamma^2 \left( \cos \bar{\theta} + \frac{\beta}{\bar{u}}\right)\right\}}{\left\{ \sin^2 \bar{\theta} + \gamma^2 \left( \cos \bar{\theta} + \frac{\beta}{\bar{u}}\right)^2\right\}^{3/2}} d\bar{\theta} \\
&= \gamma \sin \bar{\theta} \frac{-\sin^2 \bar{\theta} - \cos^2 \bar{\theta} - \frac{\beta}{\bar{u}} \cos \bar{\theta}}{\left\{ \sin^2 \bar{\theta} + \gamma^2 \left( \cos \bar{\theta} + \frac{\beta}{\bar{u}}\right)^2\right\}^{3/2}} d\bar{\theta}
= - \frac{\gamma \left( 1 + \frac{\beta}{\bar{u}} \cos \bar{\theta}\right)}{\left\{ \sin^2 \bar{\theta} + \gamma^2 \left( \cos \bar{\theta} + \frac{\beta}{\bar{u}}\right)^2\right\}^{3/2}} \sin \bar{\theta} d\bar{\theta} 
\end{aligned}
$$

微小面積は座標系を移っても変化せず、$$d\sigma = d\bar{\sigma}$$であるとすると

$$
\begin{align}
&\left(\frac{d\sigma}{d\Omega} \right)_\mathrm{Lab} d\Omega
= \left( \frac{d\bar{\sigma}}{d\bar{\Omega}} \right)_\bar{O} d\bar{\Omega} \notag \\
&\Longrightarrow \ 
\left(\frac{d\sigma}{d\Omega} \right)_\mathrm{Lab} 
= \left(\frac{d\bar{\sigma}}{d\bar{\Omega}} \right)_\bar{O} \frac{d\bar{\Omega}}{d\Omega} 
= \left(\frac{d\bar{\sigma}}{d\bar{\Omega}} \right)_\bar{O} \frac{\sin \bar{\theta} d\bar{\theta} d\varphi}{\sin \theta d\theta d\varphi} 
= \frac{\left\{ \sin^2 \bar{\theta} + \gamma^2 \left( \cos \bar{\theta} + \frac{\beta}{\bar{u}}\right)^2\right\}^{3/2}}{\gamma \left( 1 + \frac{\beta}{\bar{u}} \cos \bar{\theta}\right)} \left(\frac{d\bar{\sigma}}{d\bar{\Omega}} \right)_\bar{O} \tag{7}
\end{align}
$$

## 光子の場合

角振動数$$\omega$$、波数ベクトル$$\mathbf{k}$$の光子の4元運動量は$$p^\alpha = \left( \frac{\hbar \omega}{c}, \hbar \mathbf{k}\right)$$で与えられます。
また真空中の場合、$$\omega = ck \ (\vert \mathbf{k} \vert = k)$$が成り立っています。
今、波数ベクトルの各成分が$$(k^1, k^2, k^3) = (k \cos \theta, k \sin \theta \cos \varphi, k\sin \theta \sin \varphi)$$であるとしましょう。
光子の4元運動量について$$O$$系と$$\bar{O}$$系の間の変換則を考えると

$$
\hbar \bar{\omega} 
= \gamma \hbar \omega - \gamma (\mathbf{v} \cdot \hbar \mathbf{k}) 
= \gamma \hbar \omega - \gamma \hbar v k \cos \theta \ \Longrightarrow \ 
\bar{\omega} 
= \gamma \omega (1-\beta \cos \theta) \tag{8}
$$

がわかります。
同様に$$\bar{O}$$系から$$O$$系への変換則を計算すれば

$$
\omega 
= \gamma \bar{\omega} (1+\beta \cos \bar{\theta} )  \tag{9}
$$

のように、ドップラー則を得ることができます。
(9)式からさらに

$$
\frac{1}{\gamma} \frac{\omega}{\bar{\omega}} 
= 1 + \beta \cos \bar{\theta} \ \underbrace{\Longrightarrow}_{(8)} \ \frac{1}{\gamma} \frac{1}{\gamma (1-\beta \cos \theta)} - 1 
= \beta \cos \bar{\theta}
$$

この左辺を整理すると

$$
(左辺) 
= \frac{1-\gamma^2 (1-\beta \cos \theta)}{\gamma^2 (1-\beta \cos \theta)} 
= \frac{1-\gamma^2 + \gamma^2 \beta \cos \theta}{\gamma^2 (1-\beta \cos \theta)} 
= \frac{- \beta^2 \gamma^2 + \gamma^2 \beta \cos \theta}{\gamma^2 (1-\beta \cos \theta)} 
= - \frac{\beta(\beta - \cos \theta)}{(1-\beta \cos \theta)}
$$

より

$$
\cos \bar{\theta} 
= \frac{- \beta + \cos \theta}{1-\beta \cos \theta} \tag{10}
$$

を得ます。
さらに

$$
\begin{align}
\sin^2 \bar{\theta} 
&= 1-\cos^2 \bar{\theta} 
= 1 - \left(\frac{- \beta + \cos \theta}{1-\beta \cos \theta} \right)^2 
= \frac{1-2\beta \cos \theta + \beta^2 \cos^2 \theta - \cos^2 \theta + 2\beta \cos \theta - \beta^2}{(1-\beta \cos \theta)^2} \notag \\
&= \frac{(1-\beta^2) \sin^2 \theta}{(1-\beta \cos \theta)^2} 
= \frac{1}{\gamma^2 (1-\beta \cos \theta)^2} \sin^2 \theta 
\underbrace{=}_{(8)} \left( \frac{\omega}{\bar{\omega}} \right)^2 \sin^2 \theta \ \Longrightarrow \ 
\sin \bar{\theta} 
= \frac{\omega}{\bar{\omega}} \sin \theta \tag{11}
\end{align}
$$

のように、光行差 (aberration) の式を得ることができました。
同様に

$$
\begin{align}
&\frac{\bar{\omega}}{\omega} 
= \gamma (1-\beta \cos \theta) \ \Longrightarrow \ 
\beta \cos \theta 
= 1 - \frac{1}{\gamma} \frac{\bar{\omega}}{\omega} 
\underbrace{=}_{(9)} 1 - \frac{1}{\gamma^2 (1+\beta \cos \bar{\theta})} 
= \frac{\beta \gamma^2 (\beta + \cos \bar{\theta})}{\gamma^2 (1 + \beta \cos \bar{\theta})} \notag \\
&\Longrightarrow \ 
\cos \theta 
= \frac{\beta + \cos \bar{\theta}}{1 + \beta \cos \bar{\theta}} \tag{12}
\end{align}
$$

$$
(11) \ \Longrightarrow \ 
\sin \theta 
= \frac{\bar{\omega}}{\omega} \sin \bar{\theta} \tag{13}
$$

も求めることができます。
(12)式の両辺の微少量をとると

$$
\begin{aligned}
-\sin \theta d\theta 
&= \frac{-\sin \bar{\theta} (1+\beta \cos \bar{\theta}) - (\cos \bar{\theta} + \beta) (-\beta \sin \bar{\theta})}{(1 + \beta \cos \bar{\theta})^2} d \bar{\theta} \\
&= \frac{-(1+\beta \cos \bar{\theta}) + (\cos \bar{\theta} + \beta) \beta}{(1+ \beta \cos \bar{\theta})^2} \sin \bar{\theta} d\bar{\theta} 
= \frac{-1 + \beta^2}{(1+\beta \cos \bar{\theta})^2} \sin \bar{\theta} d\bar{\theta} \\
&= - \frac{1}{\gamma^2 (1+\beta \cos \bar{\theta})^2} \sin \bar{\theta} d\bar{\theta} 
\underbrace{=}_{(9)} - \left( \frac{\bar{\omega}}{\omega} \right)^2 \sin \bar{\theta} d\bar{\theta} 
\end{aligned}
$$

より

$$
d\Omega 
= \sin \theta d\theta d\varphi 
= \left( \frac{\bar{\omega}}{\omega} \right)^2 \sin \bar{\theta} d\bar{\theta} d\varphi 
= \left( \frac{\bar{\omega}}{\omega} \right)^2 d\bar{\Omega} \tag{14}
$$

を得ます。
したがって、微分散乱断面積の変換が

$$
\left( \frac{d\sigma}{d\Omega}\right)_\mathrm{Lab} 
= \left( \frac{\omega}{\bar{\omega}} \right)^2 \left( \frac{d \bar{\sigma}}{d \bar{\Omega}}\right)_\bar{O}
$$

のように求まりました。

## 参考文献

[1] [高原文郎, "特殊相対論"](https://amzn.to/3I7wtn4)  

{% include adsense.html %} 