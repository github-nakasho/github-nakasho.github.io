---
layout: default
title: 連星系からの重力波放射とその軌道進化
parent: 一般相対性理論
math: mathjax3
permalink: /gr/binary_gw
nav_order: 42
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

# 連星系からの重力波放射とその軌道進化

重力波源となる重要な例として、中性子星やブラックホールの連星が考えられます。
これらの系が重力波を放射すると、系の全エネルギーは

$$
\left< \frac{dE}{dt} \right> 
= - \frac{G}{5c^5} \dddot{\mathscr{D}}_{k \ell} \dddot{\mathscr{D}}^{k \ell} \tag{1}
$$

のように与えられるのでした。
ここでは、連星系からの重力波の放射エネルギーや角運動量を計算し、重力波放出による軌道の変化を求めてみましょう。

## 連星系の全エネルギーの時間変化

下図のように、質量$$m_1$$の天体1と、質量$$m_2$$の天体2からなる連星系を考えましょう。
以下では、天体1と天体2の重心を座標原点に設定します。

![](/assets/images/gr/binary_gw_01.png)

また角運動量保存から、この連星系は常に同一平面内を運動するものとし、それを$$z=0$$と定めます。
原点から天体1, 2までの距離をそれぞれ$$r_1, r_2$$とすると、天体1, 2の座標はそれぞれ

$$
\mathbf{r}_1 = (r_1 \cos \theta, r_1 \sin \theta, 0), \quad
\mathbf{r}_2 = (-r_2 \cos \theta, -r_2 \sin \theta, 0) \tag{2}
$$

と表されます。
ここで、$$\theta$$は$$x$$軸と天体1, 2を結ぶ直線が成す角度です。
さらに、天体1, 2の距離を$$r = r_1 + r_2$$とすると、今は重心を原点に設定しているため

$$
r_1 = \frac{m_2}{M} r, \quad 
r_2 = \frac{m_1}{M} r \tag{3}
$$

のように書かれます。
ここで$$M = m_1 + m_2$$です。
これらの関係式、そして換算質量$$\mu \equiv \frac{m_1 m_2}{M}$$を用いると、この系の四重極モーメントはそれぞれ

$$
\begin{align}
D_{xx} 
&= m_1 r_1^2 \cos^2 \theta + m_2 r_2^2 \cos^2 \theta 
= \left( m_1 \frac{m_2^2}{M^2} + m_2 \frac{m_1^2}{M^2} \right) r^2 \cos^2 \theta 
= \frac{m_1 m_2}{M} r^2 \cos^2 \theta \notag \\
&= \mu r^2 \cos^2 \theta \tag{4}
\end{align}
$$

$$
D_{xy} 
= D_{yx}
= m_1 r_1^2 \cos \theta \sin \theta + m_2 r_2^2 \cos \theta \sin \theta 
= \mu r^2 \cos \theta \sin \theta \tag{5}
$$

$$
D_{yy} 
= m_1 r_1^2 \sin^2 \theta + m_2 r_2^2 \sin^2 \theta 
= \mu r^2 \sin^2 \theta \tag{6}
$$

$$
D_{xz}
= D_{yz} 
= D_{zx} 
= D_{zy}
= D_{zz} 
= 0 \tag{7}
$$

と求まります。
(1)式を求めるために、四重極モーメントの時間微分を計算していきましょう。
ここでケプラー運動より、連星の楕円運動の長半径と離心率をそれぞれ$$a, e$$とすると

$$
\dot{\theta} 
= \frac{\sqrt{GMa (1-e^2)}}{r^2} \tag{8}
$$

$$
r 
= \frac{a (1-e^2)}{1 + e \cos \theta} \tag{9}
$$

$$
\dot{r} 
= \frac{d\theta}{dt} \frac{dr}{d\theta} 
= \frac{\sqrt{GMa(1-e^2)}}{r^2} \frac{ae (1-e^2)\sin \theta}{(1+e\cos \theta)^2} 
= \sqrt{\frac{GM}{a(1-e^2)}} e \sin \theta \tag{10}
$$

が成り立つことに留意しておきましょう。
すると

$$
\begin{align}
\dot{D}_{xx} 
&= \mu \left\{ 2r \dot{r} \cos^2 \theta + r^2 2 \cos \theta (-\sin \theta) \dot{\theta} \right\} \notag \\
&\underbrace{=}_{(8), (10)} \mu \left\{ 2r \sqrt{\frac{GM}{a(1-e^2)}} e \sin \theta \cos^2 \theta - 2r^2 \cos \theta \sin \theta \frac{\sqrt{GMa(1-e^2)}}{r^2} \right\} \notag \\
&\underbrace{=}_{(9)} 2\mu r \sin \theta \cos \theta \left( \sqrt{\frac{GM}{a(1-e^2)}} e \cos \theta - \sqrt{GMa (1-e^2)} \frac{1+e \cos \theta}{a(1-e^2)}\right) \notag \\
&= -\mu r \sqrt{\frac{GM}{a(1-e^2)}} \sin 2\theta\tag{11}
\end{align}
$$

