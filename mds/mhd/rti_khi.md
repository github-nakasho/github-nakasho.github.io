---
layout: default
title: レイリー・テイラー、ケルビン・ヘルムホルツ不安定性
parent: 宇宙磁気流体力学
math: mathjax3
permalink: /mhd/rti_khi
nav_order: 19
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

# レイリー・テイラー不安定性とケルビン・ヘルムホルツ不安定性

ここでは様々なところで見られるレイリー・テイラー不安定性(Rayleigh-Taylor Instability; RTI)とケルビン・ヘルムホルツ不安定性(Kelvin-Helmholtz Instability; KHI)についてメモします。
ただし、以下では一様磁場が存在する磁気流体中での不安定性を考えていきます。

## レイリー・テイラー不安定性の直感的理解

まずは座標設定からです。下図のように$$y=0$$を境界面として、2つの密度や速度が異なる媒質が層をなしているとします。$$y$$が負の方向に一様重力も存在しているとします。
今、この境界面に微小な摂動が加わり、境界面が図の点線のように変化したとします。

![]()

上図に置いて$$\rho_0^{(1)}>\rho_0^{(2)}$$のように、単位体積あたりの質量が重たい流体が軽い流体の上に乗っかっている場合を考えます。ここに摂動が加わると、下から持ち上がった部分は周囲よりも軽いために浮力を感じ、より上昇しようとします。
逆に、上から下に突き出た部分は周囲よりも重たいため、重力でさらに下降します。このようにして、上に乗っていた重たい流体と下の軽い流体の混合が起こります。ただし磁場が存在する場合には、磁力線による磁気張力が存在するため、浮力による上昇や重力による下降が妨げられます。
これが磁場がある場合のレイリー・テイラー不安定性の直感的な理解です。

![]()

## ケルビン・ヘルムホルツ不安定性の直感的理解

先程と同じ座標設定ですが、今度は速度シアがある場合、すなわち$$v_0^{(1)} \neq v_0^{(2)}$$のような場合を考えましょう。ここからさらにガリレイ変換を行い、どちらかの速度のみが観測されるような系に移ります。
摂動が加わることで、下図のように境界面に沿って流線も変化します。すると流体要素の軌道が曲げられることで、流体要素は遠心力を感じるようになります。これにより上に凸の部分には上向きの力、下に凸の部分には下向きの力が生じ、2流体の混合が起こります。
この場合も、磁場が存在する場合には、磁力線による磁気張力がこの運動を妨げます。これが磁場がある場合のケルビン・ヘルムホルツ不安定性の直感的な理解です。

![]()

## 基礎方程式

それでは、この2つの不安定性を定量的に評価していきましょう。簡単のため、以下では非圧縮を仮定します。

$$
\nabla \cdot \mathbf{v} = 0 \tag{1}
$$

連続の式より

$$
\frac{\partial \rho}{\partial t} + \nabla \cdot (\rho \mathbf{v}) 
= 0 \tag{2}
$$

運動量保存の式より

$$
\frac{\partial}{\partial t} (\rho \mathbf{v}) + \nabla \cdot \left\{ \rho \mathbf{v}\mathbf{v} - \frac{1}{4\pi} \mathbf{B}\mathbf{B} + \left( P + \frac{1}{8\pi} B^2\right) \mathbf{I} \right\} 
= - \rho g \mathbf{e}_y \tag{3}
$$

誘導方程式より

$$
\frac{\partial \mathbf{B}}{\partial t} = \nabla \times (\mathbf{v} \times \mathbf{B}) \tag{4}
$$

マクスウェル方程式から、磁気単極子が存在しないことを表す式より

$$
\nabla \cdot \mathbf{B} = 0 \tag{5}
$$

## 方程式の線形化

最初、系は定常状態にあるとします。そのときの物理量をそれぞれ

