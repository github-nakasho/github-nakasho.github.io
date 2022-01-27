---
layout: default
title: 音波
parent: 宇宙磁気流体力学
math: mathjax3
permalink: /mhd/sound_wave
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

# 様々な波動

ここでは基礎方程式を線形化するところから出発し、そこから見えてくる波動を考察していきます。

## 基礎方程式

まずは用いる基礎方程式を列挙します。[連続の式](/mhd/continuity)

$$
\frac{\partial \rho}{\partial t} + \nabla \cdot (\rho \mathbf{v}) 
= 0 \tag{1}
$$

次は運動量保存則ではなく、ここでは流体要素の運動方程式を考えます。

$$
\rho \left\{ \frac{\partial \mathbf{v}}{\partial t} + (\mathbf{v} \cdot \nabla) \mathbf{v} \right\} 
= - \nabla P + \frac{1}{4\pi} (\nabla \times \mathbf{B}) \times \mathbf{B} - \rho g \mathbf{e}_z - 2\rho \boldsymbol{\Omega} \times \mathbf{v} \tag{2}
$$

運動方程式において、$$z$$方向に一様な重力と角速度$$\boldsymbol{\Omega}$$での考慮しました。Coriolis力があるのに遠心力の項がないのは、重力の項にそれを組み込んでいるためです。
その次はエネルギー方程式です。ここでは断熱な流れを考えます。よって

$$
\begin{align}
&\frac{D}{Dt} \left( \frac{P}{\rho^\gamma} \right) 
= \frac{1}{\rho^\gamma} \frac{DP}{Dt} - \frac{\gamma P}{\rho^{\gamma+1}} \frac{D\rho}{Dt} 
= 0 \notag \\
&\Longrightarrow \ 
\frac{DP}{Dt} - \frac{\gamma P}{\rho} \frac{D\rho}{Dt} 
= \left\{\frac{\partial P}{\partial t} + (\mathbf{v} \cdot \nabla) P \right\} - \frac{\gamma P}{\rho} \left\{\frac{\partial \rho}{\partial t} + (\mathbf{v} \cdot \nabla) \rho \right\} 
= 0 \tag{3}
\end{align}
$$

となります。断熱の流れを考えているのは、今後考える波動現象の周期を$$\tau$$としたときに、$$\tau \ll P/\mathcal{L}$$が成り立ち、エネルギー損失による流体のエネルギー変化が無視できるような時間スケールを考えるためです。4つ目は理想磁気流体近似を用いた誘導方程式

$$
\frac{\partial \mathbf{B}}{\partial t} 
= \nabla \times (\mathbf{v} \times \mathbf{B}) \tag{4}
$$

磁場についてのガウスの法則(磁気モノポールがないことを意味する式)

$$
\nabla \cdot \mathbf{B} 
= 0 \tag{5}
$$

そしてAmpereの法則

$$
\mathbf{j} 
= \frac{c}{4\pi} \nabla \times \mathbf{B} \tag{6}
$$

最後に理想気体の状態方程式

$$
P 
= \frac{\rho}{\mu m_p} k_B T \ \Longrightarrow \ 
T = \frac{\mu m_p}{k_B} \frac{P}{\rho} \tag{7}
$$

## 線形化

一様磁場$$\mathbf{B}_0$$中に、$$z$$方向の一様重力によって静水圧平衡にある流体の系を考えます。そこに無現小の摂動が加わったとしましょう。平衡状態の物理量には0の添字、摂動量には1の添字をつけて方程式を整理していきましょう。このとき、摂動量の2次以上は無視します。

$$
\rho 
= \rho_0 + \rho_1, \quad
\mathbf{v} 
= \mathbf{v}_1, \quad
P 
= P_0 + P_1, \quad 
\mathbf{B} 
= \mathbf{B}_0 + \mathbf{B}_1 \tag{8}
$$

のようにします。最初、流体は静止している場合を考えているため$$\mathbf{v}_0 = \mathbf{0}$$としています。これらを基礎方程式群に代入しましょう。(1)式より