$$
\begin{align}
\ddot{D}_{xx} 
&= -\mu \sqrt{\frac{GM}{a(1-e^2)}} (\dot{r} \sin 2\theta + 2 r \dot{\theta} \cos 2\theta) \notag \\
&\underbrace{=}_{(8), (10)} -\mu \sqrt{\frac{GM}{a(1-e^2)}} \left( \sqrt{\frac{GM}{a(1-e^2)}} e \sin \theta \sin 2\theta + 2 \cos 2\theta \frac{\sqrt{GMa(1-e^2)}}{r}\right) \notag \\
&\underbrace{=}_{(9)} - \frac{G\mu M}{a(1-e^2)} \left\{ e \sin \theta \sin 2\theta + 2 \cos 2\theta (1+e \cos \theta) \right\} \notag \\
&= -\frac{G\mu M}{a(1-e^2)} (2 e \sin^2 \theta \cos \theta + 2 \cos 2 \theta + 2e \cos^3 \theta - 2e \sin^2 \cos \theta) \notag \\
&= -\frac{2 G \mu M}{a(1-e^2)} (\cos 2\theta + e \cos^3 \theta) \tag{12} 
\end{align}
$$

$$
\begin{align}
\dddot{D}_{xx} 
= \frac{2G\mu M}{a(1-e^2)} (2\sin 2 \theta + 3e \cos^2 \theta \sin \theta) \dot{\theta} \tag{13}
\end{align}
$$

$$\dddot{D}_{xx}$$の式変形では、のちの計算のためにあえて$$\dot{\theta}$$を残しておきました。
この調子で全部計算していきましょう。

$$
\begin{align}
\dot{D}_{xy} 
&= \mu \{ 2r\dot{r} \sin \theta \cos \theta + r^2 \cos^2 \theta \dot{\theta} + r^2 \sin \theta (-\sin \theta) \dot{\theta} \} \notag \\
&\underbrace{=}_{(8), (10)} \mu r \left( 2 \sqrt{\frac{GM}{a(1-e^2)}} e \sin^2 \theta \cos \theta + \cos^2 \theta \frac{\sqrt{GMa(1-e^2)}}{r} - \sin^2 \theta \frac{\sqrt{GMa(1-e^2)}}{r} \right) \notag \\
&\underbrace{=}_{(9)} \mu r \sqrt{\frac{GM}{a(1-e^2)}} \{ e \sin^2 \theta \cos \theta + \cos^2 \theta (1+e \cos \theta) - \sin^2 \theta (1+e \cos \theta) \} \notag \\
&= \mu r \sqrt{\frac{GM}{a(1-e^2)}} (e \cos \theta + \cos 2\theta) \tag{14}
\end{align}
$$

$$
\begin{align}
\ddot{D}_{xy} 
&= \mu \sqrt{\frac{GM}{a(1-e^2)}} \{ \dot{r} (e \cos \theta + \cos 2\theta) + r (-e \dot{\theta} \sin \theta - 2\dot{\theta} \sin 2\theta)\} \notag \\
&\underbrace{=}_{(8), (10)} \mu \sqrt{\frac{GM}{a(1-e^2)}} \left\{ \sqrt{\frac{GM}{a(1-e^2)}} e \sin \theta (e \cos \theta + \cos 2\theta) - (e \sin \theta + 2 \sin 2\theta) \frac{\sqrt{GMa(1-e^2)}}{r}\right\} \notag \\
&\underbrace{=}_{(9)} \frac{G\mu M}{a(1-e^2)} (e^2 \sin \theta \cos \theta + e \sin \theta \cos^2 \theta - e \sin^3 \theta - e \sin \theta -e^2 \sin \theta \cos \theta -4\sin \theta \cos \theta -3 e\sin \theta \cos^2 \theta) \notag \\
&= -\frac{2G\mu M}{a(1-e^2)} \{ e \sin \theta (1+\cos^2 \theta) + \sin 2\theta \} \tag{15}
\end{align}
$$

