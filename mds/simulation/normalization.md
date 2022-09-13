---
layout: default
title: 磁気流体方程式の規格化
parent: 数値計算
math: mathjax3
permalink: /simulation/normalization
nav_order: 1
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

# 磁気流体方程式の規格化

ここでは磁気流体計算の前処理としてよく行われる規格化についてメモしています。

## 早速規格化してみましょう

1次元の磁気流体方程式をまとめて、以下のように書きます。

$$
\frac{\partial}{\partial t} \left( \begin{array}{c}
\rho \\
\rho v_x \\
\rho v_y \\
\rho v_z \\
E \\
B_x \\
B_y \\
B_z 
\end{array} \right) + \frac{\partial}{\partial x} \left( \begin{array}{c} 
\rho v_x \\
\rho v_x v_x + P_\mathrm{tot} - \frac{1}{4\pi} B_x^2 \\
\rho v_y v_x - \frac{1}{4\pi} B_y B_x \\
\rho v_z v_x - \frac{1}{4\pi} B_z B_x \\
(E + P_\mathrm{tot}) v_x - \frac{1}{4\pi} (\mathbf{v} \cdot \mathbf{B}) B_x \\
0 \\
B_y v_x - v_y B_x \\
B_z v_x - v_z B_x 
\end{array}\right) 
= \frac{\partial \mathbf{U}}{\partial t} + \frac{\partial \mathbf{F}}{\partial x} 
= \mathbf{0} \tag{1}
$$

ここで$$P_\mathrm{tot} = P + \frac{1}{8\pi} B^2$$はガス圧と磁気圧を足した、全圧力です。磁気流体数値計算の研究において、よく用いられるのは

$$
\rho = \rho_0 \rho^\ast, \quad \mathbf{v} = v_0 \mathbf{v}^\ast, \quad P = P_0 P^\ast, \quad E = E_0 E^\ast, \quad \mathbf{B} = \sqrt{4\pi} B_0 \mathbf{B}^\ast, \quad x = x_0 x^\ast, \quad t = t_0 t^\ast \tag{2}
$$

のようなものです。左辺の何も添字のついていない量が規格化される前の物理量、右辺の0の添字がついた量が規格化定数、$$\ast$$(アスタリスク)のついた量が規格化された物理量です。  
(1)式の第一式([連続の式](/mhd/continuity))より

$$
\frac{1}{t_0} \frac{\partial}{\partial t^\ast} (\rho_0 \rho^\ast) + \frac{1}{x_0}\frac{\partial}{\partial x^\ast} (\rho_0 \rho^\ast v_0 v_x^\ast) 
= \frac{\rho_0}{t_0} \frac{\partial \rho^\ast}{\partial t^\ast} + \frac{\rho_0 v_0}{x_0}\frac{\partial}{\partial x^\ast} (\rho^\ast v_x^\ast) 
= 0 \ \Longrightarrow \ 
\frac{\partial \rho^\ast}{\partial t^\ast} + \frac{t_0 v_0}{x_0}\frac{\partial}{\partial x^\ast} (\rho^\ast v_x^\ast) \tag{3}
= 0
$$

方程式を規格化したのにも関わらず、元の規格化定数たちが残っているのはなんだか気持ちが悪いです。よって第二項の係数部分が1になるように規格化定数を定めましょう。すると

$$
v_0 
= \frac{x_0}{t_0} \tag{4}
$$

の関係を得ることができます。(4)式を用いれば、考えている物理系の典型的な長さスケール$$x_0$$と典型的な速度$$v_0$$から、典型的な時間スケール$$t_0$$を求めることができます。  
続いて(1)式の第二式($$x$$方向の[運動量保存則](/mhd/momentum))を考えます。

$$
\begin{align}
&\frac{\rho_0 v_0}{t_0} \frac{\partial}{\partial t^\ast} (\rho^\ast v_x^\ast) + \frac{1}{x_0} \frac{\partial}{\partial x^\ast} \left\{ \rho_0 v_0^2 \rho^\ast v_x^\ast v_x^\ast + \left( P_0 P^\ast + B_0^2 \frac{1}{2} (B^\ast)^2 \right) - B_0^2 (B_x^\ast)^2 \right\} 
= 0 \notag \\
&\Longrightarrow \ 
\frac{\partial}{\partial t^\ast} (\rho^\ast v_x^\ast) + \underbrace{\frac{t_0 v_0}{x_0}}_{(4)} \frac{\partial}{\partial x^\ast} \left\{ \rho^\ast v_x^\ast v_x^\ast + \frac{P_0}{\rho_0 v_0^2} \left( P^\ast + \frac{B_0^2}{P_0} \frac{1}{2} (B^\ast)^2\right) - \frac{B_0^2}{\rho_0 v_0^2} (B_x^\ast)^2\right\} = 0 \tag{5}
\end{align}
$$

(5)式の規格化定数部分を全て1として

$$
B_0^2 = P_0 = \rho_0 v_0^2 \tag{6}
$$

の関係が得られます。このとき、ガス圧と磁気圧を足した全圧力は

$$
P_\mathrm{tot} = P_0 \left( P^\ast + \frac{1}{2} (B^\ast)^2 \right) \tag{7}
$$

のように規格化されます。[エネルギー保存](/mhd/energy)を表す第五式からは

