---
layout: default
title: 線形近似されたEinstein方程式
parent: 一般相対性理論
math: mathjax3
permalink: /gr/linear_einstein
nav_order: 32
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

# 線形近似されたアインシュタイン方程式

質量が存在すると空間に歪みが生じますが、以下ではその質量が小さく、メトリックが

$$
g_{\mu \nu} 
= \eta_{\mu \nu} + h_{\mu \nu} \qquad (|h_{\mu \nu}| \ll 1) \tag{1}
$$

のように書けるとしましょう。するとこの逆行列(添字が両方とも上についているもの)は

$$
g^{\mu \nu} 
= (\eta_{\mu \nu} + h_{\mu \nu})^{-1} 
= \eta^{\mu \nu} - h^{\mu \nu} \tag{2}
$$

のようになります。この状況で[Einstein方程式](/gr/einstein_eq)がどのように書けるかを見ていきます。

## アインシュタインテンソルの計算

そのために、まずは[Riemannテンソル](/gr/riemann_tensor)の計算を行いましょう。[Christoffel記号](/gr/christoffel)は$$g_{\mu \nu, \alpha}$$のような項からなることがわかっています。このとき(1)式から

$$
g_{\mu \nu, \alpha} 
= \underbrace{\eta_{\mu \nu, \alpha}}_{=0} + h_{\mu \nu, \alpha}
$$

より、メトリックを微分したものは$$O(h)$$です。よってChristoffel記号も$$\mathcal{O}(h)$$となります。Riemannテンソルにおいて$$\mathcal{O}(h^2)$$は微小量として無視すると

$$
R^\alpha_{\ \ \gamma \mu \nu} 
= \partial_\mu \frac{1}{2} (h^{\ \ \alpha}_{\gamma \ \ , \nu} + h^{\alpha}_{\ \ \nu, \gamma} - h^{\ \ \ \ , \alpha}_{\nu \gamma}) - \partial_\nu \frac{1}{2} (h^{\ \ \alpha}_{\gamma \ \ , \mu} + h^{\alpha}_{\ \ \mu , \gamma} - h^{\ \ \ \ , \alpha}_{\mu \gamma}) 
= \frac{1}{2} (h^{\alpha}_{\ \ \nu , \gamma \mu} - h^{\ \ \ \ , \alpha}_{\nu \gamma \ \ , \mu} - h^{\alpha}_{\ \ \mu , \gamma \nu} + h^{\ \ \ \ , \alpha}_{\mu \gamma \ \ , \nu}) \tag{3}
$$

Rimannテンソルの添字が全て下付きのものは

$$
R_{\sigma \gamma \mu \nu} 
= g_{\sigma \alpha} R^{\alpha}_{\ \ \gamma \mu \nu} 
= \frac{1}{2} (h_{\sigma \nu , \gamma \mu} - h_{\nu \gamma , \sigma \mu} - h_{\alpha \mu , \gamma \nu} + h_{\mu \gamma , \sigma \nu}) \tag{4}
$$

となります。同様に[Ricciテンソル](/gr/einstein_tensor)は

$$
R_{\gamma \nu} 
= R^{\alpha}_{\ \ \gamma \alpha \nu} 
= g^{\alpha \sigma} R_{\sigma \gamma \alpha \nu}
= \frac{1}{2} h^{\alpha \sigma} (h_{\sigma \nu , \gamma \mu} - h_{\nu \gamma , \sigma \mu} - h_{\alpha \mu , \gamma \nu} + h_{\mu \gamma , \sigma \nu}) 
= \frac{1}{2} (h^{\alpha}_{\ \ \nu , \gamma \alpha} - h^{\alpha \sigma} h_{\nu \gamma , \sigma \alpha} - h^{\alpha}_{\ \ \alpha , \gamma \nu} + h^{\alpha}_{\ \ \gamma , \alpha \nu})
$$

ここで

$$
h^\alpha_{\ \ \alpha} 
= \eta^{\alpha \sigma} h_{\sigma \alpha} 
= h 
$$

のように、行列の対角成分の総和であるトレースを導入しましょう。また、例えば$$g^{\alpha \sigma} h_{\nu \gamma , \sigma \alpha}$$の項については以下のように計算できます。

