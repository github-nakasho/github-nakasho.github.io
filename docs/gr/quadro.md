---
layout: default
title: 重力波の振幅(四重極公式)
parent: 一般相対性理論
math: mathjax3
permalink: /gr/quadro
nav_order: 18
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

# 重力波の振幅、四重極公式

重力波の振幅はどの程度のものなのかをこのページにまとめました。途中でダランベール方程式の解の導出(後日掲載予定)を用いています。

## 計算

時空に摂動が加わり、計量テンソルが

$$
g_{\mu \nu} = \eta_{\mu \nu} + h_{\mu \nu}
$$

$$
(\eta_{\mu \nu}) = \left( \begin{array}{cccc}
-1 & & & {\bf 0} \\    
& 1 & & \\
& & 1 & \\
{\bf 0} & & & 1 
\end{array} \right), 
(h_{\mu \nu}) = \left( \begin{array}{cccc}
0 & & & {\bf 0} \\    
& E_+ & & \\
& & -E_+ & \\
{\bf 0} & & & 0
\end{array} \right)
$$

のように変化したとします。ただし$$\| E_+ \| \ll 1$$です。重力波の伝搬速度を求める部分とアインシュタイン方程式より

$$
\frac{1}{2} \left(\frac{1}{c^2} \frac{\partial^2}{\partial t^2} - \nabla^2 \right) h_{\mu \nu} 
= \frac{8\pi G}{c^4} T_{\mu \nu} \ \Longrightarrow \ 
\Box h_{\mu \nu} = - \frac{16\pi G}{c^4} T_{\mu \nu}
$$

ここで$$\Box$$はダランベール演算子です。ダランベール方程式の解より

$$
h_{\mu \nu} 
= -\frac{1}{4\pi} (-\frac{16\pi G}{c^4}) \iiint_{V'} \frac{[T_{\mu\nu}]}{|{\bf r}-{\bf r}'|} dV' 
= \frac{4G}{c^4} \iiint_{V'} \frac{[T_{\mu\nu}]}{|{\bf r}-{\bf r}'|} dV'
$$

さらに$$[T_{\mu\nu}] \equiv T_{\mu \nu} ({\bf r}', t-\| {\bf r}-{\bf r}' \| /c)$$であり、遅延時刻(retarded time)での物理量を[]で表します。  
考えている重力波源の大きさ$$R$$に比べて、重力波源の位置は観測者から十分に遠いと仮定します。すなわち$$r = \| {\bf r} \| \gg R$$とすると

$$
|{\bf r}-{\bf r}'| = r-\frac{\bf{r} \cdot \bf{r}'}{r} + \cdots
$$

と展開できます。これより

$$
T_{\mu \nu} ({\bf r}', t-\frac{|{\bf r}-{\bf r}'|}{c}) 
= T_{\mu \nu} ({\bf r}', t-\frac{r}{c}) + \frac{\bf{r} \cdot \bf{r}'}{r} \frac{1}{c} \frac{\partial }{\partial t} T_{\mu \nu} (\bf{r}', t-\frac{r}{c}) + \cdots
$$

この式の第2項の大きさを見積もりましょう。先ほどの重力波源の位置が観測者から十分に遠いという仮定から$${\bf r} \cdot {\bf r}' \gg 1$$であることと、天体の運動時間(時間変動)が十分ゆっくりであるというスローモーション近似$$\partial / \partial t \sim 0$$と考えると、第2項は十分小さいと考えられます。よって

$$
h_{\mu \nu} 
\simeq \frac{4G}{c^4 r} \iiint_{V'} T_{\mu \nu} ({\bf r}', t-\frac{r}{c}) dV'
$$

と書けます。重力波の成分は空間成分にしか依存しないため、以降は$$h_{ij}$$のみを考えましょう。唐突ですが

$$
(T^{\alpha \beta} x'_i x'_j)_{, \alpha \beta}
= (T^{\alpha \beta}_{\ \ , \alpha} x'_i x'_j + T^{\alpha \beta} \delta_{i\alpha} x'_j + T^{\alpha \beta}  x'_i \delta_{j\alpha} )_{, \beta}
$$

という量を考えます。完全流体のエネルギー・運動量テンソルは保存則$$T^{\alpha \beta}_{\ \ , \alpha} = 0$$を満たすので

$$
(T^{\alpha \beta} x'_i x'_j)_{, \alpha \beta}
= (T^{\ \beta}_{i} x'_j + T^{\ \beta}_{j}  x'_i)_{, \beta}
= T^{\ \beta}_i \delta_{j\beta} + T^{\ \beta}_{j} \delta_{i \beta} 
= 2 T_{ij}
$$

です。一方、

$$
\begin{aligned}
\iiint_{V'} (T^{\alpha \beta} x'_i x'_j)_{, \alpha \beta} dV' 
&= \iiint_{V'} ((T^{0 \beta} x'_i x'_j)_{,0 \beta} + (T^{k \beta} x'_i x'_j)_{,k \beta}) dV' \\
&= \iiint_{V'} ((T^{0 0} x'_i x'_j)_{,0 0} + (T^{0 \ell} x'_i x'_j)_{,0 \ell}) + (T^{k \beta} x'_i x'_j)_{,k \beta} )dV' \\
&= \iiint_{V'} (T^{00} x'_i x'_j)_{, 00} dV' + \iint_{S'} (T^{0\ell} x'_i x'_j)_{, 0} dS_{\ell} + \iint_{S'} (T^{k\beta}  x'_i x'_j)_{, \beta} dS_k \\
&= \iiint_{V'} (T^{00} x'_i x'_j)_{, 00} dV' 
= \frac{1}{c^2} \frac{\partial^2 }{\partial t^2 } \iiint_{V'} \rho c^2 x'_i x'_j dV' \\
&= \frac{\partial^2 }{\partial t^2 } \iiint_{V'} \rho x'_i x'_j dV' 
\end{aligned}
$$

と計算されます。途中、ガウスの定理と無限遠での面積分は0であること、そして$$T^{00} = \rho c^2$$を用いました。以上より

$$
h_{ij} \simeq \frac{2G}{c^4 r} \frac{\partial^2 }{\partial t^2 } \iiint_{V'} \rho x'_i x'_j dV' 
$$

ここで四重極モーメント

$$
D_{ij} = \iiint_{V'} \rho x'_i x'_j dV' 
$$

を用いて

$$
h_{ij} \simeq \frac{2G}{c^4 r} \ddot{D}_{ij} (t-r/c)
$$

となります。電磁放射の場合、双極子放射が最低次であったのに対し、重力波は四重極放射が最低次となります。これは次のように解釈できます。  
電磁気学では磁気単極子が存在しない($$\nabla \cdot {\bf B} = 0$$)ため、電磁放射は双極子成分から始まります。  
重力理論では、質量単極子にあたる成分は質力保存則、質量双極子にあたる成分は運動量保存則になるため、重力波放射は四重極成分から始まると考えることができます。

## 参考文献

* [1] 川村, 重力波天文学の最前線
* [2] 平松, 宇宙論的起源の背景重力波による余剰次元の探求

{% include adsense.html %}
