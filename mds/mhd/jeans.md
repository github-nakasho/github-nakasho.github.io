---
layout: default
title: ジーンズ不安定性
parent: 宇宙磁気流体力学
math: mathjax3
permalink: /mhd/jeans
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

# ジーンズ不安定性

宇宙空間には、主に水素を成分とするガスが存在します。そのガスが自己重力で集まることにより、恒星や銀河といった構造が生まれます。ここでは、どれくらいの質量や大きさのガスの塊が自己重力で収縮するのかを見積もるのに使われるジーンズ不安定性(Jeans instability)についてメモしています。

## 問題設定

無限に一様に広がって静止している流体を考えましょう。このとき系は平衡状態にあり、その時の密度・圧力・速度場、そして自己重力場をそれぞれ

$$
\rho = \rho_0 (定数), \quad
P = P_0 (定数), \quad
\mathbf{v} = \mathbf{v}_0 = \mathbf{0}, \quad
\Phi = \Phi_0 (定数)
$$

とします。これらは流体の基礎方程式

$$
\frac{\partial \rho_0}{\partial t} + \nabla \cdot (\rho_0 \mathbf{v}_0) 
= \frac{\partial \rho_0}{\partial t} = 0 \tag{1}
$$

$$
\frac{\partial}{\partial t} (\rho_0 \mathbf{v}_0) + \nabla \cdot (\rho_0 \mathbf{v}_0\mathbf{v}_0) 
= - \nabla P_0 - \rho_0 \nabla \Phi_0 
= - \rho_0 \nabla \Phi_0 
= \mathbf{0} \ \Longrightarrow \ 
\nabla \Phi_0 = \mathbf{0} \tag{2}
$$

$$
\nabla^2 \Phi_0 
= 4\pi G \rho_0 \tag{3}
$$

を満たしています。ここに微小な摂動が加わり、物理量がそれぞれ

$$
\rho 
= \rho_0 + \rho_1, \quad
P
= P_0 + P_1, \quad
\mathbf{v} 
= \mathbf{v}_0 + \mathbf{v}_1 
= \mathbf{v}_1, \quad
\Phi 
= \Phi_0 + \Phi_1 \tag{4}
$$

に変化したとしましょう。またこの摂動は断熱的に起こるものとすると

$$
P 
= K \rho^\gamma \ \Longrightarrow \ 
K 
= \frac{P_0}{\rho_0^\gamma} 
= \frac{P_0 + P_1}{(\rho_0+\rho_1)^\gamma} 
\simeq \frac{P_0 + P_1}{\rho_0^\gamma} \left( 1- \gamma \frac{\rho_1}{\rho_0}\right) 
\simeq \frac{P_0}{\rho_0^\gamma} + \frac{P_1}{\rho_0^\gamma} - \gamma \frac{P_0}{\rho_0^{\gamma+1}} \rho_1 
$$

のようになります。途中、$$\rho_1/ \rho_0$$の1次まででテイラー展開を行い、さらに微小量$$P_1$$と$$\rho_1$$をかけあわれたものは無視しました。これより

$$
P_1 
= \frac{\gamma P_0}{\rho_0} \rho_1 
= C_s^2 \rho_1 \tag{5}
$$

となります。$$C_s=\sqrt{\gamma P_0 / \rho_0}$$は[音波の伝播速度である音速](/mhd/sound_wave)です。今は$$\rho_0, P_0$$ともに一様なので、この音速の値も定数となります。

## 基礎方程式の線形化

それでは基礎方程式を、微少量の1次まで考える線形化を行いましょう。連続の式より

