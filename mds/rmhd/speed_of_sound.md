---
layout: default
title: 相対論的流体の音波
parent: 相対論的磁気流体力学
math: mathjax3
permalink: /rmhd/speed_of_sound
nav_order: 5
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

# 相対論的流体の音波

## 導出

相対論的な温度の一様静止媒質中を伝搬する線形波動について考えましょう。
非摂動状態のエネルギー密度を$$\varepsilon_0$$、圧力を$$P_0$$の一様静止媒質を考え、これに平面波の線形摂動$$\exp (-i\omega t + i \mathbf{k} \cdot \mathbf{x})$$を加えます。
すると、4元速度の摂動は

$$
\delta u^\mu 
= (c\gamma, \gamma \mathbf{v}) 
\approx (c, \mathbf{v}) \tag{1}
$$

のようになり、第0成分$$\gamma$$の摂動は、高次のために無視できます (すなわち$$\gamma \sim 1$$として良い。)
次に$$T^{\mu \nu}$$の摂動は

$$
(T^{\mu \nu}) 
= \left( \begin{array}{cc}
\varepsilon & (\varepsilon + P) \boldsymbol{\beta} \\
(\varepsilon + P) \boldsymbol{\beta} & P \mathbf{I}
\end{array} \right) \ \Longrightarrow \ 
\delta T^{\mu \nu} 
= \left( \begin{array}{cc}
\varepsilon_1 & (\varepsilon_0 + P_0) \boldsymbol{\beta} \\
(\varepsilon_0 + P_0) \boldsymbol{\beta} & P_1 \mathbf{I}
\end{array} \right) \tag{2}
$$

のようになります。
ここで$$\boldsymbol{\beta}$$も摂動の1次であるため、$$\varepsilon_1 \boldsymbol{\beta}$$などの項は無視しました。
エネルギー保存則より

$$
\frac{\partial \varepsilon_1}{\partial t} + \nabla \cdot \{(\varepsilon_0 + P_0) \mathbf{v} \} 
= -i\omega \varepsilon_1 + i (\varepsilon_0 + P_0) \mathbf{k} \cdot \mathbf{v}
= 0 \tag{3}
$$

のようになります。
そして運動量保存則から

$$
\frac{\partial}{\partial t} \{(\varepsilon_0 + P_0) \mathbf{v} \} + \nabla \cdot (c^2 P_1 \mathbf{I}) 
= -i\omega (\varepsilon_0 + P_0) \mathbf{v} + i c^2 P_1 \mathbf{k} 
= \mathbf{0} \tag{4} 
$$

を得ます。
(3), (4)式に含まれる変数は$$\varepsilon_1, P_1, \mathbf{v} = (v_{x1}, v_{y1}, v_{z1})$$の5つであるため、ここに状態方程式

$$
P 
= P (\varepsilon, s) \tag{5}
$$

を加えることで、変数の数と式の数が一致して解けるようになります。
ここで加えられた摂動は断熱的なものであると考えましょう。
1粒子あたりのエントロピー$$s$$を一定に保ったときの変化量の関係を用いて、音速を以下のように定義しましょう。

$$
c_s^2 
\equiv c^2 \left. \frac{\partial P}{\partial \varepsilon} \right\vert_s \tag{6}
$$

すると

$$
P_1 
= \frac{c_s^2}{c^2} \varepsilon_1 \tag{7}
$$

のように書くことができます。  
数密度については、連続の式より

$$
\begin{align}
&\frac{\partial n\gamma}{\partial t} + \nabla \cdot (n\gamma \mathbf{v}) 
= 0 \ \Longrightarrow \ 
\frac{\partial n_1}{\partial t} + \nabla \cdot (n_0 \mathbf{v}) 
= - i\omega n_1 + i n_0 \mathbf{k} \cdot \mathbf{v} 
= 0 \notag \\
& \Longrightarrow \ 
n_1 
= \frac{\mathbf{k} \cdot \mathbf{v}}{\omega} n_0 
\underbrace{=}_{(3)} \frac{\varepsilon_1}{\varepsilon_0 + P_0} n_0 \tag{8}
\end{align}
$$

のように求まります。　　
(4), (7)式より

$$
-i\omega (\varepsilon_0 + P_0) \mathbf{k} \cdot \mathbf{v} + i c_s^2 \varepsilon_1 k^2 
= 0 \notag \\
$$

これと(3)式に$$\omega$$をかけたものとを辺々足し算すれば

$$
-i\omega^2 \varepsilon_1 + i c_s^2 \varepsilon_1 k^2 
= -i \varepsilon_1 (\omega^2 - k^2 c_s^2) 
= 0 \tag{9}
$$

のような関係式を得ます。
$$\varepsilon_1 \neq 0$$のとき、この関係式を満たすのは$$\omega^2 = k^2 c_s^2$$のようなモードで、これが相対論的音波の分散関係です。
この場合、(3)式から$$\mathbf{k}\cdot \mathbf{v} \neq 0$$でもあるため、音波は縦波で、圧縮波であることもわかります。
また$$\varepsilon_1 = P_1 = 0$$の方のモードは、$$\mathbf{k} \cdot \mathbf{v} = 0$$であることから、これは$$\mathbf{v}$$と$$\mathbf{k}$$が垂直な横波で、非圧縮の渦モードとなります。  
比熱比$$\Gamma$$が一定と近似できる範囲では、状態方程式として

$$
P 
= (\Gamma - 1) (\varepsilon - nmc^2) \tag{10}
$$

を用いることも多くあります。
このとき、断熱変化に対しては$$P/n^\Gamma$$が一定となるように変化します。
この場合の音速は、(6)式より

$$
c_s^2 
= c^2 \left. \frac{\partial P}{\partial \varepsilon} \right\vert_s 
\underbrace{=}_{P = D n^\Gamma} c^2 D \Gamma n^{\Gamma - 1} \left. \frac{\partial n}{\partial \varepsilon} \right\vert_s 
= \frac{\Gamma P}{n} \frac{n}{\varepsilon + P} c^2
= \Gamma \frac{P}{\varepsilon + P} c^2 \tag{11}
$$

のようになります (添字0は省略しました。)
非相対論的な極限においては$$P \ll \varepsilon \approx nmc^2 \approx \rho_\mathrm{nr} c^2$$であるため

$$
c_s^2 
= \frac{\Gamma P}{\rho_\mathrm{nr}} \tag{12}
$$

のように、非相対論的な流体の音波のよく見る式を得ることができます。
相対論的な極限の場合、$$P = \tfrac{\varepsilon}{3}$$、すなわち$$\Gamma = \tfrac{4}{3}$$であるため、音速は$$\tfrac{c}{\sqrt{3}}$$となります。
ここからわかるように、超相対論的な場合にも音速は光速を超えることなく、因果律を破ることはありません。

## 参考文献

[1] [Rezzolla & Zanotti, "Relativistic Hydrodynamics"](https://amzn.to/4t57unb)  
[2] [北島 歓大, 2025, "相対論的流体力学の粒子法的数値計算法の開発及び高速噴流の解析"](https://nagoya.repo.nii.ac.jp/records/2012452)  
[3] [田中 秀和, "宇宙流体力学"](https://jupiter.astr.tohoku.ac.jp/~hidekazu/lecture/astrophys_fluid_dyn.pdf)  
[4] [高原文郎, "特殊相対論"](https://amzn.to/49sJUrA)  

{% include adsense.html %} 
