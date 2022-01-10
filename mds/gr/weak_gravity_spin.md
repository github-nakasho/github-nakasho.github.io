---
layout: default
title: ゆっくり自転する低質量星が作る時空
parent: 一般相対性理論
math: mathjax3
permalink: /gr/spinning_weak_gravity
nav_order: 33
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

# ゆっくり自転する低質量星が作る時空

[Einstein方程式](/gr/einstein_eq)によれば、全てのエネルギーが重力源、すなわち時空の歪みを生じさせる源となります。よってここでは質量の小さな球対称星が自転しているときに、周囲にどのような時空の歪みを生むかを考えていきましょう。低質量星の自転軸を$$z$$軸にとります。簡単のため低質量星は一様密度$$\rho$$を持ち、角速度$$\Omega$$で剛体回転する球体で、半径$$R$$、質量を$$M$$とします。低質量星の自転は定常状態にあるとして、メトリックは時間に依存しない形を考えます。今、この星の自転は十分ゆっくりとして$$\Omega \ll 1$$、また低質量星内部の圧力は静止質量エネルギーより十分小さく(非相対論的)、さらに低質量星の重心は原点に静止しているとします。  
また以下の計算は$$(x, y, z)$$のデカルト座標で行い、最後に極座標に変換して[Kerrメトリック](/gr/kerr)との整合性を図ります。

## エネルギー運動量テンソル

低質量星内部の体積素片を考えたとき、その4元速度は以下のようにかけます。

$$
(U^\mu) 
\simeq (-c, -y \Omega, x \Omega, 0) \tag{1}
$$

よって[エネルギー運動量テンソル](/gr/energy_momentum)の成分はそれぞれ以下のようになります。メトリックのMinkowskiからのズレは十分小さいとして$$g^{\mu \nu} \simeq \eta^{\mu \nu}$$とすると

$$
T^{00} 
= (\rho c^2 + P) - P 
= \rho c^2 \tag{2}
$$

$$
T^{01}
= (\rho c^2 + P) (-y \Omega) 
\simeq -y\Omega \rho c^2 \tag{3}
$$

$$
T^{02} 
= {\rho c^2 + P} x \Omega
\simeq x \Omega \rho c^2 \tag{4}
$$

$$
T^{03} 
= 0 \tag{5}
$$

$$
T^{ij} 
\simeq 0 \qquad (i, j = 1, 2, 3)\tag{6}
$$

途中、非相対論的として$$\rho c^2 \gg P$$、さらに自転がゆっくりとして$$\Omega^2$$の項は無視しました。同様に下付き添字の4元速度が

$$
(U_\mu) 
= (g_{\mu \nu} U^\nu ) 
\simeq (\eta_{\mu \nu} U^\nu) 
= (-c, -y \Omega, x \Omega, 0) \tag{7}
$$

となることから、下付き添字のエネルギー運動量テンソルについては

$$
T_{00} \simeq \rho c^2, \quad T_{01} \simeq y \Omega \rho c^2, \quad T_{02} \simeq - x \Omega \rho c^2, \quad T_{03} = 0, \quad T_{ij} \simeq 0 \ (i, j = 1, 2, 3) \tag{8}
$$

です。

## 線形化されたアインシュタイン方程式の解

[線形化されたEinstein方程式](/gr/linear_einstein)から

$$
\Delta \bar{h}_{00} 
= - \frac{16 \pi G}{c^4} \rho c^2 \tag{9}
$$

$$
\Delta \bar{h}_{01} 
= - \frac{16 \pi G}{c^4} y\Omega \rho c^2 \tag{10}
$$

$$
\Delta \bar{h}_{02} 
= \frac{16 \pi G}{c^4} x \Omega \rho c^2 \tag{11}
$$

$$
\Delta \bar{h}_{03} 
= 0 \tag{11}
$$

$$
\Delta \bar{h}_{ij} 
= 0 \qquad (i, j = 1, 2, 3) \tag{12}
$$

のようになります。ここで定常状態の仮定から$$\Box = \Delta$$としました。