$$
\begin{align}
&\frac{\partial \rho}{\partial t} + \nabla \cdot (\rho \mathbf{v}) 
= \frac{\partial }{\partial t} (\rho_0 + \rho_1) + \nabla \cdot (\rho_0 \mathbf{v}_1 + \underbrace{\rho_1 \mathbf{v}_1}_{微少量}) 
= \frac{\partial \rho_1}{\partial t} + \nabla \cdot (\rho_0 \mathbf{v}_1) \notag \\
&\underbrace{=}_{\rho_0=定数} \frac{\partial \rho_1}{\partial t} + \rho_0 (\nabla \cdot \mathbf{v}_1) 
= 0 \tag{6}
\end{align}
$$

続いて運動量保存の式を線形化しましょう。

$$
\begin{aligned}
&\frac{\partial }{\partial t} (\rho_0 \mathbf{v}_1 + \underbrace{\rho_1 \mathbf{v}_1}_{微少量}) + \nabla \cdot \{ (\rho_0 + \rho_1) \underbrace{\mathbf{v}_1 \mathbf{v}_1}_{微少量}\} 
\underbrace{=}_{(1)} \rho_0 \frac{\partial \mathbf{v}_1}{\partial t} 
= - \nabla (P_0 + P_1) - (\rho_0 + \rho_1) \nabla (\Phi_0 + \Phi_1) \notag \\
&\underbrace{=}_{P_0 = 定数} - \nabla \underbrace{P_1}_{(5)} - \rho_0 \overbrace{\nabla \Phi_0}^{(2)} - \rho_0 \nabla \Phi_1 - \rho_1 \underbrace{\nabla \Phi_0}_{(2)} - \overbrace{\rho_1 \nabla \Phi_1}^{微少量} 
= - C_s^2 \nabla \rho_1 - \rho_0 \nabla \Phi_1
\end{aligned}
$$

これより

$$
\rho_0 \frac{\partial \mathbf{v}_1}{\partial t} 
= - C_s^2 \nabla \rho_1 - \rho_0 \nabla \Phi_1 \tag{7}
$$

最後にポアソン方程式です。

$$
\nabla^2 (\Phi_0 + \Phi_1) 
= 4\pi G (\rho_0 + \rho_1) \ \underbrace{\Longrightarrow}_{(3)} \ 
\nabla^2 \Phi_1 = 4\pi G \rho_1 \tag{8}
$$

これらを整理します。(6)式の両辺をオイラー時間微分すると

$$
\frac{\partial^2 \rho_1}{\partial t^2} + \underbrace{\rho_0 \nabla \cdot \frac{\partial \mathbf{v}_1}{\partial t} }_{= \nabla \cdot (7)}
= - C_s^2 \nabla^2 \rho_1 - \rho_0 \underbrace{\nabla^2 \Phi_1}_{(8)} 
= - C_s^2 \nabla^2 \rho_1 - 4\pi G \rho_0 \rho_1 \tag{9}
$$

のように、$$\rho_1$$の微分方程式としてまとめることができます。

## 分散関係式とジーンズ波長

ここで$$\rho_1 \propto e^{i(\omega t - \mathbf{k} \cdot \mathbf{x})}$$として1つのフーリエ成分に着目すると

$$
\omega^2 \rho_1 
= C_s^2 k^2 \rho_1 - 4\pi G \rho_0 \rho_1 \ \Longrightarrow \ 
\omega^2 = k^2 C_s^2 -4\pi G \rho_0 \tag{10}
$$

となり分散関係式を求めることができます。$$\omega^2 < 0$$となるような不安定な波数は

$$
k < \sqrt{\frac{4\pi G \rho_0}{C_s^2}} \equiv k_J 
= \frac{2\pi}{\lambda_J} \tag{11}
$$

と求まります。特に$$\lambda_J$$をジーンズ波長(Jeans length)と呼びます。この波長より大きなゆらぎは自己重力が圧力の増加よりも大きくなり、重力収縮を起こします。$$\lambda_J$$程度の波長のゆらぎに含まれる質量を大雑把に球として考えると

$$
M_J 
\equiv \frac{4\pi}{3} \lambda_J^3 \rho_0 
= \frac{4\pi}{3} \left( \frac{\pi C_s^2}{G\rho_0} \right)^{3/2} \rho_0 
\propto T^{3/2} n^{-1/2} \tag{12}
$$

