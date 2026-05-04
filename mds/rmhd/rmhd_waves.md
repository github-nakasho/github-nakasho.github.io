---
layout: default
title: 相対論的磁気流体波動
parent: 相対論的磁気流体力学
math: mathjax3
permalink: /rmhd/rmhd_waves
nav_order: 11
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

# 相対論的な磁気流体波動

## 方程式の線形化

一様磁場中の磁気流体線形波動を考えましょう。
非摂動状態はエネルギー密度$$\varepsilon_0$$、圧力$$P_0$$で静止しており、磁場は$$z$$軸方向に$$B_0$$であるとします。
ここに平面波の摂動$$\exp (-i\omega t + i \mathbf{k} \cdot \mathbf{x})$$を加えます。
波数ベクトル$$\mathbf{k}$$は$$xz$$平面内にあるとし、$$z$$軸と角度$$\theta$$を成しているとします。
すなわち

$$
\mathbf{k} 
= (k_x, 0, k_z) 
= k (\sin \theta, 0, \cos \theta) \tag{1}
$$

とします。
1次の摂動までを考える場合

$$
\gamma 
= \frac{1}{\sqrt{1-\left(\frac{v}{c}\right)^2}}
\approx 1 + \frac{1}{2} \left(\frac{v}{c}\right)^2 
\approx 1 \tag{2}
$$

のように近似できるため、4元速度の摂動は

$$
u^\mu 
= (c, v_{1x}, v_{1y}, v_{1z}) \tag{3}
$$

のようになります。
ここから、電場の摂動は

$$
\mathbf{E} 
= - \frac{\mathbf{v}}{c} \times \mathbf{B} 
= \left( - \frac{v_{1y}}{c} B_0, \frac{v_{1x}}{c} B_0, 0\right) \tag{4}
$$

のようになり、$$xy$$成分のみを持つことになります。
基礎方程式である誘導方程式と、エネルギー運動量保存則の式を線形化しましょう。
まずは誘導方程式の線形化です。

$$
\frac{\partial B_x}{\partial t} 
= \frac{\partial}{\partial y} (\mathbf{v} \times \mathbf{B})_z - \frac{\partial}{\partial z} (\mathbf{v} \times \mathbf{B})_y 
= - \frac{\partial}{\partial z} \left( v_{1x} B_0\right) 
= - i k_z B_0 v_{1x} 
\ \Longrightarrow \ 
\omega B_{1x} 
= k_z B_0 v_{1x} \tag{5}
$$

$$
\frac{\partial B_y}{\partial t} 
= \frac{\partial}{\partial z} (\mathbf{v} \times \mathbf{B})_x - \frac{\partial}{\partial x} (\mathbf{v} \times \mathbf{B})_z 
= \frac{\partial}{\partial z} (-v_{1y} B_0) 
= - i k_z B_0 v_{1y} \ \Longrightarrow \ 
\omega B_{1y} 
= k_z B_0 v_{1y} \tag{6}
$$

$$
\begin{align}
&\frac{\partial B_z}{\partial t} 
= \frac{\partial}{\partial x} (\mathbf{v} \times \mathbf{B})_y - \frac{\partial}{\partial y} (\mathbf{v} \times \mathbf{B})_x 
= \frac{\partial}{\partial x} (v_{1x} B_0) - \frac{\partial}{\partial y} (-v_{1y} B_0) 
= i k_x B_0 v_{1x} \notag \\
&\Longrightarrow \ 
\omega B_{1z} 
= -k_x B_0 v_{1x} \tag{7}
\end{align}
$$

このように見ると、磁場の自由度は$$B_{1x}, B_{1y}, B_{1z}$$の3つと思われますが、マクスウェル方程式の1つから

$$
\nabla \cdot \mathbf{B} 
= i k_x B_{1x} + i k_z B_{1z} 
=0 \tag{8}
$$

