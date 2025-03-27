---
layout: default
title: ポリトロープとレーン・エムデン方程式
parent: 恒星物理学
math: mathjax3
permalink: /stellar/polytrope_lane_emden
nav_order: 16
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

# ポリトロープガス球とレーン・エムデン方程式

## ポリトロープの関係式

中心からの距離$$r$$を独立変数としたときの静水圧平衡の式と質量分布の式は

$$
\frac{dP}{dr} 
= - \frac{GM_r}{r^2} \rho, \quad 
\frac{dM_r}{dr} 
= 4\pi r^2 \rho \tag{4.1.1}
$$

で与えられるのでした。
これらの式に入っている変数は$$P, \rho, M_r$$の3つであるのに対し、式は2本しかないため、このままではこれを解くことはできません。
一般に、圧力$$P$$は密度$$\rho$$だけでなく温度にも依存します。
よって星の構造を得るためには、熱エネルギーの保存を考え、温度勾配を与える微分方程式を加える必要があります。  
しかしここでは、(熱エネルギー保存を考えず)ポリトロープ(polytrope)の関係式

$$
P 
= K \rho^{1+\frac{1}{n}} \tag{4.1.2}
$$

を仮定することで、力学平衡の式を閉じることにしましょう。
ここで$$n$$はpolytropic index (ポリトロープ指数)と呼ばれ、適当な値($$1 \sim 4$$)を仮定します。
$$n = \frac{3}{2}$$は単原子分子理想気体の等エントロピー構造、つまりその場所場所での圧力・密度・温度が断熱過程の関係で与えられる場合に対応します。
さらに$$K$$は比例定数ですが、恒星の質量と半径を関係づける量となります。
しかし、白色矮星のような縮退したガスに対しては、$$K$$は物理定数のみによって与えられます。
この関係と静水圧平衡の式を解いて得られるポリトロープガス球は、恒星の構造に対する粗い近似として有用である場面が多くあります。  
(4.1.1)式から$$M_r$$を消去すると

