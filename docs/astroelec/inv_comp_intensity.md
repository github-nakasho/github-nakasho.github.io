---
layout: default
title: 逆Compton放射強度
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/inv_compton_intensity
nav_order: 24
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

# 逆Compton放射強度

[逆Compton散乱](/astroelec/inv_compton)により電磁波の放射強度の増加分を「逆コンプトン放射強度」と定義しましょう。以下では等方的な速度分布を持ったLorentz因子の電子群による逆Compton散乱を考えます。また入射電磁波は無偏光かつ等方的であり、ここでは電磁波を波動として扱います。

## Lienardの公式

[Thomson散乱](/astroelec/thomson)のときと同じように系には特別な向きがないため、結果は電磁波の偏光状態に依存しないはずです。よって入射電磁波は$$z$$方向に進行する直線偏光電磁波$$\mathbf{n} = \mathbf{e}_z$$とします。  
放射強度は[Lienardの公式](/astroelec/lienard_larmor)から計算できます。

$$
P_e 
= \frac{2e^2}{3c^3} [ \gamma^6 (\dot{v}^2 - | \dot{\bf v} \times \boldsymbol{\beta}|^2 ) ] \tag{1}
$$

そのためにはまず$$\dot{\mathbf{v}}$$などを求めておく必要があります。[相対論的な電子の運動方程式](astroelec/emtensor.md)より

$$
\frac{d}{dt}(\gamma m_e c^2) 
= - e \mathbf{E} \cdot \mathbf{v}  
\ \Longrightarrow \ 
\dot{\gamma} 
= -\frac{e}{m_e c^2} \mathbf{E} \cdot \mathbf{v}
$$

$$
\frac{d}{dt} (\gamma m_e \mathbf{v} ) 
= -e \left( \mathbf{E} + \frac{\mathbf{v}}{c} \times \mathbf{B} \right) 
= -e (\mathbf{E} + \boldsymbol{\beta} \times \mathbf{B}) 
\ \Longrightarrow \ 
\dot{\gamma} \mathbf{v} + \gamma \dot{\mathbf{v}} 
= - \frac{e}{m_e} (\mathbf{E} + \boldsymbol{\beta} \times \mathbf{B})
$$

$$
\gamma \dot{\mathbf{v}} 
= \frac{e}{m_e c^2} (\mathbf{E} \cdot \mathbf{v}) \mathbf{v} - \frac{e}{m_e} (\mathbf{E} + \boldsymbol{\beta} \times \mathbf{B})
= \frac{e}{m_e} (\mathbf{E} \cdot \boldsymbol{\beta}) \boldsymbol{\beta} - \frac{e}{m_e} (\mathbf{E} + \boldsymbol{\beta} \times \mathbf{B}) 
$$

以上より

$$
\dot{\mathbf{v}} 
= \frac{e}{m_e \gamma} \left\{ (\mathbf{E} \cdot \boldsymbol{\beta}) \boldsymbol{\beta} - \mathbf{E} - \boldsymbol{\beta} \times \mathbf{B} \right\}
$$

です。ここから、$$\boldsymbol{\beta}, \mathbf{E}, \mathbf{B}$$を与えれば計算できることがわかります。電子の速度ベクトルとして任意の方向をとりましょう。また電磁波は$$z$$方向に進行する直線偏光電磁波なので

$$
\boldsymbol{\beta} = \beta
\left( \begin{array}{c}
\sin \theta \cos \phi \\
\sin \theta \sin \phi \\
\cos \theta
\end{array} \right), \quad
\mathbf{E} = E (t)
\left( \begin{array}{c}
1 \\
0 \\
0
\end{array} \right), \quad
\mathbf{B} = B (t)
\left( \begin{array}{c}
0 \\
1 \\
0
\end{array} \right) \quad (E(t) = B(t))
$$

として上式に代入します。

$$
\begin{align}
\dot{\mathbf{v}} 
&= \frac{e}{m_e \gamma} \left\{ 
E \beta^2 \sin \theta \cos \phi
\left( \begin{array}{c}
\sin \theta \cos \phi \\
\sin \theta \sin \phi \\ 
\cos \theta
\end{array} \right)
 - 
\left( \begin{array}{c}
E \\
0 \\ 
0
\end{array} \right)
 - \beta E
\left( \begin{array}{c}
 - \cos \theta \\
0 \\ 
\sin \theta \cos \phi
\end{array} \right)
\right\} \\
&= \frac{eE}{m_e \gamma}
\left( \begin{array}{c}
\beta^2 \sin^2 \theta \cos^2 \phi -1 + \beta \cos \theta \\
\beta^2 \sin^2 \theta \sin \phi \cos \phi \\ 
\beta^2 \sin \theta \cos \theta \cos \phi - \beta \sin \theta \cos \phi
\end{array} \right)
\end{align}
$$

