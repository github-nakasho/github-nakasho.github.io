---
layout: default
title: 相対論的なオイラー方程式やケルビンの渦定理
parent: 相対論的磁気流体力学
math: mathjax3
permalink: /rmhd/euler_eq_kelvins_circulation
nav_order: 4
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

# 相対論的なオイラー方程式やケルビンの渦定理の導出

## 相対論的なエネルギー運動量保存則の式

完全流体の運動方程式を具体的に書き、非相対論的な場合との比較をしてみましょう。
完全流体に対するエネルギー保存則は

$$
\begin{align}
&\partial_\mu T^{0 \mu} 
= \frac{1}{c} \frac{\partial}{\partial t} \left\{ (\varepsilon + P) \gamma^2 - P \right\} + \nabla \cdot \left\{ (\varepsilon + P) \gamma^2 \boldsymbol{\beta} \right\} 
= 0 \notag \\
&\Longrightarrow \ 
\frac{\partial}{\partial t} \left\{ (\varepsilon + P) \gamma^2 - P \right\} + \nabla \cdot \left\{ (\varepsilon + P) \gamma^2 \mathbf{v} \right\} 
= 0 \tag{1}
\end{align}
$$

となります。  
同様に、運動量保存則の式が

$$
\begin{align}
&\partial_\mu T^{i\mu} 
= \frac{1}{c} \frac{\partial}{\partial t} \{(\varepsilon + P) \gamma^2 \beta^i \} + \nabla \cdot \{(\varepsilon + P) \gamma^2 \beta^i \boldsymbol{\beta} + P \mathbf{I} \}
= 0 \notag \\
&\Longrightarrow \ 
\frac{\partial}{\partial t} \{(\varepsilon + P) \gamma^2 \mathbf{v}\} + \nabla \cdot \{(\varepsilon + P) \gamma^2 \mathbf{v} \otimes \mathbf{v} + P \mathbf{I}\} 
= 0 \tag{2}
\end{align}
$$

## エントロピー保存の式

エネルギー運動量保存則に$$u_\mu$$をかけて縮約し、エネルギー運動量保存則の運動方向への射影を考えましょう。
ここで

$$
u^\mu \frac{\partial}{\partial x^\mu} 
\equiv \frac{d}{d\tau} \tag{3}
$$

が流体の軌跡に沿った微分 (固有時間に対する微分、[ラグランジュ微分](/mhd/euler_lagrange))を表すことに注意しましょう。

$$
u_\mu \frac{\partial T^{\mu \nu}}{\partial x^\nu} 
= 0 \tag{4}
$$