を常に満たすため、磁場の自由度は2つであることに注意しましょう。
エネルギー運動量保存則の線形化のために、まずは磁場の2次の項を計算しましょう。

$$
B^2 
= (\mathbf{B}_0 + \mathbf{B}_1)^2 
= B_0^2 + 2 \mathbf{B}_0 \cdot \mathbf{B}_1 
= B_0^2 + 2 B_0 B_{1z} \tag{9}
$$

$$
\nabla \cdot (\mathbf{B} \mathbf{B})
= \partial_j (\mathbf{B} B_j) 
= B_j (\partial_j \mathbf{B}) + \underbrace{\mathbf{B} (\partial_j B_j)}_{=0}  
= (B_0 \partial_z + B_{1j} \partial_j) (\mathbf{B}_0 + \mathbf{B}_1) 
= i k_z B_0 \mathbf{B}_1 \tag{10}
$$

そしてポインティングベクトルは、(4)式の電場がすでに1次の摂動量であることから

$$
\frac{c}{4\pi} \mathbf{E} \times \mathbf{B} 
= \frac{B_0^2}{4\pi} \left( \begin{array}{c} 
-v_{1y} \\
v_{1x} \\
0
\end{array}\right) \times \left( \begin{array}{c} 
0 \\
0 \\
1
\end{array}\right) 
= \frac{B_0^2}{4\pi} \left( \begin{array}{c} 
v_{1x} \\
v_{1y} \\
0
\end{array}\right) \tag{11}
$$

となります。
以上より、エネルギー保存の式を線形化したものは、$$\gamma \approx 1$$と$$E^2$$は2次であることから無視して

$$
\begin{align}
&\frac{\partial}{\partial t} \left( \varepsilon + \frac{1}{8\pi} B^2\right) + \nabla \cdot \left\{ (\varepsilon + P) \mathbf{v} + \frac{c}{4\pi} \mathbf{E} \times \mathbf{B}\right\} \notag \\
&= \frac{\partial}{\partial t} \left( \varepsilon_0 + \varepsilon_1 + \frac{1}{8\pi} B_0^2 + \frac{1}{4\pi} B_0 B_{1z} \right) + \nabla \cdot \left\{ (\varepsilon_0 + \varepsilon_1 + P_0 + P_1) \mathbf{v}_1 + \frac{1}{4\pi} B_0^2 (v_{1x} \mathbf{e}_x + v_{1y} \mathbf{e}_y)\right\} \notag \\
&= \frac{\partial}{\partial t} \left( \varepsilon_1 + \frac{1}{4\pi} B_0 B_{1z} \right) + \nabla \cdot \left\{ (\varepsilon_0 + P_0) \mathbf{v}_1 + \frac{1}{4\pi} B_0^2 (v_{1x} \mathbf{e}_x + v_{1y} \mathbf{e}_y)\right\} \notag \\
&= -i\omega \left( \varepsilon_1 + \frac{1}{4\pi} B_0 B_{1z} \right) + ik_x (\varepsilon_0 + P_0) v_{1x} + ik_z(\varepsilon_0 + P_0) v_{1z} + \frac{B_0^2}{4\pi} ik_x v_{1x} 
= 0 \tag{12}
\end{align}
$$

続いて、運動量保存の式を線形化しましょう。