よって$$\dot{\mathbf{v}}$$の大きさの2乗は

$$
\dot{v}^2 
= \frac{e^2 E^2 }{m_e^2 \gamma^2} (\beta^4 \sin^2 \theta \cos^2 \phi^2 + 1 + \beta^2 \cos^2 \theta - \beta^2 \sin^2 \theta \cos^2 \phi - 2\beta \cos \theta)
$$

となります。さらに

$$
\begin{align}
\dot{\mathbf{v}} \times \boldsymbol{\beta}
&= \frac{e}{m_e \gamma} \{ (\mathbf{E} \cdot \boldsymbol{\beta}) \underbrace{\boldsymbol{\beta} \times \boldsymbol{\beta}}_{=\mathbf{0}} - \mathbf{E} \times \boldsymbol{\beta} - (\boldsymbol{\beta} \times \mathbf{B}) \times \boldsymbol{\beta}\} 
= - \frac{e}{m_e \gamma} \{ \mathbf{E} \times \boldsymbol{\beta} + \beta^2 \mathbf{B} - (\mathbf{B} \cdot \boldsymbol{\beta}) \boldsymbol{\beta} \} \notag \\
&= - \frac{e}{m_e \gamma} \left\{ 
E \beta
\left( \begin{array}{c}
0\\
 - \cos \theta\\
\sin \theta \sin \phi
\end{array} \right)
+
\beta^2 E
\left( \begin{array}{c}
0\\
1\\
0
\end{array} \right)
 -
\beta^2 E \sin \theta \sin \phi 
\left( \begin{array}{c}
\sin \theta \cos \phi \\
\sin \theta \sin \phi \\
\cos \theta
\end{array} \right)
\right\} \notag \\
&= \frac{e\beta E}{m_e \gamma} 
\left( \begin{array}{c}
\beta \sin^2 \theta \sin \phi \cos \phi \\
\beta \sin^2 \theta \sin^2 \phi + \cos \theta - \beta\\
\beta \sin \theta \cos \theta \sin \phi - \sin \theta \sin \phi
\end{array} \right)
\end{align}
$$

より

$$
|\dot{\mathbf{v}} \times \boldsymbol{\beta}|^2 
= \frac{e^2 E^2 }{m_e^2 \gamma^2} (\beta^4 \sin^4 \theta \sin^2 \phi + \beta^2 \cos^2 \theta + \beta^4 - 2\beta^3 \cos \theta - 2\beta^4 \sin^2 \theta \sin^2 \phi + \beta^4 \sin^2 \theta \cos^2 \theta \sin^2 \phi + \beta^2 \sin^2 \theta \sin^2 \phi)
$$

よって

$$
P_e (\theta, \phi) 
= \frac{2e^2}{3c^3} [ \gamma^6 (\dot{v}^2 - |\dot{\mathbf{v}} \times \boldsymbol{\beta}|^2 ) ]
= \frac{2 e^4 }{3 m_e^2 c^3} [E^2 \gamma^4 (\beta^4 \sin^2 \theta + 1 - \beta^2 \sin^2 \theta -2 \beta \cos \theta - \beta^4 + 2 \beta^3 \cos \theta)]
$$

この式はある$$\theta, \phi$$方向に出る電磁波の放射強度です。これを全立体角積分して平均をすることで、観測されるような量になります。

$$
\begin{align}
\int_0^\pi d\theta \int_0^{2\pi} d\phi \sin^2 \theta \sin \theta 
&= 2\pi \int_0^\pi \sin^3 \theta \ d\theta
= 2\pi \int_0^\pi \left( \frac{3}{4} \sin \theta - \frac{1}{4} \sin 3 \theta \right) d\theta \notag \\
&= 2\pi \left[ - \frac{3}{4} \cos \theta + \frac{1}{12} \cos 3 \theta \right]_0^\pi
= 4\pi \left( \frac{3}{4} - \frac{1}{12} \right) 
= \frac{8}{3} \pi
\end{align}
$$

$$
\int_0^\pi d\theta \int_0^{2\pi} d \phi \ \sin\theta 
= 4\pi 
$$

$$
\int_0^\pi d\theta \int_0^{2\pi} d\phi \ \cos \theta \sin \theta 
= 2\pi \int_0^\pi d\theta \ \frac{1}{2} \sin 2 \theta 
= 0
$$

