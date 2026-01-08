---
layout: default
title: パルサータイミング
parent: コンパクト天体
math: mathjax3
permalink: /compact/pulsar_timing
nav_order: 21
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

# パルサータイミング

ある時間に観測されたパルサーの波形の位相は、様々な要因に依存します。
またパルサータイミングデータの解析には、その位相を予測するためのモデルを用いる必要があり、予測と観測との差を用いることで、仮定した様々なモデルパラメータを補正することができます。

## ちょっとした(でも長くて面倒な)計算

![](/assets/images/compact/pulsar_timing_01.png)

ここでは、パルサータイミングを簡単に扱ってみましょう。
パルサーの質量を$$M_1$$、その伴星の質量を$$M_2$$とします。
この2つの星は連星系をなし、それらはお互いに重心の周りを楕円軌道で運動しているとします。
ここで、この軌道運動はニュートン重力で考えて良いものとします。
連星の軌道面を$$xy$$平面にとります。
そしてこの軌道面と観測者の視線方向とのなす角を$$i$$としましょう。
軌道面と視線方向とに垂直な平面との交線を$$x$$軸にとります。
さらに軌道面ないで測定した近星点から交線までの角距離を$$\omega$$としましょう。
このとき、パルサーの位置は

$$
x 
= r_1 \cos \psi, \quad y 
= r_1 \sin \psi \tag{1} 
$$

$$
\psi 
= \omega + \varphi, \quad
r_1 
= \frac{a_1 (1-e^2)}{1+e \cos \varphi} \tag{2}
$$

と書くことができます。
ここで$$e$$は離心率、$$a_1$$は楕円軌道の長半径です。
また$$\varphi$$を真近点角 (true anomaly)と呼びます。  
ここで、パルサーが放射を出す周期を$$\delta t_\mathrm{em}$$、パルサーからの放射を伴星が受け取る周期を$$\delta t_\mathrm{rec}$$としましょう。
これらの比を次のように変形します。

$$
\frac{\delta t_\mathrm{rec}}{\delta t_\mathrm{em}} 
= \frac{\delta t_\mathrm{rec}}{\delta t_\mathrm{stat}} \frac{\delta t_\mathrm{stat}}{\delta t_\mathrm{em}} \tag{3}
$$

ここで$$\delta t_\mathrm{stat}$$は、パルサーが連星の重心に対して静止している場合に、パルサーと同じ場所にいる観測者が受け取る放射の周期です。
このように定義しておくと、$$\delta t_\mathrm{rec} / \delta t_\mathrm{stat}$$重力赤方偏移の効果より

$$
\frac{\delta t_\mathrm{rec}}{\delta t_\mathrm{stat}} 
= \frac{1}{1 - \frac{GM_2}{rc^2}} \tag{4}
$$

と求まります。
ここで$$r = r_1 + r_2$$は、パルサーと伴星との距離です。
さらに$$\delta t_\mathrm{stat} / \delta t_\mathrm{em}$$は、ドップラーシフトの効果より

$$
\frac{\delta t_\mathrm{stat}}{\delta t_\mathrm{em}} 
= \frac{1 + \frac{\mathbf{v}_1 \cdot \mathbf{n}}{c}}{\sqrt{1 - \frac{v_1^2}{c^2}}} \tag{5}
$$