$$
\begin{align}
\dddot{D}_{xy} 
&= - \frac{2G\mu M}{a(1-e^2)} \{ e \cos \theta (1+ \cos^2 \theta) - 2e \sin^2 \theta \cos \theta + 2 \cos 2\theta \} \dot{\theta} \notag \\
&= - \frac{2G\mu M}{a(1-e^2)} (e \cos \theta + e \cos^3 \theta - 2e \cos \theta + 2e \cos^3 \theta + 2 \cos 2 \theta ) \dot{\theta} \notag \\
&= - \frac{2G\mu M}{a(1-e^2)} (2 \cos 2 \theta - e \cos \theta + 3 e \cos^3 \theta ) \dot{\theta} \tag{16}
\end{align}
$$

$$
\begin{align}
\dot{D}_{yy} 
&= \mu (2r \dot{r} \sin^2 \theta + 2r^2 \dot{\theta} \sin \theta \cos \theta) 
\underbrace{=}_{(8), (10)} 2r \mu \sin \theta \left( \sqrt{\frac{GM}{a(1-e^2)}} e \sin^2 \theta + \frac{\sqrt{GMa(1-e^2)}}{r} \cos \theta \right) \notag \\
&\underbrace{=}_{(9)} 2 r \mu \sin \theta \sqrt{\frac{GM}{a(1-e^2)}} (e \sin^2 \theta + \cos \theta + e \cos^2 \theta) 
= r \mu \sqrt{\frac{GM}{a(1-e^2)}} (2e \sin \theta + \sin 2\theta) \tag{17} 
\end{align}
$$

$$
\begin{align}
\ddot{D}_{yy} 
&= \mu \sqrt{\frac{GM}{a(1-e^2)}} \{ \dot{r} (2e \sin \theta + \sin 2\theta) + r(2e\cos \theta + 2 \cos 2\theta) \dot{\theta}\} \notag \\
&\underbrace{=}_{(8), (10)} \mu \sqrt{\frac{GM}{a(1-e^2)}} \left\{ \sqrt{\frac{GM}{a(1-e^2)}} e \sin \theta (2e \sin \theta + \sin 2\theta ) + (2e \cos \theta + 2\cos 2\theta) \frac{\sqrt{GMa(1-e^2)}}{r}\right\} \notag \\
&\underbrace{=}_{(9)} \frac{G\mu M}{a(1-e^2)} (2e^2 \sin^2 \theta + 2e \sin^2 \theta \cos \theta + 2e \cos \theta + 2\cos 2\theta + 2e^2 \cos^2 \theta + 2e\cos^3 \theta - 2e\cos \theta \sin^2 \theta) \notag \\
&= \frac{2G\mu M}{a(1-e^2)} \{e^2 + e \cos \theta (1+\cos^2 \theta) + \cos 2\theta \} \tag{18}
\end{align}
$$

$$
\begin{align}
\dddot{D}_{yy} 
&= \frac{2 G \mu M}{a(1-e^2)} \{-e \dot{\theta} \sin \theta (1+\cos^2 \theta) - 2 \dot{\theta} \cos^2 \theta \sin \theta - 2 \dot{\theta} \sin 2\theta \} \notag \\
&= -\frac{2G \mu M}{a(1-e^2)} (2 \sin 2\theta + e \sin \theta + 3e \cos^2 \theta \sin \theta) \dot{\theta} \tag{19}
\end{align}
$$

$$
\dddot{D} 
= \dddot{D}_{xx} + \dddot{D}_{yy} + \underbrace{\dddot{D}_{zz}}_{=0} 
= - \frac{2G\mu M}{a(1-e^2)} e \dot{\theta} \sin \theta \tag{20}
$$

{% include adsense.html %}

これらを用いて、(1)式を計算しましょう。
$$\dddot{\mathscr{D}}_{ij} = \dddot{D}_{ij} -\frac{1}{3} \delta_{ij} \dddot{D}$$より