$$
g^{\alpha \sigma} h_{\nu \gamma, \alpha \sigma}
= - h_{\nu \gamma, 00} + h_{\nu \gamma, 11} + h_{\nu \gamma, 22} + h_{\nu \gamma, 33} 
= \left( - \frac{1}{c^2} \frac{\partial^2}{\partial t^2} + \frac{\partial^2}{\partial x^2} + \frac{\partial^2}{\partial y^2} + \frac{\partial^2}{\partial z^2} \right) h_{\nu \gamma} 
=\Box h_{\nu \gamma}
$$

ここで$$\Box$$はd'Alembert演算子です。これらを用いてRicciテンソルは

$$
R_{\gamma \nu} 
= \frac{1}{2} (h^{\alpha}_{\ \ \nu, \gamma \alpha} - \Box h_{\nu \gamma} - h_{, \nu \gamma} + h^{\alpha}_{\ \ \gamma, \alpha \nu}) \tag{5}
$$

と書かれます。さらに[Ricciスカラー](/gr/einstein_tensor)は

$$
R 
= R^\nu_\nu 
= g^{\nu \gamma} R_{\gamma \nu} 
= \frac{1}{2} (h^{\alpha \gamma}_{\ \ \ \, \gamma \alpha} - \Box \underbrace{\eta^{\nu \gamma} h_{\nu \gamma}}_{=h} - \underbrace{h^{\ \ , \nu}_{, \nu}}_{= \Box h} + h^{\alpha \nu }_{\ \ \ \, \alpha \nu})
= h^{\alpha \gamma}_{\ \ \ \ , \alpha \gamma} - \Box h \tag{6}
$$

以上より、[Einsteinテンソル](/gr/einstein_tensor)は

$$
G_{\gamma \nu} 
= R_{\gamma \nu} - \frac{1}{2} R g_{\gamma \nu} 
= \frac{1}{2} (h^{\alpha}_{\ \ \nu, \gamma \alpha} - \Box h_{\nu \gamma} - h_{, \gamma \nu} + h^{\alpha}_{\ \ \gamma, \alpha \nu}) - \frac{1}{2} \eta_{\gamma \nu} (h^{\alpha \beta}_{\ \ \ \ , \alpha \beta} - \Box h) \tag{7}
$$

## ゲージ変換

次の式で定義される座標の無限小変換をゲージ変換と呼びます。

$$
\bar{x}^\mu 
= x^\mu + \xi^\mu
$$

弱重力場中のメトリックテンソルでは微小量$$\xi$$の一次までを用いて、メトリックのMinkowskiからのズレの部分のゲージ変観則は以下のようになります(詳細は後日掲載予定)。

$$
\bar{h}_{\mu \nu} 
= h_{\mu \nu} - \xi_{\nu, \mu} - \xi_{\mu, \nu} \tag{8}
$$

今、ゲージ変換後の物理量は$$\tilde{h}^{\mu \nu}$$のようにチルダをつけて表すと

$$
\tilde{h}^{\alpha}_{\ \ \nu, \gamma \alpha}
= h^{\alpha}_{\ \ \nu, \gamma \alpha} - \underbrace{\xi^{\ \ , \alpha}_{\nu \ \ , \gamma \alpha}}_{=\Box \xi_{\nu, \gamma}} - \xi^{\alpha}_{\ \ , \nu \gamma \alpha}
$$

$$
\Box \tilde{h}_{\nu \gamma} 
= \Box h_{\nu \gamma} - \Box \xi_{\gamma , \nu} - \Box \xi_{\nu, \gamma}
$$

$$
\tilde{h}_{, \gamma \nu} 
= \tilde{h}^\alpha_{\ \ \alpha, \gamma \nu} 
= h^{\alpha}_{\alpha, \gamma \nu} - \xi^{\alpha}_{\ \ , \alpha \gamma \nu} - \xi^{\alpha}_{\ \ , \alpha \gamma \nu} 
= h_{, \gamma \nu} - 2 \xi^{\alpha}_{\ \ , \alpha \gamma \nu}
$$

$$
\tilde{h}^\alpha_{\ \ \gamma, \alpha \nu} 
= h^\alpha_{\ \ \gamma, \alpha \nu} - \underbrace{\xi^{\ \ , \alpha}_{\gamma \ \ , \alpha \nu}}_{=\Box \xi_{\gamma, \nu}} - \xi^{\alpha}_{\ \ , \gamma \alpha \nu}
$$

