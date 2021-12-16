---
layout: default
title: 電磁場テンソル
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/emtensor
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

# 電磁場テンソル

## 4元ポテンシャル

4元ポテンシャルを

$$
A^{\mu} \equiv (\phi, \mathbf{A})=\left(\phi, A_{x}, A_{y}, A_{z}\right)
$$

と定義します。

## 電磁場テンソル

2階のテンソル

$$
F_{\mu \nu}=\partial_{\mu} A_{\nu}-\partial_{\nu} A_{\mu} \tag{1}
$$

の成分を具体的に計算してみましょう。ただし、メトリックテンソルは

$$
\left(\eta_{\mu \nu}\right)=\left(\begin{array}{cccc}
-1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1
\end{array}\right)
$$

のように取ります。

```
素粒子専門の教科書や講義とはミンコフスキーメトリックの符号が逆なので注意が必要です。
```

また

$$
\partial_{0}=\frac{1}{c} \frac{\partial}{\partial t}, \partial_{i}=\frac{\partial}{\partial x_{i}}(i=1,2,3) \tag{2}
$$

です。  
(1), (2)式より

$$
F_{\nu \mu}=\partial_{\nu} A_{\mu}-\partial_{\mu} A_{\nu}=-\left(\partial_{\mu} A_{\nu}-\partial_{\nu} A_{\mu}\right)=-F_{\mu \nu}
$$

$$
F_{00}=F_{11}=F_{22}=F_{33}=0
$$

$$
F_{0 i}=\partial_{0} A_{i}-\partial_{i} A_{0}=\partial_{0} \eta_{i \alpha} A^{\alpha}-\partial_{i} \eta_{0 a} A^{\alpha}=\partial_{0} A^{i}+\partial_{i} A^{0}=\frac{1}{c} \frac{\partial A_{i}}{\partial t}+\frac{\partial \phi}{\partial x_{i}}=-\left[-\nabla \phi-\frac{1}{c} \frac{\partial \mathbf{A}}{\partial t}\right]_{i}=-E_{i}
$$

$$
F_{i j}=\partial_{i} A_{j}-\partial_{j} A_{i}=\partial_{i} \eta_{j \alpha} A^{\alpha}-\partial_{j} \eta_{i \alpha} A^{\alpha}=\partial_{i} A^{j}-\partial_{j} A^{i} \tag{3}
$$

$$
(3) \ \Longrightarrow \ F_{12}=\partial_{1} A^{2}-\partial_{2} A^{1}=\partial_{x} A_{y}-\partial_{y} A_{x}=(\nabla \times \mathbf{A})_{z}=B_{z}
$$

$$
(3) \ \Longrightarrow \ F_{13}=\partial_{1} A^{3}-\partial_{3} A^{1}=\partial_{x} A_{z}-\partial_{z} A_{x}=-(\nabla \times \mathbf{A})_{y}=-B_{y}
$$

$$
(3) \ \Longrightarrow \ F_{23}=\partial_{2} A^{3}-\partial_{3} A^{2}=\partial_{y} A_{z}-\partial_{z} A_{y}=(\nabla \times \mathbf{A})_{x}=B_{x}
$$

$$
\therefore \ 
\left(F_{\mu \nu}\right)=\left(\begin{array}{cccc}
0 & -E_{x} & -E_{y} & -E_{z} \\
E_{x} & 0 & B_{z} & -B_{y} \\
E_{y} & -B_{z} & 0 & B_{x} \\
E_{z} & B_{y} & -B_{x} & 0
\end{array}\right)
$$

上に添字がついている電磁場テンソルも計算しましょう。以下のように計算を行います。

$$
F^\mu_\alpha= \eta^{\mu \beta} F_{\beta \alpha}
\left(\begin{array}{cccc}
-1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1
\end{array}\right)
\left(\begin{array}{cccc}
0 & -E_{x} & -E_{y} & -E_{z} \\
E_{x} & 0 & B_{z} & -B_{y} \\
E_{y} & -B_{z} & 0 & B_{x} \\
E_{z} & B_{y} & -B_{x} & 0
\end{array}\right)
= \left(\begin{array}{cccc}
0 & E_{x} & E_{y} & E_{z} \\
E_{x} & 0 & B_{z} & -B_{y} \\
E_{y} & -B_{z} & 0 & B_{x} \\
E_{z} & B_{y} & -B_{x} & 0
\end{array}\right)
$$