$$
\begin{align}
\dddot{\mathscr{D}}_{k \ell} \dddot{\mathscr{D}}^{k\ell} 
&= \dddot{\mathscr{D}}_{xx} + \dddot{\mathscr{D}}^{xx} + \dddot{\mathscr{D}}_{xy} \dddot{\mathscr{D}}^{xy} + \underbrace{\dddot{\mathscr{D}}_{xz}}_{=0} \underbrace{\dddot{\mathscr{D}}^{xz}}_{=0} + \dddot{\mathscr{D}}_{yx} \dddot{\mathscr{D}}^{yx} + \dddot{\mathscr{D}}_{yy} \dddot{\mathscr{D}}^{yy} + \underbrace{\dddot{\mathscr{D}}_{yz}}_{=0} \underbrace{\dddot{\mathscr{D}}^{yz}}_{=0} + \underbrace{\dddot{\mathscr{D}}_{zx}}_{=0} \underbrace{\dddot{\mathscr{D}}^{zx}}_{=0} + \underbrace{\dddot{\mathscr{D}}_{zy}}_{=0} \underbrace{\dddot{\mathscr{D}}^{zy}}_{=0} + \dddot{\mathscr{D}}_{zz} \dddot{\mathscr{D}}^{zz} \notag \\
&= \dddot{\mathscr{D}}_{xx}^2 + 2 \dddot{\mathscr{D}}_{xy}^2 + \dddot{\mathscr{D}}_{yy}^2 + \dddot{\mathscr{D}}_{zz}^2
= \left( \dddot{D}_{xx} - \frac{1}{3} \dddot{D} \right)^2 + 2 \dddot{D}^2_{xy} + \left( \dddot{D}_{yy} - \frac{1}{3} \dddot{D}\right)^2 + \left( -\frac{1}{3} \dddot{D}\right)^2 \notag \\
&= \dddot{D}_{xx}^2 - \frac{2}{3} \dddot{D} \underbrace{(\dddot{D}_{xx} + \dddot{D}_{yy})}_{= \dddot{D}} + 2 \dddot{D}^2_{xy} + \dddot{D}^2_{yy} + \frac{1}{3} \dddot{D}^2 
= \dddot{D}_{xx}^2 + 2 \dddot{D}^2_{xy} + \underbrace{\dddot{D}^2_{yy}}_{=(\dddot{D}-\dddot{D}_{xx})^2} - \frac{1}{3} \dddot{D}^2 \notag \\
&= \dddot{D}_{xx}^2 + 2 \dddot{D}_{xy}^2 + \dddot{D}^2 - 2 \dddot{D} \dddot{D}_{xx} + \dddot{D}_{xx}^2 - \frac{1}{3} \dddot{D}^2 
= \frac{2}{3} (3 \dddot{D}_{xx}^2 + 3 \dddot{D}_{xy}^2 - 3 \dddot{D} \dddot{D}_{xx} + \dddot{D}^2) \tag{21}
\end{align}
$$

です。
各項を計算していきましょう。

$$
\dddot{D}_{xx}^2 
= \frac{4G^2 \mu^2 M^2}{a^2 (1-e^2)^2} \dot{\theta}^2 (4\sin^2 2\theta + 12e \sin 2\theta \cos^2 \theta \sin \theta + 9e^2 \cos^4 \theta \sin^2 \theta) \tag{22}
$$

$$
\dddot{D}_{xy}^2 
= \frac{4G^2 \mu^2 M^2}{a^2(1-e^2)^2} \dot{\theta}^2 (4\cos^2 2\theta + e^2 \cos^2 \theta + 9e^2 \cos^6 \theta - 4e \cos 2\theta \cos \theta - 6e^2 \cos^4 \theta + 12e \cos 2\theta \cos^3 \theta) \tag{23}
$$

$$
\dddot{D} \dddot{D}_{xx} 
= - \frac{4 G^2 \mu^2 M^2}{a^2 (1-e^2)^2} \dot{\theta}^2 (2e \sin 2\theta \sin \theta + 3e^2 \cos^2 \theta \sin^2 \theta) \tag{24}
$$

$$
\dddot{D}^2 
= \frac{4 G^2 \mu^2 M^2}{a^2 (1-e^2)^2} \dot{\theta}^2 e^2 \sin^2 \theta \tag{25}
$$

これらを(21)式に代入しましょう。
項数が多いため、$$e^0, e, e^2$$の項で分けて計算を行うことにします。
また$$\frac{8G^2 \mu^2 M^2}{3 a^2 (1-e^2)^2} \dot{\theta}^2$$は全ての項に共通しているため、$$\sin, \cos$$部分のみを計算しましょう。

$$
e^0: \ 12 \sin^2 2\theta + 12 \cos^2 2 \theta 
= 12 \tag{26}
$$

$$
\begin{align}
e: & 36 \sin 2\theta \cos^2 \theta \sin \theta - 12 \cos 2\theta \cos \theta + 36 \cos 2\theta \cos^3 \theta + 6 \sin 2\theta \sin \theta \notag \\
&= 72 \cos^3 \theta \sin^2 \theta - 12 (\cos^2 \theta - \sin^2 \theta)\cos \theta + 36 (\cos^2 \theta - \sin^2 \theta) \cos \theta (1-\sin^2 \theta) + 12 \sin^2 \theta \cos \theta \notag \\
&= 36 \cos^3 \theta \sin^2 \theta + 24 \cos^3 \theta - 24 \sin^2 \theta \cos \theta + 36 \cos \theta \sin^4 \theta + 12 \sin^2 \theta \cos \theta \notag \\
&= 24 \cos \theta \sin^2 \theta + 24 \cos^3 \theta 
= 24 \cos \theta \tag{27}
\end{align}
$$