### グリーン関数

これら方程式の解は

$$
\Delta G(\mathbf{r}) 
= \delta^3 (\mathbf{r}) \tag{13}
$$

で定義される[Green関数との畳み込み](/astroelec/retarded_green)で表現されます。このFourier変換を$$\hat{G}(\mathbf{k})$$のように書くと、$$\Delta e^{i \mathbf{k} \cdot \mathbf{r}} = -k^2 e^{i \mathbf{k} \cdot \mathbf{r}}$$より

$$
\frac{1}{(2\pi)^3} \iiint d^3 \mathbf{k} \hat{G} (\mathbf{k}) e^{i \mathbf{k} \cdot \mathbf{r}} 
= \frac{1}{(2\pi)^3} \iiint d^3 \mathbf{k} e^{i \mathbf{k} \cdot \mathbf{r}} \ \Longrightarrow \ 
\hat{G} (\mathbf{k}) 
= - \frac{1}{k^2} \tag{14}
$$

この逆変換を行います。このとき、$$\mathbf{k} \cdot \mathbf{r} = r k \cos \theta$$となるように波数ベクトルを定めると

$$
\begin{align}
G(\mathbf{r}) 
&= \frac{1}{(2\pi)^3} \int_0^\infty dk \int_0^\pi d\theta_k \int_0^{2\pi} d\varphi_k \left( - \frac{1}{k^2}\right) k^2 \sin^2 \sin \theta_k e^{i r k \cos \theta_k} \notag \\
&\underbrace{=}_{\mu = \cos \theta_k} - \frac{1}{(2\pi)^2} \int_0^\infty \int_{-1}^1 d\mu e^{irk \mu} 
= - \frac{1}{(2\pi)^2} \int_0^\infty dk \underbrace{\frac{e^{irk} - e^{-irk}}{irk}}_{= 2 \mathrm{sinc} (rk)} \notag \\
&\underbrace{=}_{rk = a} - \frac{1}{2\pi^2 r} \int_0^\infty da \ \mathrm{sinc}(a) 
= - \frac{1}{4\pi r} \tag{15}
\end{align}
$$

のように計算されます。最後の等式部分に[sinc関数の積分値](/math/sinc)を用いました。

{% include adsense.html %}

### 方程式の解の計算

上で求めたGreen関数を用いて、(9)~(12)の解を求めてみましょう。まずは(9)式からです。