$$
\frac{\partial \rho_0}{\partial t} + \frac{\partial \rho_1}{\partial t} + \nabla \cdot (\rho_0 \mathbf{v}_1 + \rho_1 \mathbf{v}_1) 
= \frac{\partial \rho_1}{\partial t} + \nabla \cdot (\rho_0 \mathbf{v}_1) 
= 0 \tag{9}
$$

(2)式は

$$
\rho_0 \frac{\partial \mathbf{v}_1}{\partial t} 
= - \nabla P_1 + \frac{1}{4\pi} (\nabla \times \mathbf{B}_1) \times \mathbf{B}_0 - \rho g \mathbf{e}_z - 2\rho_0 \boldsymbol{\Omega} \times \mathbf{v}_1 \tag{10}
$$

密度と圧力の比について

$$
\frac{P}{\rho} 
= \frac{P_0 + P_1}{\rho_0 + \rho_1} 
\simeq \frac{P_0 + P_1}{\rho_0} \left( 1- \frac{\rho_1}{\rho_0}\right) 
= \frac{P_0}{\rho_0} - \frac{P_0 P_1}{\rho_0^2} - \frac{P_1}{\rho_0} \tag{11}
$$

が成り立つので、(3)式は

$$
\frac{\partial P_1}{\partial t} + (\mathbf{v}_1 \cdot \nabla) P_0 - C_s^2 \left\{\frac{\partial \rho_1}{\partial t} + (\mathbf{v}_1 \cdot \nabla )\rho_0 \right\} \tag{12}
= 0 
$$

ここで

$$
C_s^2 
\equiv \frac{\gamma P_0}{\rho_0} 
= \frac{\gamma k_B}{\mu m_p} T_0 \tag{13}
$$

のように定義しました。

後々判明しますが、これが音波の伝搬速度、すなわち音速に一致します。
{: .label .label-blue }

続いて誘導方程式と磁場の発散の式は

$$
\frac{\partial \mathbf{B}_1}{\partial t} 
= \nabla \times (\mathbf{v}_1 \times \mathbf{B}_0) \tag{14} 
$$

$$
\nabla \cdot \mathbf{B}_1 
= 0 \tag{15}
$$

さらに一様重力場中で流れのない静水圧平衡状態を仮定していることから、平衡状態での運動方程式の$$z$$成分は静水圧平衡の式に一致します。簡単のため一様温度を仮定して、密度・圧力は

$$
\rho_0 
= \mathrm{const} \times e^{-z/\Lambda}, \quad P_0 
= \mathrm{const} \times e^{-z/\Lambda} \tag{16}
$$

のように表されるとします。ここで

$$
\Lambda 
= \frac{k_B T_0}{\mu m_p g} 
= \frac{P_0}{g \rho_0} 
= \frac{C_s^2}{\gamma g} \tag{17}
$$

はscale-heightと呼ばれる量です。  
以下では$$\rho_0, P_0$$は(16)式を満たすとして、上述の基礎方程式群を解いていきましょう。(10)式の両辺をEuler時間微分します。

$$
\begin{aligned}
\rho_0 \frac{\partial^2 \mathbf{v}}{\partial t^2} 
&= - \nabla \underbrace{\frac{\partial P_1}{\partial t}}_{(12)} + \frac{1}{4\pi} ( \nabla \times \underbrace{\frac{\partial \mathbf{B}_1}{\partial t}}_{(14)} ) \times \mathbf{B}_0 - \underbrace{ \frac{\partial \rho_1}{\partial t}}_{(9)} g \mathbf{e}_z - 2 \rho_0 \boldsymbol{\Omega} \times \frac{\partial \mathbf{v}_1}{\partial t} \\
&= - \nabla \left[ - (\mathbf{v}_1 \cdot \nabla) P_0 + C_s^2 \left\{ \frac{\partial \rho_1}{\partial t} + (\mathbf{v}_1 \cdot \nabla) \rho_0 \right\} \right] + \frac{1}{4\pi} [\nabla \times \{ \nabla \times (\mathbf{v}_1 \times \mathbf{B}_0) \}] \times \mathbf{B}_0 \\
&\qquad \qquad - g \{ - (\mathbf{v}_1 \cdot \nabla) \rho_0 - \rho_0 (\nabla \cdot \mathbf{v}_1) \} \mathbf{e}_z - 2 \rho_0 \boldsymbol{\Omega} \times \frac{\partial \mathbf{v}_1}{\partial t} 
\end{aligned}
$$

