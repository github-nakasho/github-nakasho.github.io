---
layout: default
title: ブラソフ方程式
parent: 銀河のダイナミクス
math: mathjax3
permalink: /galady/vlasov
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

# ブラソフ方程式 (Vlasov equation)

ここでは[2体緩和](/galady/twobody_relaxation)が無視できるような、無衝突重力多体系を記述するのに必要となるブラソフ方程式(Vlasov equation)を導出します。
これはボルツマン方程式(Boltzmann equation)の衝突項を無視したものとして知られており、またの名を無衝突ボルツマン方程式(collisionless Boltzmann equation)とも呼ばれています。
非常に多数の粒子系を扱う場合には、それらを一点ずつ表現するのではなく、ある分布関数に従うものとして表現する方が便利です。
ブラソフ方程式は、無衝突系での分布関数の時間発展を記述しています。

## リウビルの定理 (Liouville's theorem)

まずは方程式を導出するために必要となる定理を導出しましょう。  
$$N$$個の粒子が存在する力学系を考え、それらは一つ一つが位置$$\mathbf{q}_i = (q_{i1}, q_{i2}, q_{i3})$$と運動量$$\mathbf{p}_i = (p_{i1}, p_{i2}, p_{i3})$$のような自由度を持つとします。
以下では座標と運動量をまとめて$$\mathbf{q} = (\mathbf{q}_1, \mathbf{q}_2, \dots, \mathbf{q}_N), \mathbf{p} = (\mathbf{p}_1, \mathbf{p}_2, \dots, \mathbf{p}_N)$$
運動エネルギーは位置と運動量に依存するため$$T(\mathbf{q}, \mathbf{p})$$のような関数系で書かれ、さらに系のポテンシャルエネルギーを$$W(\mathbf{q})$$のように書くと、この系のハミルトニアンは

$$
H(q, p) 
= T(q, p) + W(q) \tag{1}
$$

のようになります。すると、ハミルトンの運動方程式は

$$
\frac{dq_{ij}}{dt} 
= \frac{\partial H}{\partial p_{ij}} (\mathbf{q}, \mathbf{p}), \quad 
\frac{dp_{ij}}{dt} 
= - \frac{\partial H}{\partial q_{ij}} (\mathbf{q}, \mathbf{p}) \quad (i = \{1, 2, \dots, N\}, j = \{1, 2, 3\} ) \tag{2}
$$

のようになります。この$$N$$粒子系について、位相空間上で考えてみましょう。$$N$$個の粒子が位置と運動量について6つの自由度を持つため、この系の自由度は$$6N$$です。
よって位相空間は$$6N$$次元となります。しかしここでは簡単のため、$$i$$番目の粒子の$$j$$方向に対する位置と運動量、すなわち$$(q_{ij}, p_{ij})$$平面を切り出して考えてみましょう。

![](/assets/images/galady/vlasov_01.png)

この位相空間上の平面内において、粒子が上図のように面積$$S = \Delta q_{ij} \Delta p_{ij}$$を形成しているとします。ここで$$\Delta q_{ij}, \Delta p_{ij} \ll 1$$とします。
今、$$v_2 = \dot{q}_{ij} (q_{ij}), v_1 = \dot{q}_{ij} (q_{ij} + \Delta q_{ij})$$のように位相空間上で運動をしたとします。するとその速度の差分は

$$
\Delta v 
\equiv v_1 - v_2 
= \dot{q}_{ij} (q_{ij} + \Delta q_{ij}) - \dot{q}_{ij} (q_{ij}) 
\underbrace{\simeq}_{\Delta q_{ij} \ll 1} \dot{q}_{ij} (q_{ij}) + \frac{\partial \dot{q}_{ij}}{\partial q_{ij}} \Delta q_{ij} - \dot{q}_{ij} (q_{ij}) 
= \frac{\partial \dot{q}_{ij}}{\partial q_{ij}} \Delta q_{ij} \tag{3}
$$

のように計算されます。ここから上図の面積$$S$$の、$$q_{ij}$$方向の長さの変化は

$$
\delta (\Delta q_{ij}) 
= \Delta v \delta t 
= \frac{\partial \dot{q}_{ij}}{\partial q_{ij}} \Delta q_{ij} \delta t \tag{4}
$$

同じように$$p_{ij}$$方向についても考えれば、$$p_{ij}$$方向の長さの変化は

$$
\delta (\Delta p_{ij}) 
= \frac{\partial \dot{p}_{ij}}{\partial p_{ij}} \Delta p_{ij} \delta t \tag{5}
$$

となります。この2つから、面積$$S$$の変化分は

$$
\begin{align}
\Delta S 
&=  \left\{ \Delta q_{ij} + \delta (\Delta q_{ij})\right\}\left\{ \Delta p_{ij} + \delta (\Delta p_{ij})\right\} - \Delta q_{ij} \Delta p_{ij} 
= \Delta q_{ij} \delta (\Delta p_{ij}) + \Delta p_{ij} \delta (\Delta q_{ij}) + \delta (\Delta q_{ij}) \delta (\Delta p_{ij}) \notag \\
&\simeq \Delta q_{ij} \frac{\partial \dot{p}_{ij}}{\partial p_{ij}} \Delta p_{ij} \delta t + \Delta p_{ij} \frac{\partial \dot{q}_{ij}}{\partial q_{ij}} \Delta q_{ij} \delta t
= \Delta q_{ij} \Delta p_{ij} \delta t \left( \frac{\partial \dot{q}_{ij}}{\partial q_{ij}} + \frac{\partial \dot{p}_{ij}}{\partial p_{ij}}\right) \tag{6}
\end{align}
$$