$$
\tilde{h}^{\alpha \beta}_{\ \ \ \ , \alpha \beta} 
= h^{\alpha \beta}_{\ \ \ \ , \alpha \beta} - \xi^{\beta, \alpha}_{\ \ \ \ , \alpha\beta} - \xi^{\alpha, \beta}_{\ \ \ \ , \alpha \beta} 
$$

$$
\Box \tilde{h} 
= \Box h - 2 \Box \xi^\alpha_{\ \ , \alpha}
$$

などより、ゲージ変換後とゲージ変換前のEinsteinテンソルの差は

$$
\begin{align}
\tilde{G}_{\gamma \nu} - G_{\gamma \nu} 
&= \frac{1}{2} (-\Box \xi_{\nu, \gamma} - \xi^{\alpha}_{\ \ , \nu \gamma \alpha} + \Box \xi_{\gamma, \nu} + \Box \xi_{\nu, \gamma} + 2 \xi^{\alpha}_{\ \ , \alpha \gamma \nu} - \Box \xi_{\gamma , \nu} - \xi^{\alpha}_{\ \ , \gamma \alpha \nu}) - \frac{1}{2} \eta_{\gamma \nu} (-\Box \xi^\beta_{\ \ , \beta} - \Box \xi^\alpha_{\ \ , \alpha} + 2 \Box \xi^\alpha_{\ \ , \alpha}) \notag \\
&= 0 \tag{9}
\end{align}
$$

このことから、Einsteinテンソルはゲージ変換に対して不変であることがわかります。言い換えれば、Einstein方程式はゲージ選択に依存しません。すなわち、エネルギー運動量テンソルが与えられたとき、Einstein方程式の解として得られるメトリックは一意には定まらずゲージ変換の自由度を持つことになります。さらに別の言葉で言えば、物理内容を不変に保ったままゲージ変換によりメトリックの形を変えることが可能です。  

{% include adsense.html %}

## トレース反転テンソル

ここで

$$
\bar{h}_{\mu \nu} 
= h_{\mu \nu} - \frac{1}{2} \eta_{\mu \nu} h \ \Longrightarrow \ 
h_{\mu \nu} \tag{10}
$$

を用いてEinsteinテンソルを書き換えましょう。このテンソルのトレースは$$g^{\mu \nu} \bar{h}_{\mu \nu} \simeq \eta^{\mu \nu} \hbar{h}_{\mu \nu}$$となることを用いて、

$$
\bar{h} 
= \bar{h}^\mu_{\ \ \mu} 
= h^\mu_{\ \ \mu} - \frac{1}{2} \eta^{\mu}_{\ \ \mu} h 
= h - 2h 
= -h
$$

と書けます。トレースの符号が反転していることから、これはトレース反転テンソルと呼ばれます。(9)式を逆に解くことで

$$
h_{\mu \nu} 
= \bar{h}_{\mu \nu} - \frac{1}{2} \eta_{\mu \nu} \bar{h} \tag{11}
$$

となります。これを(7)式に代入することで

$$
\begin{align}
G_{\gamma \nu} 
&= \frac{1}{2} (\bar{h}^{\alpha}_{\ \ \nu , \gamma \alpha} - \frac{1}{2} \underbrace{\eta^{\alpha}_{\ \ \nu}}_{= \delta^\alpha_\nu} \bar{h}_{, \gamma \alpha} - \Box \bar{h}_{\nu \gamma} + \frac{1}{2} \eta_{\nu \gamma} \Box \bar{h} + \bar{h}_{, \gamma \nu} + \bar{h}^{\alpha}_{\ \ \gamma , \alpha \nu} - \frac{1}{2} \underbrace{\eta^\alpha_{\ \ \gamma}}_{\delta^\alpha_\gamma} \bar{h}_{, \alpha \nu} ) - \frac{1}{2} \eta_{\gamma \nu} (\bar{h}^{\alpha \beta}_{\ \ \ \ , \alpha \beta} - \frac{1}{2} \underbrace{\eta^{\alpha \beta} \bar{h}_{, \alpha \beta}}_{= \Box \bar{h}} + \Box \bar{h}) \notag \\
&= \frac{1}{2} (\bar{h}^{\alpha}_{\ \ \nu, \gamma \alpha} + \bar{h}^{\alpha}_{\ \ \gamma, \alpha \nu} - \Box \bar{h}_{\nu \gamma} - \eta_{\gamma \nu} \bar{h}^{\alpha \beta}_{\ \ \ \ , \alpha \beta}) \tag{12}
\end{align}
$$

