---
layout: default
title: 特殊相対論的なラバール管
parent: 相対論的磁気流体力学
math: mathjax3
permalink: /rmhd/laval_nozzle
nav_order: 7
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

# 特殊相対論的なラバール管

ここでは、ラバール管中の流体が相対論的速度で運動している場合について議論していきます。

## 特殊相対論的なベルヌーイの定理

まず、相対論的な定常流において成り立つ、ベルヌーイの定理について示しておきましょう。
流体を構成する粒子の生成・消滅が無視できるとすると、[粒子数保存の式](/rmhd/conservation_law#粒子数保存)より

$$
\nabla \cdot (n\gamma \mathbf{v}) 
= 0 \ \Longrightarrow \ 
n \gamma v_i dS_i 
= (一定) \tag{1}
$$

ここで$$dS_i$$は、流線で囲まれた管(流管)の断面積を表します。
同様に、エネルギー保存の式から

$$
\nabla \cdot \{(\varepsilon + P) \gamma^2 \mathbf{v} \} 
= 0 \ \Longrightarrow \
(\varepsilon + P) \gamma^2 v_i dS_i 
= (一定) \tag{2}
$$

を得ます。
これらを辺々割り算すれば

$$
\frac{(\varepsilon + P) \gamma}{n} 
= \gamma h 
= (一定) \qquad \left( h = \frac{\varepsilon + P}{n}\right)\tag{3}
$$

のようになります。
これが特殊相対論的なベルヌーイの定理です。
$$h$$は、1粒子あたりのエンタルピーです。

## 特殊相対論的なラバール管

次に、[ラバール管](/mhd/laval_nozzle)中を相対論的な速度で定常的に運動する場合の流体の振る舞いについて見ていきましょう。
[非相対論的な場合](/mhd/laval_nozzle)と同様、断面積$$A(x)$$で表される管中を、流体は定常的に流れるものとします。
また、流体の運動は1次元であるとします。
粒子数保存の式より

$$
\frac{d}{dx} (n\gamma v) 
= 0 \ \Longrightarrow \ 
n \gamma v A 
= (一定) \tag{4}
$$

です。
両辺の対数をとり、その微小量を計算しましょう。

$$
\begin{align}
&\ln (n \gamma v A) 
= \ln n + \ln \gamma + \ln v + \ln A 
= (一定) \ \Longrightarrow \ 
\frac{dn}{n} + \frac{d\gamma}{\gamma}  + \frac{dv}{v} + \frac{dA}{A} 
= 0 \notag \\
&\Longrightarrow \ 
\frac{1}{n} \frac{dn}{dx} 
= - \frac{1}{\gamma} \frac{d\gamma}{dx} - \frac{1}{v} \frac{dv}{dx} - \frac{1}{A} \frac{dA}{dx} \tag{5}
\end{align}
$$

運動量保存則の式より

$$
\begin{align}
\frac{d}{dx} \{(\varepsilon + P) \gamma^2 v^2 + c^2 P\} 
&= \frac{d}{dx} (nh \gamma^2 v^2 + c^2 P) 
= \frac{d}{dx} (\gamma h \cdot n \gamma v \cdot v + c^2 P) \notag \\
&\underbrace{=}_{(3), (4)} n h \gamma^2 v \frac{dv}{dx} + c^2 \frac{dP}{dx} 
= 0 \tag{6}
\end{align}
$$

今、流れが断熱的であると仮定すると、$$P = D n^\Gamma \ (D: 定数)$$より

$$
\frac{dP}{dx} 
= D \Gamma n^{\gamma -1} \frac{dn}{dx} 
= \frac{\Gamma P}{n} \frac{dn}{dx} \tag{7}
$$

とわかります。
ここで、$$\Gamma$$は比熱比であり、座標に依存せず一定・一様であるとしました。
これを(6)式に用いると

$$
\begin{align}
&n h \gamma^2 v \frac{d}{dx} + \frac{c^2 \Gamma P}{n} \frac{dn}{dx} 
\underbrace{=}_{(5)} n h \gamma^2 v \frac{d}{dx} - c^2 \Gamma P \left( \frac{1}{\gamma} \frac{d\gamma}{dx} + \frac{1}{v} \frac{dv}{dx} + \frac{1}{A} \frac{dA}{dx} \right) 
= 0 \notag \\
&\Longrightarrow \ 
\left( \frac{nh\gamma^2 v^2}{c^2 \Gamma P} - 1\right) \frac{1}{v} \frac{dv}{dx} - \frac{1}{\gamma} \frac{d\gamma}{dx} 
= \frac{1}{A} \frac{dA}{dx} \tag{8}
\end{align}
$$

のように整理できます。
さらにローレンツ因子$$\gamma = \left( 1- v^2 / c^2\right)^{-1/2}$$の定義から

$$
\frac{1}{\gamma}\frac{d\gamma}{dx} 
= -\frac{1}{2\gamma} \left( 1-\frac{v^2}{c^2}\right)^{-3/2} \left( -\frac{2v}{c^2}\right) \frac{dv}{dx} 
= \gamma^2 \frac{v^2}{c^2} \frac{1}{v} \frac{dv}{dx} \tag{9}
$$

のように計算できるので

$$
\left( \frac{nh\gamma^2 v^2}{c^2 \Gamma P} - 1 - \gamma^2 \frac{v^2}{c^2} \right) \frac{1}{v} \frac{dv}{dx} 
= \frac{1}{A} \frac{dA}{dx} \tag{10}
$$

となります。
さらに

$$
\gamma^2 
= \frac{1}{1-\frac{v^2}{c^2}} \ \Longrightarrow \ 
\gamma^2 - \frac{v^2}{c^2} \gamma^2 
= 1 \ \Longrightarrow \ 
\frac{v^2}{c^2} \gamma^2 
= \gamma^2 - 1 \tag{11}
$$

を用いることで

$$
\gamma^2 \left( \frac{nhv^2}{c^2 \Gamma P} - 1\right) \frac{1}{v} \frac{dv}{dx} 
= \frac{1}{A} \frac{dA}{dx} \tag{12}
$$

[断熱変化の場合の音速](/rmhd/speed_of_sound)は、エンタルピーを用いて

$$
c_s^2 
= \Gamma \frac{P}{\varepsilon + P} c^2 
= \frac{\Gamma P}{n h} c^2 \tag{13}
$$

のようになることから

$$
\gamma^2 \left( \frac{v^2}{c_s^2} - 1\right) \frac{1}{v} \frac{dv}{dx} 
= \frac{1}{A} \frac{dA}{dx} \tag{14}
$$

となります。
マッハ数$$M = v/c_s$$を用いることで、最終的に

$$
\gamma^2 \left( M^2 - 1\right) \frac{1}{v} \frac{dv}{dx} 
= \frac{1}{A} \frac{dA}{dx} \tag{15}
$$

を得ます。  
これは非相対論極限$$\gamma \rightarrow 1$$で、[非相対論的な場合のラバール管の式(4)](/mhd/laval_nozzle#ラバール管流の解の振る舞い)に一致します。
振る舞いも非相対論的なラバール管と同様に、$$\frac{dA}{dx}<0$$(だんだん細くなる)部分を$$M<1$$の流れが通ると、その流れはだんだん加速されていくことがわかります。
$$\frac{dA}{dx}>0$$(だんだん太くなる)部分を$$M>1$$の流れが通ると、その流れはさらに加速され、相対論的な速度に到達することが可能であることがわかります。

## 参考文献

[1] [Rezzolla & Zanotti, "Relativistic Hydrodynamics"](https://amzn.to/4t57unb)  
[2] [北島 歓大, 2025, "相対論的流体力学の粒子法的数値計算法の開発及び高速噴流の解析"](https://nagoya.repo.nii.ac.jp/records/2012452)  
[3] [福江純, 和田桂一, 梅村雅之, "宇宙流体力学の基礎"](https://amzn.to/4aNC7W1)  
[4] [田中 秀和, "宇宙流体力学"](https://jupiter.astr.tohoku.ac.jp/~hidekazu/lecture/astrophys_fluid_dyn.pdf)  
[5] [高原文郎, "特殊相対論"](https://amzn.to/49sJUrA)  


{% include adsense.html %} 