$$
\begin{align}
&\frac{\partial}{\partial t} \left\{ (\varepsilon + P) \mathbf{v} + \frac{c}{4\pi} \mathbf{E} \times \mathbf{B}\right\} + c^2 \nabla \cdot \left\{ -\frac{1}{4\pi} \mathbf{B} \mathbf{B} + \left( P + \frac{1}{8\pi} B^2\right) \mathbf{I} \right\} \notag \\
&= \frac{\partial}{\partial t} \left\{ (\varepsilon_0 + P_0) \mathbf{v}_1 + \frac{B_0^2}{4\pi} (v_{1x} \mathbf{e}_x + v_{1y} \mathbf{e}_y)\right\} - \frac{c^2}{4\pi} \nabla \cdot (\mathbf{B} \mathbf{B}) + c^2 \nabla (P_0 + P_1) + c^2 \nabla \left( \frac{B_0^2}{8\pi} + \frac{B_0}{4\pi} B_{1z}\right) \notag \\
&= \frac{\partial}{\partial t} \left\{ (\varepsilon_0 + P_0) \mathbf{v}_1 + \frac{B_0^2}{4\pi} (v_{1x} \mathbf{e}_x + v_{1y} \mathbf{e}_y)\right\} - \frac{c^2}{4\pi} ik_z B_0 \mathbf{B}_1 + c^2 \nabla P_1 + c^2 \frac{B_0}{4\pi} \nabla B_{1z} 
= \mathbf{0} \tag{13}
\end{align} 
$$

各成分を見ていきます。
最初は$$x$$成分です。

$$
-i\omega \left\{ (\varepsilon_0 + P_0) v_{1x} + \frac{B_0^2}{4\pi} v_{1x}\right\} - \frac{c^2}{4\pi} ik_z B_0 B_{1x} + c^2 ik_x P_1 + c^2\frac{B_0}{4\pi} ik_x B_{1z} 
= 0 \tag{14}
$$

続いて$$y$$成分です。

$$
-i \omega \left\{ (\varepsilon_0 + P_0) v_{1y} + \frac{B_0^2}{4\pi} v_{1y}\right\} - \frac{c^2}{4\pi} ik_z B_0 B_{1y} 
= 0 \tag{15}
$$

最後に$$z$$成分は

$$
-i\omega (\varepsilon_0 + P_0) v_{1z} - \frac{c^2}{4\pi} ik_z B_0 B_{1z} + c^2 ik_z P_1 + c^2 \frac{B_0}{4\pi} ik_z B_{1z} 
= -i\omega (\varepsilon_0 + P_0) v_{1z} + c^2 ik_z P_1 
= 0 \tag{16}
$$

となります。
摂動が断熱的であるとして、音速を用いて圧力の摂動とエネルギー密度の摂動の関係を

$$
c_s^2 
= c^2 \frac{\partial P}{\partial \varepsilon} \ \Longrightarrow \ 
c_s^2 
= c^2 \frac{P_1}{\varepsilon_1} \tag{17}
$$

のように表します。
磁場の自由度が2つ、速度の自由度が3つ、圧力(エネルギー)の自由度が1つなので、自由度は合わせて6つです。
よって与えられた波数$$\mathbf{k}$$に対し、6つの$$\omega$$が得られるはずです。
しかし、波動の正負の向きの伝播は物理的に見ると同等であるため、分散関係は$$\omega^2$$の3次式で書けると予想することができます。

{% include adsense.html %}

## アルヴェーン波

一般的な場合に入る前に、背景磁場に平行に伝播する場合と、垂直に伝播する場合を調べてみましょう。
平行伝播の場合、$$k_x = 0$$と考えることができます。
すると、線形化された方程式はそれぞれ

$$
\omega B_{1x} 
= k_z B_0 v_{1x} \tag{18}
$$

$$
\omega B_{1y} 
= k_z B_0 v_{1y} \tag{19}
$$

$$
B_{1z} 
= 0 \tag{20}
$$

$$
\omega \left( \varepsilon_1+ \frac{1}{4\pi} B_0 B_{1z} \right) - k_z (\varepsilon_0 + P_0) v_{1z} 
= 0 \tag{21}
$$

$$
\omega \left( \varepsilon_0 + P_0 + \frac{B_0^2}{4\pi} \right) v_{1x} + \frac{c^2}{4\pi} k_z B_0 B_{1x} 
= 0 \tag{22}
$$

$$
\omega \left( \varepsilon_0 + P_0 + \frac{B_0^2}{4\pi} \right) v_{1y} + \frac{c^2}{4\pi} k_z B_0 B_{1y} 
= 0 \tag{23}
$$