$$
\begin{align}
e^2: & 27 \cos^4 \theta \sin^2 \theta + 3 \cos^2 \theta + 27 \cos^6 \theta - 18 \cos^4 \theta + 9\cos^2 \theta \sin^2 \theta + \sin^2 \theta \notag \\
&= 27 \cos^4 \theta + 2 \cos^2 \theta - 18 \cos^4 \theta + 9 \cos^2 \theta \sin^2 \theta + 1 
= 9 \cos^2 \theta + 2 \cos^2 \theta + 1 \notag \\
&= 11 \cos^2 \theta + 1 \tag{28}
\end{align}
$$

以上より

$$
\begin{align}
\dddot{\mathscr{D}}_{k \ell} \dddot{\mathscr{D}}^{k\ell} 
&= \frac{8 G^2 \mu^2 M^2}{3a^2 (1-e^2)^2} \dot{\theta}^2 \{ 12 + 24 e \cos \theta + e^2 (11 \cos^2 \theta + 1)\} \notag \\
&= \frac{8 G^2 \mu^2 M^2}{3a^2 (1-e^2)^2} \dot{\theta}^2 \{ 12(1+e \cos \theta)^2 - 12 e^2 \cos^2 \theta + e^2 (11 \cos^2 \theta + 1)\} \notag \\
&= \frac{8 G^2 \mu^2 M^2}{3a^2 (1-e^2)^2} \dot{\theta}^2 \{ 12(1+e \cos \theta)^2 + e^2 \sin^2 \theta \} \tag{29} 
\end{align}
$$

となります。
$$\sin, \cos$$の依存性があるため、これの1周期あたりの時間平均を計算しましょう。

$$
\begin{align}
\langle \dddot{\mathscr{D}}_{k \ell} \dddot{\mathscr{D}}^{k\ell} \rangle
&= \frac{1}{T} \int_0^T \dddot{\mathscr{D}}_{k \ell} \dddot{\mathscr{D}}^{k\ell} dt 
= \frac{1}{T} \int_0^{2\pi} \dddot{\mathscr{D}}_{k \ell} \dddot{\mathscr{D}}^{k\ell} \frac{dt}{d\theta} d\theta 
= \frac{1}{T} \int_0^{2\pi} \dddot{\mathscr{D}}_{k \ell} \dddot{\mathscr{D}}^{k\ell} \frac{1}{\dot{\theta}} d\theta \notag \\
&= \frac{1}{T} \frac{8 G^2 \mu^2 M^2}{3a^2 (1-e^2)^2} \int_0^{2\pi} \dot{\theta} \{ 12(1+e \cos \theta)^2 + e^2 \sin^2 \theta \} d\theta \notag \\
&\underbrace{=}_{(8), (9)} \frac{1}{T} \frac{8 G^2 \mu^2 M^2}{3a^2 (1-e^2)^2} \frac{\sqrt{GMa(1-e^2)}}{a^2(1-e^2)^2} \int_0^{2\pi} (1+e\cos \theta)^2 \{ 12(1+e \cos \theta)^2 + e^2 \sin^2 \theta \} d\theta \tag{30}
\end{align}
$$

のようになります。
ここで、$$T$$は連星の軌道周期です。
積分計算を行うと

$$
\int_0^{2\pi} \cos^2 \theta d\theta
= \int_0^{2\pi} \frac{1+\cos 2\theta}{2} d\theta 
= \pi
$$

$$
\int_0^{2\pi} \cos^3 \theta d\theta
= \int_0^{2\pi} \frac{3\cos \theta + \cos 3\theta}{4} d\theta 
= 0
$$

$$
\begin{align}
\int_0^{2\pi} \cos^4 \theta d\theta 
&= \int_0^{2\pi} \left( \frac{1+\cos 2\theta}{2} \right)^2 d\theta
= \int_0^{2\pi} \left( \frac{1}{4} + \frac{1}{2} \cos 2\theta + \frac{1}{4} \frac{1+\cos 4\theta}{2} \right) d\theta \notag \\
&= \int_0^{2\pi} \left( \frac{3}{8} + \frac{1}{2} \cos 2\theta + \frac{1}{8} \cos 4\theta \right) d\theta 
= \frac{3}{4}\pi \notag
\end{align}
$$

などより