$$
F^{\mu \nu} = \eta^{\alpha \nu} F^\mu_\alpha = F^\mu_\alpha \eta^{\alpha \nu} 
= \left(\begin{array}{cccc}
0 & E_{x} & E_{y} & E_{z} \\
E_{x} & 0 & B_{z} & -B_{y} \\
E_{y} & -B_{z} & 0 & B_{x} \\
E_{z} & B_{y} & -B_{x} & 0
\end{array}\right)
\left(\begin{array}{cccc}
-1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1
\end{array}\right)
= \left(\begin{array}{cccc}
0 & E_{x} & E_{y} & E_{z} \\
-E_{x} & 0 & B_{z} & -B_{y} \\
-E_{y} & -B_{z} & 0 & B_{x} \\
-E_{z} & B_{y} & -B_{x} & 0
\end{array}\right)
$$

結局、時間成分しか符号が反転していないことがわかります。

## マクスウェル方程式の電磁場テンソル表現

マクスウェル方程式は以下の4つからなります。

* ガウスの法則

$$
\nabla \cdot {\bf E} = 4\pi \rho
$$

* アンペール・マクスウェルの法則

$$
\nabla \times {\bf B} = \frac{4\pi}{c} {\bf j} + \frac{1}{c} \frac{\partial {\bf E}}{\partial t}
$$

* 磁気単極子が存在しないことを表す式

$$
\nabla \cdot {\bf B} = 0
$$

* ファラデーの法則

$$
\nabla \times {\bf E} = -\frac{1}{c} \frac{\partial {\bf B}}{\partial t}
$$

マスクウェル方程式は2つのグループに大別することができます。上の2つは電荷密度や電流密度という外部要因を含む方程式群です。
下の2つは電場と磁場のみを方程式に含み、外的要因に依存しません。後者のグループを内部方程式(internal equations)と呼びます。  

この2つのグループを電磁場テンソルを用いて表現してみましょう。まずは外的要因を含む方程式群からです。

* ガウスの法則

$$
\frac{\partial E_x}{\partial x} + \frac{\partial E_y}{\partial y} + \frac{\partial E_z}{\partial z} 
= \partial_1 F^{01} + \partial_2 F^{02} + \partial_3 F^{03} 
= \partial_\mu F^{0\mu} 
= 4\pi \rho
$$

* アンペール・マクスウェルの法則

$$
-\frac{1}{c} \frac{\partial E_x}{\partial t} + \frac{\partial B_z}{\partial y} - \frac{\partial B_y}{\partial z} 
= \partial_0 F^{10} + \partial_2 F^{12} + \partial_3 F^{13} = \partial_\mu F^{1\mu} = \frac{4\pi}{c} j^1 \\
\ \Longrightarrow \ 
\partial_\mu F^{i \mu} = \frac{4\pi}{c} j^i
$$

ここで4元電流密度ベクトル$$j^\nu = (c\rho, {\bf j})$$を定義すると、2つの式は

$$
\partial_\mu F^{\nu \mu} = \frac{4\pi}{c} j^\nu
$$

のようにまとめることができます。  
残りの2つの内部方程式も電磁場テンソルで表現しましょう。

* 磁気単極子が存在しないことを表す式

$$
\frac{\partial B_x}{\partial x} + \frac{\partial B_y}{\partial y} + \frac{\partial B_z}{\partial z} 
= \partial_1 F_{23} + \partial_2 F_{31} + \partial_3 F_{12} = 0
$$

* ファラデーの法則

$$
\frac{1}{c} \frac{\partial B_x}{\partial t} + \frac{\partial E_z}{\partial y} - \frac{\partial E_y}{\partial z} 
= \partial_0 F_{23} + \partial_2 F_{30} + \partial_3 F_{02} = 0
$$

以上をまとめて

$$
\partial_\lambda F_{\mu \nu} + \partial_\mu F_{\nu \lambda} + \partial_\nu F_{\lambda \mu} = 0
$$

となります。電磁場テンソルを用いることで、4本の方程式を2つの方程式にまとめることができました。