$$
\frac{d}{dr} \left( \frac{r^2}{\rho} \frac{dP}{dr}\right) 
= -4\pi Gr^2 \rho \tag{4.1.1'}
$$

のようになります。
この式にポリトロープ関係式(4.1.2)式を用いると、密度分布に関する2階の微分方程式

$$
K \frac{d}{dr} \left( \frac{r^2}{\rho} \frac{d\rho^{1+\frac{1}{n}}}{dr}\right) 
= -4\pi G r^2 \rho \tag{4.1.3}
$$

を得ます。
さらに変数$$\theta$$を用い

$$
\rho 
= \rho_c \theta^n, \quad
P 
= K \rho_c^{1+\frac{1}{n}} \theta^{n+1} 
= P_c \theta^{n+1} \tag{4.1.4}
$$

のように書き直すことにしましょう。
ここで$$\rho_c, P_c$$は恒星中心での密度と圧力を表します。
これを(4.1.3)式に用いると

$$
K \rho_c^{\frac{1}{n}} \frac{d}{dr} \left( \frac{r^2}{\theta^n} \frac{d\theta^{n+1}}{dr}\right) 
= -4\pi G r^2 \rho_c \theta^n \ \Longrightarrow \ 
\frac{K \rho_c^{\frac{1}{n}-1}}{4\pi G} \frac{n+1}{r^2} \frac{d}{dr} \left( r^2 \frac{d\theta}{dr} \right) 
= - \theta^n \tag{4.1.4}
$$

のようになります。
さらに$$r = \alpha \xi$$のように、無次元化された距離$$\xi$$を用いることにすると

$$
\frac{K \rho_c^{\frac{1}{n}-1}}{4\pi G} \frac{n+1}{\alpha^2 \xi^2} \frac{d}{d\xi} \left( \frac{d\theta}{d\xi}\right) 
= -\theta^n
$$

より

$$
\alpha^2 
= \frac{(n+1)K}{4\pi G} \rho_c^{\frac{1}{n}-1} \tag{4.1.5}
$$

のようにおけば、レーン・エムデン方程式 (Lane-Emden equation)

$$
\frac{1}{\xi^2} \frac{d}{d\xi} \left( \xi^2 \frac{d\theta}{d\xi}\right) 
= -\theta^n \tag{4.1.6}
$$

を得ます。
(4.1.4)式において$$\rho_c, P_c$$が中心での値であること、そして中心近傍で

$$
\frac{d\theta}{d\xi} 
\propto \frac{dP}{dr} 
\propto \frac{M_r}{r^2} 
\propto r
$$

であることから、境界条件として

$$
\theta = 1, \quad 
\frac{d\theta}{d\xi} 
= 0 \tag{4.1.7}
$$

が与えられます。
中心部では圧力勾配による力がゼロにならなければならないことからも、$$\frac{d\theta}{d\xi} = 0$$が直感的に理解できます。  
(4.1.6)式を中心付近で展開すると

$$
\theta 
= 1 - \frac{1}{6} \xi^2 + \frac{n}{120} \xi^4 + \cdots \quad (0 < \xi \ll 1) \tag{4.1.8}
$$

が得られます[(詳しい式変形は補遺を参照。)](= 1 + c_2 \xi^2 + c_3 \xi^3 + c_4 \xi^4 + \cdots \tag{A.1})  
$$\theta$$は中心から外側に向けて単調減少し、ある$$\xi$$の値でゼロとなります。
そこをポリトロープ球の表面とし、そこでの値を$$\xi_1$$とします
($$\xi > \xi_1$$では$$\theta$$は正負の間を振動しますが、その領域は解として用いません。)
$$\xi_1$$の値は、ポリトロープ指数の値によって異なります。
レーン・エムデン方程式の解は、$$n=0, 1, 5$$の場合のみ、次のような解析的な解が求められます。

### $$n=0$$

これは密度一定の非圧縮性流体に対応し、$$P \propto \theta$$となります。
そして$$\theta(\xi)$$は

$$
\theta 
= 1 - \frac{\xi^2}{6} \quad (\xi_1 = \sqrt{6}) \tag{4.1.9}
$$

となります。

### $$n=1$$

この場合、$$\rho \propto \theta, P \propto \theta^2$$となります。

$$
\theta 
= \frac{\sin \xi}{\xi} \quad (\xi_1 = \pi) \tag{4.1.10}
$$

### $$n=5$$

このときは

$$
\theta 
= \left(1 + \frac{\xi^2}{3} \right)^{-1/2} \quad (\xi_1 \rightarrow \infty) \tag{4.1.11}
$$

です。
この場合、半径は無限大となりますが、その総質量は有限となります。

### その他の$$n$$

他の場合には数値的に解を求める必要があります。
次の表は種々のポリトロープ指数に対する、ポリトロープ級の表面の値$$\xi_1, - \xi_1^2 \left. \frac{d\theta}{d\xi} \right\vert_{\xi_1}$$、そして中心密度と平均密度の比$$\rho_c / \bar{\rho}$$です。

| n | $$\xi_1$$ | $$-\xi_1^2 \left. \frac{d\theta}{d\xi} \right\vert_{\xi_1} $$ | $$\rho_c / \bar{\rho}$$ | 
| 0.0 | 2.4494 | 4.8988 | 1.0 |
| 0.5 | 2.7528 | 3.7871 | 1.8361 |
| 1.0 | 3.1416 | 3.1416 | 3.2899 |
| 1.5 | 3.6538 | 2.7141 | 5.9907 |
| 2.0 | 4.3529 | 2.4111 | 11.403 |
| 2.5 | 5.3553 | 2.1872 | 23.406 |
| 3.0 | 6.8969 | 2.0182 | 54.183 |
| 3.5 | 9.5358 | 1.8906 | 152.88 |
| 4.0 | 14.972 | 1.7972 | 622.41 |
| 4.5 | 31.836 | 1.7378 | 6189.5 |
| 5.0 | $$\infty$$ | 1.7321 | $$\infty$$ |

{% include adsense.html %} 

## ポリトロープガス球の性質

### 平均密度

まずは平均密度$$\bar{\rho}$$を求めてみましょうj。
その定義から

$$
\bar{\rho} 
= \frac{3}{4\pi R^3} \int_0^R 4\pi \rho r^2 dr 
= \frac{3\rho_c}{\xi_1^3} \int_0^{\xi_1} \theta^n \xi^2 d\xi 
= - \frac{3\rho_c}{\xi_1^3} \int_0^{\xi_1} \frac{d}{d\xi} \left(\xi^2 \frac{d\theta}{d\xi} \right) d\xi 
= - \frac{3\rho_c}{\xi_1} \left. \frac{d\theta}{d\xi} \right|_{\xi_1} \tag{4.2.12} 
$$

のようになります。
先程の表から、ポリトロープ指数$$n$$が大きいほど$$\xi_1$$が大きく、$$\left| \left. \frac{d\theta}{d\xi} \right|_{\xi_1} \right|$$が小さいため、$$n$$が大きいほど$$\bar{\rho}/\rho_c$$は小さくなることがわかります。
すなわち、質量の中心集中度が大きくなると言えるでしょう。

### 半径と質量

このガス球の半径は、(4.1.5)式より

$$
R 
= \sqrt{\frac{(n+1)K}{4\pi G} \rho_c^{\frac{1}{n}-1}} \xi_1 \tag{4.2.13}
$$

で与えられます。
そして、ガス球の全質量は

$$
\begin{align}
M 
&= \int_0^R 4\pi \rho r^2 dr 
= 4\pi \left( \frac{(n+1)K}{4\pi G} \rho_c^{\frac{1}{n}-1} \right)^{3/2} \rho_c \int_0^{\xi_1} \xi^2 \theta^n d\xi \notag \\
&= - 4\pi \left( \frac{(n+1)K}{4\pi G} \rho_c^{\frac{1}{n}-1} \right)^{3/2} \rho_c \int_0^{\xi_1} \frac{d}{d\xi} \left( \xi^2 \frac{d\theta}{d\xi} \right) d\xi \notag \\
&= - 4\pi \left( \frac{(n+1)K}{4\pi G} \right)^{3/2} \rho_c^{\frac{3-n}{2n}} \xi_1^2 \left. \frac{d\theta}{d\xi} \right|_{\xi_1} \tag{4.2.14}
\end{align}
$$

のように表されます。
$$n=5$$のポリトロープに対しては、$$\xi_1 = \infty$$で半径が無限大です。
しかし、$$\xi_1^2 \left. \frac{d\theta}{d\xi} \right|_{\xi_1}$$は有限の値を持つため、質量は有限であることがわかります。
言い換えると、$$n=5$$のポリトロープは中心質量集中度が無限大の、有限な質量のガス球となります。
$$n$$が5よりも大きい場合には、質量も発散します。  
主系列星などの理想気体に近いガスからなる恒星の近似的な構造としてポリトロープ球を考える場合、$$K$$は構造によって決まる量となります。
よって、ある質量に対して様々な半径を持つことができます (これは温度分布の不定性に対応します。)
逆に言えば、ある質量と半径を与えることで、$$K$$が決定されます。  
それに対し、白色矮星のように電子の縮退圧で支えられている場合 ($$P \simeq P_\mathrm{e}$$)、圧力は密度だけに依存し、$$K$$は物理定数から決まる量になります。
このとき、(星の構造に温度分布は無関係なため)星の質量に対して半径が一意に決定されます。
例えば、非相対論的に縮退している場合、[電子の縮退とチャンドラセカール限界質量の(16)式](/compact/chandrasekhar_limit#完全縮退電子気体の状態方程式)より

$$
P 
\simeq B f(x_F) 
\simeq B \frac{8}{5} x_F^5 
= \frac{8}{5} B A^{-5/3} \left( \frac{\rho}{\mu_\mathrm{e}} \right)^{5/3}
\simeq 1.004 \times 10^{13} \left( \frac{\rho}{\mu_\mathrm{e}} \right)^{5/3} \ [\mathrm{dyn / cm^2}]\tag{4.2.15}
$$

で与えられます。
ここで、$$1 \mathrm{dyn} = 10^{-5} \mathrm{N} $$という単位です。
ここから、非相対論的に縮退しているガス球は$$n=\frac{3}{2}$$のポリトロープの関係となっています。
この場合$$\mu_\mathrm{e} = 2$$とすると、$$K$$はcgs単位系でおよそ$$3.16 \times 10^{12}$$となります。
これを用いると、白色矮星の質量と半径の関係を得ることができます。
(4.2.13), (4.2.14)式から、$$\rho_c$$を消去すると

$$
M 
= R^{\frac{3-n}{n-1}} \left\{ \frac{(n+1)K}{4\pi G}\right\}^{\frac{n}{n-1}} \xi_1^{\frac{3-n}{n-1}} \left\{ -4\pi \xi_1^2 \left. \frac{d\theta}{d\xi}\right|_{\xi_1} \right\} \tag{4.2.16}
$$

を得ます。
この式に、$$n=1.5$$とこれに対応する$$\xi_1, \xi_1^2 \left. \frac{d\theta}{d\xi}\right|_{\xi_1}$$、そして$$K$$の値を入れれば

$$
R 
\simeq 8.9 \times 10^8 \left( \frac{M}{M_\odot} \right)^{-1/3} \ [\mathrm{cm}] 
\simeq 1.3 \times 10^{-2} \left( \frac{M}{M_\odot} \right)^{-1/3} R_\odot \tag{4.2.17}
$$

となります。
白色矮星の半径が$$M^{-1/3}$$に比例することから、質量が大きいほど半径が小さいとわかります。
白色矮星の典型的な質量$$0.6 M_\odot$$では、その半径は太陽の100分の1程度となります。  
また相対論的極限の縮退の場合には

$$
P_e 
\simeq 2 B x_F^4 
= 2 B A^{-4/3} \left( \frac{\rho}{\mu_\mathrm{e}} \right)^{4/3}
\simeq 1.243 \times 10^{15} \left( \frac{\rho}{\mu_\mathrm{e}} \right)^{4/3} \ [\mathrm{dyn / cm^2}] \tag{4.2.18}
$$

となることが知られています。
これは$$n=3$$のポリトロープとなっています。
$$\mu_\mathrm{e}=2$$に対して$$K$$はcgs単位で$$6.13 \times 10^{14}$$という値になります。
(4.2.14)式を$$n=3$$に適用すると、質量は中心密度には依存せず

$$
M 
= 4\pi \left(\frac{K}{\pi G}\right)^{3/2} \times 2.018
\sim 1.46 M_\odot \tag{4.2.19}
$$

という一定値になります。
この質量を、[白色矮星のチャンドラセカール限界質量](/compact/chandrasekhar_limit)と呼びます。
(4.2.14)式に$$n = 3-\epsilon \ (0 < \epsilon \ll 1)$$を代入してみると

$$
M 
\propto \rho_c^{\epsilon / 6} \ \Longrightarrow \ 
\rho_c 
\propto M^{6/\epsilon}
$$

のような関係が導かれます。
これは、[白色矮星の質量がチャンドラセカール限界質量](/compact/chandrasekhar_limit)に近づくにつれて、中心密度が限りなく大きくなっていくことを意味します。  
余談ですが、理想気体が適用される主系列星に対しても$$n=3$$のポリトロープが用いられることがあります。
しかしこの場合は、$$K$$の値が物理定数のみから決まらないことに注視が必要です。
するとある質量を与えたときに(4.2.14)式の$$K$$の値が決定され、(4.2.13)式によって中心密度と半径の関係が求まります。
つまり、この場合には限界質量は存在しません。

### 重力ポテンシャルと重力エネルギー

ポリトロープガス球内での重力ポテンシャルは、静水圧平衡の式にポリトロープの関係を用いることで得られます。

$$
\begin{aligned}
\frac{d\psi}{dr} 
&= - \frac{1}{\rho} \frac{dP}{dr} 
\underbrace{=}_{(4.1.2)} - \frac{1}{\rho} K \left(1 + \frac{1}{n}\right) \rho^{1/n} \frac{d\rho}{dr} 
= - K \frac{n+1}{n} \rho^{\frac{1}{n}-1} \frac{d\rho}{dr} 
= - K (n+1) \frac{d\rho^{1/n}}{dr} \notag \\
&= - (n+1) \frac{d}{dr} \left(\frac{P}{\rho}\right)
\end{aligned}
$$

この両辺を積分すると

$$
\psi 
= - (n+1) \frac{P}{\rho} + (定数) 
= - (n+1) \frac{P}{\rho} - \frac{GM}{R} \tag{4.2.20}
$$

となります。
ここで積分定数$$-\frac{GM}{R}$$は、表面($$P=0$$)の値と、$$\psi(r>R) = - \frac{GM}{r}$$の接続から得られるものです。  
また[静水圧平衡の式](/stellar/hydrostatic#静水圧平衡と恒星中心の温度依存性)から、ガス球の全重力エネルギー$$E_g$$は

$$
\begin{align}
&\frac{dP}{dM_r} 
= - \frac{GM_r}{4\pi r^4} 
\ \Longrightarrow \ 
\int_0^M 4\pi r^3 \frac{dP}{dM_r} dM_r 
= - \int_0^M \frac{GM_r}{r} dM_r 
= E_g \notag \\
&\Longrightarrow \ 
E_g 
= \int_0^M 4\pi r^3 \frac{dP}{dM_r} dM_r 
\underbrace{=}_{部分積分} 4\pi \underbrace{[r^3 P]_0^M}_{=0} - 3 \int_0^M 4\pi r^2 \frac{dr}{dM_r} P dM_r 
= - 3 \int_0^M \frac{P}{\rho} dM_r \tag{4.2.21}
\end{align}
$$

となります。
最後の等式では、[$$\frac{dr}{dM_r} = \frac{1}{4\pi r^2 \rho}$$](/stellar/basic_equations#ラグランジュ座標を用いた記述)を用いました。
この式に(4.2.20)式を用いれば

$$
E_g 
= -3 \int_0^M \left( - \frac{\psi}{n+1} - \frac{GM}{R(n+1)}\right) dM_r 
= \frac{3}{n+1} \int_0^M \psi dM_r + \frac{3}{n+1} \frac{GM^2}{R} \tag{4.2.22}
$$

となります。
さらに[恒星の全重力エネルギーが$$E_g = \frac{1}{2} \int_0^M \psi dM_r$$と書ける](/stellar/gravitational_energy_virial_theorem#恒星の重力エネルギー)ことから

$$
E_g 
= \frac{6}{n+1} E_g + \frac{3}{n+1} \frac{GM^2}{R} \ \Longrightarrow \ 
E_g 
= - \frac{3}{5-n} \frac{GM^2}{R} \tag{4.2.23}
$$

が得られます。
すなわち、ポリトロープ球では[全重力エネルギーの近侍式である(1.3.3)式](/stellar/gravitational_energy_virial_theorem#恒星の重力エネルギー)において、$$q = \frac{3}{5-n}$$であることを表しています。
また[ビリアル定理](/stellar/gravitational_energy_virial_theorem#ビリアル定理)を用いることで、全内部エネルギー$$E_\mathrm{i}$$と全エネルギー$$E_\mathrm{tot}$$が

$$
E_\mathrm{i} 
= - \frac{E_g}{3(\gamma - 1)} 
= \frac{1}{(5-n)(\gamma -1)}\frac{GM^2}{R}, \quad 
E_\mathrm{tot} 
= \frac{3\gamma -4}{(5-n)(\gamma -1)} \frac{GM^2}{R} \tag{4.2.24}
$$

となることもわかります。

{% include adsense.html %} 

## 補遺: (4.1.6)式の中心付近での展開

まずは左辺からです。
$$\theta$$のテイラー展開より

$$
\theta(\xi) 
= 1 + c_2 \xi^2 + c_3 \xi^3 + c_4 \xi^4 + \cdots \tag{A.1}
$$

ここで$$\theta(0) = 1, c_1 = \left. \frac{d\theta}{d\xi} \right\vert_{\xi=0} = 0$$を用いました。

これを左辺に代入すると
$$
\begin{align}
\frac{1}{\xi^2} \frac{d}{d\xi} \left\{ \xi^2 (2c_2 \xi + 3 c_3 \xi^2 + 4 c_4 \xi^3 + \cdots )\right\} 
&= \frac{1}{\xi^2} (6c_2 \xi^2 + 12 c_3 \xi^3 + 20 c_4 \xi^4 + \cdots) \notag \\
&= 6 c_2 + 12 c_3 \xi + 20 c_4 \xi^2 + \cdots \tag{A.2}
\end{align}
$$

となります。
そして右辺は

$$
\begin{align}
- \left\{ 1 + (c_2 \xi^2 + c_3 \xi^3 + c_4 \xi^4 + \cdots )\right\}^n 
&= - \sum_{m=0}^n \frac{n!}{m! (n-m)!} (c_2 \xi^2 + c_3 \xi^3 + c_4 \xi^4 + \cdots )^m \notag \\
&= - \left\{ 1 + n (c_2 \xi^2 + c_3 \xi^3 + \cdots) + \frac{n(n-1)}{2} (c_2 \xi^2 + c_3 \xi^3 + \cdots)^2 + \cdots\right\} \notag \\ 
&= - 1 - nc_2 \xi^2 - nc_3 \xi^3 + \cdots \tag{A.3}
\end{align}
$$

です。
以上から$$\xi^0, \xi, \xi^2$$の係数を比較すると

$$
6c_2 
= -1 \ \Longrightarrow \ 
c_2 
= -\frac{1}{6} \tag{A.4}
$$

$$
12 c_3 
= 0 \ \Longrightarrow \ 
c_3 
= 0 \tag{A.5}
$$

$$
20 c_4 
= - nc_2 \ \Longrightarrow \ 
c_4
= \frac{n}{120} \tag{A.6}
$$

と求まります。
よって

$$
\theta 
= 1 - \frac{1}{6} \xi^2 + \frac{n}{120} \xi^4 + \cdots \tag{A.7}
$$

のように展開されることが示されました。

{% include adsense.html %} 