---
layout: default
title: トランスバース・トレースレスゲージ
parent: 一般相対性理論
math: mathjax3
permalink: /gr/transeverse_traceless
nav_order: 37
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

# トランスバース・トレースレスゲージ

[時空の摂動の一般論](/gr/perturbed_metric)で紹介したように、適切なゲージ選択を行うことで、テンソルモードは以下のように書かれるのでした。

$$
(E_{ij}) 
= \left( \begin{array}{ccc}
E_+ & E_\times & 0 \\
E_\times & -E_+ & 0 \\
0 & 0 & 0
\end{array}\right) \tag{1}
$$

この式が、どのようなゲージを選択したことに対応するかを考えてみましょう。
ローレンツゲージでの反転トレース計量は、[線形近似されたアインシュタイン方程式より](/gr/linear_einstein)以下の式を満たします。

$$
\Box \bar{h}_{\mu \nu} 
= - \frac{16 \pi G}{c^4} T_{\mu \nu} \tag{2}
$$

右辺は物質のエネルギー・運動量テンソルです。
よって、特に真空中では

$$
\Box \bar{h}_{\mu \nu} 
= 0 \tag{3}
$$

となります。
[ローレンツ・ゲージを満たすゲージ変換](/gr/linear_einstein#ローレンツゲージ)

$$
\bar{h}_{\mu \nu}^{\mathrm{(new)}, \nu} 
= \bar{h}_{\mu \nu}^{\mathrm{(old)}, \nu} - \Box \xi_\mu \tag{4}
$$

の式に

$$
\Box \xi_\alpha 
= 0 \tag{5}
$$

を満たす$$\xi_\alpha$$を加えても、変わらずにローレンツゲージの条件を満たすことがわかります。
よって(5)式を満たす$$\xi_\alpha$$を加えても良い自由度が、ローレンツゲージには残されています。
この4つのゲージ自由度を用いて、計量の摂動が(2)式まで還元できることを示していきましょう。
ローレンツゲージの計量の摂動を、この自由度の範囲で変換することで得られる計量は以下のように書かれます。

$$
h_{\alpha \beta}' 
= h_{\alpha \beta}^{\mathrm{(new)}} - \xi_{\alpha, \beta} - \xi_{\beta, \alpha} \tag{6}
$$

$$
\bar{h}_{\alpha \beta}' 
= \bar{h}_{\alpha \beta}^{\mathrm{(new)}} - \xi_{\alpha, \beta} - \xi_{\beta, \alpha} + \eta_{\alpha \beta} \xi_{\ \ \ , \mu}^\mu \tag{7}
$$

ゲージ自由度の一つを適当に選択することで、$$\xi_\alpha$$を

$$
\xi_{\ \ \ , \alpha}^\alpha 
= - \frac{1}{2} \bar{h}_\alpha^{\mathrm{(new)} \alpha} \tag{8}
$$

の条件を満たすように選択することができます。
このとき、新しいゲージでの反転トレーステンソルのトレースがゼロとなるため、反転トレーステンソルの定義から、計量の摂動のトレースもゼロとなります。
以上より

$$
\bar{h}'{}_{\alpha}^{\ \ \ \alpha} 
= - \bar{h}'{}_{\alpha}^{\ \ \ \alpha} 
= 0 \tag{9}
$$

となります。
以下では(3)式の平面波解の伝搬方向を$$x^3$$軸に取ることにしましょう。
すると、4元波数ベクトルは$$k_\mu = (-k, 0, 0, k)$$のようになります。
ここで任意の等速直線運動を行う粒子を用意しましょう。
この4元速度ベクトルを$$U^\mu$$と書くと、次の条件を満たすように残り3つのゲージ自由度を用いてゲージを選択することができます。

$$
U^\mu \bar{h}_{\mu \nu} 
= 0 \tag{10}
$$

この条件は、異なる4つの成分$$\nu$$に対して課せられる4つの条件ですが、そのうちの1つはローレンツゲージ条件

$$
\bar{h}_{\mu \nu}^{\ \ \ \ \, \nu} 
= k^\nu (U^\mu \bar{h}_{\mu \nu}) 
= 0 \tag{11}
$$

を満たすことから、独立な成分ではありません。
したがって(10)式からは、3つの独立な条件を得ることができます。
ローレンツ変換により、この粒子と一緒に運動する系に移ると、そこでは$$U^\mu = (c, 0, 0, 0)$$と書くことができます。
すると(10)式より

$$
U^0 \bar{h}_{0 0} 
= c \bar{h}_{00} 
= 0 \ \Longrightarrow \ 
\bar{h}_{00} 
= 0 \tag{12}
$$

です。
そしてローレンツ条件(11)式より

$$
-k (U^\mu \bar{h}_{\mu 0}) + k (U^\mu \bar{h}_{\mu 3}) 
= - c k \bar{h}_{00} + ck \bar{h}_{03} 
= 0 \ \Longrightarrow \ 
\bar{h}_{03} 
= 0 \tag{13}
$$

を得ます。
さらに(10)式から

$$
c \bar{h}_{01} 
= 0, \quad
c \bar{h}_{02} 
= 0 \tag{14}
$$

も得ることができます。
ここまでの結果から、新しいゲージではゼロでない反転テンソル成分は$$\bar{h}_{ij}$$のように、空間成分のみとなります。
ここまでの議論とローレンツゲージ条件より

$$
-k U^\alpha \underbrace{\bar{h}_{\alpha 0}}_{=0} + k U^\alpha \bar{h}_{\alpha 3}
= 0
\ \Longrightarrow \ 
\bar{h}_{\alpha 3} 
= 0 \tag{15}
$$

となります。
最後の等式は、$$U^\alpha$$が任意の4元速度ベクトルであることから得られるものです。
これらを総合すると、結局ゼロでない成分は$$\bar{h}_{11}, \bar{h}_{12}, \bar{h}_{21}, \bar{h}_{22}$$の4つのみであるとわかります。
$$\bar{h}_{\mu \nu}$$が対称テンソルであることから

$$
\bar{h}_{12} 
= \bar{h}_{21} 
= h_\times \tag{16}
$$

です。
さらにトレースレスであることから

$$
\bar{h}_{11} 
= - \bar{h}_{22} 
= h_+ \tag{17}
$$

です。
以上より$$\bar{h}$$は

$$
(\bar{h}_{\mu \nu}) 
= \left( \begin{array}{cccc}
0 & 0 & 0 & 0 \\
0 & h_+ & h_\times & 0 \\
0 & h_\times & -h_+ & 0 \\
0 & 0 & 0 & 0
\end{array} \right) \tag{18}
$$

のように求まります。
トレースを反転した摂動として$$\bar{h}_{\mu \nu}$$は次のように定義されるのでした。

$$
\bar{h}_{\mu \nu} 
= h_{\mu \nu} - \frac{1}{2} \eta_{\mu \nu} h \tag{19}
$$

すると、そもそもトレースレスの場合には$$\bar{h}_{\mu \nu} = h_{\mu \nu}$$のようになり、この2つは区別する必要のないものであることがわかります。
以上より、このゲージでの計量の摂動は、以下のように書かれることがわかります。

$$
(h_{\mu \nu}) 
= (\bar{h}_{\mu \nu}) 
= \left( \begin{array}{cccc}
0 & 0 & 0 & 0 \\
0 & h_+ & h_\times & 0 \\
0 & h_\times & -h_+ & 0 \\
0 & 0 & 0 & 0
\end{array} \right) \tag{20}
$$

このゲージを、トランスバース・トレースレスゲージ(あるいは省略してTTゲージ)と呼びます。
トランスバースという呼び名は、波の伝搬方向(今は$$z$$方向)に垂直な成分のみを持つ、すなわち横浪であることから名付けられたものです。
このウェブサイトの[重力波](/gr/gw)や[重力波の振幅](/gr/quadro)計算において、計量の摂動を

$$
(h_{\mu \nu}) 
= \left( \begin{array}{cccc}
0 & & & \mathbf{0} \\
 & E_+ & &  \\
 & & E_+ &  \\
\mathbf{0} & & & 0
\end{array}\right) \tag{21}
$$

のように取り扱いましたが、これはTTゲージを選択して計算を進めたことに対応することがわかります。








## 参考文献

[1] [Thorne & Blandford, "Modern Classical Physics: Optics, Fluids, Plasmas, Elasticity, Relativity, and Statistical Physics"](https://amzn.to/3MD1orv)  
[2] [Hartle, "Gravity: An Introduction to Einstein's General Relativity"](https://amzn.to/3KOV7Yo)  

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B01LVZ72QL&linkId=9b7f592d17f1e5e5bab70888d5ba05a1"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=1316517543&linkId=73f2d614dabc417ef58c27bf4247a6a2"></iframe>

{% include adsense.html %}