これに[エネルギー運動量テンソル$$T^{\mu \nu} = \tfrac{\varepsilon + P}{c^2} u^\mu u^\nu + P \eta^{\mu \nu}$$](/rmhd/four_number_flux_energy_momentum#エネルギー運動量テンソル)を代入すると

$$
\begin{align}
&\left\{ \left( \frac{\partial \varepsilon}{\partial x^\nu} + \frac{\partial P}{\partial x^\nu} \right) \frac{1}{c^2} u_\mu u^\mu u^\nu + \frac{\varepsilon + P}{c^2} u_\mu \frac{\partial u^\mu}{\partial x^\nu} u^\nu + \frac{\varepsilon + P}{c^2} u_\mu u^\mu \frac{\partial u^\nu}{\partial x^\nu}\right\} + u_\mu \frac{\partial P}{\partial x^\nu} \eta^{\mu \nu} \notag \\
&= - \left( \frac{\partial \varepsilon}{\partial x^\nu} + \frac{\partial P}{\partial x^\nu} \right) u^\nu - (\varepsilon + P) \frac{\partial u^\nu}{\partial x^\nu} + \frac{\partial P}{\partial x^\nu} u^\nu \notag \\
&= - \frac{d\varepsilon}{d\tau} - (\varepsilon + P) \frac{\partial u^\nu}{\partial x^\nu} 
= 0 \ \Longrightarrow \ 
\frac{d\varepsilon}{d\tau} + (\varepsilon + P) \frac{\partial u^\nu}{\partial x^\nu} 
= 0 \tag{5}
\end{align}
$$

のように、エネルギー密度の変化を与える式を得ます。
途中、$$u_\mu u^\mu = -c^2, u_\mu u^\mu_{\; \; ,\nu} = 0$$を用いました。
さらに、[粒子数保存の式](/rmhd/conservation_law#粒子数保存)を変形すると

$$
\partial_\mu n^\mu 
= \partial_\mu (n u^\mu) 
= u^\mu (\partial_\mu n) + n (\partial_\mu u^\mu) 
= \frac{dn}{d\tau} + n \frac{\partial u^\mu}{\partial x^\mu} 
= 0 \tag{6}
$$

のようになるため、これを(5)式に用いましょう。
すると

$$
\frac{d\varepsilon}{d\tau} - \frac{\varepsilon + P}{n} \frac{dn}{d\tau} 
= 0 \tag{7}
$$

を得ます。
ここで熱力学第一法則

$$
\begin{align}
&d\left( \frac{\varepsilon}{n}\right) 
= - P d \left( \frac{1}{n} \right) + Tds \ \Longrightarrow \ 
\frac{d\varepsilon}{n} - \varepsilon \frac{dn}{n^2} 
= P \frac{dn}{n^2} + Tds \notag \\
&\Longrightarrow \ 
d\varepsilon 
= \frac{\varepsilon + P}{n} dn + nTds \ \Longrightarrow \ 
\frac{d\varepsilon}{d\tau} 
= \frac{\varepsilon + P}{n} \frac{dn}{d\tau} + nT \frac{ds}{d\tau} \tag{8}
\end{align}
$$

を用いることで、結局

$$
nT \frac{ds}{d\tau} 
= 0 \tag{9}
$$

となります。
ここで、$$s$$は一粒子あたりのエントロピーです。
この式は断熱の式またはエントロピー保存の式と呼ばれ、完全流体に対し流体要素のエントロピーが保存することを表しています。
(9)式から$$n u^\mu \tfrac{\partial s}{\partial x^\mu} = 0$$と、粒子数保存則(6)式の辺々を足し合わせると

$$
n u^\mu \frac{\partial s}{\partial x^\mu} + s \left( \frac{dn}{d\tau} + n \frac{\partial u^\mu}{\partial x^\mu}\right) 
= n u^\mu \frac{\partial s}{\partial x^\mu} + su^\mu \frac{\partial n}{\partial x^\mu} + sn \frac{\partial u^\mu}{\partial x^\mu} 
= \frac{\partial (nsu^\mu)}{\partial x^\mu} 
= 0 \tag{10}
$$

と表すこともできます。

## 相対論的なオイラー方程式

エネルギー運動量保存則を、運動方向に垂直な方向($$u^\mu$$に垂直な方向)に射影してみましょう。

$$
P_{\mu \nu} u^\nu 
= 0 \tag{11}
$$

を満たす射影テンソル

$$
P_{\mu \nu} 
= \eta_{\mu \nu} + \frac{1}{c^2} u_\mu u_\nu \tag{12}
$$

を、エネルギー運動量保存則にかけ、縮約をとりましょう。

$$
\begin{align}
P^\lambda_{\; \; \mu} \frac{\partial T^{\mu \nu}}{\partial x^\nu} 
&= \eta^\lambda_{\; \; \mu} \frac{\partial T^{\mu \nu}}{\partial x^\nu} + \frac{1}{c^2} u^\lambda u_\mu \frac{\partial T^{\mu \nu}}{\partial x^\nu} 
= \frac{\partial T^{\lambda \nu}}{\partial x^\nu} + \frac{1}{c^2} u^\lambda u_\mu \frac{\partial T^{\mu \nu}}{\partial x^\nu} 
= \frac{\partial}{\partial x^\nu} \left( \frac{\varepsilon + P}{c^2} u^\lambda u^\nu + P \eta^{\lambda \nu}\right) \notag \\
&= \frac{1}{c^2} \left( \frac{\partial \varepsilon}{\partial x^\nu} + \frac{\partial P}{\partial x^\nu} \right) u^\lambda u^\nu + \frac{\varepsilon + P}{c^2} u^\nu \frac{\partial u^\lambda}{\partial x^\nu} + \frac{\varepsilon + P}{c^2} u^\lambda \frac{\partial u^\nu}{\partial x^\nu} + \eta^{\lambda \nu} \frac{\partial P}{\partial x^\nu} \notag \\
&= \frac{u^\lambda}{c^2} \underbrace{\frac{d\varepsilon}{d\tau}}_{(5)} + \frac{u^\lambda}{c^2} \frac{dP}{d\tau} + \frac{\varepsilon + P}{c^2} \frac{du^\lambda}{d\tau} + \frac{\varepsilon + P}{c^2} u^\lambda \frac{\partial u^\nu}{\partial x^\nu} + \eta^{\lambda \nu} \frac{\partial P}{\partial x^\nu} \notag \\
&= \frac{\varepsilon + P}{c^2} \frac{du^\lambda}{d\tau} + \frac{u^\lambda}{c^2} \frac{dP}{d\tau} + \eta^{\lambda \nu} \frac{\partial P}{\partial x^\nu} 
= 0 \tag{13}
\end{align}
$$

これが、相対論的なオイラー方程式です。
非相対論的な極限では、空間部分が非相対論的な流体力学のオイラー方程式となります。
非相対論的な場合に比べ、流体要素の慣性が質量密度ではなく$$\tfrac{\varepsilon + P}{c^2}$$で表されています。
そして力として、圧力勾配以外に圧力の時間変化に比例する項が加わっていることがわかります。
相対論特有のこの項は、相対論的流体の膨張を考えるときに重要となります。  

{% include adsense.html %} 

## 相対論的なケルビンの渦定理

相対論的流体中の渦を考えてみましょう。
このため、4元渦度テンソルとして、次のような2階の反対称テンソルを考えてみます。

$$
\omega_{\nu \lambda} 
= \frac{\partial h u_\lambda}{\partial x^\nu} - \frac{\partial h u_\nu}{\partial x^\lambda} \tag{14}
$$

ここで

$$
h 
= \frac{\varepsilon + P}{n} \tag{15}
$$

は、一粒子あたりのエンタルピーです。
等エントロピーの流れにおいて、熱力学第一法則より

$$
d\left( \frac{\varepsilon}{n} \right) 
= -P d \left( \frac{1}{n} \right) \tag{16}
$$

であるため

$$
dh 
= d \left( \frac{\varepsilon}{n} \right) + d \left( \frac{P}{n} \right) 
\underbrace{=}_{(16)} - P d \left( \frac{1}{n} \right) + d \left( \frac{P}{n} \right) 
= \frac{dP}{n} \ \Longrightarrow \ 
dP 
= n dh \tag{17}
$$

の関係が成立します。
これを相対論的なオイラー方程式(13)に用いれば

$$
\begin{aligned}
&\frac{nh}{c^2} \frac{du^\lambda}{d\tau} + \frac{u^\lambda}{c^2} n \frac{dh}{d\tau} + \eta^{\lambda \nu} n \frac{\partial h}{\partial x^\nu} 
= 0 \ \Longrightarrow \ 
\frac{hu^\nu}{c^2} \frac{\partial u^\lambda}{\partial x^\nu} 
= - \left(\eta^{\lambda \nu} + \frac{u^\lambda u^\nu}{c^2} \right) \frac{\partial h}{\partial x^\nu} \\
& \Longrightarrow \ 
\frac{u^\nu}{c^2} \frac{\partial}{\partial x^\nu} (hu^\lambda) 
= - \eta^{\lambda \nu} \frac{\partial h}{\partial x^\nu}
\end{aligned}
$$

のようになります。
この式の$$\lambda$$の添字を下げ、さらに(14)式を用いると

$$
\begin{aligned}
&\frac{u^\nu}{c^2} \left\{ \omega_{\nu \lambda} + \frac{\partial}{\partial x^\lambda} (hu_\nu) \right\} 
= - \eta_\lambda^{\; \; \nu} \frac{\partial h}{\partial x^\nu} \\
&\Longrightarrow \ 
\frac{u^\nu}{c^2} \omega_{\nu \lambda} 
= - \frac{u^\nu}{c^2} \frac{\partial}{\partial x^\lambda} (h u_\nu) - \eta_{\lambda}^{\; \; \nu} \frac{\partial h}{\partial x^\nu} 
= - \frac{u^\nu}{c^2} \left( u_\nu \frac{\partial h}{\partial x^\lambda} + h \frac{\partial u_\nu}{\partial x^\lambda} \right) - \eta_\lambda^{\; \; \nu} \partial_\nu h \notag \\
& \qquad \qquad = - \frac{\overbrace{u^\nu u_\nu}^{=-c^2}}{c^2} \frac{\partial h}{\partial x^\lambda} - \frac{h}{c^2} \underbrace{u^\nu \frac{\partial u_\nu}{\partial x^\lambda}}_{=u_\mu u^\mu_{\; \; , \nu}=0} - \partial_\lambda h 
= \partial_\lambda h - \partial_\lambda h 
= 0 
\end{aligned} 
$$

のようになります。
以上から

$$
\omega_{\mu \nu} u^\nu 
= 0 \tag{18}
$$

という関係を得ます。
流体の固有系では、4元渦度テンソルの時間成分はゼロとなりますが、空間成分は有限であってよく、これらが渦運動を記述しているとみなすことができます。
3次元ベクトル$$\boldsymbol{\omega}$$を$$\omega_x = \omega_{23}, \omega_y=\omega_{31}, \omega_z = \omega_{12}$$のように対応させましょう。
また、渦度テンソルの双対テンソルを

$$
\omega^{\ast \mu \nu} 
= - \frac{1}{2} e^{\mu \nu \alpha \beta} \omega_{\alpha \beta} \tag{19}
$$

のように定義すると、これは

$$
\frac{\partial \omega^{\ast \mu \nu}}{\partial x^\nu} 
= 0 \tag{20}
$$

を恒等的に満たします。
この式の$$\mu = 0$$のみを取り出すと

$$
\nabla \cdot \boldsymbol{\omega} 
= 0 \tag{21}
$$

となります。
さらに$$\mu = i$$の式において、渦度テンソルの時間成分の空間微分の項を、(18)式を用いて渦度テンソルの空間部分で表すと

$$
\frac{\partial \boldsymbol{\omega}}{\partial t} 
= \nabla \times (\mathbf{v} \times \boldsymbol{\omega}) \tag{22}
$$

となります。
これは非相対論的な場合の渦度の運動方程式と、同一の形をしており、ケルビンの渦定理(循環定理とも呼ばれます)を相対論に拡張したものとなっています。

## 参考文献

[1] [北島 歓大, 2025, "相対論的流体力学の粒子法的数値計算法の開発及び高速噴流の解析"](https://nagoya.repo.nii.ac.jp/records/2012452)  
[2] [田中 秀和, "宇宙流体力学"](https://jupiter.astr.tohoku.ac.jp/~hidekazu/lecture/astrophys_fluid_dyn.pdf)  
[3] [高原文郎, "特殊相対論"](https://amzn.to/49sJUrA)  
[4] [Mathlog, "【相対論】相対論的流体"](https://mathlog.info/articles/dtGQSWXXQbmPFOMv3Mfj)  
[5] [宇宙に入ったカマキリ, "流体力学, ケルビンの循環定理 【渦ができる要因を理解する】"](https://takun-physics.net/6495/)  

{% include adsense.html %} 