$$
\rho 
= \rho_0, \quad \mathbf{v} 
= \mathbf{v}_0 = (v_0, 0, 0), \quad \mathbf{B} 
= \mathbf{B}_0 = (B_0, 0, 0), P = P_0
$$

とします。$$\rho_0, v_0, P_0$$は$$y$$のみの関数で、$$B_0$$は定数であるとします。(1)-(5)式より

$$
\nabla \cdot \mathbf{v}_0 = 0 \tag{6}
$$

$$
\nabla \cdot (\rho_0 \mathbf{v}_0) = 0 \tag{7}
$$

$$
\nabla \cdot \left\{ \rho_0 \mathbf{v}_0 \mathbf{v}_0 - \frac{1}{4\pi} \mathbf{B}_0 \mathbf{B}_0 + \left( P_0 + \frac{1}{8\pi} B_0^2 \right) \mathbf{I}\right\} 
= - \rho_0 g \mathbf{e}_y \tag{8}
$$

$$
\nabla \times (\mathbf{v}_0 \times \mathbf{B}_0) 
= \mathbf{0} \tag{9}
$$

$$
\nabla \cdot \mathbf{B}_0 = 0 \tag{10}
$$

ここに微小な摂動が加わり、物理量がそれぞれ

$$
\rho = \rho_0 + \delta \rho, \quad 
\mathbf{v} = \mathbf{v}_0 + \delta \mathbf{v} = (v_0 + \delta v_x, \delta v_y, 0), \quad
\mathbf{B} = \mathbf{B}_0 + \delta \mathbf{B} = (B_0 + \delta B_x, \delta B_y, 0), \quad
P = P_0 + \delta P
$$

のように変化したとします。これらを(1)-(5)式に代入していきましょう。(1)式より

$$
\underbrace{\nabla \cdot \mathbf{v}_0}_{(6)} + \nabla \cdot \delta \mathbf{v} 
= \nabla \cdot \delta \mathbf{v} = 0 \tag{11}
$$

次に(2)式からは

$$
\begin{align}
&\frac{\partial}{\partial t} (\rho_0 + \delta \rho) + \nabla \cdot \left\{ (\rho_0 + \delta \rho) (\mathbf{v}_0 + \delta \mathbf{v})\right\} 
= \frac{\partial \delta \rho}{\partial t} + \underbrace{\nabla \cdot (\rho_0 \mathbf{v}_0)}_{(7)} + \nabla \cdot (\delta \rho \mathbf{v}_0 + \rho_0 \delta \mathbf{v}) \notag \\
&= \frac{\partial \delta \rho}{\partial t} + (\mathbf{v}_0 \cdot \nabla) \delta \rho + \delta \rho \underbrace{(\nabla \cdot \mathbf{v}_0)}_{(6)} + (\delta \mathbf{v} \cdot \nabla) \rho_0 + \rho_0 \underbrace{(\nabla \cdot \delta \mathbf{v})}_{(11)} \notag \\
&= \frac{\partial \delta \rho}{\partial t} + (\mathbf{v}_0 \cdot \nabla) \delta \rho + (\delta \mathbf{v} \cdot \nabla) \rho_0 
= 0 \tag{12}
\end{align}
$$

続いて(3)式です。