## 相対論的な運動方程式

電磁場中を運動する電荷$$e$$の粒子に働くローレンツ力を求めましょう。そのためにローレンツ力の満たすべき要請から考えます。  

* 相対論的に共変である
* 非相対論の極限でこれまでのローレンツ力を再現する

これらの要請を満たす形として

$$
F^{\mu}=\frac{e}{c} F_{\nu}^{\mu} U^{\nu} \tag{4}
$$

が知られています。しかしこの形はただしいでしょうか。それを確かめてみましょう。ここで

$$
U^{\nu}=\frac{d x^{\nu}}{d \tau}=\gamma \frac{d x^{\nu}}{d t}=\gamma(c, \mathbf{v})
$$

は4元速度です。  
このときのローレンツ力の時間・空間成分を求めてみましょう。

$$
(4) \ \Longrightarrow \ F^{\mu}=\frac{e}{c} \eta^{\mu \alpha} F_{\alpha \nu} U^{\nu}
$$

それでは各成分を計算していきます。

$$
F^{0}=\frac{e}{c} \eta^{00} F_{0 \nu} U^{\nu}=-\frac{e}{c} \gamma\left(-E_{x} v_{x}-E_{y} v_{y}-E_{z} v_{z}\right)=\frac{e}{c} \gamma \mathbf{E} \cdot \mathbf{v}
$$

$$
F^{1}=\frac{e}{c} \eta^{11} F_{1 \nu} U^{\nu}=\frac{e}{c} \gamma\left(E_{x} c+B_{z} v_{y}-B_{y} v_{z}\right)=\gamma\left[e \mathbf{E}+\frac{e}{c}(\mathbf{v} \times \mathbf{B})\right]_{x}
$$

$$F^{2}, F^{3}$$も同様に求まり

$$
F^{i}=\gamma\left[e \mathbf{E}+\frac{e}{c}(\mathbf{v} \times \mathbf{B})\right]_{i} \ \ \ (i \neq 0)
$$

相対論的な粒子の運動方程式より

$$
m_{e} \frac{d U^{\mu}}{d \tau}=F^{\mu}
$$

よって

$$
m_{e} \gamma \frac{d}{d t}(\gamma c)=\frac{e}{c} \gamma \mathbf{E} \cdot \mathbf{v} \Longleftrightarrow \frac{d}{d t}\left(m_{e} \gamma c^{2}\right)=e \mathbf{E} \cdot \mathbf{v} \tag{5}
$$

$$
m_{e} \gamma \frac{d}{d t}(\gamma \mathbf{v})=\gamma\left[e \mathbf{E}+\frac{e}{c} \mathbf{v} \times \mathbf{B}\right] \Longleftrightarrow \frac{d}{d t}\left(m_{e} \gamma \mathbf{v}\right)=e \mathbf{E}+\frac{e}{c} \mathbf{v} \times \mathbf{B} \tag{6}
$$

これら2つの式が非相対論的極限において古典力学の方程式に帰着することを調べましょう。  
非相対論的極限では

$$
\gamma=\frac{1}{\sqrt{1-\beta^{2}}} \simeq 1+\frac{1}{2} \beta^{2}=1+\frac{1}{2}\left(\frac{v}{c}\right)^{2}
$$

より

$$
(5) \ \Longrightarrow \ \frac{d}{d t}\left\{m_{e}\left(c^{2}+\frac{1}{2} v^{2}\right)\right\}=\frac{d}{d t}\left(\frac{1}{2} m_{e} v^{2}\right)=e \mathbf{E} \cdot \mathbf{v}
$$

これは運動エネルギーの時間変化です。電場が仕事をすることで運動エネルギーに時間変化をもたらします。

$$
(6) \ \Longrightarrow \ \frac{d}{d t}\left\{m_{e}\left(1+\frac{1}{2} \frac{v^{2}}{c^{2}}\right) {\bf v}\right\} \simeq \frac{d}{d t}\left(m_{e} \mathbf{v}\right)=e \mathbf{E}+\frac{e}{c} \mathbf{v} \times \mathbf{B}
$$

これは運動量の時間変化です。電場とローレンツ力による力が運動量の時間変化をもたらすという式です。

{% include adsense.html %}
 