$$
\langle \dddot{\mathscr{D}}_{k \ell} \dddot{\mathscr{D}}^{k\ell} \rangle 
= \frac{32 G^3 \mu^2 M^3}{a^5 (1-e^2)^{7/2}} \left( 1 + \frac{73}{24} e^2 + \frac{37}{96} e^4 \right) \tag{31}
$$

のようになります。
最後の部分では、2体問題より周期が$$\left( \frac{2\pi}{T}\right)^2 = \frac{GM}{a^3}$$となることを用いました。
最終的に、重力波放射による連星系のエネルギーの時間変化は

$$
\left< \frac{dE}{dt} \right> 
= - \frac{32 G^4 \mu^2 M^3}{5 c^5 a^5} f(e) \qquad \left( f(e) 
\equiv \frac{1+ \frac{73}{24} e^2 + \frac{37}{96} e^4}{(1-e^2)^{7/2}}\right) \tag{32}
$$

と求まります。

{% include adsense.html %}

## 連星系の軌道角運動量の時間変化

次に、角運動量の時間変化を計算してみましょう。
[重力波放射による角運動量放出](/gr/gw_angular_momentum)から

$$
\left< \frac{dJ_i}{dt} \right> 
= - \frac{2G}{5c^5} \epsilon_{ijk} \left< \ddot{\mathscr{D}}^{ja} \dddot{\mathscr{D}}^k_a \right> \tag{33}
$$

となるのでした。
今は$$xy$$平面内を運動する二体問題を考えているため、角運動量の時間変化としては$$z$$成分のみを考えれば良いでしょう。
すると

$$
\begin{align}
\left< \frac{dJ_z}{dt}\right> 
&= - \frac{2G}{5c^5} \left< \ddot{\mathscr{D}}^{xa} \dddot{\mathscr{D}}^y_a - \ddot{\mathscr{D}}^{ya} \dddot{\mathscr{D}}^x_a \right> 
= - \frac{2G}{5c^5} \left< \ddot{\mathscr{D}}^{xx} \dddot{\mathscr{D}}^y_x + \ddot{\mathscr{D}}^{xy} \dddot{\mathscr{D}}^y_y - \ddot{\mathscr{D}}^{yx} \dddot{\mathscr{D}}^x_x - \ddot{\mathscr{D}}^{yy} \dddot{\mathscr{D}}^x_y \right> \notag \\
&= -\frac{2G}{5c^5} \left< \dddot{\mathscr{D}}_{xy} (\ddot{\mathscr{D}}_{xx} - \dddot{\mathscr{D}}_{yy}) + \ddot{\mathscr{D}}_{xy} (\dddot{\mathscr{D}}_{yy} - \dddot{\mathscr{D}}_{xx})\right> \tag{34}
\end{align}
$$

のようになります。
途中、$$x, y$$の空間成分においては、添字の上げ下げは自由にして良いことを用いました。

$$
\ddot{\mathscr{D}}_{xx} - \ddot{\mathscr{D}}_{yy} 
= \left( \ddot{D}_{xx} - \frac{1}{3} \ddot{D} \right) - \left( \ddot{D}_{yy} - \frac{1}{3} \ddot{D} \right) 
= \ddot{D}_{xx} - \ddot{D}_{yy}, \quad \dddot{\mathscr{D}}_{yy} - \dddot{\mathscr{D}}_{xx} 
= \dddot{D}_{yy} - \dddot{D}_{xx} \tag{35}
$$

のようになります。
(12), (18)式より

$$
\ddot{D}_{xx} - \ddot{D}_{yy} 
= - \frac{2G\mu M}{a(1-e^2)} (2 \cos 2\theta + 2e \cos^3 \theta + e \cos \theta + e^2) \tag{36}
$$

そして(13), (19)式より

$$
\dddot{D}_{yy} - \dddot{D}_{xx} 
= - \frac{2G \mu M}{a (1-e^2)} \dot{\theta} (4 \sin 2\theta + 6e \cos^2 \theta \sin \theta + e \sin \theta) \tag{37}
$$

となるため、(34)式の各項は

$$
\begin{align}
\dddot{\mathscr{D}}_{xy} (\ddot{\mathscr{D}}_{xx} - \ddot{\mathscr{D}}_{yy}) 
&= \frac{4G^2 \mu^2 M^2}{a^2 (1-e^2)^2} \dot{\theta} \notag \\
& \qquad \times \left\{ 4 \cos^2 2\theta + 10 e \cos 2\theta \cos^3 \theta + e^2 (2 \cos 2\theta - \cos^2 \theta + \cos^4 \theta + 6 \cos^6 \theta) + e^3 (3\cos^3 \theta - \cos \theta)\right\} \tag{38}
\end{align}
$$