より

$$
\begin{align}
P_e 
&= \frac{1}{4\pi} \int_{4\pi} P_e (\theta , \phi) d\Omega 
= \frac{1}{4\pi} \frac{2e^4 }{3 m_e^2 c^3} \left[E^2 \gamma^4 \left( \beta^4 \frac{8}{3} \pi + 4\pi - \beta^2 \frac{8}{3} \pi - \beta^4 4\pi \right) \right] \notag \\
&= \frac{2e^4 }{3 m_e^2 c^3} \left[E^2 \gamma^4 \left( \frac{2}{3} \beta^4  + 1 - \frac{2}{3} \beta^2  - \beta^4 \right) \right]
= \frac{2e^4 }{3 m_e^2 c^3} \left[ E^2 \gamma^4 (1-\beta^2) \left\{ - \frac{2}{3} \beta^2  + (1 + \beta^2) \right\} \right] \notag \\
&= \frac{2e^4 }{3 m_e^2 c^3} \left[ E^2 \gamma^2 \left( 1+ \frac{1}{3} \beta^2 \right) \right] \notag
\end{align}
$$

となります。

## 逆Compton放射強度

[入射電磁波のエネルギー密度](/astroelec/em_energy_momentum)$$U_\mathrm{ph} = \frac{1}{8\pi} (E^2 + B^2) = \frac{E^2}{4\pi}$$と[Thomson散乱断面積](/astroelec/thomson)を用いると

$$
P_e 
= c \sigma_\mathrm{T} \left[  U_\mathrm{ph} \gamma^2 \left( 1 + \frac{1}{3} \beta^2 \right) \right]
$$

この中には、入射電磁波が電子に散乱される前のエネルギーが含まれています。よってそれをそれを差し引くことで得たいものとなります。電子の[Thomson散乱断面積](/astroelec/thomson.md)が$$\sigma_\mathrm{T}$$で与えられているので、単位時間あたりに散乱される光子数(電磁波)は$$c \sigma_\mathrm{T}$$です。よって単位時間あたりに散乱される電磁波のエネルギーは

$$
P_\mathrm{ini} 
= c \sigma_\mathrm{T} [U_\mathrm{ph}]
$$

です。よって求めたかった逆Compton散乱放射強度は

$$
\begin{align}
P_\mathrm{IC} 
&= P_e - P_\mathrm{ini} 
= c \sigma_\mathrm{T} \left[ U_\mathrm{ph} \left\{ \gamma^2 \left( 1+ \frac{1}{3} \beta^2 \right)-1 \right\} \right]
= c \sigma_\mathrm{T} \left[ U_\mathrm{ph} \frac{1+ \frac{1}{3} \beta^2 - 1 + \beta^2}{1-\beta^2} \right] \notag \\
&= \frac{4}{3} c \sigma_\mathrm{T} [U_\mathrm{ph} \gamma^2 \beta^2] \tag{1}
\end{align}
$$

となります。

{% include adsense.html %}

## Synchrotron放射強度との関係

磁場強度$$B$$の一様な磁場中を電子が運動することで放射される[Synchrotron放射強度の平均値](/astroelec/uniform_mag_rel)は

$$
P_\mathrm{sync} 
= \frac{4}{3} c \sigma_\mathrm{T} [U_\mathrm{ph} \gamma^2 \beta^2] \tag{2}
$$

で与えられるのでした。ここで$$U_B$$は一様磁場の磁場エネルギー密度です。これより(1), (2)の比は

$$
\frac{P_\mathrm{sync}}{P_\mathrm{IC}} 
= \left[ \frac{U_B}{U_\mathrm{ph}} \right] \tag{3}
$$

となります。同じLorentz因子を持つ電子が起源の逆Compton放射強度とSynchrotron放射強度の間には常にこの関係が成り立ちます。この式は$$P_\mathrm{sync}, P_\mathrm{IC}$$が観測からわかれば、あとは入射電磁波を例えばCMB光子(既知)とするだけで、その領域の磁場のエネルギー(磁場強度)がわかることを意味する式です。

## 熱運動する非相対論的電子からの逆Compton放射強度

例えば、宇宙で大きな構造を持つ部類に当たる銀河団では、その銀河団プラズマの温度は$$T \sim 10^7-10^8$$K程度です。このときの熱エネルギーは$$k_B T \sim 1-10 \mathrm{keV} \ll m_e c^2$$より、銀河団プラズマの電子は非相対論的な熱運動をしていると考えて良いでしょう。非相対論的な熱運動をする自由粒子系では、速度分布がMaxwell-Boltzmann分布で与えられます。すなわち$$\mathbf{v} - \mathbf{v} + d\mathbf{v}$$に粒子を見出す確率は