ここで最右辺第1項と第3項を取り出して整理しましょう。このとき、(9), (16), (17)式より

$$
\begin{aligned}
&-\nabla \left\{\frac{v_{1z}}{\Lambda} P_0 - C_s^2 \rho_0 (\nabla \cdot \mathbf{v}_1) \right\} + g \left\{ - v_{1z} \frac{\rho_0}{\Lambda} + \rho_0 (\nabla \cdot \mathbf{v}_1) \right\} \mathbf{e}_z \\
&= - \frac{1}{\Lambda} \left( P_0 \nabla v_{1z} - \frac{v_{1z}}{\Lambda} P_0 \mathbf{e}_z \right) + C_s^2 \left\{ (\nabla \cdot \mathbf{v}_1) \left( - \frac{\rho_0}{\Lambda} \right) \mathbf{e}_z + \rho_0 \nabla (\nabla \cdot \mathbf{v}_1) \right\} - \frac{g}{\Lambda} v_{1z} \rho_0 \mathbf{e}_z + g \rho_0 (\nabla \cdot \mathbf{v}_1) \mathbf{e}_z \\
&= - \rho_0 g \nabla v_{1z} + \frac{\rho_0^2 g^2}{P_0^2} v_{1z} \mathbf{e}_z + C_s^2 \left\{ -\frac{\rho_0^2 g}{P_0} (\nabla \cdot \mathbf{v}_1) \mathbf{e}_z + \rho_0 \nabla (\nabla \cdot \mathbf{v}_1) \right\} - \frac{\rho_0^2 g^2}{P_0} v_{1z} \mathbf{e}_z + g\rho_0 (\nabla \cdot \mathbf{v}_1) \mathbf{e}_z \\
&= - \rho g \nabla v_{1z} - \gamma \rho_0 g (\nabla \cdot \mathbf{v}_1) \mathbf{e}_z + C_s^2 \rho_0 \nabla (\nabla \cdot \mathbf{v}_1) + g \rho_0 (\nabla \cdot \mathbf{v}_1) \mathbf{e}_z
\end{aligned}
$$

以上より

$$
\frac{\partial^2 \mathbf{v}_1}{\partial t^2} 
= C_s^2 \nabla (\nabla \cdot \mathbf{v}_1) - (\gamma -1) g (\nabla \cdot \mathbf{v}_1) \mathbf{e}_z - g \nabla v_{1z} -2\boldsymbol{\Omega} \times \frac{\partial \mathbf{v}_1}{\partial t} + \frac{1}{4\pi \rho_0} [\nabla \times \{ \nabla \times (\mathbf{v}_1 \times \mathbf{B}_0)\}] \times \mathbf{B}_0 \tag{18}
$$

のようになります。(18)式を摂動量$$\mathbf{v}_1$$の平面波解を仮定して解きましょう。1つのFourierモードについて解くと考えます。すなわち

$$
\mathbf{v_1} (\mathbf{r}, t) 
= \mathbf{v_1} \exp \{i (\mathbf{k} \cdot \mathbf{r} - \omega t)\} \tag{19}
$$

とすると

$$
\frac{\partial \mathbf{v}_1}{\partial t} 
= - i\omega \mathbf{v}_1, \quad \nabla \cdot \mathbf{v}_1 
= i \mathbf{k} \cdot \mathbf{v}_1, \quad \nabla v_{1z} 
= i\mathbf{k} v_{1z}
$$

などより

$$
\omega^2 \mathbf{v}_1 
= C_s^2 \mathbf{k} (\mathbf{k} \cdot \mathbf{v}_1) + i (\gamma-1) g (\mathbf{k} \cdot \mathbf{v}_1) \mathbf{e}_z + ig v_{1z} \mathbf{k} - 2i\omega \boldsymbol{\Omega} \times \mathbf{v}_1 + \frac{1}{4\pi \rho_0} [\mathbf{k} \times \{ \mathbf{k} \times (\mathbf{v}_1 \times \mathbf{B})\}] \times \mathbf{B}_0 \tag{20}
$$

