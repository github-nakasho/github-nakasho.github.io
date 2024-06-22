---
layout: default
title: 重力波放射による角運動量放出
parent: 一般相対性理論
math: mathjax3
permalink: /gr/gw_angular_momentum
nav_order: 41
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

# 重力波放射の反作用と角運動量放出

ここまでで、重力波放射に伴うエネルギー損失を計算してきました。
そのエネルギー損失を放射の反作用と考え、そこからさらに角運動量の損失を議論しましょう。

## 重力波放射の反作用

運動する物体が重力波を放射することで、その物体のエネルギーが失われます。
それはまるで、物体に抵抗力が働いたことで、物体の運動が妨げられたと考えることもできます。
これを放射の反作用 (radiation reaction)とし、そしてこの抵抗力を$$\mathbf{F}^\mathrm{RR}$$のように書くことにします。
すると(抵抗力がする仕事)=(重力波放射によるエネルギー放出)より

$$
\int \mathbf{F}^\mathrm{RR} \cdot \mathbf{v} dt 
= -\frac{G}{5c^5} \int \dddot{\mathscr{D}}_{k \ell} \dddot{\mathscr{D}}^{k \ell} dt \tag{1}
$$

のように考えることができます。
ここで積分範囲は、物体の運動の数周期や重力波の数周期などが考えられます。
(1)式の積分において、部分積分を行うと

$$
\int \mathbf{F}^\mathrm{RR} \cdot \mathbf{v} dt 
= -\frac{G}{5c^5} \left( \left[ \ddot{\mathscr{D}}_{k \ell} \dddot{\mathscr{D}}^{k \ell} \right]  - \int \ddot{\mathscr{D}}_{k \ell} \ddddot{\mathscr{D}}^{k \ell} dt \right) \tag{2}
$$

のように変形できます。
積分の範囲として、物体の運動の数周期とすると、$$[\cdots ] = 0$$とすることができるため

$$
\int \mathbf{F}^\mathrm{RR} \cdot \mathbf{v} dt 
= \frac{G}{5c^5} \int \ddot{\mathscr{D}}_{k \ell} \ddddot{\mathscr{D}}^{k \ell} dt 
= - \frac{G}{5c^5} \int \dot{\mathscr{D}}_{k \ell} \dddot{\ddot{\mathscr{D}}}^{k \ell} dt \tag{3}
$$

のようになります。
最後の$$\dddot{\ddot{ \quad }}$$は、時間の5階微分を表します。

```
Markdownで五つのドットを横に並べる方法がわかりませんでした...
```

積分部分において

$$
\dot{\mathscr{D}}_{k \ell} \dddot{\ddot{\mathscr{D}}}^{k \ell} 
= \left( \dot{D}_{k \ell} - \frac{1}{3} \delta_{k \ell} D \right) \dddot{\ddot{\mathscr{D}}}^{k \ell} 
= \dot{D}_{k \ell} \dddot{\ddot{\mathscr{D}}}^{k \ell} - \frac{1}{3} \underbrace{\delta_{k \ell} \dddot{\ddot{\mathscr{D}}}^{k \ell}}_{トレースフリーより0} D 
= \dot{D}_{k \ell} \dddot{\ddot{\mathscr{D}}}^{k \ell} \tag{4}
$$

のように変形できるため

$$
\int \mathbf{F}^\mathrm{RR} \cdot \mathbf{v} dt 
= - \frac{G}{5c^5} \int \dot{D}_{k \ell} \dddot{\ddot{\mathscr{D}}}^{k \ell} dt \tag{5}
$$

となります。
ここで、簡単のため質点系を考えることにしましょう。
すると$$D_{k \ell} = m x_k x_\ell$$より、その時間微分は$$\dot{D}_{k \ell} = m (v_k x_\ell + x_k v_\ell)$$となります。
以上から

$$
\int F^\mathrm{RR, \ell} v_\ell dt 
= - \frac{G}{5c^5} \int m (v_k x_\ell + x_k v_\ell) \dddot{\ddot{\mathscr{D}}}^{k \ell} dt 
= - \frac{2 G}{5c^5} \int m \dddot{\ddot{\mathscr{D}}}^{k \ell} x_k v_\ell dt \tag{6}
$$

