---
layout: default
title: 一様磁場中で相対論的な運動をする電子
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/uniform_mag_rel
nav_order: 13
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

# 一様磁場中で相対論的な運動をする電子

## 運動方程式

[電磁場テンソルのページ](/astroelec/emtensor)の(5), (6)式において、一様磁場$$\mathbf{B} = B_0 \mathbf{e}_z, \mathbf{E} = \mathbf{0}, e \rightarrow -e$$とすれば運動方程式が求まります。

$$
\frac{d}{dt} (m_e \gamma c^2) 
= 0 \tag{1}
$$

$$
\frac{d}{dt} (m_e \gamma \mathbf{v}) 
= -\frac{e}{c} \mathbf{v} \times \mathbf{B} \tag{2}
$$

それではこれを解いていきましょう。(1)式より

$$
\frac{d\gamma}{dt} = 0 \ \Longrightarrow \ 
\gamma 
= \mathrm{Const.} \tag{3}
$$

また(2)式に(3)を用いて

$$
\frac{d \mathbf{v}}{dt} 
= -\frac{e}{m_e \gamma c} \mathbf{v} \times \mathbf{B} \tag{4}
$$

簡単のため、電子の速度ベクトルは$$xy$$平面内にあるとします。すなわち$$\mathbf{v} = (v_x, v_y, 0)$$とすると

$$
\frac{d}{dt} \left( \begin{array}{c}
v_x \\
v_y \\
0
\end{array} \right) 
= - \frac{eB_0}{m_e \gamma c}
\left( \begin{array}{c}
v_y \\
-v_x \\
0
\end{array} \right)
$$

ここで、複素数$$Z = v_x + i v_y$$を導入すると

$$
\begin{align}
&\frac{d Z}{dt} 
= \frac{dv_x}{dt} + i \frac{d v_y}{dt} 
= - \frac{eB_0}{m_e \gamma c} (v_y - i v_x) 
= i \frac{eB_0}{m_e \gamma c} (v_x + i v_y) = i \frac{eB_0}{m_e \gamma c} Z \notag \\
&\Longrightarrow \
Z 
= A e^{i \frac{eB_0}{m_e \gamma c} t} 
= A e^{i \omega_\mathrm{se} t} \quad 
(\omega_\mathrm{se} \equiv \frac{\omega_\mathrm{ce}}{\gamma} = \frac{eB_0}{m_e \gamma c}) \tag{5}
\end{align}
$$