$$
\omega (\varepsilon_0 + P_0) v_{1z} - c^2 k_z P_1 
= 0 \tag{24}
$$

のようになります。
誘導方程式の$$x$$成分(18)式と、運動量保存則の$$x$$成分(22)式より

$$
\begin{align}
&\omega \left( \varepsilon_0 + P_0 + \frac{B_0^2}{4\pi} \right) v_{1x} + \frac{c^2}{4\pi} k_z B_0 \frac{k_z}{\omega} B_0 v_{1x} 
= 0 \notag \\
&\Longrightarrow \ 
\omega^2   
= -\frac{c^2}{4\pi} \frac{1}{\varepsilon_0 + P_0 + \frac{B_0^2}{4\pi}} B_0^2 k_z^2 
= - \frac{c^2 B_0^2}{4\pi (\varepsilon_0 + P_0) + B_0^2} k_z^2 \tag{25} 
\end{align}
$$

のようになります。

```
お、おかしい...(25)式の符号がマイナスになっている。正しくは右辺の符号がプラスです。
```

ここから

$$
v_A 
= \frac{cB_0}{\sqrt{4\pi (\varepsilon_0 + P_0) + B_0^2}} \tag{26}
$$

のように定義でき、これをアルヴェーン速度と呼びます。
このアルヴェーン速度で伝播する波動を、アルヴェーン波と呼びます。
$$x$$成分に関する方程式のみから求まったこの波動には、$$\varepsilon_1$$が出てくる余地がありません。
すなわちこのモードは、$$\varepsilon_1 = 0$$の横波(非圧縮性の波動)と考えることができます。
このアルヴェーン速度は、磁場の大きさ$$B_0$$が大きな極限では

$$
v_A 
\approx \frac{cB_0}{B_0} 
= c \tag{27}
$$

のように、光速度に近づきます。
ここからわかるように、磁場のエネルギーが静止質量エネルギーより大きくなるような場合には、相対論的な効果を含めた磁気流体の議論が必要です。
また非相対論的極限、すなわち$$\varepsilon_0 \approx c^2 \rho_\mathrm{nr}, \varepsilon \gg P_0, B_0^2$$ならば

$$
v_A 
\approx \frac{cB_0}{\sqrt{4\pi c^2 \rho_\mathrm{nr}}} 
= \frac{B_0}{\sqrt{4\pi \rho_\mathrm{nr}}} \tag{28}
$$

のように、[非相対論的なアルヴェーン波](/mhd/alfven_wave)に一致します。  
ちなみに、(20), (21)式より

$$
\omega \varepsilon_1 
= k_z (\varepsilon_0 + P_0) v_{1z} \tag{29}
$$

さらに(17)式より

$$
P_1 
= \frac{c_s^2}{c^2 \omega} k_z (\varepsilon_0 + P_0) v_{1z} \tag{30}
$$

となります。
これを運動量保存則の$$z$$成分(24)式に用いれば

$$
\omega (\varepsilon_0 + P_0) v_{1z} 
= c^2 k_z \frac{c_s^2}{c^2 \omega} k_z (\varepsilon_0 + P_0) v_{1z} \ \Longrightarrow \ 
\omega^2 
= c_s^2 k_z^2 \tag{31}
$$

のように、[音波の分散関係式](/rmhd/speed_of_sound)を求めることができます。
これは背景磁場$$B_0$$が存在しない場合と同じであり、背景磁場の方向の運動は、磁場の影響を受けないことを意味しています。

## 磁気音波

続いて、背景磁場に垂直に伝播する場合を考えましょう。
このとき、$$k_z = 0$$となります。
すると、線形化された方程式はそれぞれ

$$
\omega B_{1x} 
= 0 \tag{32}
$$

$$
\omega B_{1y} 
= 0 \tag{33}
$$

