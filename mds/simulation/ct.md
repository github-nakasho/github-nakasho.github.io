---
layout: default
title: CT 法
parent: 数値計算
math: mathjax3
permalink: /simulation/ct
nav_order: 9
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

# Constrained Transport (CT) 法

多次元磁気流体計算をそのまま実行すると、$$\nabla \cdot \mathbf{B} = 0$$ が破れ、人工的な力が発生します。
ここでは、それを補正する手法の一つである Constrained Transport (CT) 法についてまとめました。

## [Evans & Hawley (1988)](https://ui.adsabs.harvard.edu/abs/1988ApJ...332..659E/abstract) の提案

### 基本アイデア

CT 法を考案した原論文として知られる論文で、その引用数は 1500 回以上に上ります (2026 年 8月現在)。
まずは、この [Evans & Hawley (1988)](https://ui.adsabs.harvard.edu/abs/1988ApJ...332..659E/abstract) を読み解いていきましょう。  
磁気流体力学の[磁場の時間発展の方程式 (誘導方程式)](/mhd/induction)は、次のように書かれるのでした。

$$
\frac{\partial \mathbf{B}}{\partial t} 
= - \nabla \times \mathbf{E} 
= \nabla \times (\mathbf{v} \times \mathbf{B}) \tag{1}
$$

この時間・空間微分の部分を、素朴に離散化してみましょう。
まずは時間微分を離散化すると

$$
\mathbf{B}^{n+1} 
= \mathbf{B}^n - \Delta t [ \nabla \times \mathbf{E} ]^n \tag{2}
$$

のようになります。
ここで上付き添字の $$n$$ は、時間ステップが $$n$$ であることを表すものです。
そして、(2)式の空間微分の部分も離散化したものを考えます。
すると離散化により生まれる $$n$$ ステップ目の誤差が $$n + 1$$ にも加算されることがわかります。
結果として磁場 $$\mathbf{B}$$ には、時間ステップとともに誤差が積算していき、初期に保たれていた $$\nabla \cdot \mathbf{B} = 0$$ が破られるという問題が出てきます。
そこで、[Evans & Hawley (1988)](https://ui.adsabs.harvard.edu/abs/1988ApJ...332..659E/abstract) は、[誘導方程式](/mhd/induction)を積分形で考えることにしました。
(1)式の両辺を、面 $$S$$ で積分すると

$$
\frac{\partial}{\partial t} \iint_S \mathbf{B} \cdot d\mathbf{S} 
= \iint_S \nabla \times \mathbf{E} \cdot d\mathbf{S} 
\underbrace{=}_{ストークスの定理} \oint_{\partial S} \mathbf{E} \cdot d\mathbf{s} \tag{3}
$$

のようになります。
最左辺は面 $$S$$ を貫く磁束の時間変化を表します。
すなわち(3)式は、磁束の時間変化が、その面のふち(エッジ)で起電力 (EelectroMotive Force: EMF) を線積分することで与えられることを意味します。
[Evans & Hawley (1988)](https://ui.adsabs.harvard.edu/abs/1988ApJ...332..659E/abstract) では、この事実を自然に数値計算に取り込むために、次のような変数配置を行うことを提案しました。

|物理量|配置箇所|
|:--|:--|
|$$\rho, \mathbf{v}, E$$|セル中心|
|$$b_x, b_y, b_z$$|面中心 (ただしそれぞれに垂直な面)|
|$$\mathcal{E}_x, \mathcal{E}_y, \mathcal{E}_z$$|辺中心|

![](/assets/images/simulation/ct_01.png)  
各物理量の定義位置を表した図。密度・速度・全エネルギーはセル中心 (青点)、磁場の各成分は面の中心 (マゼンダ矢印)、電場の各成分は辺の中心 (緑矢印) で定義されている。  

ここで、面中心で定義される磁場を $$\mathbf{b} = (b_x, b_y ,b_z)$$、そして辺中心で定義される EMF を $$\boldsymbol{\mathcal{E}}=(\mathcal{E}_x, \mathcal{E}_y, \mathcal{E}_z)$$ のように書き、これまでセル中心で定義されていたものとは違うことを強調しています。またこのような格子配置を、スタガード格子 (staggered grid) と呼びます。
これらの定義と (2) 式より、例えば $$(i-1/2, j, k)$$ の場所にある $$x$$ 軸に垂直な面での磁場 $$b_x$$ は 

$$
b_{x, i-1/2, j, k}^{n+1} 
= b_{x, i-1/2, j, k}^n - \Delta t \left( \frac{\mathcal{E}_{z, i-1/2, j+1/2, k}^n - \mathcal{E}_{z, i-1/2, j-1/2, k}^n}{\Delta y} - \frac{\mathcal{E}_{y, i-1/2, j, k+1/2}^n - \mathcal{E}_{y, i-1/2, j, k-1/2}^n}{\Delta z}\right) \tag{4}
$$

のように時間更新することができます。
同様に

$$
b_{x, i+1/2, j, k}^{n+1} 
= b_{x, i+1/2, j, k}^n - \Delta t \left( \frac{\mathcal{E}_{z, i+1/2, j+1/2, k}^n - \mathcal{E}_{z, i+1/2, j-1/2, k}^n}{\Delta y} - \frac{\mathcal{E}_{y, i+1/2, j, k+1/2}^n - \mathcal{E}_{y, i+1/2, j, k-1/2}^n}{\Delta z}\right) \tag{5}
$$

$$
b_{y, i, j-1/2, k}^{n+1} 
= b_{y, i, j-1/2, k}^n - \Delta t \left( \frac{\mathcal{E}_{x, i, j-1/2, k+1/2}^n - \mathcal{E}_{x, i, j-1/2, k-1/2}^n}{\Delta z} - \frac{\mathcal{E}_{z, i+1/2, j-1/2, k}^n - \mathcal{E}_{z, i-1/2, j-1/2, k}^n}{\Delta x}\right) \tag{6}
$$

$$
b_{y, i, j+1/2, k}^{n+1} 
= b_{y, i, j+1/2, k}^n - \Delta t \left( \frac{\mathcal{E}_{x, i, j+1/2, k+1/2}^n - \mathcal{E}_{x, i, j+1/2, k-1/2}^n}{\Delta z} - \frac{\mathcal{E}_{z, i+1/2, j+1/2, k}^n - \mathcal{E}_{z, i+1/2, j-1/2, k}^n}{\Delta x}\right) \tag{7}
$$

$$
b_{z, i, j, k-1/2}^{n+1} 
= b_{x, i, j, k-1/2}^n - \Delta t \left( \frac{\mathcal{E}_{y, i+1/2, j, k-1/2}^n - \mathcal{E}_{y, i-1/2, j, k-1/2}^n}{\Delta x} - \frac{\mathcal{E}_{x, i, j+1/2, k-1/2}^n - \mathcal{E}_{x, i, j-1/2, k-1/2}^n}{\Delta y}\right) \tag{8}
$$

$$
b_{z, i, j, k+1/2}^{n+1} 
= b_{x, i, j, k+1/2}^n - \Delta t \left( \frac{\mathcal{E}_{y, i+1/2, j, k+1/2}^n - \mathcal{E}_{y, i-1/2, j, k+1/2}^n}{\Delta x} - \frac{\mathcal{E}_{x, i, j+1/2, k+1/2}^n - \mathcal{E}_{x, i, j-1/2, k+1/2}^n}{\Delta y}\right) \tag{9}
$$

を得ます。

### 磁場の発散

この手法を用いたときの、$$\nabla \cdot \mathbf{B}$$ の時間発展を見てみましょう。

$$
\begin{align}
(\nabla \cdot \mathbf{B})_{i, j, k}^{n+1} 
&= \frac{b_{x, i+1/2, j, k}^{n+1} - b_{x, i-1/2, j, k}^{n+1}}{\Delta x} + \frac{b_{y, i, j+1/2, k}^{n+1} - b_{x, i, j-1/2, k}^{n+1}}{\Delta y} + \frac{b_{z, i, j, k+1/2}^{n+1} - b_{x, i, j, k-1/2}^{n+1}}{\Delta z} \notag \\
&\underbrace{=}_{(4), (5), (6), (7), (8), (9)} \cdots \notag \\
&= \frac{b_{x, i+1/2, j, k}^n - b_{x, i-1/2, j, k}^n}{\Delta x} + \frac{b_{y, i, j+1/2, k}^n - b_{x, i, j-1/2, k}^n}{\Delta y} + \frac{b_{z, i, j, k+1/2}^n - b_{x, i, j, k-1/2}^n}{\Delta z} \notag \\
&= (\nabla \cdot \mathbf{B})_{i, j, k}^n \tag{10}
\end{align}
$$

途中の計算は長くなるため省略しましたが、例えば (5) 式から出てくる $$- \frac{\Delta t}{\Delta x \Delta y} \mathcal{E}_{z, i+1/2, j + 1/2, k}^n$$ は、(7) 式から出てくる $$ \frac{\Delta t}{\Delta y \Delta x} \mathcal{E}_{z, i+1/2, j+1/2, k}^n$$ と打ち消し合います。
このようにして EMF の項が全て打ち消しあうことで、最終的に (10) 式を得ます。
すなわち、初期状態に $$\nabla \cdot \mathbf{B} = 0$$ となるような磁場を準備した場合、それがその後の任意の時間ステップでも維持されます。
発生するのは、離散化により生まれる丸め誤差のみです。

{% include adsense.html %}

## EMF 計算手法の比較

CT 法の基本的なアイディアは、ここまでで尽きていると言っても良いでしょう。
しかし、実際の計算では (4) - (9) の EMF をどのように計算するかが問題になります。
[HLLD 法](/simulation/hlld)などのリーマン解法で計算されるのは、面中心のフラックスです。
セル中心の値に加え、面中心のフラックスの情報も用いることで、正しくエッジでの EMF を計算する必要があります。
以降では、そのために開発された手法たちを見ていくことにしましょう。  
(1) 式より

$$
\begin{align}
&\frac{\partial \mathbf{B}}{\partial t} + \nabla \times \mathbf{E} 
= \mathbf{0} \notag \\
&\Longrightarrow \ 
\frac{\partial B_x}{\partial t} + \frac{\partial E_z}{\partial y} - \frac{\partial E_y}{\partial z} 
= 0, \ 
\frac{\partial B_y}{\partial t} + \frac{\partial E_x}{\partial z} - \frac{\partial E_z}{\partial x} 
= 0, \
\frac{\partial B_z}{\partial t} + \frac{\partial E_y}{\partial x} - \frac{\partial E_x}{\partial y} 
= 0 \tag{11}
\end{align}
$$

のように書けることから、$$B_y$$ に対する $$x$$ 方向の フラックス $$F_{[B_y]}$$ と $$B_x$$ に対する $$y$$ 方向のフラックス $$G_{[B_x]}$$ がそれぞれ

$$
F_{[B_y]} = - E_z, \quad G_{[B_x]} = E_z \tag{12}
$$

のように与えられることがわかります。
以降では、この関係式を用いて説明していきます。
また以降では簡単のため、2次元で各手法を解説します。

### [Balsara & Spicer (1999)](https://www.sciencedirect.com/science/article/abs/pii/S0021999198961538?via%3Dihub) の手法: 算術平均

[Balsara & Spicer (1999)](https://www.sciencedirect.com/science/article/abs/pii/S0021999198961538?via%3Dihub) は、エッジでの EMF を求めるために、単純な平均を用いることを提案しました。

![](/assets/images/simulation/ct_02.png)  
[Balsara & Spicer (1999)](https://www.sciencedirect.com/science/article/abs/pii/S0021999198961538?via%3Dihub) の手法の説明図。黒点はセル中心 $$(i, j), (i+1, j), (i, j+1), (i+1, j+1)$$ を表す。また青矢印とマゼンダ矢印はそれぞれ、$$x$$ 方向と $$y$$ 方向のフラックスを表現している。   

$$E_{z, i+1/2, j+1/2, k}$$ の周囲にある 4 つの $$E_z$$ の平均をとります。
すなわち

$$
\begin{align}
\mathcal{E}_{z, i+1/2, j+1/2, k}^\mathrm{arithm}
&= \frac{E_{z, i+1/2, j, k} + E_{z, i+1/2, j+1, k} + E_{z, i, j+1/2, k} + E_{z, i+1, j+1/2, k}}{4} \notag \\
&\underbrace{=}_{(12)} \frac{- F_{[B_y], i+1/2, j, k} - F_{[B_y], i+1/2, j+1, k} + G_{[B_x], i, j+1/2, k} + G_{[B_x], i+1, j+1/2, k}}{4} \tag{13}
\end{align}
$$

のようになります。

{: .note}
各項の符号は、ストークスの周回積分の向きと関係ないことに注意が必要です。

このようにして全てのエッジでの電場を計算すれば、(4) - (9) 式を用いて 1 ステップ後の磁場を計算することができます。  
この手法の長所は、圧倒的に実装が簡単なことです。
[HLLD 法](/simulation/hlld) などの近似リーマン解法を実装したあとであれば、そこから各面を通過するフラックスの磁場成分を抽出し、4つを差し引きして割るという操作だけで済みます。
また [HLLD 法](/simulation/hlld) や [HLL 法](/simulation/hll) などの解法に依存せずに用いることができます。  
短所としては、中心補間であるために、物理的でない振動が発生することです。
これにより、ループ磁場形状が崩れたり、Orszag-Tang の渦問題ではガス圧が負になるなどの不具合が生じます。
CT 法実装の足がかりとして最初に実装し、テスト問題を解く程度なら問題ありませんが、実用的ではない手法であると割り切って考えるのが良いでしょう。

### [Gardiner & Stone (2005)](https://www.sciencedirect.com/science/article/abs/pii/S0021999104004784?via%3Dihub) の手法: CT-Contact

この手法は、現在の (相対論的効果を含めない) MHD シミュレーションの標準的な手法として用いられています。
先ほどの手法は 4 つの値を平均する操作からエッジでの電場を計算していましたが、こちらは空間的な再構成から求めます。

![](/assets/images/simulation/ct_03.png)  
[Gardiner & Stone (2005)](https://www.sciencedirect.com/science/article/abs/pii/S0021999104004784?via%3Dihub) の手法の説明図。
青点は面中心での電場を表している。マゼンダ四角は微分を計算するさらなる中間地点 $$(i+1/2, j+1/4), (i+1/2, j+3/4), (i+1/4, j+1/2), (i+3/4, j+1/2)$$ を表す。  

4 つの境界面それぞれからのテイラー展開として、$$\mathcal{E}_{z, i+1/2, j+1/2, k}$$ を表現しましょう。
このとき、$$i$$ と $$i + 1/2$$ の中間点として $$i + 1/4$$ を定義するなどします。
すると

$$
\mathcal{E}_{z, i+1/2, j+1/2, k} 
= E_{z, i+1/2, j, k} + \frac{\Delta y}{2} \left( \frac{\partial E_z}{\partial y}\right)_{i+1/2, j+1/4} \tag{14}
$$

$$
\mathcal{E}_{z, i+1/2, j+1/2, k} 
= E_{z, i+1/2, j+1, k} - \frac{\Delta y}{2} \left( \frac{\partial E_z}{\partial y}\right)_{i+1/2, j+3/4} \tag{15}
$$

$$
\mathcal{E}_{z, i+1/2, j+1/2, k} 
= E_{z, i, j+1/2, k} + \frac{\Delta x}{2} \left( \frac{\partial E_z}{\partial x}\right)_{i+1/4, j+1/2} \tag{16}
$$

$$
\mathcal{E}_{z, i+1/2, j+1/2, k} 
= E_{z, i+1, j+1/2, k} - \frac{\Delta x}{2} \left( \frac{\partial E_z}{\partial x}\right)_{i+3/4, j+1/2} \tag{17}
$$

です。
この 4 つの平均をとると

$$
\begin{align}
\mathcal{E}_{z, i+1/2, j+1/2, k} 
&= \frac{E_{z, i+1/2, j, k} + E_{z, i+1/2, j+1, k} + E_{z, i, j+1/2, k} + E_{z, i+1, j+1/2, k}}{4} \notag \\
& \qquad + \frac{\Delta y}{8} \left\{ \left( \frac{\partial E_z}{\partial y}\right)_{i+1/2, j+1/4} - \left( \frac{\partial E_z}{\partial y}\right)_{i+1/2, j+3/4} \right\} \notag \\
& \qquad + \frac{\Delta x}{8} \left\{ \left( \frac{\partial E_z}{\partial x}\right)_{i+1/4, j+1/2} - \left( \frac{\partial E_z}{\partial x}\right)_{i+3/4, j+1/2} \right\} \notag \\
&\underbrace{=}_{(13)} \mathcal{E}_{z, i+1/2, j+1/2, k}^\mathrm{arithm} + \frac{\Delta y}{8} \left\{ \left( \frac{\partial E_z}{\partial y}\right)_{i+1/2, j+1/4} - \left( \frac{\partial E_z}{\partial y}\right)_{i+1/2, j+3/4} \right\} \notag \\
& \qquad + \frac{\Delta x}{8} \left\{ \left( \frac{\partial E_z}{\partial x}\right)_{i+1/4, j+1/2} - \left( \frac{\partial E_z}{\partial x}\right)_{i+3/4, j+1/2} \right\} \tag{18}
\end{align}
$$

を得ます。
この式において、微分の項をゼロとしたものが、[Balsara & Spicer (1999)](https://www.sciencedirect.com/science/article/abs/pii/S0021999198961538?via%3Dihub) の方法に一致します。
この微分の計算を、[Gardiner & Stone (2005)](https://www.sciencedirect.com/science/article/abs/pii/S0021999104004784?via%3Dihub) は、次のように風上差分で表現することにしました。

$$
\left( \frac{\partial E_z}{\partial y}\right)_{i+1/2, j+1/4} 
= \frac{1 + s_{i+1/2, j}}{2} \frac{E_{z, i, j+1/2} - E_{z, i, j}}{\Delta y / 2} + \frac{1 - s_{i+1/2, j}}{2} \frac{E_{z, i+1, j+1/2} - E_{z, i+1, j}}{\Delta y / 2} \tag{19}
$$

ここで $$s_{i+1/2, j}$$ は、面 $$(i+1/2, j)$$ を通過する流れを $$\pm 1, 0$$ で表すものです。
$$s_{i+1/2, j} = 1$$ ならば、流体は $$x > 0$$ に向かって (すなわち $$i \rightarrow i+1$$ に向かって) 流れており、$$s_{i+1/2, j} = -1$$ ならば逆方向となります。
流れの向きによって、$$i$$ での微分を用いるか、$$i+1$$ での微分を用いるかを切り替えています。
もし $$s_{i+1/2, j} = 0$$ ならば、$$i$$ と $$i + 1$$ での微分の平均値を用いる形になっています。

![](/assets/images/simulation/ct_04.png)  
風上差分を説明する図。図は特に、$$s_{i+1/2, j} = 1$$ の場合を表す。

[Gardiner & Stone (2005)](https://www.sciencedirect.com/science/article/abs/pii/S0021999104004784?via%3Dihub) の論文では、風向き方向を $$v_{x, i+1/2, j}$$ で表現しています。
しかし、実用上は面 $$(i+1/2, j)$$ 上で定義される質量フラックス $$F_{[\rho], i+1/2, j} = (\rho v_x)_{i+1/2, j}$$ の符号関数を計算したもの $$\mathrm{sign} (F_{[\rho], i+1/2, j})$$ で判定するのが良いでしょう。
このように、接触不連続面 (エントロピー波) がどちらの向きに動いているかを用いることから、この手法を "CT-Contact" と呼びます。

{: .note}
ちなみに CT-Contact の呼び名は、この後出てくる [Mignone & Del Zanna (2021)](https://www.sciencedirect.com/science/article/abs/pii/S0021999120305222?via%3Dihub) などによるものです。
[Gardiner & Stone (2005)](https://www.sciencedirect.com/science/article/abs/pii/S0021999104004784?via%3Dihub) の手法と呼ばれたり、省略して GS05 と記述するものもあります。

この手法の長所は、実装および計算が軽量で済むことです。
[HLLD 法](/simulation/hlld) などの近似リーマン解法により計算された面中心でのフラックスと、セル中心のフラックスの差から微分を計算することができます。
それでありながら、2 次精度手法としては散逸が少ない利点もあります。
このような利点から、[Athena](https://iopscience.iop.org/article/10.1086/588755)/[Athena++](https://iopscience.iop.org/article/10.3847/1538-4365/ab929b) などの最先端の MHD コードで採用されており、これを実装する安心感もあります。  
短所としては、微分の計算手法から、精度が空間 2 次精度止まりであることです。
高次精度化への一般化は考えられておらず、そのためには別の方法を考える必要があります。
そして、長所の部分で触れたように、微分の計算部分には近似リーマン解法により計算されたフラックスが必要となります。
すなわち、[HLL 法](/simulation/hll) を使うか [HLLD 法](/simulation/hlld) を用いるか、はたまたロー法を利用するかによって、結果が異なることに注意が必要です。
理論的な側面では、電場の微分 (19) 式が、この選択則に従うかどうかは自明ではありません。
「このように計算すれば上手くいく」という経験則にとどまっており、将来的には、理論的・数学的にこの計算手法が妥当であることを検証する必要があるでしょう。

{% include adsense.html %}

### [Londrillo & Del Zanna (2004)](https://www.sciencedirect.com/science/article/abs/pii/S0021999103005102?via%3Dihub) の手法: UCT-HLL

先ほどの CT-Contact は、経験則的に得たものでしたが、こちらは原理から導出された手法です。
この手法は今では、一般相対論的な MHD (GRMHD) 計算でよく用いられている手法の一つです。
[Londrillo & Del Zanna (2004)](https://www.sciencedirect.com/science/article/abs/pii/S0021999103005102?via%3Dihub) では、辺上に定義される EMF $$\mathcal{E}_{z, i+1/2, j+1/2}$$ を求めるのに、その周囲の 4 つの状態　から、近似リーマン解法を用いて計算することを提案しました。
ここでは [Mignone & Del Zanna (2021)](linkinghub.elsevier.com/retrieve/pii/S0021999120305222) の規約に従って、この手法を見ていきましょう。  
辺上の $$\mathcal{E}_z = - (\mathbf{v} \times \mathbf{B})_z = - v_x B_y + v_y B_x$$ を計算するには、辺上での $$v_x, v_y, B_x, B_y$$ の値が必要となります。
そのため下図のように、面中心で定義される磁場とセル中心で定義される速度を補間することを考えましょう。

![](/assets/images/simulation/ct_05.png)  
辺 $$(i + 1/2, j + 1/2)$$ を中心に、その周囲に定義される磁場と速度から補間を行う。

辺 $$(i + 1/2, j + 1/2)$$ を中心として、図のように上側から時計回りに N, NE, E, SE, S, SW, W, NW と方向を定義します。
$$v_x, v_y$$ はセル中心で定義されている量であるため、そこから斜め方向に補間を行うことで、$$v^\mathrm{NE}, v^\mathrm{SE}, v^\mathrm{SW}, v^\mathrm{NW}$$ を推定することができます。
同様に、磁場 $$B_x, B_y$$ についても NE, SE, SW, NW の値を補間から求める必要がありますが、次のような議論から N, E, S, W の 4 方向のみで十分であることがわかります。
$$B_x$$ は $$x$$ 方向に垂直な面の中心、$$B_y$$ は $$y$$ 方向に垂直な面の中心、でそれぞれ定義されている量です。
$$x$$ 方向の 1 次元のみ考えた場合

$$
\nabla \cdot \mathbf{B} 
= \frac{\partial B_x}{\partial x} 
= 0 \ \Longrightarrow \ B_x = (x方向では一定) \tag{20}
$$

のようになります。
そのため、$$B_x$$ の $$x$$ 方向の補間は考える必要がなく、$$B_x$$ は $$y$$ 方向のみ再構成を行えば良いことがわかります。
すなわち、$$B_x^\mathrm{NE} = B_x^\mathrm{NW} = B_x^\mathrm{N}, B_x^\mathrm{SE} = B_x^\mathrm{SW} = B_x^\mathrm{S}$$ のみを計算すれば良いでしょう。
同様に、$$B_y$$ は $$x$$ 方向のみ再構成を行い、$$B_y^\mathrm{NE} = B_y^\mathrm{SE} = B_y^\mathrm{E}, B_y^\mathrm{NW} = B_y^\mathrm{SW} = B_y^\mathrm{W}$$ のみを計算すれば十分です。
以上をまとめると、磁場については

$$
\begin{align}
& B_x^\mathrm{N} 
= \mathcal{R}_y^- (B_{x, i+1/2, j+1}), \quad B_y^\mathrm{E} 
= \mathcal{R}_x^- (B_{y, i+1, j+1/2}), \notag \\
& B_x^\mathrm{S} 
= \mathcal{R}_y^+ (B_{x, i+1/2, j}), \quad B_y^\mathrm{W} 
= \mathcal{R}_x^+ (B_{y, i, j+1/2}) \notag
\end{align} \tag{21}
$$

のように補間を行えば良いとわかります。
ここで $$\mathcal{R}_x^\pm, \mathcal{R}_y^\pm$$ はそれぞれ、$$x, y$$ 方向の補間を表す関数で、$$+$$ は正の方向、$$-$$ は負の方向への補間を表します。

$$
\mathcal{R}_{x}^\pm (q_{i, j}) 
= q_{i, j} \pm \frac{1}{2} \Delta_x q_{i, j}, \quad
\Delta_x q_{i, j} 
= \mathrm{limiter} (q_{i, j} - q_{i-1, j}, q_{i+1, j} - q_{i, j}) \tag{22}
$$

$$
\mathcal{R}_{y}^\pm (q_{i, j}) 
= q_{i, j} \pm \frac{1}{2} \Delta_y q_{i, j}, \quad
\Delta_y q_{i, j} 
= \mathrm{limiter} (q_{i, j-1} - q_{i, j}, q_{i, j+1} - q_{i, j}) \tag{23}
$$

補間に用いる limiter 関数としては、2 次の場合は [minmod](/simulation/reconstruction#minmod) や [MC](/simulation/reconstruction#monotonized-centered-mc)、3 次の場合は [ENO](/simulation/reconstruction#essentially-non-oscillatory-eno) や CENO、5 次の場合は [WENO](/simulation/reconstruction#weighted-eno-weno) や [MP5](/simulation/reconstruction#monotonicity-preserving) があります。
速度については

$$
\begin{align}
& v_\alpha^\mathrm{NE} 
= \mathcal{R}_y^- (\mathcal{R}_x^- (v_{\alpha, i+1, j+1})), \quad v_\alpha^\mathrm{SE} 
= \mathcal{R}_y^+ (\mathcal{R}_x^- (v_{\alpha, i+1, j})), \notag \\
& v_\alpha^\mathrm{SW} 
= \mathcal{R}_y^+ (\mathcal{R}_x^+ (v_{\alpha, i, j})), \quad v_\alpha^\mathrm{NW} 
= \mathcal{R}_y^- (\mathcal{R}_x^+ (v_{\alpha, i, j+1})) \notag 
\end{align} \tag{24}
$$

のように、2 方向 に補間を行うことで求めます。
これらを用いることで、各方向の $$E_z$$ が

$$
E_z^\mathrm{NE} 
= - v_x^\mathrm{NE} B_y^\mathrm{NE} + v_y^\mathrm{NE} B_x^\mathrm{NE} 
= - v_x^\mathrm{NE} B_y^\mathrm{E} + v_y^\mathrm{NE} B_x^\mathrm{N} \tag{25}
$$

$$
E_z^\mathrm{SE} 
= - v_x^\mathrm{SE} B_y^\mathrm{SE} + v_y^\mathrm{SE} B_x^\mathrm{SE} 
= - v_x^\mathrm{SE} B_y^\mathrm{E} + v_y^\mathrm{SE} B_x^\mathrm{S} \tag{26}
$$

$$
E_z^\mathrm{SW} 
= - v_x^\mathrm{SW} B_y^\mathrm{SW} + v_y^\mathrm{SW} B_x^\mathrm{SW} 
= - v_x^\mathrm{SW} B_y^\mathrm{W} + v_y^\mathrm{SW} B_x^\mathrm{S} \tag{27}
$$

$$
E_z^\mathrm{NW} 
= - v_x^\mathrm{NW} B_y^\mathrm{NW} + v_y^\mathrm{NW} B_x^\mathrm{NW} 
= - v_x^\mathrm{NW} B_y^\mathrm{W} + v_y^\mathrm{NW} B_x^\mathrm{N} \tag{28}
$$

のようになります。
この 4 つの状態から、[HLL 中間状態](/simulation/hll)を計算します。
普通は 1 次元で考える [HLL 中間状態](/simulation/hll)ですが、今回の場合は、辺における真のリーマン問題であり、これは 2 次元です。
リーマンファンは一般に各方向に分離可能ではありませんが、UCT-HLL ではこれを

$$
(2 次元のリーマンファン) 
\approx (x 方向のリーマンファン) \otimes (y 方向のリーマンファン) \tag{29}
$$

のように、各方向のテンソル積で近似します。
一方向の [HLL 中間状態](/simulation/hll)は

$$
\mathbf{F}^\ast 
= \frac{\alpha_x^+ \mathbf{F}_L + \alpha_x^- \mathbf{F}_R}{\alpha_x^+ + \alpha_x^-} - \frac{\alpha_x^+ \alpha_x^-}{\alpha_x^+ + \alpha_x^-} (\mathbf{U}^R - \mathbf{U}^L) \tag{30}
$$

$$
\mathbf{G}^\ast 
= \frac{\alpha_y^+ \mathbf{G}_L + \alpha_y^- \mathbf{G}_R}{\alpha_y^+ + \alpha_y^-} - \frac{\alpha_y^+ \alpha_y^-}{\alpha_y^+ + \alpha_y^-} (\mathbf{U}^R - \mathbf{U}^L) \tag{31}
$$

のように書かれます。
ただし、[HLL のページ](/simulation/hll)と異なり、$$S_R \rightarrow \alpha^+, S_L \rightarrow - \alpha^-$$ のように定義されています。
このように書くと、第一項はフラックスの重みを

$$
w_x^\mathrm{W}
= \frac{\alpha_x^+}{\alpha_x^+ + \alpha_x^-}, \quad
w_x^\mathrm{E}
= \frac{\alpha_x^-}{\alpha_x^+ + \alpha_x^-}, \quad (w_x^W + w_x^E = 1) \tag{32}
$$

$$
w_y^\mathrm{S}
= \frac{\alpha_y^+}{\alpha_y^+ + \alpha_y^-}, \quad
w_y^\mathrm{N}
= \frac{\alpha_y^-}{\alpha_y^+ + \alpha_y^-}, \quad (w_y^S + w_y^N = 1) \tag{33}
$$

とし、左側のフラックスと右側のフラックスを重み付けして足し合わせたもの、と解釈することができます。
これらの重みベクトルを $$\mathbf{w}_x = (w_x^\mathrm{W}, w_x^\mathrm{E}), \mathbf{w}_y = (w_y^\mathrm{S}, w_y^\mathrm{N})$$ とし、さらに EMF テンソルを

$$
\mathsf{E} 
= \left( \begin{array}{cc}
E_z^\mathrm{SW} & E_z^\mathrm{SE} \\
E_z^\mathrm{NW} & E_z^\mathrm{NE} 
\end{array} \right) \tag{34}
$$

とすれば

$$
E_z^\mathrm{center}
= \mathbf{w}_y^\top \mathsf{E} \mathbf{w}_x 
= \frac{\alpha_x^+ \alpha_y^+ E_z^\mathrm{SW} + \alpha_x^+ \alpha_y^- E_z^\mathrm{NW} + \alpha_x^- \alpha_y^+ E_z^\mathrm{SE} + \alpha_x^- \alpha_y^- E_z^\mathrm{NE}}{(\alpha_x^+ + \alpha_x^-)(\alpha_y^+ + \alpha_y^-)} \tag{35}
$$

のように、辺中心でのフラックス部分 ((30), (31) 式の第一項部分) を求めることができます。
2 つの 1 次元重みベクトルの外積 $$\mathbf{w}_x \otimes \mathbf{w}_y$$ で、4 つの方向状態を重みづき平均している、と考えても良いでしょう。
これに、[HLL 中間状態](/simulation/hll) と同じく、左右の状態の差に比例する項を付け足します。
この部分は、左右に進行する波面が掃くことによる物理量のやり取りを表すものです。
$$x$$ 方向には $$B_y$$、$$y$$ 方向には $$B_x$$ しかそれぞれやり取りをしないことから、この項は 2 方向に拡張した場合もカップリングすることなく、それぞれを独立に考えることができます。
(12) 式から、$$F_{[B_y]} = - G_{[B_x]} = E_z$$ のように、方向によって符号が反転することに注意して、最終的に

$$
\begin{align}
\mathcal{E}_{z, i+1/2, j+1/2} 
&= \frac{\alpha_x^+ \alpha_y^+ E_z^\mathrm{SW} + \alpha_x^+ \alpha_y^- E_z^\mathrm{NW} + \alpha_x^- \alpha_y^+ E_z^\mathrm{SE} + \alpha_x^- \alpha_y^- E_z^\mathrm{NE}}{(\alpha_x^+ + \alpha_x^-) (\alpha_y^+ + \alpha_y^-)} \notag \\
& \qquad - \frac{\alpha_y^+ \alpha_y^-}{\alpha_y^+ + \alpha_y^-} (B_x^\mathrm{N} - B_x^\mathrm{S}) + \frac{\alpha_x^+ \alpha_x^-}{\alpha_x^+ + \alpha_x^-} (B_y^\mathrm{E} - B_y^\mathrm{W}) \tag{36} 
\end{align}
$$

を得ます。
この近似が正しいかを判断する材料として、例えば SW 方向から超音速で流体が流れている場合を考えましょう。
このとき $$\alpha_x^- = \alpha_y^- = 0$$ より、(36) 式は $$\mathcal{E}_{z, i+1/2, j+1/2} = E_z^\mathrm{SW}$$ となります。
すなわち純粋に風上である SW 方向からの情報のみを用いることになり、物理的な直感に一致します。
また $$x$$ 方向のみの1次元の流体運動を考えたましょう。
$$\partial_y = 0$$ より、$$E_z^\mathrm{SW} = E_z^\mathrm{NW} = E_z^\mathrm{W}, E_z^\mathrm{SE} = E_z^\mathrm{NE} = E_z^\mathrm{E}$$ です。
これを (36) 式に代入すると

$$
\mathcal{E}_{z, i+1/2, j+1/2} 
= \frac{\alpha_x^+ E_z^\mathrm{W} + \alpha_x^- E_z^\mathrm{E}}{\alpha_x^+ + \alpha_x^-} + \frac{\alpha_x^+ \alpha_x^-}{\alpha_x^+ + \alpha_x^-} (B_y^\mathrm{E} - B_y^\mathrm{W}) \tag{37}
$$

のように、$$x$$ 方向一次元での [HLL フラックス](/simulation/hll)そのものに一致します。  
この手法の長所は、理論的に確立している点です。
経験則に則っている部分がなく、式の導出を一つ一つ追うことができます。
また [Gardiner & Stone (2005) の CT-Contact](/simulation/ct#gardiner--stone-2005-の手法-ct-contact) は、微分の計算方法から、2 次精度にとどまっていました。
UCT-HLL では、(21), (24) 式で出てきた再構成関数 $$\mathcal{R}$$ を高次のものに置き換えるだけで、高次精度化することができます。
さらに、[Gardiner & Stone (2005) の CT-Contact](/simulation/ct#gardiner--stone-2005-の手法-ct-contact) は、近似リーマン解法に依存する部分が大きく、ロー法を用いるか [HLLD 法](/simulation/hlld) を用いるかなどで結果が異なります。
UCT-HLL ではどの解法を用いても、計算結果はほとんど変わりません。
最後に、この手法は特性速度 $$\lambda^L, \lambda^R$$ およびそこから計算される $$\alpha^\pm$$ さえ計算できれば、辺上での電場の時間発展が得られます。
そのため相対論的な MHD 計算と相性がよく、[ECHO](https://www.aanda.org/articles/aa/abs/2007/37/aa7093-07/aa7093-07.html), [BHAC](https://link.springer.com/article/10.1186/s40668-017-0020-2) などの最先端の計算コードに用いられています。  
短所としては、[HLL](/simulation/hll) の大きな散逸を継承していることです。
Orszag-Tang の渦テストで $$256^2$$ のグリッド数・[MP5](/simulation/reconstruction#monotonicity-preserving) を用いた場合でも、中心での磁気島が形成されないという、散逸的な結果が報告されています。
カレントシートテストでも磁気リコネクションが早く起こり、これは数値抵抗が大きいことを示しています ([Mignone & Del Zanna (2021)](https://www.sciencedirect.com/science/article/abs/pii/S0021999120305222?via%3Dihub))。

### [Del Zanna et al. (2007)](https://www.aanda.org/articles/aa/abs/2007/37/aa7093-07/aa7093-07.html) の手法: UCT-HLL の改良

[Londrillo & Del Zanna (2004)](https://www.sciencedirect.com/science/article/abs/pii/S0021999103005102?via%3Dihub) が提案した UCT-HLL では、1 つの辺上の EMF を求めるのに、$$v_x, v_y$$ の 4 つの状態 (NE, SE, SW, NW) が必要になります。
3 次元の場合、3 x 4 = 12 個の状態を求めるための補間計算と、そのメモリ上での保存が必要になり、膨大なメモリ量・計算量が必要になります。
そこで [Del Zanna et al. (2007)](https://www.aanda.org/articles/aa/abs/2007/37/aa7093-07/aa7093-07.html) では、次のような書き換えを行いました。  
まず　$$y$$ 方向に垂直な面 $$(i, j+1/2)$$ (W), $$(i+1, j+1/2)$$ (E) 上において、風上化された $$x$$ 方向速度の平均を、次のように計算します。

$$
\bar{v}_{x}^\mathrm{W} 
= \frac{\alpha_y^+ v_{x}^\mathrm{SW} + \alpha_y^- v_{x}^\mathrm{NW}}{\alpha_y^+ + \alpha_y^-} 
= \frac{\alpha_y^+ v_{x, i, j+1/2}^L + \alpha_y^- v_{x, i, j+1/2}^R}{\alpha_y^+ + \alpha_y^-} \tag{38}
$$

$$
\bar{v}_{x}^\mathrm{E} 
= \frac{\alpha_y^+ v_{x}^\mathrm{SE} + \alpha_y^- v_{x}^\mathrm{NE}}{\alpha_y^+ + \alpha_y^-} 
= \frac{\alpha_y^+ v_{x, i+1, j+1/2}^L + \alpha_y^- v_{x, i+1, j+1/2}^R}{\alpha_y^+ + \alpha_y^-} \tag{39}
$$

同様に、$$x$$ 方向に垂直な面 $$(i+1/2, j)$$ (S), $$(i+1/2, j+1)$$ (N) 上において、風上化された $$y$$ 方向速度の平均を、次のように計算します。

$$
\bar{v}_{y}^\mathrm{S} 
= \frac{\alpha_x^+ v_{y}^\mathrm{SW} + \alpha_x^- v_{y}^\mathrm{SE}}{\alpha_x^+ + \alpha_x^-} 
= \frac{\alpha_x^+ v_{y, i+1/2, j}^L + \alpha_x^- v_{y, i+1/2, j}^R}{\alpha_x^+ + \alpha_x^-} \tag{40}
$$

$$
\bar{v}_{y}^\mathrm{N} 
= \frac{\alpha_x^+ v_{y}^\mathrm{NW} + \alpha_x^- v_{y}^\mathrm{NE}}{\alpha_x^+ + \alpha_x^-}
= \frac{\alpha_x^+ v_{y, i+1/2, j+1}^L + \alpha_x^- v_{y, i+1/2, j+1}^R}{\alpha_x^+ + \alpha_x^-} \tag{41}
$$

これらと (25)-(28) 式を用いると、(36) 式は

$$
\begin{align}
\mathcal{E}_{z, i+1/2, j+1/2} 
&= - \frac{\alpha_x^+ (\bar{v}_x B_y)^\mathrm{W} + \alpha_x^- (\bar{v}_x B_y)^\mathrm{E} - \alpha_x^+ \alpha_x^- (B_y^\mathrm{E} - B_y^\mathrm{W})}{\alpha_x^+ + \alpha_x^-} \notag \\
& \qquad + \frac{\alpha_y^+ (\bar{v}_y B_x)^\mathrm{S} + \alpha_y^- (\bar{v}_y B_x)^\mathrm{N} - \alpha_y^+ \alpha_y^- (B_x^\mathrm{N} - B_x^\mathrm{S})}{\alpha_y^+ + \alpha_y^-} \tag{42}
\end{align}
$$

のように書き換えることができます。
ここで、$$(\bar{v}_x B_y)^\mathrm{W} = \bar{v}_x^\mathrm{W} B_y^\mathrm{W}$$ などです。
(38)-(41) 式で出てきた $$v_{x, i, j+1/2}^L, v_{x, i, j+1/2}^R$$ などは、近似リーマン解法のフラックス計算のために、すでに計算されているはずです。
これらを再利用することで、メモリ使用量を減らすことができます。
また (24) 式のように、あらためて再構成を 2 方向に行う必要がなく、計算量の増大も抑えることができます。

{% include adsense.html %}

### [Mignone & Del Zanna (2021)](https://www.sciencedirect.com/science/article/abs/pii/S0021999120305222?via%3Dihub) の手法: UCT-HLLD

[Mignone & Del Zanna (2021)](https://www.sciencedirect.com/science/article/abs/pii/S0021999120305222?via%3Dihub) では、まず [HLL](/simulation/hll) や [HLLD](/simulation/hlld) のように中間状態の数を固定して考えず、一般化された UCT スキームを考察しました。
まずフラックスが、次のような形に整理できると仮定します。

$$
F
= a_x^L F^L + a_x^R F^R - (d_x^R B_y^R - d_x^L B_y^L) \tag{43}
$$

$$a_x^L + a_x^R = 1$$ のように、重みが規格化されているとします。
第一項はフラックスによるもの、第二項は磁場の左右の状態に依存する部分です。
(43) 式において、$$L \rightarrow \mathrm{W}, R \rightarrow \mathrm{E}, F \rightarrow \bar{v}_x B_y$$ としましょう。

$$
(\bar{v}_x B_y)_{i+1/2, j+1/2} 
= a_x^\mathrm{W} (\bar{v}_x B_y)^\mathrm{W} + a_x^\mathrm{E} (\bar{v}_x B_y)^\mathrm{E} - (d_x^\mathrm{E} B_y^\mathrm{E} - d_x^\mathrm{W} B_y^\mathrm{W}) \tag{43}
$$

です。
ここで、$$\bar{v}_x$$ は $$y$$ 面上で風上化された速度であり、(38), (39) 式のように計算されます。
同様に $$B_y$$ は $$y$$ 面内 (E, W) で定義される物理量であり、$$x$$ 面内 (N, S) では定義されていません。
よって、$$\bar{v}_x, B_y$$ については、$$x$$ 方向を考慮する必要がないことがわかります。
同様に $$L \rightarrow \mathrm{S}, R \rightarrow \mathrm{N}, F \rightarrow \bar{v}_y B_x$$ とすると

$$
(\bar{v}_y B_x)_{i+1/2, j+1/2} 
= a_y^\mathrm{N} (\bar{v}_y B_x)^\mathrm{N} + a_y^\mathrm{S} (\bar{v}_y B_x)^\mathrm{S} - (d_y^\mathrm{N} B_x^\mathrm{N} - d_y^\mathrm{S} B_x^\mathrm{S}) \tag{44}
$$

と求まります。
以上から、フラックスの形を (43) 式のように仮定した場合

$$
\begin{align}
\mathcal{E}_{z, i+1/2, j+1/2} 
&= - (\bar{v}_x B_y)_{i+1/2, j+1/2} + (\bar{v}_y B_x)_{i+1/2, j+1/2} \notag \\
&= - a_x^\mathrm{W} (\bar{v}_x B_y)^\mathrm{W} - a_x^\mathrm{E} (\bar{v}_x B_y)^\mathrm{E} + a_y^\mathrm{N} (\bar{v}_y B_x)^\mathrm{N} + a_y^\mathrm{S} (\bar{v}_y B_x)^\mathrm{S} \notag \\
& \qquad + (d_x^\mathrm{E} B_y^\mathrm{E} - d_x^\mathrm{W} B_y^\mathrm{W}) - (d_y^\mathrm{N} B_x^\mathrm{N} - d_y^\mathrm{S} B_x^\mathrm{S}) \tag{45}
\end{align}
$$

のように、辺上での EMF を求めることができました。
係数 $$d$$ は元々 (43) 式で導入されたものであり、辺上については求められていません。
そこで次のような単純平均から、求めることとしましょう。

$$
d_x^\mathrm{W} 
= \frac{1}{2} (d_{x, i+1/2, j}^\mathrm{L} + d_{x, i+1/2, j+1}^\mathrm{L}), \quad 
d_x^\mathrm{E} 
= \frac{1}{2} (d_{x, i+1/2, j}^\mathrm{R} + d_{x, i+1/2, j+1}^\mathrm{R}) \tag{46}
$$

$$
d_y^\mathrm{S} 
= \frac{1}{2} (d_{y, i, j+1/2}^\mathrm{L} + d_{y, i+1, j+1/2}^\mathrm{L}), \quad 
d_y^\mathrm{N} 
= \frac{1}{2} (d_{y, i, j+1/2}^\mathrm{R} + d_{y, i+1, j+1/2}^\mathrm{R}) \tag{47}
$$

ここまでは一般的な扱いをしてきましたが、ここからは [HLLD](/simulation/hlld) に限定して話を進めていきます。
[HLLD](/simulation/hlld) では、リーマンファンを 5 つの波が作る 4 つの中間状態で近似します。

![](/assets/images/simulation/ct_06.png)  
UCT-HLLD 法の説明図。5 つの波の伝播による、4 つの中間状態を考えるが、$$B_y$$ は $$\lambda^\ast$$ ではジャンプをしないことに注意。  

$$\lambda^L, \lambda^R$$ をそれぞれ左右に進行する速進磁気音波速度で伝わる衝撃波面、$$\lambda^{L \ast}, \lambda^{R \ast}$$ をそれぞれアルヴェーン波で伝わる回転不連続面、そしてその間に $$\lambda^\ast$$ で伝播する接触不連続面があります。
例えば、$$x$$ 方向一次元のみを考えましょう。
すると $$B_y$$ は接触不連続面では連続で、$$\lambda^L, \lambda^{L \ast}, \lambda^{R \ast}, \lambda^R$$ ではジャンプを経験します。
この事実から、フラックスをロー法のように書くと

$$
\begin{align}
F 
&= \frac{1}{2} \left\{ F^L + F^R - \vert \lambda^L \vert (B_y^{L\ast} - B_y^L) - \vert \lambda^{L \ast} \vert (B_y^{\ast \ast} - B_y^{L \ast}) \right. \notag \\
& \left. \qquad \qquad - \vert \lambda^{R \ast} \vert (B_y^{R\ast} - B_y^{\ast \ast}) - \vert \lambda^R \vert (B_y^R - B_y^{R \ast}) \right\} \notag 
\end{align} \tag{48}
$$

まず速進磁気音波速度で伝わる衝撃波面をまたぐ $$B_y$$ のジャンプを、$$B_y^L, B_y^R$$ に比例する形に書き直しましょう。
すなわち [HLLD のページ](/simulation/hlld)の (15), (17) 式を、次のような形に整理します。

$$
B_y^{s \ast} - B_y^s 
= B_y^s \chi^s, \qquad \chi^s 
= \frac{(v_x^s - \lambda^\ast)(\lambda^s - \lambda^\ast)}{(\lambda^{s\ast} - \lambda^s)(\lambda^{s\ast} + \lambda^s - 2 \lambda^\ast)} \tag{49}
$$

ここで $$s = L, R$$ です。
$$\ast \ast$$ 領域の状態は、アルヴェーンモードに挟まれており、HLL 平均で与えられます。
よって

$$
B_y^{\ast \ast} 
= \frac{\lambda^{R \ast} B_y^{R \ast} - \lambda^{L \ast} B_y^{L \ast} + F^{L \ast} - F^{R \ast}}{\lambda^{R \ast} - \lambda^{L \ast}} \tag{50}
$$

これらを (48) 式に入れてガシガシと計算し、(43) 式のように整理すると、次のようになります。

$$
a^L 
= \frac{1 + \nu^\ast}{2}, \quad 
a^R 
= \frac{1 - \nu^\ast}{2}, \quad \nu^\ast 
= \frac{\vert \lambda^{R\ast} \vert - \vert \lambda^{L \ast}\vert}{\lambda^{R \ast} - \lambda^{L \ast}} 
= \frac{\lambda^{R \ast} + \lambda^{L \ast}}{\vert \lambda^{R\ast} \vert + \vert \lambda^{L \ast} \vert} \tag{51}
$$

$$
d^s 
= \frac{1}{2} (\nu^s - \nu^\ast) \tilde{\chi}^s + \frac{1}{2} (\vert \lambda^{s\ast} \vert - \nu^\ast \lambda^{s \ast} ) \tag{52}
$$

$$
\tilde{\chi}^s 
= (\lambda^{s \ast} - \lambda^s) \chi^s \tag{53}
$$

$$
\nu^s 
= \frac{\vert \lambda^{s \ast} \vert - \vert \lambda^s \vert}{\lambda^{s \ast} - \lambda^s} 
= \frac{\lambda^{s \ast} + \lambda^s}{\vert \lambda^{s \ast} \vert + \vert \lambda^s \vert} \tag{54}
$$

$$\nu^s$$ は $$[-1, 1]$$ の風上化のための重みを表し、$$\nu^\ast$$ は 2 つの回転不連続面の非対称性を表す量です。
[UCT-HLL](/simulation/ct#londrillo--del-zanna-2004-の手法-uct-hll) の場合、(30) 式から

$$
a^L 
= \frac{\alpha_x^+}{\alpha_x^+ + \alpha_x^-} 
= \frac{\alpha^R}{\alpha^R + \alpha^L} \tag{55}
$$

などのように、$$a^L, a^R$$ は速進磁気音波で伝わる衝撃波面の速度で決定されていたのに対し、UCT-HLLD ではアルヴェーン波速度で決定されます。
(51) - (54) 式で気をつけなければならないのは、$$B_x$$ がゼロとなるときです。
$$B_y \rightarrow 0$$ かつ $$B_x^2 \gtrsim \gamma P$$ のとき、$$\lambda^{s\ast} \rightarrow \lambda^s$$ となります。
そしてこのとき、$$\tilde{\chi}^s \rightarrow (v_x^s - \lambda^\ast) / 2, \nu^s = \pm 1$$ となるため、特別な処方は必要ありません。
しかし $$B_x \rightarrow 0$$ の場合、$$\lambda^{R \ast}, \lambda^{L \ast} \rightarrow \lambda^\ast$$ のように 2 つの回転波がエントロピーモードに縮退します。
このとき、$$\tilde{\chi}^s \rightarrow v_x^\ast - \lambda^\ast$$ は正則なままですが、$$\nu^\ast$$ が特によどみ点で不定となります。
よってこのときは 5 つの波による 4 つの中間状態を用いる [HLLD](/simulation/hlld) ではなく、$$\lambda^\ast$$ をまたいで $$B_y$$ が不連続な 3 波パターンに落とした方が良いでしょう。
これは [HLLC 法](/simulation/hllc) の考え方に他なりません。
[Mignone & Del Zanna (2021)](https://www.sciencedirect.com/science/article/abs/pii/S0021999120305222?via%3Dihub) では、UCT-HLLC についても式の導出を行なっており、それは上式で $$\nu^\ast = 0$$ とすることで達成できるとしています。
つまり

$$
\nu^\ast 
= \left\{ \begin{array}{ll}
\frac{\vert \lambda^{R\ast} \vert - \vert \lambda^{L \ast} \vert}{\lambda^{R \ast} - \lambda^{L \ast}} & \mathrm{if} \ \vert \lambda^{R \ast} - \lambda^{L \ast}\vert > \epsilon \vert \lambda^{R} - \lambda^{L}\vert \\
0 & \mathrm{otherwise}
\end{array} \right. \tag{56}
$$

のようにすれば、$$B_x \rightarrow 0$$ の場合も正しく扱うことができます。
ここで $$\epsilon = 10^{-9}$$ は小さな値です。  
このようにして求めた $$a^{L, R}, d^{L, R}$$、そして $$\bar{v}_t = a^L v_t^L + a^R v_t^R \ (t = y, z)$$ を (45) 式に代入することで、辺中心で定義された EMF $$\mathcal{E}_{z, i+1/2, j+1/2}$$ を計算することができます。
先ほど説明したように、$$a^L \rightarrow \frac{\alpha^+}{\alpha^+ + \alpha^-}, a^R \rightarrow \frac{\alpha^-}{\alpha^+ + \alpha^-}, d^L = d^R = \frac{\alpha^+ \alpha^-}{\alpha^+ + \alpha^-}$$ のようにするだけで [UCT-HLL](/simulation/ct#londrillo--del-zanna-2004-の手法-uct-hll) に変更することができます。
すなわち、同じアルゴリズムで係数部分だけ変更すれば、[UCT-HLL](/simulation/ct#londrillo--del-zanna-2004-の手法-uct-hll) と UCT-HLLD を切り替えることが可能です。  
UCT-HLLD 手法の最大の長所は、なんといっても散逸の小ささです。
[Mignone & Del Zanna (2021)](https://www.sciencedirect.com/science/article/abs/pii/S0021999120305222?via%3Dihub) では様々なテスト計算を実行しました。
例えば、MRI シアリングボックス計算では、マクスウェル応力で [UCT-HLL](/simulation/ct#londrillo--del-zanna-2004-の手法-uct-hll) の 3 倍の値を達成し、磁場の散逸の小ささを示しました。
またカレントシート問題でも、磁気エネルギーが長時間保存される計算結果を示しています。
「散逸が小さいと数値振動が発生して計算が不安定になりやすいのでは？」という心配もありますが、Orszag-Tang の渦問題なども安定して解く実力も持ちます。
散逸が小さく実装も容易な手法として、[CT-Contact](/simulation/ct#gardiner--stone-2005-の手法-ct-contact) がありましたが、これは流体部分を解くための近似リーマン解法の特性をそのまま継承するのでした。
しかし、UCT-HLLD は流体部分でどの近似リーマン解法を用いるかに依存せず、一定の散逸を与えます。
接触不連続面の伝播速度とアルヴェーン速度を局所的に再定義しさえすれば、ロー法や [HLLC 法](/simulation/hllc) で流体部分を解きつつ、EMF のみ UCT-HLLD にすることができます。
既存の実装コードへの後付けが容易で、他の部分はイジる必要がないという利点もあります。
さらに、2 次精度止まりだった [CT-Contact](/simulation/ct#gardiner--stone-2005-の手法-ct-contact) と異なり、再構成演算子の精度を向上させることで、高次スキームに拡張することができます。
高次精度化が可能という長所は、同系統の手法である [UCT-HLL](/simulation/ct#londrillo--del-zanna-2004-の手法-uct-hll) と同じです。  
短所としては、実装が複雑なことが挙げられるでしょう。
伝播する波の計算ののち、$$\chi^s, \nu^s, \nu^\ast$$ の計算も必要です。
[CT-Contact](/simulation/ct#gardiner--stone-2005-の手法-ct-contact) が質量フラックスの符号で分岐するだけだったことと比べると、実装の手間は数倍に膨れ上がります。
$$B_x \rightarrow 0$$ では波動の縮退が起こるため、その例外処理も必要です。
そうまでして苦労して実装した UCT-HLLD でも、実は 2 次精度までなら [CT-Contact](/simulation/ct#gardiner--stone-2005-の手法-ct-contact) と互角の性能になります。
UCT-HLLD の真価を発揮したい場合には、高次精度化が必須と言えるでしょう。

{% include adsense.html %}

## [Tóth (2000)](https://www.sciencedirect.com/science/article/abs/pii/S0021999100965197?via%3Dihub) の手法: flux-CT

CT 法の考え方がイメージしづらい点として、磁場だけが他の物理量と違う場所で定義されることが挙げられます。
しかしこの点は実際の実装を困難にします。
例えば適合格子細分化法 (Adaptive Mesh Refinement: AMR) での粗い格子の値を補間し、細かい格子の値を決定する prolongation において、補間後の細かい格子でも $$\nabla \cdot \mathbf{B} = 0$$ を保証するようにしなければなりません。
また AMR でなくても、境界条件の処理が複雑になるケースがあります。
さらに、円筒座標や球面座標の場合には、グリッド間隔が異なることや曲率を考慮した CT 法の計算が必要となります。
そこでスタガードに変数を保持することなく、CT 法と同じ利益を得ることができないかを追求したのが、[Tóth (2000)](https://www.sciencedirect.com/science/article/abs/pii/S0021999100965197?via%3Dihub) で提案された flux-CT と呼ばれる手法です。  
Flux-CT はセル中心の $$\mathbf{B}$$ のみを保持する代わりに、$$\nabla \cdot \mathbf{B} =0$$ を満たすようにフラックスを平均化する、というものです。
最初に、[Balsara & Spicer (1999)](/simulation/ct#balsara--spicer-1999-の手法-算術平均) の算術平均により、辺での EMF を計算します。

$$
\mathcal{E}_{z, i+1/2, j+1/2} 
= \frac{G_{[B_x], i, j+1/2} + G_{[B_x], i+1, j+1/2} - F_{[B_y], i+1/2, j} - F_{[B_y], i+1/2, j+1}}{4} \tag{57}
$$

このようにして得られた EMF を単純に平均することで、再び面上で計算されるフラックスを求めます。

$$
\hat{F}_{[B_y], i+1/2, j} 
= - \frac{1}{2} (\mathcal{E}_{z, i+1/2, j+1/2} + \mathcal{E}_{z, i+1/2, j-1/2}) \tag{58}
$$

$$
\hat{G}_{[B_x], i, j+1/2} 
= \frac{1}{2} (\mathcal{E}_{z, i+1/2, j+1/2} + \mathcal{E}_{z, i-1/2, j+1/2}) \tag{59}
$$

これらを用い、セル中心の磁場 $$B_x, B_y$$ を更新します。

$$
B_{x, i, j}^{n+1} 
= B_{x, i, j}^n - \frac{\Delta t}{\Delta y} (\hat{G}_{i, j+1/2} - \hat{G}_{i, j-1/2}), \quad B_{y, i, j}^{n+1} 
= B_{y, i, j}^n - \frac{\Delta t}{\Delta x} (\hat{F}_{i+1/2, j} - \hat{F}_{i-1/2, j}) \tag{60}
$$

実は、この手法では普通の $$\nabla \cdot \mathbf{B}$$、すなわちセル中心の定義から計算される

$$
(\nabla \cdot \mathbf{B})_{i, j}^n 
= \frac{B_{x, i+1, j}^n - B_{x, i-1, j}^n }{2 \Delta x} + \frac{B_{y, i, j+1}^n - B_{y, i, j-1}^n }{2 \Delta y} \tag{61}
$$

は保存されません。
保存されるのは、セルの角を中心として横方向に平均化された発散

$$
(\nabla \cdot \mathbf{B})_{i+1/2, j+1/2}^n 
= \frac{\frac{B_{x, i+1, j}^n + B_{x, i+1, j+1}^n}{2} - \frac{B_{x, i, j}^n + B_{x, i, j+1}^n}{2}}{\Delta x} + \frac{\frac{B_{y, i, j+1}^n + B_{y, i+1, j+1}^n}{2} - \frac{B_{y, i, j}^n + B_{y, i+1, j+1}^n}{2}}{\Delta y} \tag{62}
$$

です。  
長所としては、スタガード変数が不要なことです。
すでにセル中心の MHD 計算コードを実装している場合、そこにフラックスを修正する部分を書き足すだけで実装が完了します。
面中心や辺中心を考える必要がなく、GRMHD や曲座標に代表される曲線座標との相性も良い手法です。
このことから、flux-CT は [HARM](https://iopscience.iop.org/article/10.1086/374594) と呼ばれる GRMHD 計算コードで利用されています。  
欠点としては、[Balsara & Spicer (1999)](/simulation/ct#balsara--spicer-1999-の手法-算術平均) の算術平均を土台にしており、中心補間による数値振動が発生する可能性を持ちます。
この手法に [CT-Contact](/simulation/ct#gardiner--stone-2005-の手法-ct-contact) や [UCT-HLL](/simulation/ct#londrillo--del-zanna-2004-の手法-uct-hll), [UCT-HLLD](/simulation/ct#mignone--del-zanna-2021-の手法-uct-hlld) を組合せることも可能ですが、そうすると (58), (59) 式のような辺から面へのマッピングの関係が崩れ、(62) 式の $$\nabla \cdot \mathbf{B}$$ 保存が破れることになりかねません。
また、(62) 式の $$\nabla \cdot \mathbf{B}$$ 保存にも問題があります。
これはあくまでセルの角を中心とした $$\nabla \cdot \mathbf{B}$$ であり、セル中心で測定される $$\nabla \cdot \mathbf{B}$$ とは似て非なるものです。
他のスタガードな CT が保証するのは、セル体積についての物理的な磁束の収支ですが、flux-CT はそれを保証しないことに注意しましょう。

## 結局、どの CT 法を選べば良いのか？

[UCT-HLLD](/simulation/ct#mignone--del-zanna-2021-の手法-uct-hlld) を提案した [Mignone & Del Zanna (2021)](https://www.sciencedirect.com/science/article/abs/pii/S0021999120305222?via%3Dihub) では、様々な CT 法による数値計算結果の比較を行なっています。
ループ形状の弱磁場移流問題では、[Balsara & Spicer (1999)](/simulation/ct#balsara--spicer-1999-の手法-算術平均) の方法は数値振動が起こり、ループ形状を保てないことが示されています。
[UCT-HLLD](/simulation/ct#mignone--del-zanna-2021-の手法-uct-hlld) は散逸の少ない有効な手法として紹介されていますが、2 次精度かつ [HLLD 法](/simulation/hlld)によるフラックス計算を用いる場合では、[CT-Contact](/simulation/ct#gardiner--stone-2005-の手法-ct-contact) と同様の結果となることが、カレントシート問題や Orszag-Tang の渦問題などから示されています。
[Puzzoni et al. (2021)](https://academic.oup.com/mnras/article/508/2/2771/6380521) では、数値計算手法がテアリング不安定性・リコネクション率・粒子加速に与える影響を調査しました。
すると、[HLLD](/simulation/hlld) + [UCT-HLLD](/simulation/ct#mignone--del-zanna-2021-の手法-uct-hlld) + [WENO-Z](/simulation/reconstruction#weno-z) による計算では、$$a/\Delta x \gtrsim 10$$ で計算結果に収束が見られたのに対し、[CT-Contact](/simulation/ct#gardiner--stone-2005-の手法-ct-contact) などの 2 次の　EMF 計算手法では $$a / \Delta x \gtrsim 20$$ が必要と示しました ($$a$$: 初期においたカレントシートの幅)。
ここまでの議論から、2 次精度でも十分扱うことが可能な物理であれば [CT-Contact](/simulation/ct#gardiner--stone-2005-の手法-ct-contact) で十分と言えるでしょう。
高次精度で十分に領域を分解した計算が必要となる場合には、実装に時間と労力をかけ、[UCT-HLLD](/simulation/ct#mignone--del-zanna-2021-の手法-uct-hlld) を選ぶのが良いかもしれません。

## 実装が難しい...それでも CT 法を選ぶ理由

$$\nabla \cdot \mathbf{B} = 0$$ を保証する代表的な手法の一つに、[Dedner et al. (2002)](https://www.sciencedirect.com/science/article/abs/pii/S002199910196961X) の 双曲型発散クリーニング手法があります。
これは $$\nabla \cdot \mathbf{B} \neq 0$$ となった場合に、それを移流しながら拡散することで $$\nabla \cdot \mathbf{B} \approx 0$$ を維持するというものです。
しかし、この説明から分かる通り、発散クリーニング手法では (移流しながらゼロに拡散させるとはいえ) $$\nabla \cdot \mathbf{B} \neq 0$$ となるような非物理的な磁場の生成を許してしまいます。
[Tomida et al. (2026)](https://iopscience.iop.org/article/10.3847/1538-4365/ae8785) では CT 法との比較を行なったところ、Dedner の手法では、磁場が強く局在化している場合や、時間刻みが急激に変化するような場合に不正確な結果を招くことを示したのです。
これを踏まえて [Tomida et al. (2026)](https://iopscience.iop.org/article/10.3847/1538-4365/ae8785) では発散クリーニングを修正する方法を示しましたが、それでも多くの場合に CT 法の方がより信頼できる結果になると主張しています。
初期宇宙での星形成は、磁場増幅に大きく寄与していると考えられています。
しかし、そのような急速な磁場成長のシミュレーションでは、発散クリーニング手法の非物理的な磁場の影響を受けている可能性があるとしたのです。
時間刻みが急激に変化するような状況は、AMR や自己重力計算を行う場合に頻繁に発生するものであり、これまでの MHD 計算結果や今後の発散クリーニング手法の利用に一石を投じる論文となっています。

## 参考文献

[1] [Evans & Hawley, 1988, "Simulation of Magnetohydrodynamic Flows: A Constrained Transport Model"](https://ui.adsabs.harvard.edu/abs/1988ApJ...332..659E/abstract)  
[2] [Balsara & Spicer, 1999, "A Staggered Mesh Algorithm Using High Order Godunov Fluxes to Ensure Solenoidal Magnetic Fields in Magnetohydrodynamic Simulations"](https://www.sciencedirect.com/science/article/abs/pii/S0021999198961538?via%3Dihub)  
[3] [Gardiner & Stone, 2005, "An unsplit Godunov method for ideal MHD via constrained transport"](https://www.sciencedirect.com/science/article/abs/pii/S0021999104004784?via%3Dihub)  
[4] [Gardiner & Stone, 2008, "An unsplit Godunov method for ideal MHD via constrained transport in three dimensions"](https://www.sciencedirect.com/science/article/abs/pii/S0021999107005669?via%3Dihub)  
[5] [Stone et al., 2008, "Athena: A New Code for Astrophysical MHD"](https://iopscience.iop.org/article/10.1086/588755)  
[6] [Stone et al., 2020, "Athena++ Adaptive Mesh Refinement Framework: Design and Magnetohydrodynamic Solvers"](https://iopscience.iop.org/article/10.3847/1538-4365/ab929b)  
[7] [Londrillo & Del Zanna, 2004, "On the divergence-free condition in Godunov-type schemes for ideal magnetohydrodynamics: the upwind constrained transport method"](https://www.sciencedirect.com/science/article/abs/pii/S0021999103005102?via%3Dihub)  
[8] [Mignone & Del Zanna, 2021, "Systematic construction of upwind constrained transport schemes for MHD"](https://www.sciencedirect.com/science/article/abs/pii/S0021999120305222?via%3Dihub)  
[9] [Del Zanna et al., 2007, "ECHO: a Eulerian conservative high-order scheme for general relativistic magnetohydrodynamics and magnetodynamics"](https://www.aanda.org/articles/aa/abs/2007/37/aa7093-07/aa7093-07.html)  
[10] [Porth et al., 2017, "The black hole accretion code"](https://link.springer.com/article/10.1186/s40668-017-0020-2)  
[11] [Miyoshi & Kusano, 2005, "A multi-state HLL approximate Riemann solver for ideal magnetohydrodynamics"](https://www.sciencedirect.com/science/article/abs/pii/S0021999105001142?via%3Dihub)  
[12] [Tóth, 2000, "The $$\nabla \cdot \mathbf{B} = 0$$ Constraint in Shock-Capturing Magnetohydrodynamics Codes"](https://www.sciencedirect.com/science/article/abs/pii/S0021999100965197?via%3Dihub)  
[Puzzoni et al. (2021)](https://academic.oup.com/mnras/article/508/2/2771/6380521)
[13] [Gammie et al., 2003, "HARM: A Numerical Scheme for General Relativistic Magnetohydrodynamics"](https://iopscience.iop.org/article/10.1086/374594)  
[14] [Puzzoni et al., 2021, "On the impact of numerical method on magnetic reconnection and particle acceleration - I. The MHD case"](https://academic.oup.com/mnras/article/508/2/2771/6380521)  
[15] [Dedner et al., 2002, "Hyperbolic Divergence Cleaning for the MHD Equations"](https://www.sciencedirect.com/science/article/abs/pii/S002199910196961X)  
[16] [Tomida et al., 2026, "Systematic Comparison between Constrained Transport and Mixed Divergence Cleaning Methods for Astrophysical Magnetohydrodynamic Simulations"](https://iopscience.iop.org/article/10.3847/1538-4365/ae8785)  
[17] [Porth et al., 2019, "The Event Horizon General Relativistic Magnetohydrodynamic Code Comparison Project"](https://iopscience.iop.org/article/10.3847/1538-4365/ab29fd)  
[18] [冨坂幸治, 花輪知幸, 牧野淳一郎, "シミュレーション天文学"](https://link.amazon/B05g3abjX)  
[19] [松本倫明, 大須賀健, 須佐元, "輻射電磁流体シミュレーションの基礎"](https://link.amazon/B08XqMTXb)  
[20] [CANS+ ドキュメント](https://www.astro.phys.s.chiba-u.ac.jp/cans/doc/index.html)  

{% include adsense.html %}