$$
\begin{align}
\ddot{\mathscr{D}}_{xy} (\dddot{\mathscr{D}}_{yy} - \dddot{\mathscr{D}}_{xx}) 
&= \frac{4G^2 \mu^2 M^2}{a^2 (1-e^2)^2} \dot{\theta} \notag \\
& \qquad \left\{ 4 \sin^2 2\theta + e (5\sin \theta \sin 2\theta + 10 \cos^2 \theta \sin \theta \sin 2\theta ) + e^2 (\sin^2 \theta + 7 \cos^2 \theta \sin^2 \theta + 6 \sin^2 \theta \cos^4 \theta) \right\} \tag{39}
\end{align}
$$

のように計算されます。
これら2つを足し合わせたものを計算しましょう。
項数が多いため、$$e^0, e, e^2$$の項に分けて計算します。
また$$\frac{4 G^2 \mu^2 M^2}{a^2 (1-e^2)^2} \dot{\theta}$$は全ての項に共通しているため、$$\sin, \cos$$の部分のみを計算していきます。

$$
e^0: 4\cos^2 2\theta + 4\sin^2 2\theta = 4 \tag{40}
$$

$$
\begin{align}
e&: 10 \cos 2\theta \cos^3 \theta + \sin \theta \sin 2\theta + 10 \cos^2 \theta \sin \theta \sin 2 \theta \notag \\
&= 10 \cos 2\theta \cos^3 \theta + 10 (1-\cos^2 \theta) \cos \theta + 20 \cos^3 \theta (1-\cos^2 \theta) 
= 10 \cos \theta \tag{41}
\end{align}
$$

$$
\begin{align}
e^2&: 2 \cos 2\theta - \cos^2 \theta + \cos^4 \theta + 6 \cos^6 \theta + \sin^2 \theta + 7 \cos^2 \theta \sin^2 \theta + 6 \sin^2 \theta \cos^4 \theta \notag \\
&= 2 \cos 2 \theta - \cos^2 \theta + \cos^4 \theta + 6 \cos^6 \theta + (1-\cos^2 \theta) + 7 \cos^2 \theta (1-\cos^2 \theta) + 6 (1-\cos^2 \theta) \cos^4 \theta \notag \\
&= 2 \cos 2\theta + 5\cos^2 \theta + 1 \tag{42} 
\end{align}
$$

以上より

$$
\epsilon_{zik} \ddot{\mathscr{D}}^{ja} \dddot{\mathscr{D}}_a^k 
= \frac{4 G^2 \mu^2 M^2}{a^2 (1-e^2)^2} \dot{\theta} \{4 + 10 e \cos \theta + e^2 (2\cos 2\theta + 5 \cos^2 \theta + 1) + e^3 (3\cos^3 \theta - \cos \theta)\} \tag{43}
$$

と求まります。
これの1周期あたりの時間平均を計算しましょう。
先程の$$\cos^2 \theta, \cos^3 \theta$$の積分公式より

$$
\begin{align}
\left< \epsilon_{zik} \ddot{\mathscr{D}}^{ja} \dddot{\mathscr{D}}_a^k\right> 
&= \frac{1}{T} \int_0^T \epsilon_{zik} \ddot{\mathscr{D}}^{ja} \dddot{\mathscr{D}}_a^k dt 
= \frac{1}{T} \int_0^{2\pi} \epsilon_{zik} \ddot{\mathscr{D}}^{ja} \dddot{\mathscr{D}}_a^k \frac{d\theta}{\dot{\theta}} \notag \\
&= \frac{4 G^2 \mu^2 M^2}{a^2 (1-e^2)^2} \frac{1}{T} \int_0^{2\pi} \{4 + 10 e \cos \theta + e^2 (2\cos 2\theta + 5 \cos^2 \theta + 1) + e^3 (3\cos^3 \theta - \cos \theta)\} d\theta \notag \\
&= \frac{4 G^2 \mu^2 M^2}{a^2 (1-e^2)^2} \frac{1}{2\pi} \sqrt{\frac{GM}{a^3}} \{8\pi + e^2 (5\pi + 2\pi)\} 
= \frac{16 G^{5/2} \mu^2 M^{5/2}}{a^{7/2} (1-e^2)^2} \left( 1 + \frac{7}{8} e^2\right) \tag{44}
\end{align}
$$

以上より、角運動量の$$z$$成分の時間変化は