$$
\begin{align}
&\frac{\partial }{\partial t} \left\{ (\rho_0 + \delta \rho) (\mathbf{v}_0 + \delta \mathbf{v}) \right\} \notag \\
&\qquad + \nabla \cdot \left\{ (\rho_0 + \delta \rho) (\mathbf{v}_0 + \delta \mathbf{v}) (\mathbf{v}_0 + \delta \mathbf{v}) - \frac{1}{4\pi} (\mathbf{B} + \delta \mathbf{B}) (\mathbf{B}_0 + \delta \mathbf{B}) 
+ \left( P_0 + \delta P + \frac{1}{8\pi} (\mathbf{B}_0 + \delta \mathbf{B}) \cdot (\mathbf{B}_0 + \delta \mathbf{B})\right) \mathbf{I}\right\} \notag \\
&= \frac{\partial }{\partial t} (\rho_0 \delta \mathbf{v} + \delta \rho \mathbf{v}_0) + \nabla \cdot \left\{ \rho_0 \mathbf{v}_0 \mathbf{v}_0 + \delta \rho \mathbf{v}_0 \mathbf{v}_0 + \rho_0 \mathbf{v}_0 \delta \mathbf{v} \right. \notag \\
&\qquad \left. + \rho_0 \delta \mathbf{v} \mathbf{v}_0 - \frac{1}{4\pi} (\mathbf{B}_0 \mathbf{B}_0 + \mathbf{B}_0 \delta \mathbf{B} + \delta \mathbf{B} \mathbf{B}_0) + \left( P_0 + \delta P + \frac{1}{8\pi} (B_0^2 + 2 \delta \mathbf{B} \cdot \mathbf{B}_0)\right) \mathbf{I}\right\} \notag \\
&= - (\rho_0 + \delta \rho) g \mathbf{e}_y \notag
\end{align}
$$

ここで(8)式を用いると

$$
\frac{\partial }{\partial t} (\rho_0 \delta \mathbf{v} + \delta \rho \mathbf{v}_0) 
+ \nabla \cdot \left\{ \delta \rho \mathbf{v}_0 \mathbf{v}_0 + \rho \mathbf{v}_0 \delta \mathbf{v} + \rho_0 \delta \mathbf{v} \mathbf{v}_0 
- \frac{1}{4\pi} (\mathbf{B}_0 \delta \mathbf{B} + \delta \mathbf{B} \mathbf{B}_0) + \left(\delta P + \frac{1}{4\pi} \delta \mathbf{B} \cdot \mathbf{B}_0\right) \mathbf{I}\right\} 
= - \delta \rho g \mathbf{e}_y \tag{13}
$$

さらに(4)式は

$$
\begin{align}
\frac{\partial }{\partial t} (\mathbf{B}_0 + \delta \mathbf{B}) - \nabla \times \{ (\mathbf{v}_0 + \delta \mathbf{v}) \times (\mathbf{B}_0 + \delta \mathbf{B})\} 
&= \frac{\partial \delta \mathbf{B}}{\partial t} - \nabla \times (\mathbf{v}_0 \times \mathbf{B}_0 + \mathbf{v}_0 \times \delta \mathbf{B} + \delta \mathbf{v} \times \mathbf{B}_0) \notag \\
&\underbrace{=}_{(9)} \frac{\partial \delta \mathbf{B}}{\partial t} - \nabla \times (\mathbf{v}_0 \times \delta \mathbf{B} + \delta \mathbf{v} \times \mathbf{B}_0) \notag \\
&= \mathbf{0} \tag{14}
\end{align}
$$

最後に(5)式は

$$
\nabla \cdot (\mathbf{B}_0 + \delta \mathbf{B}) 
\underbrace{=}_{(10)} \nabla \cdot \delta \mathbf{B} = 0 \tag{15}
$$

のようになります。ここまではベクトルの形を保持したまま式変形しましたが、ここからは具体的に成分をあらわにして式変形しましょう。(11)式より

$$
\frac{\partial \delta v_x}{\partial t} + \frac{\partial \delta v_y}{\partial t} = 0 \tag{16}
$$

(12)式より

$$
\frac{\partial \delta \rho}{\partial t} + v_0 \frac{\partial \delta \rho}{\partial x} + \delta v_x \underbrace{\frac{\partial \rho_0}{\partial x}}_{=0} + \delta v_y \frac{\partial \rho_0}{\partial y} 
= \frac{\partial \delta \rho}{\partial t} + v_0 \frac{\partial \delta \rho}{\partial x} + \delta v_y \frac{\partial \rho_0}{\partial y} 
= 0 \tag{17}
$$

(15)式より