$$
\begin{align}
&\frac{E_0}{t_0} \frac{\partial E^\ast}{\partial t^\ast} + \frac{1}{x_0} \frac{\partial}{\partial x^\ast} \left\{ \left( E_0 E^\ast + P_0 P_\mathrm{tot}^\ast \right) v_0 v_x^\ast - v_0 B_0^2 (\mathbf{v}^\ast \cdot \mathbf{B}^\ast) B_x^\ast \right\} 
= 0 \notag \\
&\Longrightarrow \ 
\frac{\partial E^\ast}{\partial t^\ast} + \frac{t_0 v_0}{x_0} \frac{\partial}{\partial x^\ast} \left\{ \left( E^\ast + \frac{P_0}{E_0} P_\mathrm{tot}^\ast \right) v_x^\ast - \frac{B_0^2}{E_0} (\mathbf{v}^\ast \cdot \mathbf{B}^\ast) B_x^\ast \right\} 
= 0 \tag{8}
\end{align}
$$

これより

$$
E_0 = P_0 = B_0^2 \tag{9}
$$

の関係式も得ることができます。規格化された方程式は以下のようにまとめられます。

$$
\frac{\partial}{\partial t^\ast} \left( \begin{array}{c}
\rho^\ast \\
\rho^\ast v_x^\ast \\
\rho^\ast v_y^\ast \\
\rho^\ast v_z^\ast \\
E^\ast \\
B_x^\ast \\
B_y^\ast \\
B_z^\ast 
\end{array} \right) + \frac{\partial}{\partial x^\ast} \left( \begin{array}{c} 
\rho^\ast v_x^\ast \\
\rho^\ast v_x^\ast v_x^\ast + P_\mathrm{tot}^\ast - (B_x^\ast)^2 \\
\rho^\ast v_y^\ast v_x^\ast - B_y^\ast B_x^\ast \\
\rho^\ast v_z^\ast v_x^\ast - B_z^\ast B_x^\ast \\
(E^\ast + P_\mathrm{tot}^\ast) v_x^\ast - (\mathbf{v}^\ast \cdot \mathbf{B}^\ast) B_x^\ast \\
0 \\
B_y^\ast v_x^\ast - v_y^\ast B_x^\ast \\
B_z^\ast v_x^\ast - v_z^\ast B_x^\ast 
\end{array}\right) 
= \mathbf{0} \tag{10}
$$

$$1/4\pi$$のような係数が消えて、スッキリとまとめることができました。

```
2次元や3次元の場合も同様に規格化します。
```

## アルヴェーン速度の規格化

磁気流体で重要な波動伝播である[アルヴェーン速度](/mhd/alfven_wave)も同様に規格化しましょう。すると

$$
v_A = v_0 v_A^\ast 
= \frac{\sqrt{4\pi} B_0 B^\ast}{\sqrt{4\pi \rho_0 \rho^\ast}} \ \Longrightarrow \ 
v_A^\ast 
= \underbrace{\frac{B_0}{v_0 \sqrt{\rho_0}}}_{(6)} \frac{B^\ast}{\sqrt{\rho^\ast}} \tag{11}
$$

のように、$$\sqrt{4\pi}$$が消えてスッキリとした形になります。

## ガス温度の規格化

密度や圧力を規格化したので、それに関連してガス温度も規格化されなければなりません。状態方程式より

$$
P 
= n k_B T 
= \frac{\rho}{\mu m_p} k_B T
$$

です。ここで$$\mu$$は平均分子量、$$m_p$$は陽子質量、$$k_B$$はボルツマン定数です。$$T = T_0 T^\ast$$のように規格化すると

$$
P_0 P^\ast 
= \frac{k_B \rho_0 T_0}{\mu m_p} \rho^\ast T^\ast \ \Longrightarrow \
P^\ast = \frac{k_B \rho_0 T_0}{\mu m_p P_0} \rho^\ast T^\ast
$$

右辺の係数部分が1になるように規格化を行うと

$$
T_0 
= \frac{\mu m_p P_0}{k_B \rho_0} \tag{12}
$$

のように規格化定数が求まります。

## なぜ規格化をするのか？

(1)式をオイラー的にグリッドを用いて数値計算することを考えましょう。基本は(1)式を離散化した、以下のような形で数値計算を実装しようと考えるはずです。

$$
\frac{\mathbf{U}_{i}^{n+1} - \mathbf{U}_{i}^{n}}{\Delta t} + \frac{\mathbf{F}_{i+1/2}^{n} - \mathbf{F}_{i-1/2}^{n}}{\Delta x} 
= \mathbf{0} \ \Longrightarrow \ 
\mathbf{U}_{i}^{n+1} 
= \mathbf{U}_{i}^{n} - \frac{\Delta t}{\Delta x} (\mathbf{F}_{i+1/2}^{n} - \mathbf{F}_{i-1/2}^{n})
$$

ここで$$\mathbf{U}_{i}^{n}$$は、時間ステップ$$n$$における$$i$$番目のグリッドでの$$\mathbf{U}$$の値を表します。$$i+1/2$$番目は$$i$$番目のグリッドと$$i+1$$番目の境目の位置を表します。  
この式を見るとわかるように、時間更新の際には$$\Delta t / \Delta x$$を計算する必要があります。例えば銀河スケールの流体現象をシミュレーションしようと考えた場合、$$\Delta x$$はpc~kpcスケールとなります。
すると$$\Delta t/ \Delta x$$はとても小さな値となり、情報落ちが発生する可能性も考えられます。数値計算を安全に実行するためにも、方程式を規格化しておくことは非常に重要です。
さらに方程式を規格化しスケールフリーな形にしておけば、あとは出力された計算結果に(2)式のような定数をそれぞれかけるだけで、様々な現象を扱うシミュレーションコードにすることが可能です。

{% include adsense.html %} 