$$
\left< \frac{dJ_z}{dt}\right> 
= - \frac{32 G^{7/2} \mu^2 M^{5/2}}{5 c^5 a^{7/2}} g(e) \qquad 
\left( g(e) 
\equiv \frac{1+\frac{7}{8}e^2}{(1-e^2)^2}\right) \tag{45}
$$

と計算されます。

{% include adsense.html %}

## 連星系の軌道の変化

ここまでで導出した式(32), (45)と、公転運動を行う二体問題の基本的な関係式

$$
a 
= - \frac{G \mu M}{2E}, \quad 
J_z^2 
= G \mu^2 M a (1-e^2) \tag{46}
$$

を用いて、重力波放出に伴う軌道の時間変化について記述していきましょう。

$$
\left< \frac{da}{dt}\right> 
= - \frac{a}{E} \left< \frac{dE}{dt}\right> 
= - \frac{64 G^3 \mu M^2}{5 c^5 a^3} f(e) \tag{47}
$$

また

$$
\left( \frac{2\pi}{T} \right)^2 
= \frac{GM}{a^3} \ \Longrightarrow \ 
T 
= 2\pi \sqrt{\frac{a^3}{GM}} \ \Longrightarrow \ 
\frac{dT}{dt} 
= 3\pi \sqrt{\frac{a}{GM}} \frac{da}{dt} \tag{48}
$$

より

$$
\left< \frac{dT}{dt} \right> 
= - \frac{192\pi G^{5/2} \mu M^{3/2}}{5 c^5 a^{5/2}} f(e) \tag{49} 
$$

そして(46)の第二式を時間微分すると

$$
2 J_z \frac{dJ_z}{dt} 
= G \mu^2 M \left\{ \frac{da}{dt} (1-e^2) - 2ae \frac{de}{dt} \right\}
$$

となるので

$$
\begin{align}
2ae \left< \frac{de}{dt} \right> 
&= \left< \frac{da}{dt} \right> (1-e^2) - \frac{2J_z}{G \mu^2 M} \left< \frac{dJ_z}{dt} \right> \notag \\
&\underbrace{=}_{(45), (47)} - \frac{64 G^3 \mu M^2}{5c^5 a^3} f(e) (1-e^2) + \frac{2 G^{1/2} \mu M^{1/2} a^{1/2} (1-e^2)^{1/2}}{G \mu^2 M} \frac{32 G^{7/2} \mu^2 M^{5/2}}{5c^5 a^{7/2}} g(e) \notag \\
&= - \frac{64 G^3 \mu M^2}{5 c^5 a^3} \{ f(e) (1-e^2) - (1-e^2)^{1/2} g(e)\} \notag \\
&= - \frac{64 G^3 \mu M^2}{5 c^5 a^3} \frac{1+\frac{73}{24} e^2 + \frac{37}{96} e^4 - \left( 1+\frac{7}{8} e^2\right) (1-e^2)}{(1-e^2)^{5/2}} \notag \\
&= - \frac{64 G^3 \mu M^2}{5 c^5 a^3} \frac{19}{6} \frac{e^2}{(1-e^2)^{5/2}} \left( 1 + \frac{121}{304} e^2\right) \tag{50}
\end{align}
$$

と整理できます。
以上から

$$
\left< \frac{de}{dt} \right> 
= - \frac{304 G^3 \mu M^2}{15 c^5 a^4} \frac{e}{(1-e^2)^{5/2}} \left( 1 + \frac{121}{304} e^2\right) \tag{51}
$$

を得ます。

```
本当はもう少し計算を進めたいですが、今回はこの辺で。英気を養ってから更新を進めますm(-_-)m
```

## 参考文献

[1] [田中貴浩, "基幹講座 物理学 相対論"](https://amzn.to/4ar7e7W)  
[2] [Maggiore, "Gravitational Waves"](https://amzn.to/491W20k)  
[3] [Misner, Thorne & Wheeler, "Gravitation"](https://amzn.to/3x7JF5B)  
[4] [清水忠良, "パルサーと重力波 四重極公式"](http://repo.komazawa-u.ac.jp/opac/repository/all/13357/KJ00005116746.pdf)  
[5] [平松尚志, "宇宙論的起源の背景重力波による余剰次元の探求"](https://www2.yukawa.kyoto-u.ac.jp/~takashi.hiramatsu/files/thesisMR.pdf)  
[6] [栗山智宏, "重力波の発生及びその検出に向けて"](https://www.astro.phys.s.chiba-u.ac.jp/education/files/2016-kuriyama.pdf)  
[7] [原田尚也, "連星パルサーから放出される重力波"](https://astro-wakate.sakura.ne.jp/ss2013/web/syuroku/grcosmo_41c.pdf)  

{% include adsense.html %}
