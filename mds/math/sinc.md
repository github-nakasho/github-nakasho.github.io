---
layout: default
title: sinc関数の積分
parent: 数学
math: mathjax3
permalink: /math/sinc
nav_order: 1
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

# sinc関数の積分

複素数平面状で経路積分を行うことによりsinc関数の$$[-\infty, \infty]$$の積分

$$
\int_{-\infty}^\infty \frac{\sin x}{x} \ dx= \pi
$$

を求めましょう。

## 複素積分

$$
f(z) = \frac{e^{iz}}{z} \ \ (z = x + iy)
$$

を以下のような閉曲線上で積分することを考えます。

![sinc.png](/assets/images/math/sinc.png)

$$
\left\{ \begin{array}{lll}
C_1 &:& 実軸上 r→R\\
C_2 &:& z=R e^{i \theta} \ (\theta は偏角、0→\pi)\\
C_3 &:& 実軸上 -R→-r\\
C_4 &:& z=r e^{i \theta} \ (\pi→0)
\end{array} \right.
$$

$$
\oint_{C_1 +C_2 +C_3 +C_4} f(z) \ dz 
= \int_{C_1} f(x) \ dx +\int_{C_2} f(z) \ dz + \int_{C_3} f(x) \ dx + \int_{C_4} f(z) \ dz 
$$

$$f(z)$$は閉曲線の内部で常に正則なので、コーシーの積分定理より

$$
\oint_{C_1 +C_2 +C_3 +C_4} f(z) \ dz = 0 
$$

$$C_2$$上において$$z=Re^{i\theta}$$より$$dz=iRe^{i\theta} d\theta$$

$$
\int_{C_2} f(z) \ dz 
= \int^{\pi}_{0} i R e^{i\theta} \frac{e^{iR e^{i\theta}}}{R e^{i\theta}} \ d \theta 
= i \int^{\pi}_{0} e^{iR \cos \theta} e^{-R \sin \theta} \ d\theta
$$

$$C_4$$上の積分も同様に

$$
\int_{C_4} f(z) \ dz 
= \int^{0}_{\pi} i r e^{i\theta} \frac{e^{ir e^{i\theta}}}{r e^{i\theta}} \ d \theta
= i \int^{0}_{\pi} e^{ir \cos \theta} e^{-r \sin \theta} \ d\theta
$$

$$
\therefore \ \int_{r}^{R} \frac{e^{ix}}{x} \ dx + \int_{-R}^{-r} \frac{e^{ix}}{x} \ dx + i \left( \int_{0}^\pi e^{iR\cos \theta} e^{-R \sin \theta} \  d\theta+ \int_\pi^0 e^{ir \cos \theta} e^{-r \sin \theta} \  d\theta \right) 
= 0
$$

ここで

$$
\lim_{R \rightarrow \infty} \left| \int_0^\pi e^{iR \cos \theta} e^{-R\sin \theta} \  d \theta \right| 
\le \lim_{R \rightarrow \infty} \int_0^\pi 
\underbrace { \left| e^{iR \cos \theta} \right| }_{=1} \left|e^{-R\sin \theta} \right| d \theta 
= 0 
$$

$$
\lim_{r \rightarrow 0} \int_\pi^0 e^{ir \cos \theta} e^{-r \sin \theta} \ d \theta 
= \int_\pi^0 d \theta 
= - \pi
$$

$$
\therefore \ \int_0^{\infty}  \frac{e^{ix}}{x} \ dx + \int_{- \infty}^0 \frac{e^{ix}}{x} \ dx- i\pi 
= 0 
$$

第2項において$$x=-X$$のように置換することで整理ができるので

$$
\therefore \ \int_0^{\infty} \frac{e^{ix} - e^{- ix}}{x} \ dx
= 2i \int_0^{\infty} \frac{\sin x}{x} \ dx
\underbrace{=}_{偶関数より} i \int_{-\infty}^{\infty} \frac{\sin x}{x} \ dx
= i\pi 
\ \Longrightarrow \int_{-\infty}^\infty \frac{\sin x}{x} \ dx 
= \pi 
$$

## 結言

複素関数を用いることで、ある値に積分が収束することを示しました。この積分は特にディリクレ積分という名前がついており、有名です。

## 参考文献

[1] [寺沢寛一, "自然科学者のための数学概論"](https://amzn.to/3UCy5qJ)  

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4000054805&linkId=3aafb100f03359a1c4c6594fa5a4fa61"></iframe>