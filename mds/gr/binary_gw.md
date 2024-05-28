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
\frac{dE}{dt} 
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

## 連星系の軌道角運動量の時間変化

工事中...

## 参考文献

[2] [田中貴浩, "基幹講座 物理学 相対論"](https://amzn.to/4ar7e7W)  
[5] [Maggiore, "Gravitational Waves"](https://amzn.to/491W20k)  
[6] [Misner, Thorne & Wheeler, "Gravitation"](https://amzn.to/3x7JF5B)  
[8] [平松尚志, "宇宙論的起源の背景重力波による余剰次元の探求"](https://www2.yukawa.kyoto-u.ac.jp/~takashi.hiramatsu/files/thesisMR.pdf)  

{% include adsense.html %}