$$
\omega B_{1z} 
= -k_x B_0 v_{1x} \tag{34}
$$

$$
\omega \left( \varepsilon_1 + \frac{1}{4\pi} B_0 B_{1z} \right) - k_x (\varepsilon_0 + P_0) v_{1x} - \frac{B_0^2}{4\pi} k_x v_{1x} 
= 0 \tag{35}
$$

$$
\omega \left(\varepsilon_0 + P_0 + \frac{B_0^2}{4\pi} \right) v_{1x} - c^2 k_x P_1 - c^2 \frac{B_0}{4\pi} k_x B_{1z} 
= 0 \tag{36}
$$

$$
\omega \left( \varepsilon_0 + P_0 + \frac{B_0^2}{4\pi} \right) v_{1y} 
= 0 \tag{37}
$$

$$
\omega (\varepsilon_0 + P_0) v_{1z} 
= 0 \tag{38}
$$

のようになります。
(37), (38)式からわかるように、$$yz$$平面内の速度の摂動は独立であり、$$\omega = 0$$の非伝播性の渦モードとなります。
また(33)式から、$$y$$軸方向の磁場の摂動も$$\omega=0$$の非伝播性の磁場のシアーモードとなります。  
(34), (35)式より

$$
\begin{align}
&\omega \left( \varepsilon_1 - \frac{B_0}{4\pi} \frac{k_x}{\omega} B_0 v_{1x} \right) - \left( \varepsilon_0 + P_0 + \frac{B_0^2}{4\pi} \right) k_x v_{1x} 
= 0 \notag \\
& \Longrightarrow \ 
\varepsilon_1 
= \left( \varepsilon_0 + P_0 + \frac{B_0^2}{4\pi} \right) \frac{k_x}{\omega} v_{1x} + \frac{B_0^2}{4\pi} \frac{k_x}{\omega} v_{1x} \tag{39}
\end{align}
$$

この式を(17)式に代入すれば

$$
P_1 
= \frac{c_s^2}{c^2} \varepsilon_1 
= \frac{c_s^2}{c^2} \left( \varepsilon_0 + P_0 + \frac{B_0^2}{4\pi} + \frac{B_0^2}{4\pi} \right) \frac{k_x}{\omega} v_{1x} \tag{40}
$$

を得ます。
これを(36)式に代入すると

$$
\begin{align}
&\left( \varepsilon_0 + P_0 + \frac{B_0^2}{4\pi} \right) v_{1x} - c^2 \frac{k_x}{\omega} \frac{c_s^2}{c^2} \left( \varepsilon_0 + P_0 + \frac{B_0^2}{4\pi} + \frac{B_0^2}{4\pi} \right) \frac{k_x}{\omega} v_{1x} - c^2 \frac{B_0}{4\pi} \frac{k_x}{\omega} \left( - \frac{k_x}{\omega} B_0 v_{1x}\right) 
= 0 \notag \\
& \Longrightarrow \ 
\left( \varepsilon_0 + P_0 + \frac{B_0^2}{4\pi} \right) \omega^2   
=  c_s^2 \left( \varepsilon_0 + P_0 + \frac{B_0^2}{4\pi} + \frac{B_0^2}{4\pi} \right) k_x^2 - c^2 \frac{B_0^2}{4\pi} k_x^2 \notag \\
& \Longrightarrow \ 
\omega^2 
= c_s^2 \left( 1 + \frac{B_0^2}{4\pi(\varepsilon_0 + P_0) + B_0^2} \right) k_x^2 - c^2 \frac{B_0^2}{4\pi (\varepsilon_0 + P_0) + B_0^2} k_x^2 
\underbrace{=}_{(26)} \left( - v_A^2 + c_s^2 + \frac{c_s^2 v_A^2}{c^2} \right) k_x^2 \tag{41}
\end{align}
$$

となります。

```
本当は$$v_A^2$$の符号がプラス、$$c_s^2 v_A^2 / c^2$$の符号がマイナスとなります。どこから符号が間違っているのやら...
```