## ローレンツゲージ

先程のゲージ変換自由度を用いてEinsteinテンソルを扱いやすい形に整理できるゲージを選択します。わかりやすくするために、ゲージ変換前後のメトリックにnew, oldの引数をつけて式変形を考えましょう。

$$
h^{(\mathrm{new})}_{\mu \nu} 
= h^{(\mathrm{old})}_{\mu \nu} - \xi_{\nu, \mu} - \xi_{\mu, \nu}
$$

するとこのトレースは

$$
h^{(\mathrm{new})} 
= h^{(\mathrm{old})} - 2 \xi^{\mu}_{\ \ , \mu} 
$$

のようになります。(10)式のトレース反転テンソルを用いることで、新しいゲージでのトレース反転テンソルは

$$
\bar{h}^{(\mathrm{new})}_{\mu \nu} 
= h^{(\mathrm{new})}_{\mu \nu} - \frac{1}{2} \eta_{\mu \nu} h^{(\mathrm{new})} 
= h^{(\mathrm{old})}_{\mu \nu} - \xi_{\nu, \mu} - \xi_{\mu, \nu} - \frac{1}{2} \eta_{\mu \nu} (h^{(\mathrm{old})} - 2 \xi^{\alpha}_{\ \ \alpha})
= \bar{h}^{(\mathrm{old})}_{\mu \nu} - \xi_{\nu, \mu} - \xi_{\mu, \nu} + \eta_{\mu \nu} \xi^{\alpha}_{\ \ , \alpha} \tag{13}
$$

のような、元のゲージでのトレース反転テンソルとの関係を持ちます。 
(12)式を見てみると、d’Alembert演算子の項(第3項)以外が存在していることで見通しが悪くなっているように見えます。よってこれ以外の項を消去するようなゲージを選択しましょう。この項以外は

$$
\bar{h}^{\alpha}_{\ \ \cdot , \alpha \cdot}
= \frac{1}{c} \frac{\partial h^0_{\ \ \cdot, \cdot}}{\partial t} + \frac{\partial h^1_{\ \ \cdot, \cdot}}{\partial x}+ \frac{\partial h^2_{\ \ \cdot, \cdot}}{\partial y} + \frac{\partial h^3_{\ \ \cdot, \cdot}}{\partial z}
$$

のような発散を持っていることがわかります。よって(13)の発散をとってみましょう。

$$
\bar{h}^{(\mathrm{new}), \nu}_{\mu \nu} 
= \bar{h}^{(\mathrm{old}), \nu}_{\mu \nu} - \xi_{\nu, \mu}^{\ \ \ \ , \nu} - \xi_{\mu, \nu}^{\ \ \ \ , \nu} + \eta_{\mu \nu} \xi^{\alpha \ \ , \nu}_{\ \ , \alpha} 
= \bar{h}^{(\mathrm{old}), \nu}_{\mu \nu} - \xi_{\nu, \mu}^{\ \ \ \ , \nu} - \Box \xi_{\mu} + \xi^{\alpha \ \ , \nu}_{\ \ , \alpha \mu}
$$

ここで

$$
\xi_{\nu, \mu}^{\ \ \ \ , \nu} = \eta_{\nu \alpha} \xi^{\alpha \ \ , \nu}_{\ \ , \mu} = \xi^{\alpha}_{\ \ , \mu \alpha}
$$

より

$$
\bar{h}^{(\mathrm{new}), \nu}_{\mu \nu} 
= \bar{h}^{(\mathrm{old}), \nu}_{\mu \nu} - \Box \xi_\mu \tag{14}
$$

よって$$\bar{h}^{(\mathrm{old}), \nu}_{\mu \nu} = \Box \xi_\mu$$を満たす$$\xi$$を選択すれば、$$\bar{h}^{(\mathrm{new}), \nu}_{\mu \nu} =0$$となります。これをLorentzゲージと呼びます。  
このLorentzゲージを選べば、(12)式は

$$
G_{\gamma \nu} 
= - \frac{1}{2} \Box \bar{h}_{\gamma \nu}
$$

これより[Einstein方程式](/gr/einstein_eq)は

$$
\Box \bar{h}_{\gamma \nu} 
= - \frac{16 \pi G}{c^4} T_{\alpha \beta} \tag{15}
$$

ただし$$\bar{h}_{\gamma \nu}^{\ \ \ \ , \nu}=0$$を満たします。

{% include adsense.html %}
