---
layout: default
title: 優勢な散乱によって生じる問題
parent: 恒星大気の物理学
math: mathjax3
permalink: /atmos/scattering_dominated
nav_order: 21
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

# 4.2 優勢な散乱によって生じる問題

光の散乱の存在により、放射の特性と個々の場所の熱的特性とが無関係になります。そのため、Radiative transfer方程式を解くことが非常に難しくなります。Radiative transfer方程式の解は(4.14)式で与えられ、散乱がない場合$$(\epsilon_\nu = 1)$$には$$J_\nu$$はPlanck関数を積分することにより得られます。しかし、$$\epsilon_\nu < 1$$の場合には、この式は積分方程式となり、解くことが簡単でなくなります。ここでは、散乱が起こす重要な効果を簡単な場合について考えましょう。  
Planck関数の場所に対する変化がOptical depthの線形関数

$$
B_\nu 
= a_\nu + b_\nu \tau_\nu \tag{4.17}
$$

で表されるとし、(4.15)で定義される$$\epsilon_\nu$$は場所に依存しない定数とします。(4.11)式を$$\epsilon_\nu$$を用いて書くと

$$
\frac{dF_\nu}{d\tau_\nu} 
= 4\pi \epsilon_\nu (J_\nu - B_\nu) \tag{4.18}
$$

となります。またRadiative transfer方程式(4.8)に$$\mu$$をかけて全立体角で積分したものから

$$
4\pi \frac{dK_\nu}{d\tau_\nu} 
= F_\nu \tag{4.19}
$$

を得ます。ここで、Eddington近似 $$K_\nu = \frac{1}{3} J_\nu$$を用いると、(4.19)式より

$$
\frac{4\pi}{3} \frac{dJ_\nu}{d\tau_\nu} 
= F_\nu
$$

これと(4.18)から、$$F_\nu$$を消去しましょう。すると

$$
\frac{1}{3} \frac{d^2 J_\nu}{d\tau_\nu^2} 
= \epsilon_\nu (J_\nu - B_\nu) \tag{4.20}
$$

となります。$$B_\nu$$は(4.17)式で与えられると仮定しているので、$$\frac{d^2 B_\nu}{d\tau_\nu^2} = 0$$です。したがって、上式は

$$
\frac{d^2}{d\tau_\nu^2} (J_\nu - B_\nu) 
= 3\epsilon_\nu (J_\nu - B_\nu) \tag{4.21}
$$

のようにも書くことができます。この式の一般解は

$$
J_\nu - B_\nu 
= \alpha_\nu e^{-\sqrt{3\epsilon_\nu} \tau_\nu} + \beta_\nu e^{\sqrt{3\epsilon_\nu} \tau_\nu} \tag{4.22}
$$

です。ここで$$\alpha_\nu, \beta_\nu$$は積分定数です。$$\tau_\nu \rightarrow \infty$$で$$J_\nu \rightarrow B_\nu$$となるという境界条件から、$$\beta_\nu = 0$$とわかります。よって

$$
J_\nu (\tau_\nu) 
= a_\nu + b_\nu \tau_\nu + \alpha_\nu e^{-\sqrt{3\epsilon_\nu} \tau_\nu} \tag{4.23}
$$

が得られます。この式から、$$J_\nu \simeq B_\nu$$となるのは$$\tau_\nu > \frac{1}{\sqrt{\epsilon_\nu}}$$のときであることがわかります。すなわち$$\epsilon_\nu$$が小さいとき、言い換えれば散乱の効果が大きいときは、Optical depthがかなり深くまで、Mean intensity $$J_\nu$$が$$B_\nu$$からずれることがわかります。この深さのスケール$$\frac{1}{\sqrt{\epsilon_\nu}}$$はThermalization depthと呼ばれます。これは以下のように理解できます。  
一度の散乱で光子が吸収される確率は$$\epsilon_\nu = \frac{\kappa_\nu}{\kappa_\nu + \sigma_\nu}$$です。よって光子が吸収されるまでに、その光子は$$\frac{1}{\epsilon_\nu}$$回の散乱を受けます。その間にランダムウォークによって移動する距離は$$(平均自由行程) \times \sqrt{\frac{1}{\epsilon_\nu}}$$となります。平均自由行程は$$\Delta \tau_\nu = 1$$の距離なので、Thermalization depthは$$\frac{1}{\sqrt{\epsilon_\nu}}$$となります。  
表面温度の非常に高い星の外層では、電子散乱の効果が優勢となり、$$\epsilon_\nu \sim 10^{-4}$$程度になっています。このような場合には$$\tau_\nu \sim 100$$の深い領域まで行かなければ、$$J_\nu \simeq B_\nu$$になりません。

# Appendix: ランダムウォークの平均移動距離

![ランダムウォークの様子。](/assets/images/atmos/random_walk.png)

$$i$$回目のランダムウォークによって移動する方向ベクトルを$${\bf r}_i$$とします。またランダムウォークを行う粒子の1回の移動距離($${\bf r}_i$$の大きさ)は移動方向に依存せず全て$$\ell$$とします。今、粒子が原点から$$N$$回のランダムウォークを行ったとしましょう(ただし$$N \gg 1$$)。すると、このランダムウォークによって粒子の位置ベクトルは

$$
{\bf R} 
= \sum_{i=1}^N {\bf r}_i 
= \ell \sum_{i=1}^N {\bf n}_i
$$

のように書けます。ここで$${\bf n}_i$$は$${\bf r}_i$$方向の単位ベクトルです。移動距離を求めたいので、この$${\bf R}$$ベクトルの2乗(内積)を計算しましょう。

$$
R^2 
= {\bf R} \cdot {\bf R}
= \ell^2 \left( \sum_{i=1}^N {\bf n}_i \right) \cdot \left( \sum_{j=1}^N {\bf n}_j \right)
= \ell^2 \left( \sum_{i=1}^N {\bf n}_i \cdot {\bf n}_i + \sum_{i \neq j} {\bf n}_i \cdot {\bf n}_j \right)
$$

完全にランダムに動いているような場合を考えるので、様々な方向を向くベクトル$${\bf n}_i, {\bf n}_j$$の内積は$$[-1, 1]$$の間で完全にランダムな値をとります。第2項はそれを全ての$$i \neq j$$の組み合わせに対して和をとるので、$$N \gg 1$$においては0と近似できます。

$$
\therefore \ R^2 
\simeq \ell^2 N \ \Longrightarrow \ 
R 
\simeq \ell \sqrt{N}
$$

移動距離が、ランダムウォークの回数の平方根に比例するという重要な公式を得ることができました。

{% include adsense.html %}