$$
\bar{h}_{00} 
= - \frac{16 \pi G}{c^2} \iiint_{-\infty}^\infty d^3 \mathbf{r} \left( - \frac{\rho}{4\pi r} \right) 
= \frac{4G}{c^2} \int_0^\infty dr \int_0^\pi d\theta \int_0^{2\pi} d\varphi \frac{\rho}{|\mathbf{r}- \mathbf{r}'|} r'^2 \sin \theta
$$

この積分において$$0 < r'<R$$では$$\rho$$は一様密度、星の外側である$$r'>R$$では$$\rho=0$$と考えて計算をします。$$\mu = \cos \theta$$のように変数変換して

$$
\begin{align}
\bar{h}_{00} 
&= \frac{8 \pi G}{c^2} \rho \int_0^R dr' \left[ \sqrt{r^2 + r'^2 - 2rr' \mu} \right]_{-1}^1 \frac{r'^2}{-rr'} 
= \frac{8 \pi G}{c^2} \rho \int_0^R dr' \frac{\sqrt{(r-r')^2} - \sqrt{(r+r')^2}}{- rr'} r'^2 \notag \\
&= \frac{16 \pi G}{c^2 r} \rho \int_0^R dr' r'^2 
= \frac{16 \pi G}{3 c^2 r} R^3 \rho 
\underbrace{=}_{M = 4 \pi R^3 \rho / 3} \frac{4GM}{c^2 r} \tag{16}
\end{align}
$$

続いて(10)式の計算です。以下では$$r \gg R$$(十分遠方)として計算を進めます。

$$
\bar{h}_{01} 
= - \frac{16\pi G}{c^2} \iiint_{-\infty}^\infty d^3 \mathbf{r}' \left( - \frac{y' \Omega \rho}{4\pi |\mathbf{r}-\mathbf{r}'|}\right)
$$

このとき$$\mathbf{r} \cdot \mathbf{r}' = r r' \cos \theta = xx' + yy' + zz'$$とすると

$$
\frac{1}{|\mathbf{r} - \mathbf{r}'|} 
= \frac{1}{r \sqrt{1 - \frac{2 \mathbf{r} \cdot \mathbf{r}'}{r^2} + \frac{r'^2}{r^2}}} 
\simeq \frac{1}{r} \frac{1}{\sqrt{1- 2 \frac{r'}{r} \cos \theta}} 
\simeq \frac{1}{r} \left( 1- \frac{r'}{r} \cos \theta \right)
= \frac{1}{r} - \frac{xx' + yy' + zz'}{r^3} 
$$

のように近似されます。よって

$$
\bar{h}_{01} 
= - \frac{4G}{c^2} \iiint_{-\infty}^\infty d^3 \mathbf{r}' \left( \frac{1}{r} - \frac{xx' + yy' + zz'}{r^3} \right) y' \Omega \rho
$$

です。ここで$$x'y' = r'^2 \sin^2 \theta^2 \cos \varphi' \sin \varphi'$$のようなクロスタームは$$\varphi$$の$$[0, 2\pi]$$の積分において0となるため、考えなければならないのは$$y'^2$$の項のみであるとわかります。よって

$$
\begin{aligned}
\bar{h}_{01} 
&= \frac{4G \Omega \rho}{c^2} \frac{y}{r^3} \int_0^R dr' \int_0^\pi d\theta' \int_0^{2\pi} d\varphi' r'^2 \sin \theta' r'^2 \sin^2 \theta' \sin^2 \varphi' 
\underbrace{=}_{\mu = \cos \theta'} \frac{4 G \Omega \rho}{c^2} \frac{y}{r^3} \frac{R^5}{5} \int_{-1}^1 d\mu (1-\mu^2) \int_0^{2\pi} d\varphi' \sin^2 \varphi' \\
&= \frac{4G \Omega \rho}{c^2} \frac{y}{r^3} \frac{R^5}{5} \frac{4}{3} \pi
\end{aligned}
$$

ここでこの星の全角運動量

$$
J 
= \int_0^R dr' \int_0^\pi d\theta' \int_0^{2\pi} d\varphi' r'^2 \sin \theta' \ \rho (x'^2 + y'^2) \Omega 
= 2\pi \rho \Omega \int_0^R dr' r'^4 \int_0^\pi d\theta' \sin^3 \theta' 
= \frac{2\pi \rho \Omega }{5} R^5 \frac{4}{3} 
= \frac{2}{5} M R^2 \Omega \tag{17}  
$$

より

$$
\bar{h}_{01} 
= \frac{2G Jy}{c^3 r^3} \tag{18}
$$

同様の方法で(11)の計算を行います。(10), (11)式の比較から、これは(18)式において$$-y \rightarrow x$$のように置き換えたものになるので

$$
\bar{h}_{02} 
= - \frac{2GJx}{c^3 r^3} \tag{19}
$$

このほかについては

$$
\bar{h}_{03} = \bar{h}_{ij} = 0 \tag{20}
$$

という自明な解を得ます。これらより、トレース$$\bar{h}$$は

$$
\bar{h} 
= \eta^{\alpha \beta} \bar{h}_{\alpha \beta} 
= - \bar{h}_{00} 
= - \frac{4GM}{c^2 r} \tag{21}
$$

## 元のメトリックへ変換と極座標への変換

ここまでは$$\bar{h}$$という、トレース反転テンソルで計算を行なってきました。よって元のメトリックに戻しましょう。

$$
h_{00} 
=\bar{h}_{00} - \frac{1}{2} \eta_{00}\bar{h} 
= \frac{2GM}{c^2 r} \tag{22} 
$$

$$
h_{01} 
= \bar{h}_{01} 
= \frac{2GJy}{c^3 r^3} \tag{23}
$$

$$
h_{02} 
= \bar{h}_{02} 
= - \frac{2GJx}{c^3 r^3} \tag{24}
$$

$$
h_{03} 
= \bar{h}_{03}
= 0 \tag{25}
$$

$$
h_{ij} 
= \bar{h}_{ij} - \eta_{ij} \bar{h} 
= \frac{2GM}{c^2 r} \delta_{ij} \tag{26}
$$

見通しを良くするため、これを極座標系に変換しましょう。[座標変換則](/gr/riemann)より

$$
h_{0r} 
= \frac{\partial x^\mu}{\partial r} h_{0\mu} 
= \sin \theta \cos \varphi \frac{2GJy}{c^3 r^3} + \sin \theta \sin \varphi \left( - \frac{2GJx}{c^3 r^3}\right)
= 0 \tag{27}
$$

$$
\begin{align}
h_{0\varphi} 
&= \frac{\partial x^\mu}{\partial \varphi} h_{0\mu} 
= - r \sin \theta \sin \varphi \frac{2GJy}{c^3 r^3} + r \sin \theta \cos \varphi \left( - \frac{2GJx}{c^3 r^3}\right) \notag \\
&= - r \sin \theta \frac{2GJ}{c^3 r^3} (y \sin \varphi + x \cos \varphi) 
= - \frac{2GJ}{c^3 r} \sin^2 \theta \tag{28}
\end{align}
$$

$$
h_{0\theta} 
= \frac{\partial x^\mu}{\partial \theta} h_{0 \mu} 
= r\cos \theta \cos \varphi \frac{2GJy}{c^3 r^3} + r \cos \theta \sin \varphi \left( - \frac{2GJx}{c^3 r^3}\right) 
= 0 \tag{29}
$$

原点に質量$$M$$の星があるときに作られる[Schwarzschild時空メトリック](/gr/schwarzschild)と合わせて、ゆっくり回転する低質量星が作る時空は

$$
ds^2 
= - \left( 1- \frac{r_g}{r}\right) c^2 dt^2 - 2 \frac{2GJ}{c^3 r}  \sin^2 \theta c dt d\varphi + \frac{1}{1-r_g/r} dr^2 + r^2 (d\theta^2 + \sin^2 \theta d\varphi^2) \tag{30} 
$$

のようになります。ここで$$r_g = 2GM/c^2$$はSchwarzschild半径、そして$$c dt d\varphi$$の間に現れた係数2は、$$h_{0\varphi} = h_{\varphi 0}$$から出現したものです。

## カー時空からの接続

[Kerrブラックホールメトリック](/gr/kerr)は以下のように書けました。

$$
ds^2 
= - \frac{\Delta - a^2 \sin^2 \theta}{\rho^2} c^2 dt^2 - \frac{2 a r_g r \sin^2 \theta}{\rho^2} c dt d\varphi + \frac{(r^2 + a^2)^2 - a^2 \Delta \sin^2 \theta}{\rho^2} \sin^2 \theta d\varphi^2 + \frac{\rho^2}{\Delta} dr^2 + \rho^2 d\theta^2 \tag{31}
$$

ここで$$\rho^2 = r^2 + a^2 \cos^2 \theta, \Delta = r^2 + a^2 - r_g r$$です。(30), (31)式の$$cdt d\varphi$$項の比較から

$$
\frac{2 a r_g r \sin^2 \theta}{\rho^2} 
\underbrace{\simeq }_{r \gg 1} \frac{2 a r_g r \sin^2 \theta}{r^2}  
= 2 \frac{2GJ \sin^2 \theta}{c^3 r} \ \Longrightarrow \ 
a 
= \frac{2 GJ}{c^3 r_g} 
= \frac{J}{Mc} \tag{32}
$$

のようになり、Kerrメトリックを求めるときに出現した定数$$a$$が求まりました。

{% include adsense.html %}
