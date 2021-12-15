---
layout: default
title: 一様磁場中での荷電粒子の運動
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/uniform_mag
nav_order: 12
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

# 一様磁場中での荷電粒子の運動

$$z$$軸方向を向いた一様磁場$$\mathbf{B} = (0, 0, B_0)$$の中で、質量$$m$$、電荷$$q$$の荷電粒子が行う運動を考えましょう。簡単のため、荷電粒子の初速度は$$\mathbf{v} = (0, v_0, 0)$$とします。

## 運動方程式とその解

運動方程式

$$
m \frac{d \mathbf{v}}{dt} 
= q \frac{\mathbf{v}}{c} \times \mathbf{B}
$$

を成分ごとに書くと以下のようになります。

$$
m \frac{d}{dt} \left( \begin{array}{c}
v_x \\
v_y \\
v_z
\end{array} \right) = \frac{q}{c} \left( \begin{array}{c}
v_x \\
v_y \\
v_z
\end{array} \right) \times \left( \begin{array}{c}
0 \\
0 \\
B_0
\end{array} \right) \ \Longrightarrow \ \frac{d}{dt} \left( \begin{array}{c}
v_x \\
v_y \\
v_z
\end{array} \right) = \frac{q}{mc} \left( \begin{array}{c}
v_y B_0 \\
- v_x B_0\\
0
\end{array} \right) 
$$

これをスマートに解くために、$$Z = v_x + i v_y$$という複素数を導入して解きます。$$x, y$$成分より

$$
\frac{d Z}{dt} 
= \frac{d v_x}{dt} + i \frac{d v_y}{dt} 
= \frac{qB_0}{mc} (v_y -i v_x) 
= - i \omega_c Z \ \Longrightarrow \ 
Z
 = C_1 e^{-i \omega_c t} 
$$

$$C_1$$は定数、そして$$\omega_c \equiv \frac{q B_0}{m c}$$はサイクロトロン振動数です。初期条件より

$$
0+ i v_0 
= Z(t=0) 
= C_1  \ \Longrightarrow \ 
C_1 = 
i v_0
$$

$$
\therefore \ Z 
= v_x + i v_y 
= v_0 \sin \omega_c t + i v_0 \cos \omega_c t \ \Longrightarrow \ 
\left\{ \begin{array}{ll}
v_x 
= v_0 \sin \omega_c t \\
v_y 
= v_0 \cos \omega_c t 
\end{array} \right.
\ \Longrightarrow \ 
\left\{ \begin{array}{ll}
x 
= -\frac{v_0}{\omega_c} \cos \omega_c t + C_2 \\
y 
= \frac{v_0}{\omega_c} \sin \omega_c t  + C_3
\end{array} \right. \tag{1}
$$

$$C_2, C_3$$はそれぞれ積分定数です。  
$$z$$方向の運動は運動方程式より力が働いていないので、等速直線運動をします。さらに初期の$$z$$方向の速度がないので、この粒子は$$z$$方向には動かず、$$xy$$平面内を半径$$a_L = v_0/\omega_c$$の円運動をします。これを Larmor radius (ラーモア半径)と呼びます。

## 反磁性

荷電粒子の円運動によって生じる電流は一様磁場を増やす働きをするか、減らす働きをするかを考察しましょう。以下のように電荷の正負で場合分けします。

### 正電荷の場合

$$q > 0$$のとき(1)式より、この電荷は時計回りに円運動します。この電荷の運動により生じる円電流も時計回りです。この電流により新たに生じる磁場はBiot-Savartの法則より$$z$$軸負の向きとわかるため、確かに電荷は磁場を打ち消す方向に運動します。

### 負電荷の場合

$$q < 0$$のとき(1)式より、この電荷は反時計回りに円運動します。この電荷の運動により生じる円電流は、電荷が負であることから時計回りです。この電流により新たに生じる磁場も先ほどと同様に$$z$$軸負の向きとなるため、こちらでも同様に電荷は磁場を打ち消す方向に運動することがわかります。

上の2つを合わせると、荷電粒子は外部磁場を打ち消す反磁性電流を出現させる方向に運動することがわかります。もし外部磁場を助長する電流を出現させる方向に荷電粒子が運動を行うと、その外部磁場に新たに発生した磁場が加わったことによる全磁場によってさらに磁場を助長する円電流を出現させることになります。これでは有限の外部磁場から無限に磁場のエネルギーを発生させることができるようになり、不自然です。

## 例: 電子の場合

以下では電子の場合を計算しましょう。サイクロトロン振動数は

$$
\begin{align}
\omega_{ce} 
&= \frac{e B_0}{m_e c} 
\simeq \underbrace{\left( \frac{e^2}{\hbar c} \right)^{1/2}}_{=\left(\frac{1}{137}\right)^{1/2}} \overbrace{(\hbar c)^{1/2}}^{(197 \mathrm{MeV \cdot fm})^{1/2}} \frac{c}{\underbrace{m_e c^2}_{0.511 \mathrm{MeV}}} B_0 
\simeq \left(\frac{200}{140}\right)^{1/2} \frac{(1 \mathrm{fm})^{1/2} \times 3 \times 10^{10} \mathrm{cm \ s^{-1}}}{ (0.5 \times 10^6 \times 1.6 \times 10^{-19} \times 10^7 \mathrm{erg})^{1/2}} B_0 \notag \\
&\simeq 1.9 \times 10^7 B_0 \ [\mathrm{s}^{-1}] \notag
\end{align}
$$

となります。典型的な星間空間磁場の大きさ$$B_0 = 1 \mathrm{\mu G}$$を代入すると$$\omega_{ce} \sim 19 [\mathrm{s}^{-1}]$$です。途中の計算では微細構造定数$$\frac{e^2}{\hbar c} \sim \frac{1}{137}, \hbar c \sim 197 \mathrm{MeV \cdot fm}$$、そして電子の静止質量エネルギー$$m_e c^2 \sim 511 \mathrm{keV}$$を用いました。

{% include adsense.html %}