となります。これは$$\mathbf{v}_1$$の固有値方程式なので、$$\mathbf{v}_1 \neq \mathbf{0}$$となる場合を考えて解けば良いでしょう。すると$$\omega = \omega(\mathbf{k})$$の形の方程式が得られます。これを分散関係式(dispersion relation)と呼びます。(20)式は一般的な形なので、解くのは非常に困難です。よって今後は特定の条件下で(20)式を解くことを考えます。

## 位相速度・群速度

(20)式を解く前に大切な量に触れておきましょう。ある波数$$\mathbf{k}$$の波が伝播する速度は位相速度(phase velocity)

$$
\mathbf{v}_p 
= \frac{\omega}{k} \hat{\mathbf{k}} \tag{21}
$$

で与えられます。ここで$$\hat{\mathbf{k}}$$は$$\mathbf{k}$$方向の単位ベクトルです。しかし実際の波動は色々な波数の波が重ね合わさった波束(wave packet)の形で伝播することが多いです。波束は群速度(group velocity)

$$
\mathbf{v}_g 
= \frac{\partial \omega}{\partial \mathbf{k}} \tag{22}
$$

で伝播することが知られています。これは波のエネルギーが伝播する速度を表しており、一般的には位相速度と異なる大きさと方向を持ちます。位相速度が波長によって異なる値を持つ場合、これを分散的(dispersive)であると呼びます。また$$\omega$$が$$k$$に比例するような形(例えば電磁波など)では位相速度と群速度が同じになり、これを非分散的(non-dispersive)であると呼びます。

## 音波

(20)式において$$g = B_0 = \Omega = 0$$、すなわち重力も磁場も回転もない場合を考えます。すると

$$
\omega^2 \mathbf{v}_1 
= C_s^2 \mathbf{k} (\mathbf{k} \cdot \mathbf{v}_1) \ \Longrightarrow \ 
\omega^2 \mathbf{k} \cdot \mathbf{v}_1 
= C_s^2 k^2 (\mathbf{k} \cdot \mathbf{v}_1)
$$

$$\mathbf{k} \cdot \mathbf{v}_1 \neq 0$$(すなわち$$\nabla \cdot \mathbf{v}_1 \neq 0$$)とし、両辺の2乗を外すにあたり外向きの波のみ考えると

$$
\omega 
= C_s k \tag{23}
$$

を得ます。これが音波(sound waves, acoustic waves)の分散関係式です。(21), (22), (23)式より、音波の位相速度と群速度は

$$
v_p 
= v_g 
= C_s \tag{24}
$$

となります。途中$$\nabla \cdot \mathbf{v}_1 \neq 0$$を仮定しましたが、これは圧縮性流体であることを表しています。よって音波の復元力は圧縮により生じる圧力勾配の力であると分かります。また$$\mathbf{k} \cdot \mathbf{v}_1 \neq 0$$からもわかるように、音波は縦波です。  

## 具体例

ここで宇宙物理で用いられる典型的な数値にすいて言及しておきましょう。$$\gamma = 5/3$$の単原子分子理想気体、$$\mu = 0.5$$の完全電離水素ガスの場合

$$
C_s 
\simeq 1.66 \times 10^4 T_0^{1/2} \ [\mathrm{cm/s}] \tag{25}
$$

のように計算されます。典型的な星間ガス($$T_0 \sim 10^4 [\mathrm{K}]$$)では$$C_s \sim 16 [\mathrm{km/s}]$$、典型的な銀河団プラズマ($$T_0 \sim 10^8 [\mathrm{K}]$$)では$$C_s \sim 1.6 \times 10^3 [\mathrm{km/s}]$$となります。これらの値はエネルギー等分配が成り立っていると考えれば、例えば銀河団プラズマ中を運動する銀河もこのくらいの固有速度(proper motion velocity)を持っていると大雑把に見積もることが可能です。

# 参考文献

[1] Priest, "Solar Magnetohydrodynamics"  


{% include adsense.html %} 