$$
\frac{\partial \delta B_x}{\partial x} + \frac{\partial \delta B_y}{\partial y} = 0 \tag{18}
$$

(13)式の$$x$$成分より

$$
\begin{align}
&\rho_0 \frac{\partial \delta v_x}{\partial t} + \underbrace{v_0 \frac{\partial \delta \rho}{\partial t}}_{(17)} 
+ \frac{\partial}{\partial x} \left\{ (\delta \rho v_0) v_0 + (\rho_0 v_0) \delta v_x + (\rho_0 \delta v_x) v_0 - \frac{1}{4\pi} B_{0x} \delta B_x - \frac{1}{4\pi} \delta B_x B_0 + \delta P + \frac{1}{4\pi} \delta B_x B_0\right\} \notag \\
& \qquad + \frac{\partial}{\partial y} \left\{ (\rho_0 v_0) \delta v_y - \frac{1}{4\pi} B_0 \delta B_y \right\} = 0 \notag \\
&\Longrightarrow \ 
\rho_0 \frac{\partial \delta v_x}{\partial t} - v_0 \left( v_0 \frac{\partial \delta \rho}{\partial x} - \delta v_y \frac{\partial \rho_0}{\partial y}\right) 
+ \frac{\partial}{\partial x} \left( v_0^2 \delta \rho + 2 \rho_0 v_0 \delta v_x - \frac{1}{4\pi} B_0 \delta B_x + \delta P\right) + \frac{\partial}{\partial y} \left( \rho_0 v_0 \delta v_y - \frac{1}{4\pi} B_0 \delta B_y\right) = 0 \notag \\
&\Longrightarrow \ 
\rho_0 \frac{\partial \delta v_x}{\partial t} + 2 \rho_0 v_0 \frac{\partial \delta v_x}{\partial x} - \frac{1}{4\pi} B_0 \frac{\partial \delta B_x}{\partial x} + \frac{\partial \delta P}{\partial x} + \rho_0 \delta v_y \frac{\partial v_0}{\partial y} + \rho_0 v_0 \frac{\partial \delta v_y}{\partial y} - \frac{1}{4\pi} B_0 \frac{\partial \delta B_y}{\partial y} \notag \\
& \qquad \qquad \qquad = \rho_0 \frac{\partial \delta v_x}{\partial t} + \rho_0 v_0 \frac{\partial \delta v_x}{\partial x} + \rho_0 v_0 \underbrace{\left( \frac{\partial \delta v_x}{\partial x} + \frac{\partial \delta v_y}{\partial y}\right)}_{(16)} - \frac{1}{4\pi} B_0 \underbrace{\left( \frac{\partial \delta B_x}{\partial x} + \frac{\partial \delta B_y}{\partial y}\right)}_{(18)} + \frac{\partial \delta P}{\partial x} + \rho_0 \delta v_y \frac{\partial v_0}{\partial y} 
= 0
\end{align}
$$

以上から

$$
\rho_0 \frac{\partial \delta v_x}{\partial t} + \rho_0 v_0 \frac{\partial \delta v_x}{\partial x} + \frac{\partial \delta P}{\partial x} + \rho_0 \delta v_y \frac{\partial v_0}{\partial y} 
= 0
$$

を得ます。同様に、(13)式の$$y$$成分より

$$
\rho_0 \frac{\partial \delta v_y}{\partial t} + \frac{\partial}{\partial x} \left( \rho_0 \delta v_y v_0 - \frac{1}{4\pi} \delta B_y B_0\right) + \frac{\partial}{\partial y} \left( \delta P + \frac{1}{4\pi} \delta B_x B_0 \right) = - \delta \rho g 
$$

# 参考文献

[1] 観山 正見, 野本 憲一, 二間瀬 敏史, ”天体物理学の基礎 II”  
[2] S. Chandrasekhar, "Hydrodynamic and Hydromagnetic Stability"  
[3] E. Priest, "Solar MagnetohydroDynamics"

{% include adsense.html %} 