$$
\begin{align}
P(v) dv_x dv_y dv_z 
&= \left( \frac{m_e}{2\pi k_B T} \right)^{3/2} \exp \left( - \frac{m_e v^2}{2 k_B T}\right) dv_x dv_y dv_z \notag \\
&= \left( \frac{m_e}{2\pi k_B T} \right)^{3/2} \exp \left( - \frac{m_e v^2}{2 k_B T}\right) v^2 \sin \theta \ dv d\theta d\phi \notag 
\end{align}
$$

です。これより速度の大きさの平均値は

$$
\langle v^2 \rangle 
= \int_0^\infty dv \int_0^\pi d\theta \int_0^{2\pi} d\phi  \exp \left( - \frac{m_e v^2}{2 k_B T}\right) v^4 \sin \theta
= 4\pi \left( \frac{m_e}{2\pi k_B T} \right)^{3/2} \int_0^\infty v^4 \exp \left( - \frac{m_e v^2}{2 k_B T}\right) dv
$$

ガウスの積分公式

$$
\int_0^\infty e^{-\alpha x^2 } dx 
= \frac{1}{2} \sqrt{\frac{\pi}{\alpha}} 
\ \Longrightarrow \ \int_0^\infty x^4 e^{-\alpha x^2 } dx 
= \frac{\partial^2}{\partial \alpha^2} \int_0^\infty e^{-\alpha x^2 } dx 
= \frac{3}{8} \sqrt{\frac{\pi}{\alpha^5}}
$$

を用いて計算を進めると

$$
\begin{align}
\langle \beta^2 \rangle 
&= \frac{4\pi}{c^2} \left( \frac{m_e}{2\pi k_B T} \right)^{3/2} \int_0^\infty v^4 \exp \left( - \frac{m_e v^2}{2 k_B T}\right) dv
= \frac{4\pi}{c^2} \left( \frac{m_e}{2\pi k_B T} \right)^{3/2} \frac{3}{8} \sqrt{\frac{\pi}{\left( \frac{m_e}{2 k_B T}\right)^5}} \notag \\
&= \frac{3}{2c^2} \left( \frac{m_e}{2 k_B T}\right)^{3/2} \left( \frac{2k_B T}{m_e}\right)^{5/2}
= \frac{3k_B T}{m_e c^2} \notag
\end{align}
$$

これは$$\frac{1}{2} m_e v^2 = \frac{3}{2} k_B T$$と同じ結果です。  
このガウス積分の結果と、非相対論的としているので$$\gamma \sim 1$$であることを(1)式に代入します。

$$
P_\mathrm{IC, non rel} 
=  c \sigma_\mathrm{T} \left[ U_\mathrm{ph} \frac{4k_B T}{m_e c^2} \right] \tag{4}
$$

のようになります。

## 光子のエネルギー増加率

簡単のため、散乱前の光子のエネルギーが$$\epsilon = h\nu$$で全て揃っていたとします。このとき$$U_\mathrm{ph} / \epsilon$$は光子の数密度を表します。よって$$\sigma_\mathrm{T} c U_\mathrm{ph} /\epsilon$$は1つの電子によって単位時間あたりに散乱される光子の数になります。これに1回の散乱における光子のエネルギー変化量$$\Delta \epsilon$$をかければ、逆Compton散乱放射強度になることから

$$
\frac{\sigma_\mathrm{T} c U_\mathrm{ph} \Delta \epsilon}{\epsilon} 
= P_\mathrm{IC}
$$

この式において$$P_\mathrm{IC} \rightarrow P_\mathrm{IC, non rel}$$とすると、(4)式より

$$
\langle \frac{\Delta \epsilon}{\epsilon} \rangle 
= \frac{4 k_B T}{m_e c^2} 
\simeq \frac{4 k_B T}{511 \mathrm{keV}} 
\simeq 0.04 \left( \frac{k_B T}{5 \mathrm{keV}} \right) \tag{5}
$$

のように求まります。

## 暗黙の仮定

これまでは入射電磁波を波として扱っていることから、電磁波の波長が電子より十分大きくなければならないことが仮定されています([Compton散乱の適用限界を参照](/astroelec/compton))。光子と電子の相互作用を厳密に解きたければ、量子力学を考える必要があります。  
さらにこの問題では、電子との衝突によって光子のエネルギーが増えることを仮定しています。

{% include adsense.html %}