$$
\therefore \ \left\{ \begin{array}{c} 
v_x 
= A \cos \omega_{se} t \\
v_y 
= A \sin \omega_{se} t 
\end{array} \right. \ \Longrightarrow \ 
\left\{ \begin{array}{lll} 
x 
= \frac{A}{\omega_{se}} \sin \omega_{se} t + C_1\\
y 
= - \frac{A}{\omega_{se}} \cos \omega_{se}t + C_2 
\end{array} \right. \ \ \ (A, C_1 , C_2 : \mathrm{const.}) \tag{6}
$$

$$C_1 = C_2 = 0$$とすると

$$
x^2 + y^2 
= \left( \frac{A}{\omega_\mathrm{se}}\right)
$$

より、電子は半径$$A/\omega_\mathrm{se}$$の円運動をすることがわかります。また角周波数は$$\omega_\mathrm{se} = \omega_\mathrm{ce}/\gamma$$となります。$$t = 0$$で$$\mathbf{v} = (v_0, 0, 0)$$とすると、$$A = v_0$$より

$$
r_L 
= \frac{v_0}{\omega_\mathrm{se}} 
= \frac{v_0 \gamma}{\omega_\mathrm{ce}} 
= \frac{m_e c \gamma v_0}{e B_0} \tag{7}
$$

です。これはラーモア半径と呼ばれています。

## 全放射強度

さらに、ピッチ角(電子の速度ベクトルと磁場のなす角)が$$\alpha$$の電子からの全放射強度を求めましょう。[リエナーの式](/astroelec/lienard_larmor)より

$$
P_e 
= \frac{2e^2}{3c^3} [ \gamma^6 (\dot{v}^2 - |\dot{\bf v} \times \boldsymbol{\beta}|^2)]
$$

そして(4)式から

$$
\dot{\mathbf{v}} 
= - \frac{e}{m_e c\gamma} \mathbf{v} \times \mathbf{B} 
$$

でした。そしてピッチ角の定義から、この式をさらに変形することができます。

$$
\dot{v} 
= |\dot{\mathbf{v}}| 
= \frac{e}{m_e c \gamma} |\mathbf{v} \times \mathbf{B}| 
= \frac{e B_0}{m_e c \gamma} v \sin \alpha 
= \omega_\mathrm{se} v \sin \alpha
$$

一様磁場中を運動する荷電粒子においては加速度と速度は直交する、すなわち$$\dot{\mathbf{v}} \perp \boldsymbol{\beta}$$より

$$
|\dot{\bf v} \times \boldsymbol{\beta}|^2 
= \dot{v}^2 \beta^2
$$

です。以上より、この電子からの全放射強度は

$$
P_e 
= \frac{2e^2}{3c^3} [\gamma^6 \{ \omega_\mathrm{se}^2 v^2 \sin^2 \alpha - \beta^2 \omega_\mathrm{se}^2 v^2 \sin^2 \alpha \} ] 
= \frac{2e^2}{3c^3} [\gamma^6 \omega_\mathrm{se}^2 v^2 \sin^2 \alpha (1- \beta^2)] 
= \frac{2e^2}{3c^3} [\gamma^4 \omega_\mathrm{se}^2 v^2 \sin^2 \alpha]
$$

ここで古典電子半径$$r_0 = \frac{e^2}{m_e c^2} (\sim 3 \mathrm{fm})$$を用いると

$$
P_e 
= \frac{2e^2}{3c^3} [\gamma^4 (\frac{eB_0}{m_e c \gamma})^2 v^2 \sin^2 \alpha] = \frac{2}{3c} r_0^2 [\gamma^2 B_0^2 v^2 \sin^2 \alpha] 
= \frac{2c}{3} r_0^2 [\gamma^2 B_0^2 \beta^2 \sin^2 \alpha] \tag{8}
$$

となります。

## 等方的な電子分布からのシンクロトロン全放射強度

先ほどはピッチ角$$\alpha$$の電子1個からの全放射強度を計算しましたが、これを様々な$$\alpha$$を持つ電子集団について考え、その平均値を求めてみましょう。簡単のため、以下の計算では電子の速度分布が等方的であるとします。  
進行方向について平均を取る操作を行いましょう。

$$
P_\mathrm{sync} 
= \frac{1}{4\pi} \int_0^{2\pi} d \varphi \int_0^\pi d\alpha \sin \alpha P_e 
= \frac{c}{3} r_0^2 \int_0^\pi d\alpha [\gamma^2 B_0^2 \beta^2 \sin^3 \alpha] 
= \frac{4}{9} c r_0^2 [\gamma^2 B_0^2 \beta^2]
$$

です。途中

$$
\begin{align}
\sin^3 \alpha 
&= \sin^2 \alpha \sin \alpha 
= \frac{1}{2} (1 - \cos 2\alpha) \sin \alpha 
= \frac{1}{2} \sin \alpha - \frac{1}{2} \cos 2\alpha \sin \alpha \notag \\
&= \frac{1}{2} \sin \alpha - \frac{1}{4}(\sin 3\alpha- \sin\alpha) 
= \frac{3}{4} \sin \alpha - \frac{1}{4} \sin 3\alpha \tag{9}
\end{align}
$$

を用いました。さらにトムソン散乱断面積$$\sigma_T = \frac{8\pi}{3} r_0^2$$と磁場のエネルギー密度$$U_B = \frac{1}{8\pi} B^2$$を用いて整理します。

$$
P_\mathrm{sync} 
= \frac{4}{9} c \frac{3}{8\pi} \sigma_T[\gamma^2 8\pi U_B \beta^2] 
= \frac{4}{3} c \sigma_T[\gamma^2 U_B \beta^2] \tag{10}
$$

これが1個の電子が磁場の周りを運動するときに出す放射、シンクロトロン放射の全放射強度(の電子の速度ベクトル方向に対して平均をとったもの)です。

{% include adsense.html %}