のように計算されます。ここで$$\delta t \ll 1$$とし、$$\delta t$$の一次までを考えました。この式に(2)式を適用すると

$$
\Delta S 
= \Delta q_{ij} \Delta p_{ij} \delta t \left\{ \frac{\partial}{\partial q_{ij}} \left( \frac{\partial H}{\partial p_{ij}}\right)+ \frac{\partial}{\partial p_{ij}} \left( - \frac{\partial H}{\partial q_{ij}}\right) \right\}
= 0 \tag{6}
$$

のようになります。これは位相空間内で粒子の分布が作る面積(厳密には$$6N$$次元なので、体積)は不変であることを意味します。これをリウビルの定理と呼びます。

## ブラソフ方程式の導出

リウビルの定理は、位相空間内の流れ(運動の軌跡)に沿って分布関数$$f(\mathbf{q}, \mathbf{p}, t)$$の占める体積は不変である、ということを言っています。
このことから、微小時間$$\Delta t$$経過後の分布関数$$f(\mathbf{q} + \dot{q}\Delta, \mathbf{p} + \dot{p} \Delta t, t + \Delta t)$$との間に

$$
f(\mathbf{q}, \mathbf{p}, t) 
= f(\mathbf{q} + \dot{\mathbf{q}}\Delta t, \mathbf{p} + \dot{\mathbf{p}} \Delta t, t + \Delta t) \tag{7}
$$

が成り立ちます。右辺を$$\Delta t$$の一次まででテイラー展開すると

$$
f(\mathbf{q}, \mathbf{p}, t) 
= f(\mathbf{q}, \mathbf{p}, t) + \frac{\partial f}{\partial t} \Delta t + \frac{\partial f}{\partial \mathbf{q}} \cdot \dot{\mathbf{q}} \Delta t + \frac{\partial f}{\partial \mathbf{p}} \cdot \dot{\mathbf{p}} \Delta t 
\ \Longrightarrow \ 
\frac{\partial f}{\partial t} + \frac{\partial f}{\partial \mathbf{q}} \cdot \dot{\mathbf{q}} + \frac{\partial f}{\partial \mathbf{p}} \cdot \dot{\mathbf{p}} 
= 0 \tag{8}
$$

ここまでは$$\mathbf{q}, \mathbf{p}$$については、その形については特に触れてきませんでした。ここではさらに扱いやすいように、$$\mathbf{q} \rightarrow \mathbf{x}$$(普通の3次元座標)、$$\mathbf{p} \rightarrow \dot{\mathbf{x}} = \mathbf{v}$$(単位質量あたりの運動量)のようにしましょう。すると、重力多体系においては

$$
\dot{\mathbf{p}} 
= \ddot{\mathbf{x}} 
= - \frac{\partial \Phi}{\partial \mathbf{x}} \tag{9}
$$

のようになります。ここで$$\Phi$$は重力ポテンシャルです。以上より、$$f(\mathbf{q}, \mathbf{p}, t)$$を$$f(\mathbf{x}, \mathbf{v}, t)$$のように関数形を書き直せば

$$
\frac{\partial f}{\partial t} + \mathbf{v} \cdot \nabla f - \nabla \Phi \cdot \frac{\partial f}{\partial \mathbf{v}} 
= 0 \tag{10}
$$

のようになります。(10)式をブラソフ方程式と呼びます。

```
衝突がある場合には右辺に衝突に由来する項が入ります。
```

## 余談: 無衝突プラズマ系のブラソフ方程式

(10)式は重力多体系について成り立つ方程式でしたが、その前の(8)式は無衝突であればどのような系でも成り立ちます。
有名なものとしては無衝突プラズマがあります。無衝突プラズマにおいては(9)式の力が

$$
\dot{\mathbf{p}} 
= \ddot{\mathbf{x}} 
= \frac{q}{m} \left( \mathbf{E} + \frac{\mathbf{v}}{c} \times \mathbf{B} \right) \tag{11}
$$

となります。最終的に

$$
\frac{\partial f}{\partial t} + \mathbf{v} \cdot \frac{\partial f}{\partial \mathbf{x}} + \frac{q}{m} \left( \mathbf{E} + \frac{\mathbf{v}}{c} \times \mathbf{B} \right) \cdot \frac{\partial f}{\partial \mathbf{v}} 
= 0 \tag{12}
$$

を得ます。実際にこれを数値計算で解くときには、分布関数$$f$$の時間発展と同時に、電場・磁場の時間発展を[マクスウェル方程式](/astroelec/em_energy_momentum)

$$
\frac{\partial \mathbf{E}}{\partial t} 
= c \nabla \times \mathbf{B} - 4\pi \mathbf{j} \tag{13}
$$

$$
\frac{\partial \mathbf{B}}{\partial t} 
= - c \nabla \times \mathbf{E} \tag{14}
$$

$$
\nabla \cdot \mathbf{E} 
= 4\pi \rho \tag{15}
$$

$$
\nabla \cdot \mathbf{B} 
= 0 \tag{16}
$$

も解いていきます。

{% include adsense.html %} 
