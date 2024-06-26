---
layout: default
title: レンズ・チュリング歳差運動
parent: 一般相対性理論
math: mathjax3
permalink: /gr/lense_thirring
nav_order: 34
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

# レンズ・チュリング歳差運動 (Lense-Thirring precession)

レンズ・サーリング、レンズ・シリングと訳される場合もあります。人名はいつの時代もどのように訳すのが正解かわかりません...
{: .label }

宇宙に存在する恒星やブラックホールは、ほぼ必ずと言ってよいほど自転をしています。
質量$$M$$の中心天体が角運動量$$\mathbf{J} = J \mathbf{e}_z$$で自転している場合、その天体が周囲に作る時空は[カーブラックホールの計量](/gr/kerr)として与えられます。
その天体の周囲を自転角運動量$$\mathbf{S}$$で自転する惑星が運動している場合、[慣性系の引きずり](/gr/feature_kerr#慣性系の引きずり)により、その自転角運動量に変化が生じることが知られています。
ここでは、[中心天体の質量が十分小さく、また自転がゆっくりの場合](/gr/spinning_weak_gravity)に起こる自転角運動量の時間変化ついて考察しましょう。

## 直感的理解

まずはこの効果を直感的に理解するために、下左図のように自転する中心天体の周りを回る惑星を考えましょう。
簡単のため、惑星は中心天体の極を通るような軌道を描いており、さらに惑星の自転角運動量$$\mathbf{S}$$は中心天体の自転角運動量$$\mathbf{J}$$に垂直であるとします。

![](/assets/images/gr/lense_thirring_01.png)

中心天体の自転により、周囲の時空には[慣性系の引きずり](/gr/feature_kerr#慣性系の引きずり)が発生します。
すると惑星の自転角運動量ベクトルは上右図のように回転を始めます。
この現象を、その発見者の名前からレンズ・チュリング歳差運動(Lense-Thirring precession)と呼びます。  
もし中心天体の周りを回っているのが惑星ではなくガス円盤やガストーラスの場合、ガス円盤の持つ角運動量がその半径に応じて歳差運動を起こします（下図参照。）

![](/assets/images/gr/lense_thirring_02.png)

レンズとチュリングがこの効果を発見したのは1918年のことです。
この二人はオーストリアの物理学者で、その当時に発表された論文はドイツ語で書かれています。
しかし現在、この原論文は英語に翻訳されたものが存在します。
もし興味のある方はそちらを見てみると良いでしょう。

Lense & Thirring, 1918, “Über die Einfluß der Eigenrotation der Zentralkörper auf die Bewegung der Planeten und Monde nach der Einsteinschen Gravitationstheorie,” Zeit. Phys. 19 (1918), 156-163."  
[の英訳](http://www.physics.rutgers.edu/~sergei/617/LT.pdf)

{% include adsense.html %}

## 近似を用いた解析的な導出

上述の歳差運動を解析的に求めてみましょう。
ただし、簡単のため中心天体はブラックホールほど重たくなく、角運動量$$J$$も小さいとします。
また周囲を回る惑星の自転角運動量を$$\mathbf{S}$$、そして惑星の運動は非相対論的であるとします。
この中心天体が周囲に作る時空の軽量は、[ゆっくり自転する低質量星による時空](/gr/spinning_weak_gravity)

$$
ds^2 
= -\left(1- \frac{2GM}{c^2 r}\right) c^2 dt^2 - \frac{4GJ}{c^3 r} \sin^2 \theta c dt d\varphi + \left( 1 + \frac{2GM}{c^2 r}\right) \{ dr^2 + r^2 (d\theta^2 + \sin^2 \theta d\varphi^2)\} \tag{1}
$$

で与えられるとします。
さらにこの計量を

$$
g_{\mu \nu} 
= \eta_{\mu \nu} + h_{\mu \nu}, \quad 
\vert h_{\mu \nu} \vert \ll 1 \tag{2}
$$

のように分解します。
このとき、ミンコフスキー計量からのズレを表す$$h$$はとても小さく、以降の計算においては$$\mathcal{O}(h)$$まで考慮するものとします。

### 周囲を回る惑星の自転角運動量の時間変化

中心天体の周囲をケプラー運動する惑星を考えましょう。
この惑星の4元速度を

$$
U^\mu 
= \gamma (c, \mathbf{u}) 
\underbrace{\simeq}_{\gamma \sim 1} (c, \mathbf{u}) \tag{3}
$$

とします。
ここで、惑星の運動は非相対論的としました。
さらに、この惑星の持つ4元自転角運動量を

$$
S^\mu 
= (S^0, \mathbf{S}) \tag{4}
$$

のように、書くことにしましょう。
$$\mathbf{S}$$が、3次元空間における自転角運動量ベクトルを表します。
すると、[測地線方程式(あるいはベクトルの平行移動の方程式)](/gr/geodesic)より

$$
\frac{dS^\mu}{d\tau} 
= \Gamma^\mu_{\nu \lambda} U^\nu S^\lambda 
= 0 \tag{5}
$$

のようになります。
ここで$$\tau$$は惑星の固有時間、[$$\Gamma^\mu_{\nu \lambda}$$はクリストッフェル記号](/gr/christoffel)を表します。
今、私たちが計算したいのは自転角運動量の時間変化$$\frac{d\mathbf{S}}{dt}$$です。
よって

$$
\frac{dS^i}{dt} 
= \frac{d\tau}{dt} \frac{dS^i}{d\tau} 
\underbrace{=}_{(3)} - \frac{d\tau}{dt} \Gamma^i_{\nu \lambda} \underbrace{U^\nu}_{=\frac{dx^\nu}{d\tau}} S^\lambda 
= - \Gamma^i_{\nu \lambda} \frac{dx^\nu}{dt} S^\lambda \tag{6}
$$

のようになります。
$$(x^\nu) = (ct, \mathbf{x})$$であることに注意すると

$$
\frac{dS^i}{dt} 
= - (c \Gamma^i_{00} + \Gamma^i_{0j} u^j) S^0 - (c \Gamma^i_{k0} + \Gamma^i_{kj} u^j) S^k \tag{7}
$$

と計算されます。
途中[クリストッフェル記号の性質](/gr/christoffel)から、$$\Gamma^i_{0k} = \Gamma^i_{k0}$$などのように下の添字の入れ替えを行いました。  
次に、4元角運動量と4元速度の直交性より

$$
\begin{align}
&0 
= U_\mu S^\mu 
= g_{\mu \nu} U^\nu S^\mu 
= (g_{00} U^0 + g_{0j} U^j) S^0 + (g_{k0} U^0 + g_{kj} U^j) S^k \notag \\
&\Longrightarrow \ 
S_0 
= - \frac{(g_{k0} U^0 + g_{kj} U^j) S^k}{g_{00} U^0 + g_{0j} U^j} 
\underbrace{=}_{(2)} - \frac{(g_{k0} c + g_{kj} u^j) S^k}{g_{00} c + g_{0j} u^j} \tag{8}
\end{align}
$$

と求まります。

この直交性の証明は近日中に掲載予定です。
{: .label }

計算したいのは(7)式の右辺です。
そして$$S^0$$の前には$$\Gamma$$が係数として存在しています。
[クリストッフェル記号](/gr/christoffel)は

$$
\Gamma^\gamma_{\alpha \mu} 
= \frac{1}{2} g^{\nu \gamma} (\partial_\alpha g_{\mu \nu} + \partial_\mu g_{\nu \alpha} - \partial_\nu g_{\alpha \mu}) 
\simeq \frac{1}{2} \eta^{\nu \gamma} (\partial_\alpha h_{\mu \nu} + \partial_\mu h_{\nu \alpha} - \partial_\nu h_{\alpha \mu}) \tag{9}
$$

からわかるように、すでに$$\mathcal{O}(h)$$のオーダーであることがわかります。
よって(8)式の$$S^0$$においては$$g_{\mu \nu} \simeq \eta_{\mu \nu}$$として計算を行なって良いとわかります。

$$
S^0 
\simeq \frac{u_k S^k}{c} \tag{10}
$$

(7), (10)式より

$$
\frac{dS^i}{dt} 
\simeq - (c \Gamma^i_{00} + \Gamma^i_{0j} u^j) \frac{u_k S^k}{c} - (c \Gamma^i_{k0} + \Gamma^i_{kj} u^j ) S^k 
= A^i_{\ k} S^k \tag{11}
$$

ここで$$A^i_{\ k}$$は以下のように表される2階のテンソルです。

$$
A^i_{\ \ k} 
= - \left( \Gamma^i_{00} + \Gamma^i_{0j} \frac{u^j}{c} \right) u_k - (c \Gamma^i_{k0} + \Gamma^i_{kj} u^j ) 
\simeq - \Gamma^i_{00} u_k - c \Gamma^i_{k0} - \Gamma^i_{kj} u^j \tag{12}
$$

二つ目の等号では$$\vert \mathbf{u} / c \vert \ll 1$$より、$$u^j$$の1次までを考えました。
ここまでくれば、あとはこの$$A^i_{\ \ k}$$を計算すれば良いとわかります。

{% include adsense.html %}

### クリストッフェル記号の計算

$$A^i_{\ \ k}$$を求めるために[クリストッフェル記号](/gr/christoffel)(9)式を計算するのですが、(12)式を見ると$$\Gamma^i_{\cdot \cdot}$$のように、上の添字に関しては空間成分$$i = 1, 2, 3$$のみを考えれば良いことがわかります。

$$
\Gamma^i_{\alpha \mu} 
\simeq \frac{1}{2} \eta^{i \nu} (\partial_\alpha h_{\mu \nu} + \partial_\mu h_{\nu \alpha} - \partial_\nu h_{\alpha \mu}) \tag{13}
$$

ここから、(12)式の計算に必要な[クリストッフェル記号](/gr/christoffel)を計算しましょう。

$$
\Gamma^i_{00} 
= - \frac{1}{2} \partial_i h_{00} \tag{14}
$$

$$
\Gamma^i_{k0} 
= \frac{1}{2} (\partial_k h_{0}^{\ \ i} - \partial_i h_{k0}) \tag{15}
$$

$$
\Gamma^i_{kj} 
= \frac{1}{2} (\partial_k h_j^{\ \ i} + \partial_j h^i_{\ \ k} - \partial_i h_{kj}) \tag{16}
$$

ここで、中心天体は定常的に自転を続けており、計量$$h_{\mu \nu}$$は時間に依存しない$$(\partial_0 = 0)$$としました。  
ここまでは特に$$h_{\mu \nu}$$の形を気にせずに計算を進めてきましたが、以降での具体的な計算はデカルト座標で行うことにします。
(1)式の計量は極座標で与えられていたため、まずはこれを変換しましょう。
すると、(1)式の$$\{\cdots\}$$部分は

$$
dr^2 + r^2 (d\theta^2 + \sin^2 \theta d\varphi^2) 
= dx^2 + dy^2 + dz^2 \tag{17}
$$

のようになります。
次に$$c dt d\varphi$$の係数ですが、これには$$\mathbf{J} = J \mathbf{e}_z$$として以下の変形を行いましょう。

$$
(\mathbf{x} \times \mathbf{J}) \cdot d \mathbf{x} 
= (d\mathbf{x} \times \mathbf{x}) \cdot \mathbf{J} 
= (y dx - x dy) J \tag{18}
$$

今、興味があるのは$$d\varphi$$の係数についてです。
よって

$$
\left\{ \begin{array}{l}
x 
= r \sin \theta \cos \varphi \\
y 
= r \sin \theta \sin \varphi \\
z 
= r \cos \theta
\end{array} \right.
\ \Longrightarrow \ 
\left\{ \begin{array}{l}
dx 
= -r \sin \theta \sin \varphi d\varphi \\
dy 
= r \sin \theta \cos \varphi d\varphi
\end{array}
\right. \tag{19}
$$

より

$$
y dx - x dy 
= - r^2 \sin^2 \theta d\varphi \tag{20}
$$

となります。
以上より、計量(1)式をデカルト座標で表現したものは

$$
ds^2 
= -\left( 1- \frac{r_g}{r} \right) c^2 dt^2 + \frac{4G}{c^2 r^3} (\mathbf{x} \times \mathbf{J}) \cdot cdt d\mathbf{x} + \left( 1+\frac{r_g}{r} \right) (dx^2 + dy^2 + dz^2) \tag{21} 
$$

となります。
さらにこの計量を(2)式のように分解すると

$$
h_{00} 
= \frac{r_g}{r}, \quad 
h_{ij} 
= \frac{r_g}{r} \delta_{ij}, \quad
h_{0 k} 
= \frac{2G}{c^2 r^3} (\mathbf{x} \times \mathbf{J})_k 
= \frac{2G}{c^2 r^3} \epsilon_{k\ell m} x^\ell J^m \tag{22}
$$

のように求まります。
(22)式を(14)-(16)式に代入し、具体的に[クリストッフェル記号](/gr/christoffel)を計算しましょう。

$$
\partial_i h_{00} 
= \frac{\partial}{\partial x^i} \frac{r_g}{r} 
= - r_g \frac{x^i}{r^3} \tag{23}
$$

$$
\partial_k h_{ij} 
= \frac{\partial}{\partial x^k} \frac{r_g}{r} \delta_{ij} 
= - r_g \delta_{ij} \frac{x^k}{r^3} \tag{24}
$$

$$
\partial_k h_{0i} 
= \frac{2G \epsilon_{i\ell m} J^m}{c^2} \frac{\partial}{\partial x^k} \frac{x^\ell}{r^3} 
= \frac{2G}{c^2 r^3} \epsilon_{i \ell m} J^m \left( \delta^{k \ell} - \frac{3 x^k x^\ell}{r^2}\right) \tag{25}
$$

などより

$$
\Gamma^i_{00} 
= r_g \frac{x^i}{2r^3} \tag{26}
$$

$$
\Gamma^i_{0k} 
= \Gamma^i_{k0} 
= \frac{G}{c^2 r^3} \left\{ \epsilon^i_{\ \ \ell m} \left( \delta^\ell_k - \frac{3 x_k x^\ell}{r^2} \right) - \epsilon_{k\ell m} \left( \delta^{\ell i} - \frac{3 x^i x^\ell}{r^2} \right) \right\} J^m \tag{27}
$$

$$
\Gamma^i_{jk} 
= \Gamma^i_{kj} 
= \frac{1}{2} \left( -r_g \delta^i_j \frac{x_k}{r^3} - r_g \delta^i_k \frac{x_j}{r^3} + r_g \delta_{kj} \frac{x^i}{r^3}\right) 
= \frac{r_g}{2r^3} (x^i \delta_{kj} - x_k \delta^i_j - x_j \delta^i_k) \tag{28}
$$

を得ます。

{% include adsense.html %}

### 自転角運動量の時間変化の方程式とシッフ方程式

ここまでで計算された[クリストッフェル記号](/gr/christoffel)を(12)式に代入すれば

$$
\begin{align}
A^i_{\ \ k} 
= &-r_g \frac{x^i u_k}{2r^3} - \frac{G}{c^2 r^3} \left\{ \epsilon^i_{\ \ \ell m} \left( \delta^\ell_k - \frac{3 x_k x^\ell}{r^2} \right) - \epsilon_{k\ell m} \left( \delta^{\ell i} - \frac{3 x^i x^\ell}{r^2} \right) \right\} J^m \notag \\
&- \frac{r_g}{2r^3} (x^i \delta_{kj} - x_k \delta^i_j - x_j \delta^i_k) u^j \tag{29}
\end{align}
$$

のように求まります。最終的に求めたいのは$$A^i_{\ \ k} S^k$$の形なので、(29)式の右辺に$$S^k$$をかけて整理を行いましょう。

$$
\epsilon^i_{\ \ \ell m} \delta^\ell_k J^m S^k 
= \epsilon^i_{\ \ k m} J^m S^k 
= - (\mathbf{J} \times \mathbf{S})_i \tag{30}
$$

$$
\epsilon^i_{\ \ \ell m} \frac{x_k x^\ell}{r^2} J^m S^k 
= \frac{(\mathbf{x} \cdot \mathbf{J})}{r^2} (\mathbf{x} \times \mathbf{J})_i \tag{31}
$$

$$
\epsilon_{k \ell m} \delta^{\ell i} J^m S^k 
= \epsilon^i_{\ \ m k} J^m S^k 
= (\mathbf{J} \times \mathbf{S})_i \tag{32}
$$

$$
\epsilon_{k \ell m} \frac{x^i x^\ell}{r^2} J^m S^k 
= \frac{(\mathbf{x} \times \mathbf{J}) \cdot \mathbf{S}}{r^2} x^i \tag{33}
$$

などより、(29)式の$$\{ \cdots\}$$の部分が整理されて

$$
\begin{align}
A^i_{\ \ k} S^k
= &- \frac{G}{c^2 r^3} \left[ - 2(\mathbf{J} \times \mathbf{S})_i - 3\left\{ (\mathbf{n} \cdot \mathbf{S})(\mathbf{n} \times \mathbf{J})_i - ((\mathbf{n} \times \mathbf{J}) \cdot \mathbf{S}) n^i \right\} \right] \notag \\
&- r_g \frac{2 u_k x^i - x_k u^i - x_j u^j \delta^i_k }{2r^3} S^k \tag{34}
\end{align}
$$

のようになります。
途中、規格化された位置ベクトル$$\mathbf{n} \equiv \mathbf{x} / r$$を用いて整理しました。
そして以下のベクトル三重積の計算から

$$
\mathbf{S} \times \{ (\mathbf{n} \cdot \mathbf{J}) \mathbf{n} - \mathbf{J} \} 
= \mathbf{S} \times \{ \mathbf{n} \times (\mathbf{n} \times \mathbf{J})\} 
= \{ \mathbf{S} \cdot (\mathbf{n} \times \mathbf{J}) \} \mathbf{n} - (\mathbf{S} \cdot \mathbf{n}) (\mathbf{n} \times \mathbf{J}) \tag{35}
$$

を用いれば

$$
A^i_{\ \ k} S^k
= - \frac{G}{c^2 r^3} \left[ \mathbf{J} \times \mathbf{S}  - 3 \{ (\mathbf{n} \cdot \mathbf{J}) \mathbf{n} \} \times \mathbf{S} \right]_i 
- r_g \frac{2 u_k x^i - x_k u^i - x_j u^j \delta^i_k }{2r^3} S^k\tag{36}
$$

となります。
続いて第二項を整理していきましょう。

$$
\frac{d}{dt} (\mathbf{x} \cdot \mathbf{x}) 
= 2 \mathbf{x} \cdot \mathbf{u}, \quad 
\frac{d}{dt} (x_k x^i) 
= u_k x^i + x_k u^i \tag{37}
$$

より

$$
2 u_k x^i - x_k u^i - x_j u^j \delta^i_k 
= \frac{3}{2} (u_k x^i - x_k u^i) - \frac{1}{2} \frac{d}{dt} \left\{ (\mathbf{x} \cdot \mathbf{x}) \delta^i_k - x_k x^i\right\} \tag{38}
$$

のように変形されます。
ここにさらに、惑星の軌道角運動量$$\boldsymbol{\ell} = \mathbf{x} \times \mathbf{u}$$に対して成り立つ公式

$$
x^k u^i - u_k x^i 
= \epsilon_{k \ \ j}^{\ \ i} \ell^j \tag{39}
$$

を用いれば

$$
2 u_k x^i - x_k u^i - x_j u^j \delta^i_k 
= - \frac{3}{2} \epsilon_{k \ \ j}^{\ \ i} \ell^j - \frac{1}{2} \frac{d}{dt} \left\{ (\mathbf{x} \cdot \mathbf{x}) \delta^i_k - x_k x^i\right\} \tag{40}
$$

となります。よって

$$
A^i_{\ \ k} S^k
= - \frac{G}{c^2 r^3} \left[ \mathbf{J} \times \mathbf{S}  - 3 \{ (\mathbf{n} \cdot \mathbf{J}) \mathbf{n} \} \times \mathbf{S} \right]_i 
- \frac{r_g}{2r^3} \left[ - \frac{3}{2} \epsilon_{k \ \ j}^{\ \ i} \ell^j - \frac{1}{2} \frac{d}{dt} \left\{ (\mathbf{x} \cdot \mathbf{x}) \delta^i_k - x_k x^i\right\}\right] S^k \tag{41}
$$

を得ます。$$[ \cdots ]$$の中に現れた時間微分の項ですが、これは惑星の軌道がケプラー運動と近似できると考えると、惑星の軌道運動の一周期の平均から

$$
\langle \frac{d}{dt} \left\{ (\mathbf{x} \cdot \mathbf{x}) \delta^i_k - x_k x^i\right\} \rangle 
= \frac{1}{T} \int_0^T \frac{d}{dt} \left\{ (\mathbf{x} \cdot \mathbf{x}) \delta^i_k - x_k x^i\right\} dt 
= \left[ (\mathbf{x} \cdot \mathbf{x}) \delta^i_k - x_k x^i\right]_0^T 
= 0 \tag{42}
$$

のように計算されます。
よってこの項は無視できると考えてよく、最終的に

$$
A^i_{\ \ k} S^k 
= \frac{G}{c^2 r^3} \left[ - \mathbf{J} \times \mathbf{S}  + 3 \{ (\mathbf{n} \cdot \mathbf{J}) \mathbf{n} \} \times \mathbf{S} \right]^i + \frac{3r_g}{4r^3} (\mathbf{\ell} \times \mathbf{S})^i \tag{43}
$$

となります。
よって求めたかった自転角運動量$$\mathbf{S}$$の時間発展の式を

$$
\frac{d \mathbf{S}}{dt} 
= \boldsymbol{\Omega} \times \mathbf{S} \tag{44}
$$

の形で書けば

$$
\boldsymbol{\Omega} 
= \boldsymbol{\Omega}_\mathrm{LT} + \boldsymbol{\Omega}_\mathrm{geodetic}, \quad 
\left( \boldsymbol{\Omega}_\mathrm{LT} 
\equiv \frac{G}{c^2 r^3} \left\{ - \mathbf{J} + 3 (\mathbf{n} \cdot \mathbf{J}) \mathbf{n} \right\}, 
\boldsymbol{\Omega}_\mathrm{geodetic} 
\equiv \frac{3r_g}{4r^3} \boldsymbol{\ell}
\right) \tag{45}
$$

のように記述されます。これをシッフ方程式(Schiff equation)と呼びます。
$$\boldsymbol{\Omega}_\mathrm{geodetic}$$は、中心天体が重力を持つことにより周囲の空間が歪む効果を表しています。
これをgeodetic effect(測地的効果？)と呼びます。
一方、$$\boldsymbol{\Omega}_\mathrm{LT}$$は最初に述べたように、中心天体が自転することで発生する[慣性系の引きずり](/gr/feature_kerr#慣性系の引きずり)の効果を表します。

## 実際の測定と一般相対性理論の検証

この効果を観測することができれば、これは立派な一般相対論の正しさの証明となります。
2004年に打ち上げられた人工衛星 "Gravity Probe B"は、この効果をレーザー距離装置を用いて検証しました。
1年にわたる精密測定の結果、この効果が確かなものとして得られたのです。
実際に、中心天体が地球の場合の$$\Omega_\mathrm{LT}, \Omega_\mathrm{geodetic}$$がどの程度の大きさなのかを見積もってみましょう。  
簡単のため$$\mathrm{n} \perp \mathrm{J}$$の場合を考えます。
すると(45)式と、地球を剛体とみなした時の自転角運動量$$J = \frac{2}{5} M_\oplus R^2_\oplus \Omega_\oplus$$より

$$
\Omega_\mathrm{LT} 
= \frac{2GM_\oplus R^2_\oplus \Omega_\oplus}{5c^2 r^3}  
\sim 0.01 \ ["/\mathrm{yr}]\tag{46}
$$

のように計算されます。
ここで$$r$$には、地球半径$$R_\oplus \sim 6350$$kmに人工衛星の高度$$650$$kmを加えたものを用いました。
そして

$$
\Omega_\mathrm{geodetic} 
= \frac{3r_g}{4r^3} \ell 
\underbrace{=}_{\ell = rv = \sqrt{GM r}} \frac{3G^{3/2} M^{3/2}_\oplus}{2c^2 r^{5/2}} 
\sim 6.6 \ ["/\mathrm{yr}] \tag{47}
$$

のようになります。
このように見るとgeodeticの効果の方がとても大きく見えますが、Gravity Probe Bはこの2つを精密に測定することに成功しました。
その測定の仕方は、以下のようなものです。
Gravity Probe Bにはジャイロスコープが搭載されています。
このGravity Probe Bは最初、ガイド星である恒星ペガスス座IMの方向を向いています。
もし一般相対論的な効果がなければ、角運動量保存からいつまでもガイド星の方向を向くはずです。
しかし、地球が重力を持つ効果と地球が自転することによる慣性系の引きずり効果が働くことで、ガイド星方向を向いていたはずのGravity Probe Bの向きがズレていきます。
この向きのズレを詳細に解析することで、一般相対論的効果の検証に成功しました。

{% include adsense.html %}

## 最新の応用研究1: ブラックホールのスピンを求める

(45)式の通り、$$\Omega_\mathrm{LT}$$は中心天体の質量$$M$$などに依存することはありません。
そのためこれを用いれば、中心天体の角運動量$$\mathbf{J}$$を正確に求めることができるだろうと期待されています。

### ブラックホールが形成する宇宙ジェットの歳差運動

[直感的理解](/gr/lense_thirring#直感的理解)の部分でも示したように、ブラックホールの周囲に降着円盤が存在すると、その降着円盤それ自身が歳差運動を行います。
するとそれに垂直に放出されているジェットも、歳差運動を行うはずです。
[Liska et al., 2021](https://academic.oup.com/mnras/article/507/1/983/5810669)では、初期にブラックホールの自転角運動量ベクトルと降着円盤の角運動量ベクトルの方向が一致していない場合の降着円盤時間発展を、高分解能のGRMHD(General Relativistic Magneto-Hydro Dynamics: 一般相対論的磁気流体)計算から検証しました。
するとこの計算から、降着円盤の内側(inner-disk)の角運動量はブラックホールの自転角運動量に揃う、すなわちブラックホールの赤道面に円盤が収まることが確認されました。
実はこの現象は[1975年にBardeenとPettersonが指摘しており、発見者にちなんでBardenn-Petterson alignment](https://articles.adsabs.harvard.edu//full/1975ApJ...195L..65B/L000065.000.html)などと呼びます。
しかし[Liskaたちの論文](https://academic.oup.com/mnras/article/507/1/983/5810669)では、初期に角運動量のズレが極端に大きい場合の計算も行なっていました。
この場合、降着円盤の内側は素早い歳差運動を行い、その外側に広がる部分(outer-disk)はゆっくりとした歳差運動を示すことが発見されたのです。
結果として、歳差運動の違いから円盤が内側と外側での引き裂かれる(tearing)が起こりました（下図の右下パネル。）

![](/assets/images/gr/lense_thirring_03.png)

そして円盤の内側の素早い歳差運動に呼応するように、ブラックホールから放出された相対論的なジェットも素早い歳差運動をすることも示されました。

![](/assets/images/gr/lense_thirring_04.png)

### 実際にこのジェット歳差運動は観測できるのか？

[M87の銀河中心に存在する超大質量ブラックホール(SMBH)が噴出する相対論的なジェットが歳差運動をしている様子が観測された](https://www.researchsquare.com/article/rs-2624984/v1)、という内容の論文が提出されました。
具体的には、20年以上にわたる観測からジェットノズルの方向が天球面上で10度程度の振幅で、11年周期で振動をしていることが明らかになったのです。
これまでM87のSMBHが回転しているかどうかは明らかになっていませんでしたが、これによりこのブラックホールが回転をしている、すなわち[カー・ブラックホール](/gr/kerr)であることがわかりました。
M87のSMBHの観測といえば、EHTによるブラックホール直接撮像が有名です。
しかし、こちらの撮像で得られた光子リングはスピンの影響をあまり受けず、ここからブラックホールスピンを明らかにするのは困難とされてきました。
観測精度、そして解析手法の発展に伴って、ブラックホールの性質が明らかにされつつあります。

![](/assets/images/gr/lense_thirring_05.png)

天球面上で歳差運動するジェットの電波観測の様子(上図)と、GRMHD計算から得られたジェットの歳差運動の比較(下図。)

![](/assets/images/gr/lense_thirring_06.png)

<!-- こちらの論文は2023年4月現在、査読中のようです。進展があり次第、この記事も随時更新させていただきます。
{: .label .label-yellow } -->

この論文は2023年9月に、["Precessing jet nozzle connecting to a spinning black hole in M87"](https://www.nature.com/articles/s41586-023-06479-6)というタイトルでNatureから出版されました。
リンク先もぜひご覧ください（同タイトルで[arXiv](https://arxiv.org/abs/2310.09015)からもご覧いただけます。）

### 最新の応用研究2: パルサー-白色矮星連星での一般相対論の検証

[Krishnan et al. 2020](https://www.science.org/doi/10.1126/science.aax7007)では、$$1 M_\odot$$の大質量白色矮星と$$1.27 M\odot$$パルサーからなる連星において、そのパルサーを20年にわたって観測を行いました。
すると、その軌道傾斜が長い時間かけて変動していることが確認されたのです。
論文ではこれを古典的なニュートン四重極モーメントと白色矮星の高速自転による、軌道のLT歳差運動であると結論づけました。
しかし、このシナリオでは白色矮星が高速回転している必要があります。
実はこれはパルサー前駆体（超新星爆発を起こしてパルサーになる前の恒星）からガスの供給を通して、200秒以下の自転周期まで白色矮星がスピンアップした、という連星進化のシナリオに一致するのです。
このような強い重力場持つ連星を通してまた一歩、相対論の正しさが堅牢なものになりました。

## 参考文献

[1] [Thorne & Blandford, "Modern Classical Physics: Optics, Fluids, Plasmas, Elasticity, Relativity, and Statistical Physics"](https://amzn.to/3MD1orv)  
[2] [Hartle, "Gravity: An Introduction to Einstein's General Relativity"](https://amzn.to/3KOV7Yo)  
[3] [Bardeen & Petterson, 1975, "The Lense-Thirring Effect and Accretion Disks Around Kerr Black Holes"](https://articles.adsabs.harvard.edu//full/1975ApJ...195L..65B/L000065.000.html)  
[4] [Bennet, 2014, master thesis, "Gyroscopic Precessions in Relativity and Gravitoelectromagnetism"](https://www.mas.ncl.ac.uk/library/display_pdf.php?id=249)  
[5] [Everitt et al., 2011, "Gravity Probe B: Final Results of a Space Experiment to Test General Relativity"](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.106.221101)  
[6] [Haimoud, New York University, General Relativity Fall 2019, Homework 8 solution](https://cosmo.nyu.edu/yacine/teaching/GR_2019/homeworks/solution8.pdf)  
[7] [Liska et al., 2021, "Disc tearing and Bardeen–Petterson alignment in GRMHD simulations of highly tilted thin accretion discs"](https://academic.oup.com/mnras/article/507/1/983/5810669)  
[8] [Mizuno, 2022, "GRMHD Simulations and Modeling for Jet Formation and Acceleration Region in AGNs"](https://www.mdpi.com/2218-1997/8/2/85)  
[9] [Cui et al., 2023, "Precessing jet nozzle connecting to a spinning black hole in M87"](https://www.nature.com/articles/s41586-023-06479-6)  
[10] [Krishnan et al., 2020, "Lense-Thirring frame dragging induced by a fast-rotating white dwarf in a binary pulsar sysmte"](https://www.science.org/doi/10.1126/science.aax7007)  

{% include adsense.html %}
