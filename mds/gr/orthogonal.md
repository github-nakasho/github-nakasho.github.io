---
layout: default
title: 4元角運動量と4元速度の直交性
parent: 一般相対性理論
math: mathjax3
permalink: /gr/orthogonal
nav_order: 35
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

# 4元角運動量と4元速度の直交性　（工事中...）

ここではレンズ・チュリング歳差運動の計算で出現した、4元角運動量$$S^\mu$$と4元速度$$U^\mu$$の直交性

$$
U_\mu S^\mu 
= 0 \tag{1}
$$

を証明していきます。

## 座標変換

実験室系での粒子の座標を$$x^\hat{\mu}$$のようにハットをつけて表し、慣性系での粒子の座標を$$x^\mu$$のように書きます。
初期に実験室系で$$x^\hat{i}=0$$に$$v^\hat{i}=0$$で静止している粒子について考えましょう。
そして実験室系において、この粒子は一定の加速度$$a^\hat{i}$$で加速度運動し、さらに角速度$$\Omega^\hat{j}$$で回転を始めたとします。
すると慣性系と実験室系の間の変換は

$$
x^i 
= x^\hat{i} + \frac{1}{2} a^\hat{i} \hat{t}^2 + \epsilon^\hat{i}_{\ \ \hat{j} \hat{k}} \Omega^\hat{j} x^\hat{k} \hat{t} \tag{2}
$$

ここで$$c \hat{t} = x^{\hat{0}}$$より

$$
x^i 
= x^\hat{i} + \frac{1}{2} a^\hat{i} \frac{(x^\hat{0})^2}{c^2} + \epsilon^\hat{i}_{\ \ \hat{j} \hat{k}} \Omega^\hat{j} x^\hat{k} \frac{x^\hat{0}}{c} \tag{3}
$$

のように書き直すことができます。
$$\hat{t}$$秒後にこの粒子は$$v^\hat{j} = a^\hat{j} \hat{t} = a^\hat{j} x^\hat{0} / c$$で運動するので、ローレンツ変換より

$$
ct 
= (c\hat{t} + \beta_\hat{j} x^\hat{j}) \gamma 
\underbrace{\simeq}_{\gamma \sim 1} c\hat{t} \left( 1 + \frac{v_\hat{j} x^\hat{j}}{c^2\hat{t}}\right) 
= x^\hat{0} \left( 1 + \frac{a_\hat{j} x^\hat{j}}{c^2}\right) \tag{4}
$$

の関係にあるとわかります。
途中、この粒子の運動は非相対論的であるとして$$\gamma \sim 1$$のように近似しました。
これらから

$$
dx^i 
= dx^\hat{i} + \frac{a^\hat{i} x^\hat{0} dx^\hat{0}}{c^2} + \epsilon^\hat{i}_{\ \ \hat{j} \hat{k}} \Omega^\hat{j} x^\hat{k} \frac{dx^\hat{0}}{c} \tag{5}
$$

$$
dx^0 
= dx^\hat{0} \left( 1 + \frac{a_\hat{j} x^\hat{j}}{c^2}\right) \tag{6}
$$

を得ます。
よって、慣性系での線素は

$$
\begin{align}
ds^2 
&= -c^2 dt^2 + \delta_{ij} dx^i dx^j \notag \\
&= - (dx^\hat{0})^2 \left( 1 + \frac{a_\hat{j} x^\hat{j}}{c^2}\right)^2 + \delta_{ij} \left(dx^\hat{i} + \frac{a^\hat{i} x^\hat{0} dx^\hat{0}}{c^2} + \epsilon^\hat{i}_{\ \ \hat{a} \hat{b}} \Omega^\hat{a} x^\hat{b} \frac{dx^\hat{0}}{c}\right) \left(dx^\hat{j} + \frac{a^\hat{j} x^\hat{0} dx^\hat{0}}{c^2} + \epsilon^\hat{j}_{\ \ \hat{c} \hat{d}} \Omega^\hat{c} x^\hat{d} \frac{dx^\hat{0}}{c}\right) \notag \\
&\simeq - (dx^\hat{0})^2  \left( 1 + \frac{2 a_\hat{j} x^\hat{j}}{c^2}\right) + (dx^\hat{i})^2 + 2 dx_\hat{i} \epsilon^\hat{i}_{\ \ \hat{a}\hat{b}} \Omega^\hat{a} x^\hat{b} \frac{dx^\hat{0}}{c} \notag \\
&= - \left( 1 + \frac{2 \mathbf{a} \cdot \mathbf{x}}{c^2} \right) (dx^\hat{0})^2 + (dx^\hat{i})^2 + 2 (\boldsymbol{\Omega} \times \mathbf{x}) \cdot \frac{dx^\hat{0} d\mathbf{x}}{c} \tag{7}
\end{align}
$$

以上から、実験室系での計量は

$$
g_{00} 
= 1 + \frac{2 \mathbf{a} \cdot \mathbf{x}}{c^2}, \quad g_{0i} 
= \frac{(\boldsymbol{\Omega} \times \mathbf{x})_i}{c}, \quad g_{ij} 
= \delta_{ij} \tag{8}
$$

## 参考文献

[1] [Thorne & Blandford, "Modern Classical Physics: Optics, Fluids, Plasmas, Elasticity, Relativity, and Statistical Physics"](https://amzn.to/3MD1orv)  
[2] [Hartle, "Gravity: An Introduction to Einstein's General Relativity"](https://amzn.to/3KOV7Yo)  

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B01LVZ72QL&linkId=9b7f592d17f1e5e5bab70888d5ba05a1"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=1316517543&linkId=73f2d614dabc417ef58c27bf4247a6a2"></iframe>

{% include adsense.html %}