以上より

$$
\frac{\omega^2}{k_x^2} 
= v_A^2 + c_s^2 - \frac{c_s^2 v_A^2}{c^2} \tag{42}
$$

のように、磁気音波の位相速度が求まりました。
(42)式から、復元力としてガス圧と磁気圧が寄与している様子がわかります。
磁気音波の位相速度は音速とアルヴェーン速度よりも大きく、そして光速よりも小さいとわかります。  
一般の斜め伝播の場合には、少し複雑です。
背景磁場と波の進行方向がなす面に垂直な$$y$$成分は、他と独立となり

$$
\omega^2 
= v_A^2 k_z^2 
= v_A^2 k^2 \cos^2 \theta \tag{43}
$$

を満たすアルヴェーン波となります。
群速度は大きさが$$v_A$$で、背景磁場の方向に進むことに注意しましょう。
背景磁場と進行方向がなす平面内の振動は結合しており、もはや純粋な縦波や横波ではなくなります。
詳細は省略しますが、磁場を消去し、$$\varepsilon_1, v_x, v_z$$の式から分散関係を求めると

$$
\omega^4 - \left( c_s^2 + v_A^2 - \frac{c_s^2 v_A^2 \sin^2 \theta}{c^2}\right) k^2 \omega^2 + c_s^2 v_A^2k^4 \cos^2 \theta 
= 0 \tag{44}
$$

のようになります。
この解は

$$
\omega^2 
= \frac{k^2}{2} \left\{ c_s^2 + v_A^2 - \frac{c_s^2 v_A^2 \sin^2 \theta}{c^2} \pm \sqrt{\left( c_s^2 + v_A^2 - \frac{c_s^2 v_A^2 \sin^2 \theta}{c^2}\right)^2 - 4c_s^2 v_A^2 k^4 \cos^2 \theta}\right\} \tag{45}
$$

となります。
プラス符号のモードを速い磁気音波 (速進波)、マイナス符号のモードを遅い磁気音波 (遅進波)と呼びます。
縦波に近い場合には、速い磁気音波は、ガス圧の摂動と磁場の摂動の位相が揃っています。
しかし、遅い磁気音波に対しては、その位相が逆転しています。
波の進行方向の角度に対する変化の様子は、音速とアルヴェーン速度の大小関係により異なります。
音速がアルヴェーン速度より大きい場合には、平行伝播の音波が速い磁気音波のモードとなり、角度の増加とともに位相速度が増大します。
そして垂直伝播では、磁気音波に一致します。
このとき、平行伝播で$$x$$軸方向に振動するアルヴェーン波が、遅い磁気音波のモードになります。
斜め方向の伝播になると、縦波成分も混ざってくるとともに、位相速度が減少していきます。
そして垂直伝播では、非伝播性の圧力とすがのゆらぎモードと、$$z$$方向の速度の渦モードになります。
一方、アルヴェーン速度が音速よりも大きい場合、平行伝播で$$x$$軸方向に振動するアルヴェーン波が速い磁気音波のモードとなります。
これが斜め伝播になると、縦波成分が混在し、位相速度が増大していきます。
そして垂直伝播では、磁気音波に一致します。
平行伝播での音波は、斜め伝播では横波成分を混在させ、位相速度が減少していきます。
そして垂直伝播では、非伝播性の圧力と磁気圧のゆらぎのモードと、$$z$$方向の速度の渦モードとなります。

```
斜め方向の伝播についての式変形も、時間と体力があるときに追加する予定です。気長にお待ちください...
```

## 参考文献

[1] [高原文郎, "特殊相対論"](https://amzn.to/4s9Z0KJ)  
[2] [小嶌康史, 小出眞路, 高橋労太, "ブラックホール宇宙物理の基礎"](https://amzn.to/4sjGgI0)  

{% include adsense.html %} 