と計算できます。
左辺と右辺を見比べることで

$$
F^\mathrm{RR, \ell} 
= - \frac{2G}{5c^5} m x_k \dddot{\ddot{\mathscr{D}}}^{k \ell} \tag{7}
$$

のように、重力波の放射による反作用力を得ることができます。
さらにこの反作用をポテンシャルで表すことにしましょう。
すなわち$$\mathbf{F}^\mathrm{RR} = - \nabla \Phi^\mathrm{RR}$$のように書くことにすると

$$
\Phi^\mathrm{RR} 
= \frac{G}{5c^5} x_k x_\ell \dddot{\ddot{\mathscr{D}}}^{k \ell} \tag{8}
$$

となります。
この反作用ポテンシャルをニュートン重力ポテンシャルに加えることで、重力波によるエネルギー損失を考慮した運動を計算することができます。

## 重力波放射による角運動量放出

先程求めた$$F^\mathrm{RR, \ell}$$から、系の角運動量$$\mathbf{J}$$の時間変化を求めてみましょう。
$$\frac{d \mathbf{J}}{dt} = \mathbf{x} \times \mathbf{F}^\mathrm{RR}$$から、$$i$$成分のみを考えると

$$
\frac{dJ_i}{dt} 
= \epsilon_{ijk} x^j F^{\mathrm{RR}, k} 
= - \frac{2G}{5c^5}  m \epsilon_{ijk} x^j x^a \dddot{\ddot{\mathscr{D}}}_a^k \tag{9}
$$

両辺を重力波の数周期を含む程度の時間で積分し、その周期で割ることで時間平均操作をすれば

$$
\left< \frac{d J_i}{dt} \right> 
= - \frac{2G}{5c^5} \epsilon_{ijk} \frac{1}{T} \int \underbrace{m x^j x^a}_{=D^{ja}} \dddot{\ddot{\mathscr{D}}}_a^k dt 
\underbrace{= \cdots = }_{部分積分を複数回実行} - \frac{2G}{5c^5} \epsilon_{ijk} \left< \ddot{D}^{ja} \dddot{\mathscr{D}}_a^k \right> \tag{10}
$$

を得ます。
さらに

$$
\epsilon_{ijk} \ddot{D}^{ja} \dddot{\mathscr{D}}_a^k 
= \epsilon_{ijk} \ddot{\mathscr{D}}^{ia} \dddot{\mathscr{D}}_a^k + \frac{1}{3} \epsilon_{ijk} \delta^{ja} \ddot{D} \dddot{\mathscr{D}}_a^k 
= \epsilon_{ijk} \ddot{\mathscr{D}}^{ia} \dddot{\mathscr{D}}_a^k + \frac{1}{3} \epsilon_{ijk} \ddot{D} \dddot{\mathscr{D}}^{jk} \tag{12}
$$

です。
第二項において、例えば$$i=x$$の場合を考えましょう。
すると

$$
\epsilon_{xjk} \dddot{\mathscr{D}}^{jk} 
= \dddot{\mathscr{D}}^{yz} - \underbrace{\dddot{\mathscr{D}}^{zy}}_{=\dddot{\mathscr{D}}^{yz}} 
= 0 \tag{13}
$$

のようになるため、結局

$$
\left< \frac{d J_i}{dt} \right> 
= -\frac{2G}{5c^5} \epsilon_{ijk} \left< \ddot{\mathscr{D}}^{ja} \dddot{\mathscr{D}}_a^k \right> \tag{14}
$$

のように整理されます。

## 参考文献

[1] [Maggiore, "Gravitational Waves"](https://amzn.to/491W20k)  
[2] [平松尚志, "宇宙論的起源の背景重力波による余剰次元の探求"](https://www2.yukawa.kyoto-u.ac.jp/~takashi.hiramatsu/files/thesisMR.pdf)  

{% include adsense.html %}