ここでは理想気体として$$C_s^2 = \gamma P_0 / \rho_0 \propto T$$、さらに粒子数密度$$n$$を用いて$$\rho_0 \propto n$$としました。$$M_J$$をジーンズ質量(Jeans mass)と呼び、自己重力により$$M>M_J$$の天体が形成されることを意味しています。ジーンズ質量は温度が低く高密度になるほど小さいため、重力収縮に伴う密度増加によりジーンズ波長が小さくなり、より小さな塊へと分裂することが知られています。これをflagmentationと呼びます。

## 直感的な理解

流体が自己重力によって収縮を始めようとするのを、圧力の増加(音波によって密度ムラを抑えようとする効果)によって食い止めることができれば、ジーンズ不安定性は起こらないと考えることができます。よってジーンズ不安定性が起こる条件として

$$
\begin{aligned}
&(重力により1点に集まろうとするのにかかる時間 (\mathrm{free \ fall \ timescale}) \tau_\mathrm{ff}) \\
& \qquad < (音波による振動で系全体の密度ムラを均一にならすのにかかる時間 (\mathrm{sound \ crossing \ timescale}) \tau_\mathrm{sc})  
\end{aligned}
$$

のように捉えることが可能です。それではフリーフォール時間スケールと、サウンドクロッシング時間スケールを大雑把に計算してみましょう。  
半径$$R$$の位置にある流体要素が、それより内側にある質量$$M = \frac{4\pi}{3} R^3 \rho$$による重力を感じるとすると、その運動方程式は

$$
\rho \frac{d^2 R}{dt^2} = - \frac{G \frac{4\pi}{3} R^3 \rho}{R^2} \rho
$$

です。ここで時間微分を$$d/dt \simeq \tau_\mathrm{ff}$$のように、系が時間発展する典型的な時間スケールの逆数と大雑把に考えると

$$
\frac{R}{\tau_\mathrm{ff}^2} 
\simeq \frac{4\pi }{3} R G \rho \ \Longrightarrow \ 
\tau_\mathrm{ff} \simeq \sqrt{\frac{1}{G\rho}} \tag{13}
$$

となります。大雑把な議論なので、$$\frac{4\pi}{3}$$などの係数は無視しました。これは密度が濃いほど$$M = \frac{4\pi}{3} R^3 \rho$$が作る重力が強くなり、落下するのにかかる時間が短くなるという直感に一致します。続いて圧力のみが存在する場合の運動方程式を考えると

$$
\rho \frac{d^2 R}{dt^2} 
= - \nabla P
$$

となります。ここで時間微分を$$d/dt \simeq \tau_\mathrm{sc}$$、そして空間微分を典型的な空間スケールの逆数$$\nabla \simeq 1/R$$のように近似すると

$$
\frac{R}{\tau_\mathrm{sc}^2} 
\simeq \frac{1}{\rho} \frac{P}{R} 
= \frac{C_s^2}{\gamma R} \ \Longrightarrow \ 
\tau_\mathrm{sc} \simeq \frac{R}{C_s} \tag{14}
$$

ここでも$$\gamma$$などの係数は大雑把な議論として無視しています。音速が大きければ、音波が系を横切るのにかかる時間が短くなるという直感に一致した結果を得ていることがわかります。  
先程の議論より、ジーンズ不安定性が成長する条件は

$$
\sqrt{\frac{1}{G\rho}} < \frac{R}{C_s} \ \Longrightarrow \ 
R > \sqrt{\frac{C_s^2}{G \rho}} \simeq \lambda_J
$$

のようになります。細かな定数などを除けば、先程の厳密な線形解析と同じ結果を導くことができているとわかります。

# 参考文献

[1] 観山正見, 野本憲一, 二間瀬敏史, "天体物理学の基礎I"  

{% include adsense.html %} 

