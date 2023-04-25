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

## 座標変換とその計量

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
= -1 - \frac{2 \mathbf{a} \cdot \mathbf{x}}{c^2}, \quad g_{0i} 
= \frac{(\boldsymbol{\Omega} \times \mathbf{x})_i}{c}, \quad g_{ij} 
= \delta_{ij} \tag{8}
$$

## クリストッフェル記号の計算と輸送の法則

ベクトルについての公式を導出するために、以下では世界線に沿った[基底ベクトルの微分](/gr/derivative)

$$
\nabla_U \mathbf{e}_\alpha 
= \nabla_\hat{0} \mathbf{e}_\alpha 
= \Gamma^\mu_{0\alpha} \mathbf{e}_\mu \tag{9}
$$

を考えます。
よって[クリストッフェル記号](/gr/christoffel)を計算しましょう。
ここで、加速度や角速度は一定で時間に依存しないことに注意しましょう。
さらにこれらの量は非相対論的であるとして、先程の計量は

$$
g_{\mu \nu} 
= \eta_{\mu \nu} + h_{\mu \nu} \quad (\vert h_{\mu \nu} \vert \ll 1) \tag{9}
$$

のように書かれ、さらに[クリストッフェル記号](/gr/christoffel)は

$$
\Gamma^\mu_{\alpha 0} 
\simeq \frac{1}{2} \eta^{\mu \nu} (\partial_\alpha h_{0\nu} + \partial_0 h_{\nu \alpha} - \partial_\nu h_{\alpha 0}) \tag{10}
$$

のように計算されることから

$$
\Gamma^0_{00} 
= 0, \quad \Gamma^j_{00} 
= \frac{a^j}{c^2}, \quad \Gamma^0_{j0} 
= \frac{a_j}{c^2}, \quad \Gamma^i_{j0} 
= \frac{1}{2} \left\{ \frac{\partial}{\partial x_j} \frac{(\boldsymbol{\Omega} \times \mathbf{x})_i}{c} - \frac{\partial}{\partial x_i} \frac{(\boldsymbol{\Omega} \times \mathbf{x})_j}{c} \right\} \tag{11}
$$

と求まります。
よって

$$
\nabla_U \frac{U}{c} \equiv
\nabla_U \mathbf{e}_0 
= \Gamma^\mu_{00} \mathbf{e}_\mu 
= \frac{\mathbf{a}}{c^2} \tag{12}
$$

$$
\nabla_U \mathbf{e}_j 
= \frac{\mathbf{a} \cdot \mathbf{e}_j}{c^2} \frac{U}{c} + \boldsymbol{\epsilon} (\mathbf{U}, \boldsymbol{\Omega}, \mathbf{e}_j) \tag{13}
$$

を得ます。
(13)式を、一般的な「輸送の法則」(general "law of transport")と呼びます。

## フェルミ・ウォーカー輸送と自転角運動量ベクトルの直交性

先程は$$\mathbf{e}_j$$を用いました。
しかし以降では$$\mathbf{e}_j$$を、[レンズ・チュリング歳差運動](/gr/lense_thirring)で考えた惑星の自転角運動量ベクトル$$S^\mu$$に置き換えましょう。
さらに惑星の慣性系で考えると、$$\boldsymbol{\Omega} = \mathbf{0}$$より

$$
\nabla_U S^\mu
= \frac{U^\mu}{c^3} (a_\nu S^\nu) \tag{14}
$$

となります。
これをフェルミ・ウォーカー輸送(Fermi-Walker transport)と呼びます。
以下の式を計算しましょう。

$$
\nabla_U (S^\nu U_\nu) 
= U_\nu \underbrace{(\nabla_U S^\nu)}_{(14)} + S^\nu \underbrace{(\nabla_U U_\nu)}_{(12)} 
= \frac{\overbrace{U_\nu U^\nu}^{=-c^2}}{c^3} (a_\alpha S^\alpha) + S^\nu \frac{a_\nu}{c} 
= 0 \tag{25}
$$

この計算から、初期に$$S^\nu U_\nu = 0$$ならば、世界線に沿って常に$$S^\nu U_\nu = 0$$であることがわかります。

## 参考文献

[1] [Thorne & Blandford, "Modern Classical Physics: Optics, Fluids, Plasmas, Elasticity, Relativity, and Statistical Physics"](https://amzn.to/3MD1orv)  
[2] [Hartle, "Gravity: An Introduction to Einstein's General Relativity"](https://amzn.to/3KOV7Yo)  

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B01LVZ72QL&linkId=9b7f592d17f1e5e5bab70888d5ba05a1"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=1316517543&linkId=73f2d614dabc417ef58c27bf4247a6a2"></iframe>

{% include adsense.html %}