ここで$$\mathbf{v}_1$$はパルサーの速度、そして$$\mathbf{n} = \mathbf{e}_{z'} = \cos i \mathbf{e}_z + \sin i \mathbf{e}_y$$は、地球からこの連星系を見たときの視線方向の単位ベクトルです。
これらを用い、さらに$$\frac{v_1}{c}, \frac{GM_2}{rc^2} \ll 1 $$としましょう。
すると

$$
\begin{align}
\frac{\delta t_\mathrm{rec}}{\delta t_\mathrm{em}} 
&= \frac{1 + \frac{\mathbf{v}_1 \cdot \mathbf{n}}{c}}{\sqrt{1 - \frac{v_1^2}{c^2}}} \frac{1}{1 - \frac{GM_2}{rc^2}} 
\approx \left( 1 + \frac{\mathbf{v}_1 \cdot \mathbf{n}}{c} \right) \left( 1 + \frac{v_1^2}{2c^2}\right) \left( 1 + \frac{GM_2}{rc^2}\right) \notag \\
&\approx 1 + \frac{\mathbf{v}_1 \cdot \mathbf{n}}{c} + \frac{v_1^2}{2c^2} + \frac{GM_2}{rc^2} \tag{6}
\end{align}
$$

となります。
(6)式の第二項を計算しましょう。

$$
\mathbf{v_1} \cdot \mathbf{n} 
= ( \dot{r}_1 \sin \psi + r_1 \dot{\psi} \cos \psi ) \sin i \tag{7}
$$

$$
(2) \ \Longrightarrow \ 
\dot{r}_1 
= - \frac{a_1 (1-e^2)}{(1 + e\cos \varphi)^2} (- e \dot{\varphi} \sin \varphi) 
= \frac{r_1 \dot{\varphi} e \sin \varphi}{1 + e \cos \varphi} \tag{8}
$$

すると

$$
\mathbf{v}_1 \cdot \mathbf{n} 
= r_1 \dot{\varphi} \left( \frac{e \sin \varphi}{1 + e \cos \varphi} \sin \psi + \cos \psi \right) \sin i \tag{9}
$$

のようになります。
途中、$$\dot{\psi} = \dot{\omega} + \dot{\varphi} \approx \dot{\varphi} \ (\vert \dot{\omega} \vert \ll \vert \dot{\varphi} \vert)$$のように、近点の運動は軌道運動に比べてとても小さいとしました。
ここで[二体問題](/galady/twobody)より

$$
\dot{\varphi} 
= \frac{2\pi}{P_b (1-e^2)^{3/2}} (1+e\cos \varphi)^2 \tag{10}
$$

であることを用いましょう。
$$P_b$$は連星の軌道周期です。
すると

$$
\begin{align}
\mathbf{v}_1 \cdot \mathbf{n} 
&= \frac{a_1 (1-e^2)}{1 + e \cos \varphi} \frac{2\pi}{P_b (1-e^2)^{3/2}} (1+e\cos \varphi)^2 \left( \frac{e \sin \varphi}{1 + e \cos \varphi} \sin \psi + \cos \psi \right) \sin i \notag \\
&= \underbrace{\frac{2\pi a_1 \sin i}{P_b (1-e^2)^{1/2}}}_{\equiv K} \{ e\sin \varphi \sin \psi + (1 + e\cos \varphi) \cos \psi\} \notag \\
&= K \{ e( \cos \varphi \cos \psi + \sin \varphi \sin \psi )+ \cos \psi \} \notag \\
&= K \{ e \cos (\psi - \varphi)+ \cos \psi \} 
= K \{ e \cos \omega + \cos (\omega + \varphi) \} \notag \\
&= K ( e \cos \omega + \cos \omega \cos \varphi - \sin \omega \sin \varphi ) \tag{11} 
\end{align}
$$

のように整理することができます。
1次のドップラー項から、(10)式を通して$$e, P_b$$を求めることができます。
$$\dot{\varphi}$$を積分すれば、$$\varphi (t)$$が得られます。
また(11)式から、$$\cos \varphi, \sin \varphi$$に比例する独立な時間変動項から、$$K, \omega$$を求めることができます。
すると$$K$$から$$a_1 \sin i$$を計算できます。
ここからさらに、$$P_b$$と$$a_1 \sin i$$を用いることで、連星の質量関数

$$
f 
\equiv \frac{(M_2 \sin i)^3}{(M_1 + M_2)^2} 
= \frac{(a_1 \sin i)^3}{G} \left( \frac{2\pi}{P_b} \right)^2 \tag{12}
$$

を求めることができます。  
(6)式の第三項を求めるため、$$v_1^2$$を計算しましょう。

$$
\begin{align}
v_1^2 
&= \dot{r}_1^2 + r_1^2 \dot{\psi}^2 
\approx \dot{r}_1^2 + r_1^2 \dot{\varphi}^2
\underbrace{=}_{(8)} r_1^2 \dot{\varphi}^2 \left( \frac{e^2 \sin^2 \varphi}{(1+e\cos \varphi)^2} + 1 \right) \notag \\
&\underbrace{=}_{(2), (10)} a_1^2 (1-e^2)^2 \frac{4\pi^2}{P_b^2 (1-e^2)^3} \{ e^2 \sin^2 \varphi + (1 + e\cos \varphi)^2 \} \notag \\
&= \frac{4\pi^2 a_1^2}{P_b^2 (1-e^2)} (e^2 + 2 e \cos \varphi + 1) 
= \frac{G M_2^3}{a_1 (M_1 + M_2)^2 (1-e^2)} (e^2 + 2e \cos \varphi + 1) \tag{13}
\end{align}
$$

途中、ケプラーの第三法則

$$
\left( \frac{2\pi}{P_b} \right)^2 
= \frac{G M_2^3}{a_1^3 (M_1 + M_2)^2} \tag{14}
$$

を用いました。
また第四項において

$$
\begin{align}
\frac{GM_2}{r} 
&= \frac{GM_2}{r_1 + r_2} 
= \frac{GM_2}{\left( 1 + \frac{r_2}{r_1} \right) r_1} 
= \frac{GM_2}{\left( 1 + \frac{M_1}{M_2} \right) r_1} 
= \frac{GM_2^2}{(M_1 + M_2) r_1} \notag \\
&\underbrace{=}_{(2)} \frac{GM_2^2}{M_1 + M_2} \frac{1 + e \cos \varphi}{a_1 (1-e^2)}\tag{15}
\end{align}
$$

のように計算されます。
第三項と第四項をまとめて計算しましょう。

$$
\begin{align}
\frac{1}{2} v_1^2 + \frac{GM_2}{r} 
&= \frac{GM_2^2}{a_1 (M_1 + M_2)^2 (1-e^2)} \left\{  \frac{e^2}{2} M_2 + M_2 e \cos \varphi + \frac{M_2}{2} + (M_1 + M_2) (1+e\cos \varphi)\right\} \notag \\
&= \frac{GM_2^2 (M_1 + 2 M_2) e }{a_1 (M_1 + M_2)^2 (1-e^2)} \cos \varphi + \frac{GM_2^2}{a_1 (M_1 + M_2)^2 (1-e^2)} \left( M_1 + \frac{e^2 + 3}{2} M_2\right) \notag \\
&= \beta \cos \varphi + \beta_0 \tag{16}
\end{align}
$$

以上より

$$
\begin{align}
\frac{\delta t_\mathrm{rec}}{\delta t_\mathrm{em}} 
&\approx 1 + \frac{K}{c} \{ \cos (\omega + \varphi) + e \cos \omega \} + \frac{1}{c^2} (\beta \cos \varphi + \beta_0) \notag \\
&\underbrace{\approx}_{\omega \approx \omega_0 + \dot{\omega} t} 1 + \frac{K}{c} \{ \cos (\omega_0 + \dot{\omega} t + \varphi) + e \cos (\omega_0 + \dot{\omega} t) \} + \frac{1}{c^2} (\beta \cos \varphi + \beta_0) \tag{17}
\end{align}
$$

のように求まります。
途中、$$\omega \approx \omega_0 + \dot{\omega} t$$のように近似しました。
また一般相対論から、近点の時間変化は

$$
\dot{\omega} 
= \frac{6\pi G M_2}{a_1 (1-e^2) P_b c^2} \tag{18}
$$

と求まります。
このような$$\omega$$の緩やかな時間依存性により、$$\delta t_\mathrm{rec} / \delta t_\mathrm{em}$$の比率をより正確に正確することで、$$K, \omega_0, \beta, \dot{\omega}$$を個別に決定することができます。

{% include adsense.html %}

## シャピロ遅延 (Shapiro delay)

さらなる相対論的効果を検証することもできます。
その1つに、シャピロ遅延 (Shapiro delay)と呼ばれるものがあります。
これは電磁波の伝搬速度が、強重力による空間の曲がりにより遅くなる効果のことです。
[シュバルツシルト計量](/gr/schwarzschild)におけるシャピロ遅延は、簡単に計算することができます。
光子が$$\theta = \pi/2$$の平面内のみを通過すると仮定すると、この光子の世界線に沿って

$$
0 
= \left( 1- \frac{2GM_2}{c^2 r} \right) c^2 dt^2  - \frac{dr^2}{1 - \frac{2GM_2}{c^2 r}} - r^2 d\varphi^2 \tag{19}
$$

の関係が成り立ちます。

![](/assets/images/compact/pulsar_timing_02.png)

伴星に最も近づいた時の距離を$$r_0$$、そして$$\varphi = \pi/2$$としましょう。
また光子の軌道を$$r = r_0 /\sin \varphi$$の直線で近似すると

$$
c^2 dt^2 
= \frac{dr^2}{\left( 1 - \frac{2m}{r}\right)^2} + \frac{r_0^2 dr^2}{\left( 1 - \frac{2m}{r}\right) (r^2 - r_0^2)} 
= \frac{\left( 1 - \frac{2 mr_0^2}{r^3}\right) dr^2}{\left( 1 - \frac{r_0^2}{r^2}\right) \left( 1 - \frac{2m}{r}\right)^2} \tag{20}
$$

となります。
$$m \ll 1$$とすると

$$
cdt 
= \frac{\sqrt{1 - \frac{2mr_0^2}{r^3}}}{1-\frac{2m}{r}} \frac{dr}{\sqrt{1-\frac{r_0^2}{r^2}}} 
\approx \left( 1 + \frac{2m}{r} - \frac{r_0^2 m}{r^3}\right) \frac{dr}{\sqrt{1-\frac{r_0^2}{r^2}}} \tag{21}
$$

のようになります。
この両辺を、$$r_0$$から$$r$$の範囲で積分しましょう。

$$
\int_{r_0}^r \frac{dr}{\sqrt{1-\frac{r_0^2}{r^2}}} 
= \int_{r_0}^r \frac{r}{\sqrt{r^2-r_0^2}} dr 
= \left[ \sqrt{r^2 - r_0^2} \right]_{r_0}^r 
= \sqrt{r^2 - r_0^2}
$$

$$
\begin{align}
\int_{r_0}^r \frac{2m}{r} \frac{dr}{\sqrt{1-\frac{r_0^2}{r^2}}} 
&= \int_{r_0}^r \frac{2m}{\sqrt{r^2 - r_0^2}} dr 
= 2m \left[ \ln \left\vert r + \sqrt{r^2 - r_0^2} \right\vert \right]_{r_0}^r \notag \\
&= 2m \left( \ln \left\vert r + \sqrt{r^2 - r_0^2} \right\vert - \ln r_0 \right) 
= 2m \ln \frac{r + \sqrt{r^2 - r_0^2}}{r_0} \notag 
\end{align}
$$

$$
\begin{align}
\int_{r_0}^r\frac{r_0^2 m}{r^3} \frac{dr}{\sqrt{1-\frac{r_0^2}{r^2}}} 
&= r_0^2 m \int_{r_0}^r\frac{1}{r^2} \frac{dr}{\sqrt{r^2-r_0^2}} 
\underbrace{=}_{u\equiv \sqrt{r^2 - r_0^2}} r_0^2 m \int_0^\sqrt{r^2 - r_0^2} \frac{1}{(u^2 + r_0^2)} \frac{1}{u} \frac{u du}{\sqrt{u^2 + r_0^2}} \notag \\
&= r_0^2 m \int_0^\sqrt{r^2 - r_0^2} \frac{du}{(u^2 + r_0^2)^{3/2}} 
= r_0^2 m \left[ \frac{u}{r_0^2 \sqrt{u^2 + r_0^2}} \right]_0^\sqrt{r^2 - r_0^2} \notag \\
&= m \frac{\sqrt{r^2 - r_0^2}}{r} 
= m \sqrt{1 - \frac{r_0^2}{r^2}} \notag 
\end{align}
$$

以上より

$$
c t(r, r_0) 
= \sqrt{r^2 - r_0^2} + 2m \ln \frac{r + \sqrt{r^2 - r_0^2}}{r_0} - m \frac{r^2 - r_0^2}{r} \tag{22}
$$

のようになります。
ここから、時間の遅れが

$$
\Delta t 
= t(r, r_0) - \frac{\sqrt{r^2 - r_0^2}}{c} 
= \frac{2GM_2}{c^3} \ln \frac{r + \sqrt{r^2 - r_0^2}}{r_0} - \frac{GM_2}{c^3} \frac{\sqrt{r^2 - r_0^2}}{r} \tag{23}
$$

とわかります。

## 孤立パルサー

孤立パルサーについては、以下のようなモデルが考えられています。

$$
t_b 
= t - \frac{D}{f^2} + \frac{\mathbf{r} \cdot \mathbf{n}}{c} + \Delta_{E \odot} - \Delta_{S \odot} \tag{24}
$$

ここで$$t$$は観測者へのパルス到達時間、$$t_b$$は太陽系の重心における相対論的なパルス到達時間、$$f$$は観測周波数、$$D$$は分散測度、$$\mathbf{r}$$は太陽系中心から望遠鏡の位相中心までの距離、$$\mathbf{n}$$はパルサー方向の単位ベクトル、$$\Delta_{E \odot}$$は太陽系のアインシュタイン遅延 (重力赤方偏移と地球や他の太陽系惑星の運動による時間遅延を合算したもの)、$$\Delta_{S \odot}$$は太陽系内の曲がった時空をパルスが通ることによるシャピロ遅延です。  
アインシュタイン遅延は、次の微分方程式を満たします。

$$
\frac{d \Delta_{E\odot}}{dt} 
= \sum_i \frac{Gm_i}{c^2 r_i} + \frac{v_\oplus^2}{2c^2} - \mathrm{Const.} \tag{25}
$$

ここで$$r_i$$は質量$$m_i$$の惑星までの距離、$$v_\oplus$$は太陽系中心に対する地球の運動速度です。  
シャピロ遅延は、太陽近傍を通る際に光線の軌跡が歪曲するというよく知られた現象の、時間版のアナロジーと考えることができます。
そしてその大きさは、次の式から計算できます。

$$
\Delta_{S \odot} 
= - \frac{2GM_\odot}{c^3} \log (1+\cos \theta) \tag{26}
$$

ここで$$\theta$$は、パルサーと太陽を結ぶ直線と太陽と地球を結ぶ直線とがなす角度です。
ここでは、地球の軌道は円軌道であり、その離心率はゼロとしています。  
孤立したパルサーの太陽系重心に対する加速度は十分小さいと考えて良いため、$$t_b$$はほぼ一定のドップラー効果・重力赤方偏移によるスケールファクター、そして加算定数を除けば、パルサー静止系における固有時間$$T$$と等価と考えることができます。

{% include adsense.html %}

## 連星パルサー

連星パルサーの場合、パルサーには軌道運動による加速度が大きく加わります。
そのため、連星パルサーのタイミングデータ解析には、各到着時間 (Time Of Arrival: TOA)に対応する固有時間$$T$$を求めるための追加の変換が必要となります。

### DDモデル

ここでは、[Damour & Deruelle (1985)](https://ui.adsabs.harvard.edu/abs/1985AIHPA..43..107D/abstract), [Damour & Deruelle (1986)](https://ui.adsabs.harvard.edu/abs/1986AIHPA..44..263D/abstract)により導出された変換について見てみましょう。

$$
t_b - t_0 
= T + \Delta_R + \Delta_E + \Delta_S + \Delta_A \tag{27}
$$

ここで$$\Delta_R$$は連星軌道を横断する伝搬時間の遅延を表すローマー遅延 (Roemer time delay)で、太陽系での$$(\mathbf{r} \cdot \mathbf{n}) / c$$のアナロジーに対応します。
$$\Delta_E, \Delta_S$$はそれぞれ、アインシュタイン遅延とシャピロ遅延です。
最後の$$\Delta_A$$は、パルサーの自転により引き起こされる光行差 (aberration) に関連した時間遅延です。
これらの遅延は、次のように定義されます。

$$
\Delta_R 
= x \sin \omega \{\cos u - e(1+\delta_r)\} + x \sqrt{1 - e^2 (1+\delta_\theta)^2} \cos \omega \sin u \tag{28}
$$

$$
\Delta_E 
= \gamma \sin u \tag{29}
$$

$$
\Delta_S 
= -2r \log \left[ 1 - e \cos u -s \{ \sin \omega (\cos u - e) + \sqrt{1-e^2} \cos \omega \sin u \}\right] \tag{30}
$$

$$
\Delta_A 
= A \{\sin (\omega + A_e (u)) + e\sin \omega\} + B \{\cos (\omega + A_e(u)) + e \cos \omega\} \tag{31}
$$

ここで、離心近点離角 (eccentricity anomaly) $$u$$と真近点角 (true anomaly) $$A_e (u)$$は、次のケプラー方程式に従います。

$$
u - e \sin u 
= 2\pi \left\{ \left( \frac{T - T_0}{P_b}\right) - \frac{\dot{P}_b}{2} \left( \frac{T - T_0}{P_b}\right)^2\right\} \tag{32}
$$

$$
A_e(u) 
= 2 \mathrm{arctan} \left\{ \sqrt{\frac{1+e}{1-e}} \tan \frac{u}{2}\right\} \tag{33}
$$

$$
\omega 
= \omega_0 + k A_e(u) \tag{34}
$$

途中の$$P_b$$は連星の軌道周期、$$e$$は連星軌道の離心率、$$\omega$$は近星点の距離、$$x = (a_1 \sin i) / c$$はパルサー軌道の軌道長半径を射影したもの、$$T_0$$は近星点を通過する時間を参照時間として用いるためのものです。
最後に、$$\gamma$$は重力赤方偏移と時間遅延の効果を組合せたものをパラメータ化したものです。
パラメータの中でも$$\dot{\omega} = 2\pi k/ P_b \ (\mathrm{or} \ k = \dot{\omega} P_b / 2\pi), \gamma, \dot{P}_b$$はポストケプラー(post Keplerian: PK)パラメータと呼ばれます。
そして$$s \equiv \sin i$$はshape (形状？)、$$r$$はシャピロ遅延の範囲を表すパラメータです。
このモデルは、DDモデルと呼ばれています。  
以上から、このモデルは

$$
t_b - t_0 
= F[T; \{p^K\}, \{p^{PK}\}, \{q^{PK}\}] \tag{35}
$$

のようにまとめることができます。
ここで

$$
\{p^K\} 
= \{ P_b, T_0, e_0, \omega_0, x_0\} \tag{36}
$$

はケプラーパラメータであり

$$
\{p^{PK} \} 
= \{k, \gamma, \dot{P}_b, r, s, \delta_\theta, \dot{e}, \dot{x} \} \tag{37}
$$

はポストケプラーパラメータの中でも別々に観測が可能なものです。
そして

$$
\{q^{PK}\} 
= \{\delta_r, A, B, D\} \tag{38}
$$

は別々に観測ができないポストケプラーパラメータです。
ここでは、さらに

$$
x 
= x_0 + \dot{x} (T-T_0), \quad
e 
= e_0 + \dot{e} (T-T_0) \tag{39}
$$

のように、一定の速さで$$x, e$$が変化するとしました。  
ポストケプラーパラメータの全てが、タイミング観測データを用いたモデルフィッティングで正確に決定できるわけではないことに注意が必要です。

### DDGRモデル

このモデルに一般相対論を適用すると、$$, \gamma \dot{P}_b, s, r, A, B, \delta_r, \delta_\theta$$のような種々のパラメータを、連星系の総質量$$M = m_1 + m_2$$と伴星の質量$$m_2$$から与えることができます。

$$
\frac{a_R^3}{P_b^2} 
= \frac{GM}{4\pi^2} \left\{ 1 + \left( \frac{m_1m_2}{M} - 9\right) \frac{GM}{2a_R c^2}\right\}^2 \tag{40}
$$

$$
k 
= \frac{3GM}{c^2 a_R (1-e^2)} \tag{41}
$$

$$
\gamma 
= \frac{eP_b G m_2 (m_1 + 2m_2)}{2\pi c^2 a_R M} \tag{42}
$$

$$
\dot{P}_b 
= - \frac{192 \pi}{5c^5} \left( \frac{2\pi G}{P_b}\right)^{5/3} \left( 1 + \frac{73}{24} e^2 + \frac{37}{96} e^4\right) (1-e^2)^{-7/2} m_1 m_2 M^{-1/3} \tag{43}
$$

$$
s 
= \frac{cxM}{a_R m_2} \tag{44}
$$

$$
r 
= \frac{Gm_2}{c^3} \tag{45}
$$

$$
A 
= \frac{P}{P_b x (1-e^2)^{1/2}} \left( \frac{a_R m_2}{cM}\right)^2 \tag{46}
$$

$$
B 
= 0 \tag{47}
$$

$$
\delta_r 
= \frac{G}{c^2 a_R M} (3m_1^2 + 6m_1m_2 + 2m_2^2) \tag{48}
$$

$$
\delta_\theta 
= \frac{G}{c^2 a_R M} \left( \frac{7}{2} m_1^2 + 6m_1m_2 + 2m_2^2 \right) \tag{49}
$$

これをDDGRモデルと呼びます。  
パルスタイミングの観測データを理論モデルをフィッティングすることで、パラメータを決定することができます。
そしてDDモデルから決定されたパラメータ値を用いると、$$m_1-m_2$$平面上に対応する曲線を描くことができます。
これらの曲線が平面上の1点で交差する場合、連星系を構成する2つの星の質量を高精度で決定することが可能です。

{% include adsense.html %}

## $$2M_\odot$$の中性子星を持つ連星パルサーの観測

DDGRモデルから、シャピロ遅延を測定し、パラメータ$$r, s$$を決定することができれば、$$r$$から伴星の質量、そして$$s$$から主星の質量を直接推定することができます。
ここでは、最近の観測例について見ていきましょう。

![](/assets/images/compact/pulsar_timing_03.png)  
[Demorest et al. (2010)](https://www.nature.com/articles/nature09466)より。上パネルは軌道の各位相でのシャピロ遅延を示し、中性子星を赤点、白色矮星を青点で表している。  

連星パルサー PSR J1614-2230 におけるシャピロ遅延の最近の測定から、伴星の質量が$$M_2 \sim 0.5 M_\odot$$の白色矮星、主星の質量が$$M_1 \sim 1.97 M_\odot$$の中性子星であることがわかりました。
この$$1.97M_\odot$$の中性子星の質量測定から、中性子星を構成する核物質の状態方程式に大きな制約を与えることができます。
具体的には、質量-半径平面においてある状態方程式を仮定して描かれた曲線が、PSR J1614-2230の水平直線と交わるかどうかを見ることができます。
もし交わらなければ、その状態方程式の仮定を測定から排除することができるのです。

![](/assets/images/compact/pulsar_timing_04.png)  
[Demorest et al. (2010)](https://www.nature.com/articles/nature09466)より。横軸は半径、縦軸は中性子星質量を表す。各曲線は自転していない場合に、状態方程式から中性子星質量を計算したもの。水平方向に伸びる帯は、観測から得られた中性子星の質量範囲です。  

最も低い最大質量となる状態方程式は、ある中心密度を超えると劇的なソフトニングを予測します。
これは nuclear saturation density (核飽和密度？) の数倍の密度になると、ハイペロンやK中間子の凝縮体のようなエキゾチックなハドロン物質が出現するモデルに共通する特徴です。
上図のGS1, GM3がそのモデルに対応します。

## 観測からの中性子星質量の決定

先程述べたように、観測から中性子星の質量を決定することは、核物質の状態方程式に制限をかけることができて非常に重要です。  
もし中性子星が連星中にある場合には、中性子星の質量を良い精度で求められる場合があります。
ここでは、非相対論的な場合と相対論的な場合に分けて、考えてみましょう。

### 非相対論的な場合

非相対論的な枠組みでは、ケプラーパラメータを測定する必要があります。
質量が$$M_1, M_2$$の2つの天体が、重心に対して円運動している場合を考えましょう。
2つの天体の距離を$$a$$、そして重心から$$M_1, M_2$$までの距離をそれぞれ$$a_1, a_2$$とすると

$$
a 
= a_1 + a_2, \quad
M_1 a_1 
= M_2 a_2 \tag{50}
$$

の関係が得られます。
$$M_1$$から放出される電磁波のスペクトルを観測すると、その周期的な運動からドップラーシフトも周期的な変化をすることになります。
そのドップラーシフト振幅を$$v_1$$とすると

$$
v_1 
= \frac{2\pi}{P_b} a_1 \sin i \tag{51}
$$

は、観測からその大きさを決定することができます。
$$P_b$$も観測から得ることができるため、$$a_1 \sin i$$を決定することができます。
ケプラーの法則

$$
\frac{G (M_1 + M_2)}{a^3} 
= \left( \frac{2\pi}{P_b}\right)^2 \tag{52}
$$

から、質量関数

$$
f(M_1, M_2, i) 
\equiv \frac{(M_2 \sin i)^3}{M^2} 
= \frac{P_b v_1^3}{2\pi G} \tag{53}
$$

を得ることができます。
ここで$$M = M_1 + M_2$$です。
もし$$M_1, M_2$$それぞれに対する質量関数

$$
f_1 
= \frac{(M_2 \sin i)^3}{M^2}, \quad
f_2 
= \frac{(M_1 \sin i)^3}{M^2} \tag{54}
$$

を得ることができれば

$$
M_1 
= \frac{f_1 q (1+q)^2}{\sin^3 i} \tag{55}
$$

から、$$M_1, \sin i$$をどうにかして決定することで、質量比$$q = M_1 / M_2$$を得ることができます。

### 相対論的な場合

* シャピロ遅延
シャピロ遅延の$$r, s$$のパラメータを測定できれば、伴星の質量を直接決定することができます。

* シャピロ遅延以外のポストケプラーパラメータの測定
シャピロ遅延の測定が困難な場合でも、$$\dot{\omega}, \gamma, \dot{P}_b$$などの他のポストケプラーパラメータが測定できれば、一般相対論の枠組みから主星と伴星の質量を高精度で決定することができます。
観測により得られたポストケプラーパラメータの値を用い、$$M_1-M_2$$平面上に曲線を描くことで、これらの曲線が交わる交点から星の質量を決定することができます。

## PSR B1913+16

パルサー PSR B1913+16 (PSR J1915+1606) は、最初に発見された連星パルサーです。
軌道周期はおよそ7.75時間、天球面上に投影された軌道運動の速度は300km/sであり、パルサーの伴星も中性子星となっています。
この中性子星連星系は、一般相対論の検証の場として、様々な研究がなされてきました。  
詳細な観測から、DDモデルのポストケプラーパラメータの値もフィッティングされており、次のように求まっています。

$$
\langle \dot{\omega} \rangle 
= \frac{3 G^{2/3}}{c^2} \left( \frac{P_b}{2\pi}\right)^{-5/3} \frac{1}{1-e^2} (M_1 + M_2)^{2/3} 
\approx 2.1 \left( \frac{M_1 + M_2}{M_\odot}\right)^{2/3} \ [\mathrm{deg/yr}] \tag{56}
$$

$$
\gamma 
= \frac{G^{2/3} e}{c^2} \left( \frac{P_b}{2\pi}\right)^{1/3} \frac{M_2 (M_1 + 2M_2)}{(M_1 + M_2)^{4/3}} 
\approx 0.0029 \frac{M_2 (M_1 + 2M_2) (M_1 + M_2)^{-4/3}}{M_\odot^{2/3}} \ [\mathrm{s}] \tag{57}
$$

途中の計算では、便利な単位換算として$$\frac{GM_\odot}{c^2} \sim 4.925 \times 10^{-6}$$sを用いました。
(56)式から、連星系の総質量$$M = M_1 + M_2 \sim 2.83 M_\odot$$のように求まります。
(57)式から、連星の各質量が$$M_1 = 1.44 M_\odot, M2 = 1.39M_\odot$$のようになります。  
一般相対論から、連星中性子星は重力波を放出し、軌道周期が変化します。
それによると

$$
\begin{align}
\dot{P}_b^\mathrm{GR} 
&= - \frac{192 \pi G^{5/3}}{5c^5} \left( \frac{P_b}{2\pi}\right)^{-5/3} \left( 1 + \frac{73}{24} e^2 + \frac{37}{96} e^4\right) (1-e^2)^{-7/2} M_1 M_2 M^{-1/3} \notag \\
&= -1.70 \times 10^{-12} \frac{M_1 M_2 M^{-1/3}}{M_\odot^{5/3}} \tag{58}
\end{align}
$$

先程の$$M_1, M_2$$の値を代入することで

$$
\dot{P}_b^\mathrm{GR} 
\sim -2.40 \times 10^{-12} \tag{59}
$$

のような値を得ることができます。
観測から得られた周期変化$$\dot{P}_b$$と、太陽系重心が運動することによる相対加速度による寄与$$\Delta \dot{P}_{b, \mathrm{gal}}$$を考慮したものを、理論値$$\dot{P}_b^\mathrm{GR}$$と比べた結果は

$$
\frac{\dot{P}_b - \Delta \dot{P}_{b, \mathrm{gal}}}{\dot{P}_b^\mathrm{GR}} 
\sim 0.997 \pm 0.002 \tag{60}
$$

のように、素晴らしい一致を見せています。
次の図は、1974年のこの連星パルサー発見以来、軌道の位相の変化の蓄積を示した有名な図です。

![](/assets/images/compact/pulsar_timing_05.png)  
[Weisberg et al. (2010)](https://iopscience.iop.org/article/10.1088/0004-637X/722/2/1030)より。横軸は観測年数、縦軸は連星軌道周期の変化の蓄積を表したもの。  

## 参考文献

[1] [Damour & Deruelle, 1985, "General relativistic celestial mechanics of binary systems. I. The post-Newtonian motion"](https://ui.adsabs.harvard.edu/abs/1985AIHPA..43..107D/abstract)  
[2] [Damour & Deruelle, 1986, "General relativistic celestial mechanics of binary systems. II. The post-Newtonian timing formula"](https://ui.adsabs.harvard.edu/abs/1986AIHPA..44..263D/abstract)  
[3] [Demorest et al., 2010, "A two-solar-mass neutron star measured using Shapiro deley"](https://www.nature.com/articles/nature09466)  
[4] [Weisberg et al., 2010, "Timing Measurements of the Relativistic Binary Pulsar PSR B1913+16"](https://iopscience.iop.org/article/10.1088/0004-637X/722/2/1030)  
[5] [Shapiro & Teukolsky, "Black Holes, White Dwarfs and Neutron Stars"](https://amzn.to/49qfK83)  

## 補遺: 連星の質量関数

ケプラーの第三法則より

$$
\frac{M_2^3}{M_\mathrm{tot}^2} 
= \frac{4\pi^2}{GP_b^2} a_1^3 \tag{a1}
$$

(11)式の$$K$$の定義より

$$
\frac{PK^3}{2\pi G} (1-e^2)^{3/2} 
= \frac{P}{2\pi G} \frac{8\pi^3 a_1^3 \sin^3 i}{P_b^3 (1-e^2)^{3/2}} (1-e^2)^{3/2} 
= \underbrace{\frac{4\pi^2 a_1^3}{GP_b^2}}_{(a1)} \sin^3 i 
= \frac{(M_2 \sin i)^3}{(M_1 + M_2)^2} \tag{a2}
$$

{% include adsense.html %}