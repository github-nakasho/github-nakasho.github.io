---
layout: default
title: チャンドラセカール限界質量
parent: コンパクト天体
math: mathjax3
permalink: /compact/chandrasekhar_limit
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

# チャンドラセカール限界質量

白色矮星や中性子星などは、その星を構成する粒子の縮退圧によって支えられていると考えられています。そして縮退圧により支えることができる恒星の質量には上限があることが知られています。
特に白色矮星については、この限界質量のことをチャンドラセカール質量限界(Chandrasekhar's mass limit)と呼びます。以下では白色矮星の場合についてこれを求めてみましょう。  
白色矮星の質量は核子(陽子・中性子の総称)の量(総数)により与えられますが、その強い重力による崩壊から白色矮星を支え平衡を維持しているのは、電子の縮退圧であるとします。

## 完全縮退電子気体の状態方程式

一般に完全電離した電子気体では、その圧力は核子(イオン)気体と電子気体の分圧の和により計算されます。ここでは電子気体は縮退し、核子気体は縮退していないとします。このときの圧力は、電子気体の縮退圧が圧倒的に大きいとして

$$
P_\mathrm{tot} = P_\mathrm{ion} + P_\mathrm{e} 
\simeq P_\mathrm{e} \tag{1}
$$

が良い近似で成り立っているとします。完全に縮退した電子気体の状態方程式は

$$
P = \frac{\pi m_e^4 c^5}{3h^3} f(x) \tag{2}
$$

で与えられます(証明は省略)。ここで

$$
f(x) = x(2x^2 -3) \sqrt{x^2 + 1} + 3 \sinh^{-1} x \tag{3}
$$

であり

$$
x \equiv \frac{P_\mathrm{max}}{m_e c} 
= \frac{h}{m_e c} \left( \frac{3}{8\pi} n_e\right)^{1/3} \tag{4}
$$

です。今は白色矮星の化学組成が一様であるような単純な場合を計算します。水素の質量比を$$X$$、ヘリウムの質量比を$$Y$$、その他の元素の質量比を$$X_n \ (n > 4)$$のように表すことにします。白色矮星は完全電離ガスにより形成されていると考えて、単位体積中の電子数は

$$
n_e \simeq \frac{\rho X}{m_p} + \frac{2 \rho Y}{4m_p} + \sum_{n > 4}^{n_\mathrm{max}} \frac{n}{2} \frac{\rho X_n}{n m_p} 
= \frac{\rho}{m_p} \left( X + \frac{Y}{2} + \frac{Z}{2}\right) 
= \frac{\rho}{2 m_p} (1+X) 
\equiv \frac{\rho}{\mu_e m_p} \tag{5}
$$

のように与えられます。ここで

$$
Z = \sum_{n>4}^{n_\mathrm{max}} X_n , \quad X + Y + Z = 1, \quad \mu_e \equiv \frac{2}{1+X} \tag{6}
$$

などを用いました。$$Z$$はその定義からヘリウムより重たい原子の質量比、そして$$\mu_e$$は自由電子1個あたりの平均分子量です。(5)式の$$\rho X$$は単位体積あたりの水素の質量で、それを$$m_p$$で割ったものは単位体積あたりの水素原子の数になります。今は完全電離を考えているため、水素の原子数がそのまま電子数としてカウントされます。次の$$\rho Y$$は単位体積あたりのヘリウムの質量で、それを$$4 m_p \simeq 2 m_p + 2 m_n$$で割ったものがヘリウム原子の数になります。中性ヘリウムは電子を2つ持っているため、完全電離の場合には1つのヘリウムから2つの電子が放出されます。2の因子がかかっているのはそのためです。  
(6)式で定義された電子の平均分子量$$\mu_e$$は、電子1つあたりの分子量を表す量です。もしこの系に水素しか存在しないならば、$$X=1$$を代入して$$\mu_e = 1$$となります。これは元々、中性水素が1つの電子を持つことに対応します。1つの電子の存在は1つの水素原子が同じ系内にいることを意味しているため、電子1つあたりの分子量も水素1個分というように数えることができます。仮に水素が存在せず、リチウムのみが場合、$$X=0$$を代入することで$$\mu_e = 2$$を得ます。これは質量数4の中性ヘリウムが2つの電子を持つことから、電子1つあたりの分子量は質量数2に相当するということを表しています。  
(4), (5)式より

$$
x 
= \underbrace{\frac{h}{m_e c}}_{=\lambda_c} \left( \frac{3}{8\pi \mu_e m_p}\right)^{1/3} \rho^{1/3} 
\equiv A \rho^{1/3} \tag{7}
$$

途中の$$\lambda_c$$は[電子コンプトン波長](/astroelec/compton)です。同様に(2)式から

$$
P = \frac{\pi m_e c^2}{3\lambda_c^3} f(x) \equiv B f(x) \tag{8}
$$

のように書けます。この2つを合わせると$$P = Bf(A \rho^{1/3})$$と書けます。これはポリトロープの時とは異なり、$$\rho$$の係数である$$K$$が介入していないため、質量と半径とを独立に任意に与えることができません。
すなわち、状態方程式はポリトロープ的ですが、パラメータ$$K$$は状態方程式により与えることができるため、星の構造を決定するには半径か質量のどちらか1つを与えてやればよいことがわかります。  
以下の計算のために、微分を計算しておきましょう。(3)式より

$$
\frac{df}{dx} = (2x^3 - 3) \sqrt{x^2 + 1} + 4 x^2 \sqrt{x^2 + 1} + \frac{x^2 (2x^2-3)}{\sqrt{x^2+1}} + 3 \frac{d}{dx} \sinh^{-1} x
$$

ここで$$y = \sinh^{-1}x$$とおくと、逆関数よりこれは$$x = \sinh y$$のようにも書けます。よって

$$
\frac{dy}{dx} 
= \frac{1}{\frac{dx}{dy}} 
= \frac{1}{\cosh y} 
= \frac{1}{\sqrt{1+\sinh^2 y}} 
= \frac{1}{\sqrt{1+x^2}}
$$

以上より

$$
\frac{df}{dx} 
= \frac{2x^2 -3 + 2x^4 - 3x^2 + 4x^2 + 4x^4 + 2x^4 - 3x^2 + 3}{\sqrt{1+x^2}} 
= \frac{8x^4}{\sqrt{1+x^2}} \tag{9}
$$

## 静水圧平衡の式からの変形

簡単のため、この縮退圧で支えられている恒星は球対称であるとします。重力と圧力勾配の釣り合いで形成されている静水圧平衡の式より

$$
\frac{1}{r^2} \frac{d}{dr} \left( \frac{r^2}{\rho} \frac{dP}{dr}\right) 
= -4\pi G\rho \tag{10}
$$

これの式変形を行うことで、数値的に物理量が求められる式を導出しましょう。(8)式より

$$
\frac{dP}{dr} 
= B \frac{df}{dr} 
= B \overbrace{\frac{dx}{dr}}^{(7)} \underbrace{\frac{df}{dx}}_{(9)} 
= \frac{1}{3} A B \rho^{-2/3} \frac{d\rho}{dr} \frac{8 A^4 \rho^{4/3}}{\sqrt{1+A^2 \rho^{2/3}}} \tag{11}
$$

を得ます。計算を進めるために、以下の量を導入しましょう。

$$
z^2 \equiv x^2 + 1, \quad \varphi \equiv \frac{z}{z_c}, \quad \zeta \equiv \frac{r}{\alpha}, \quad
\alpha \equiv \sqrt{\frac{2B}{\pi G}} \frac{A^3}{z_c} \tag{12}
$$

ここで添字の$$c$$は星の中心での物理量を表す定数です。

$$
\varphi^2 z_c^2 
\underbrace{=}_{(7)} A^2 \rho^{2/3} + 1 \tag{13}
$$

より、この両辺を$$r$$で微分すると

$$
2 z_c^2 \varphi \frac{d\varphi}{dr} 
= \frac{2}{3} A^2 \rho^{-1/3} \frac{d\rho}{dr} \tag{14}
$$

(12), (13), (14)式を用いて(11)式を整理します。

$$
\frac{dP}{dr} 
= \frac{1}{3} A B \rho^{-2/3} 3 z_c^2 \varphi \frac{1}{\alpha} \frac{d\varphi}{d\zeta} \frac{\rho^{1/3}}{A^2} \frac{8 A^4 \rho^{4/3}}{\varphi z_c} 
= 8 A^3 B z_c \frac{\rho}{\alpha} \frac{d\varphi}{d\zeta} \ \underbrace{\Longrightarrow}_{\times r^2 / \rho} \
\frac{r^2}{\rho} \frac{dP}{dr} 
= 8A^3 B z_c \alpha \zeta^2 \frac{d\varphi}{d\zeta}  
$$

さらにこれの両辺を$$r$$で微分したものを整理します。

$$
\frac{d}{dr} \left( \frac{r^2}{\rho} \frac{dP}{dr} \right) 
= 8 A^3 B z_c \frac{d}{d\zeta} \left( \zeta^2 \frac{d\varphi}{d\zeta}\right) \ \underbrace{\Longrightarrow}_{\times 1/r^2} \
\frac{1}{r^2}\frac{d}{dr} \left( \frac{r^2}{\rho} \frac{dP}{dr} \right) 
= \frac{8A^3 B z_c}{\alpha^2} \frac{1}{\zeta^2} \frac{d}{d\zeta} \left( \zeta^2 \frac{d\varphi}{d\zeta} \right) 
= \frac{4\pi Gz_c^3}{A^3} \frac{1}{\zeta^2} \frac{d}{d\zeta} \left( \zeta^2 \frac{d\varphi}{d\zeta}\right)
$$

(10)式より

$$
\frac{4\pi G z_c^3}{A^3} \frac{1}{\zeta^2} \frac{d}{d\zeta} \left( \zeta^2 \frac{d\varphi}{d\zeta} \right) 
= -4\pi G \rho 
\underbrace{=}_{(13)} - 4\pi G \left( \frac{\varphi^2 z_c^2 - 1}{A^2}\right)^{3/2} \ \Longrightarrow \ 
\frac{1}{\zeta^2} \frac{d}{d\zeta} \left( \zeta^2 \frac{d\varphi}{d\zeta} \right) 
= - \left( \varphi^2 - \frac{1}{z_c^2}\right)^{3/2} \tag{15}
$$

## 質量と半径

恒星の全質量$$M$$と半径$$R$$を求めましょう。ここので恒星の半径とは、「(15)式を中心から数値積分していった時に、最初に密度がゼロになるところ」と定めます。
言い換えると$$\zeta = \zeta_1$$において(7)式から$$x_1 = 0$$、(12)式から$$z_1 = 1, \varphi = 1/z_c$$となるような場所のことを指します。ここで添字の1は恒星表面での値を表します。  
(15)式の途中式より

$$
\begin{align}
M 
&= \int_0^R 4\pi r^2 \rho dr 
= - \int_0^R 4\pi r^2 \frac{z_c^3}{A^3} \frac{1}{\zeta^2} \frac{d}{d\zeta} \left( \zeta^2 \frac{d\varphi}{d\zeta}\right) dr 
\underbrace{=}_{\zeta = r/\alpha} - \int_0^{R/\alpha} 4\pi (\zeta \alpha)^2 \frac{z_c^3}{A^3} \frac{1}{\zeta^2} \frac{d}{d\zeta} \left( \zeta^2 \frac{d\varphi}{d\zeta}\right) \alpha d\zeta \notag \\
&= - 4\pi \alpha^3 \frac{z_c^3}{A^3} \int_0^{R/\alpha} \frac{d}{d\zeta} \left( \zeta^2 \frac{d\varphi}{d\zeta}\right) d\zeta 
= -4\pi \left( \frac{2B}{\pi G}\right)^{3/2} A^6 \left[ \zeta^2 \frac{d\varphi}{d\zeta}\right]_1 \notag \\
&= -4\pi \left( \frac{2}{\pi G}\right)^{3/2} \left( \frac{\pi m_e c^2}{3 \lambda_c^3}\right)^{3/2} \lambda_c^6 \left( \frac{3}{8\pi \mu_e m_p}\right)^2 \left[ \zeta^2 \frac{d\varphi}{d\zeta}\right]_1
= -2^2 \pi \left( \frac{2m_e c^2}{3G}\right)^{3/2} \lambda_c^{3/2} \left( \frac{3}{8\pi \mu_e m_p}\right)^3 \left[ \zeta^2 \frac{d\varphi}{d\zeta}\right]_1 \notag \\
&= \frac{9}{64 \pi} \frac{1}{m_p^2} \left( \frac{2}{\mu_e}\right)^2 \left( \frac{2hc}{3G} \right)^{3/2} \left[ - \zeta^2 \frac{d\varphi}{d\zeta}\right]_1 \tag{16}
\end{align}
$$

となります。半径については

$$
R 
= \alpha \zeta_1 
= \sqrt{\frac{2B}{\pi G}} \frac{A^3}{z_c} \zeta_1 
= \sqrt{\frac{2}{\pi G}} \left( \frac{\pi m_e^4 c^5}{3h^3}\right)^{1/2} \frac{h^3}{m_e^3 c^3} \frac{3}{8\pi \mu_e m_p} \frac{\zeta_1}{z_c} 
= \sqrt{\frac{6h^3}{cG}} \frac{1}{8\pi \mu_e m_e m_p} \frac{\zeta_1}{z_c} \tag{17}
$$

のようになります。(16)式より、星の全質量は縮退している電子の質量$$m_e$$に依存しないことがわかります。一方で(17)式で求まった半径は$$m_e$$に反比例します。(15)式をある$$z_c$$の解について求めるとき、縮退している期待が電子のような白色矮星である場合と、中性子(質量$$m_n \sim m_p$$のような中性子星とでは、星の全質量は同じであっても半径が大きく異なることがわかります。この例では、中性子星の半径は白色矮星のおよそ$$m_e/ m_n \sim 1/1800$$倍も小さいことがわかります。

## 数値積分

さて、(15)式を単純に数値的に積分し$$\zeta_1$$を求めれば良いわけですが、計算の途中で$$1/\zeta$$が入ってくることが式からわかります。よって実際に計算を行う際には数値計算は中心$$\zeta=0$$の近傍から始める必要があります。
そのために(15)式を$$\zeta_c=0$$において、$$\varphi(\zeta_c) \equiv \varphi_c = 1, \frac{d\varphi}{d\zeta_0} = 0$$の条件のもとで展開し、その近似式の値から数値計算を行うことにしましょう。(15)式左辺のテイラー展開より

$$
\begin{align}
\frac{1}{\zeta^2} \frac{d}{d\zeta} \left( \zeta^2 \frac{d \varphi}{d\zeta} \right) 
&= \frac{1}{\zeta^2} \frac{d}{d\zeta} \left\{  \zeta^2 \frac{d}{d\zeta} \left( 1 + \left. \frac{d\varphi}{d\zeta} \right|_c + \frac{1}{2!} \left. \frac{d^2\varphi}{d\zeta^2} \right|_c \zeta^2 + \frac{1}{3!} \left. \frac{d^3\varphi}{d\zeta^3} \right|_c \zeta^3 + \frac{1}{4!} \left. \frac{d^4\varphi}{d\zeta^4} \right|_c \zeta^4 + \cdots \right) \right\} \notag \\
&= \frac{1}{\zeta^2} \frac{d}{d\zeta} \left(\left. \frac{d^2\varphi}{d\zeta^2} \right|_c \zeta^3 + + \frac{1}{2!} \left. \frac{d^3\varphi}{d\zeta^3} \right|_c \zeta^4 + \frac{1}{3!} \left. \frac{d^4\varphi}{d\zeta^4} \right|_c \zeta^5 + \cdots \right) \\
&= 3 \left. \frac{d^2 \varphi}{d\zeta^2} \right|_c + 2 \left. \frac{d^3 \varphi}{d\zeta^3} \right|_c \zeta + \frac{5}{6} \left. \frac{d^4 \varphi}{d\zeta^4} \right|_c \zeta^2 + \cdots \tag{18}
\end{align}
$$

(15)式右辺は

$$
\left. \left( \varphi^2 - \frac{1}{z_c^2}\right)^{3/2} \right|_c
= \left( 1-\frac{1}{z_c^2}\right)^{3/2}
$$

$$
\left. \frac{d}{d\zeta} \left( \varphi^2 - \frac{1}{z_c^2}\right)^{3/2} \right|_c 
=\left\{ \frac{3}{2} \left( \varphi^2 - \frac{1}{z_c^2} \right)^{1/2} 2\varphi \frac{d\varphi}{d\zeta}\right\}_c 
= 0
$$

$$
\begin{aligned}
\left. \frac{d^2}{d\zeta^2} \left( \varphi^2 - \frac{1}{z_c^2}\right)^{3/2} \right|_c 
&= 3 \left\{ \frac{1}{2} \left( \varphi^2 - \frac{1}{z_c^2}\right)^{-1/2} 2\varphi^2 \left( \frac{d\varphi}{d\zeta}\right)^2 + \left( \varphi^2 - \frac{1}{z_c^2}\right)^{1/2} \left( \frac{d\varphi}{d\zeta} \right)^2 + \left( \varphi^2 - \frac{1}{z_c^2}\right)^{1/2} \varphi \frac{d^2 \varphi}{d\zeta^2}\right\}_c \\
&= 3 \left( 1-\frac{1}{z_c^2}\right)^{1/2} \left. \frac{d^2 \varphi}{d\zeta^2} \right|_c 
\end{aligned}
$$

などより

$$
-\left( 1-\frac{1}{z_c^2} \right)^{3/2} - \frac{3}{2!} \left( 1-\frac{1}{z_c^2} \right)^{1/2} \left. \frac{d^2 \varphi}{d\zeta^2} \right|_c \zeta^2 - \cdots \tag{19}
$$

(18), (19)式において、同じ$$\zeta$$の次数の係数を比べることで

$$
\left. \frac{d^2\varphi}{d\zeta^2} \right|_c 
= -\frac{1}{3} \left( 1-\frac{1}{z_c^2}\right)^{3/2}, \quad 
\left. \frac{d^3\varphi}{d\zeta^3} \right|_c = 0, \quad 
\left. \frac{d^4 \varphi}{d\zeta^4} \right|_c = -\frac{9}{5} \left( 1-\frac{1}{z_c^2}\right)^{1/2} \left. \frac{d^2 \varphi}{d\zeta^2} \right|_c 
= \frac{3}{5} \left( 1-\frac{1}{z_c^2} \right)^2
$$

を得ます。以上から、求めたかった$$\varphi$$の$$\zeta=\zeta_c = 0$$周りでのテイラー展開は

$$
\varphi 
= 1 - \frac{1}{3\cdot 2!} \left( 1-\frac{1}{z_c^2}\right)^{3/2} \zeta^2 + \frac{3}{5 \cdot 4!} \left( 1-\frac{1}{z_c^2} \right)^2 \zeta^4 + \cdots
= 1-\frac{q^3}{6} \zeta^2 + \frac{q^4}{40} \zeta^4 + \cdots \tag{20}
$$

ここで$$q \equiv (1-1/z_c^2)^{1/2}$$のように置きました。  
ここまでくればあとは数値計算を行うだけです。(15)式を

$$
\begin{aligned}
&\frac{1}{\zeta^2} \frac{d}{d\zeta} \left( \zeta^2 \frac{d\varphi}{d\zeta}\right) 
= \frac{1}{\zeta^2} \left( 2\zeta \frac{d\varphi}{d\zeta} + \zeta^2 \frac{d^2 \varphi}{d\zeta^2} \right) 
= \frac{2}{\zeta} \frac{d\varphi}{d\zeta} + \frac{d^2 \varphi}{d\zeta^2} 
= - \left( \varphi^2 - \frac{1}{z_c^2}\right)^{3/2} \\
&\Longrightarrow \ 
\frac{d^2 \varphi}{d\zeta^2} 
= -\frac{2}{\zeta} \frac{d\varphi}{d\zeta} - \left( \varphi^2 - \frac{1}{z_c^2}\right)^{3/2} 
\end{aligned}
$$

のように変形し、$$\varphi = y_1, d\varphi / d\zeta = y_2$$とおけば

$$
\frac{d}{d\zeta} \left( \begin{array}{c} 
y_1 \\
y_2
\end{array}\right) 
= \left( \begin{array}{c}
y_2 \\
-\frac{2}{\zeta} y_2 - \left( y_1^2 - \frac{1}{z_c^2} \right)^{3/2}
\end{array} \right) \tag{21}
$$

この連立微分方程式を$$z_c$$を入力として数値的に積分すれば、$$\zeta_1$$が求まります。それを(16), (17)式に代入すれば、その$$z_c$$での質量と半径が求まります。
よって様々な$$z_c$$に対してこの計算を実行すれば、質量と半径の関係を表すグラフを描くことができます。ただし$$z_c > z_1 =1$$より、1より大きな値を入力しなければならないことに注意しましょう。
この計算にから$$(\mu_e/2)^2 M$$を図示したものを以下に示します。

![](/assets/images/compact/chandrasekhar_limit_01.png)

この図より、有限の質量で半径が0に漸近することがわかります。この限界質量がおよそ

$$
M_\mathrm{Ch} 
\simeq \left( \frac{2}{\mu_e}\right)^2 1.43 M_\odot \tag{22}
$$

であり、これをチャンドラセカールの限界質量と呼びます。

## 大雑把な見積もり

以上は精密な計算から求められたものでしたが、最後に大雑把な見積もりから限界質量を算出してみましょう。縮退している電子の個数密度を$$n$$とすると、電子1個が占有する体積はおよそ$$\Delta V \simeq 1/n$$です。よって電子間の平均的な距離は

$$
\Delta x = n^{-1/3} \tag{23}
$$

となります。ここで恒星の全質量を$$M$$、半径を$$R$$、平均分子量を$$\mu_e$$とし、簡単のため、恒星内部は一様密度であるとすると

$$
M = \frac{4\pi}{3} R^3 \mu_e m_p n \ \Longrightarrow \ 
n \simeq \frac{3M}{4\pi R^3 \mu_e m_p} \tag{24}
$$

となります。電子のエネルギーと運動量の関係は、電子の運動が超相対論的として

$$
\varepsilon \simeq cp \tag{25}
$$

さらに量子力学の不確定性関係より

$$
\hbar \simeq \Delta x \Delta p \tag{26}
$$

(23)-(26)式より、恒星内部に存在する縮退した電子の総エネルギーは

$$
E_\mathrm{deg} 
\simeq \frac{4\pi}{3} R^3 n \varepsilon 
\simeq \frac{M}{\mu_e m_p} cp 
\simeq \frac{M}{\mu_e m_p} c \frac{\hbar}{\Delta x} 
\simeq \frac{M}{\mu_e m_p} c \hbar n^{1/3}
$$

のようになります。途中、$$p \simeq \Delta p$$のように大雑把に考えました。ここにもう一度(24)式を用いれば

$$
E_\mathrm{deg} 
\simeq \left( \frac{3}{4\pi}\right)^{1/3} \left( \frac{M}{\mu_e m_p}\right)^{4/3} \frac{c\hbar}{R} \tag{27}
$$

となります。エネルギー等分配から、これが重力エネルギーと等しいと考えると

$$
\frac{GM}{R} M \simeq \left( \frac{3}{4\pi}\right)^{1/3} \left( \frac{M}{\mu_e m_p}\right)^{4/3} \frac{c\hbar}{R} \ \Longrightarrow \ 
M \simeq \left( \frac{3}{4\pi}\right)^{1/2} \left( \frac{1}{\mu_e m_p} \right)^2 \left( \frac{c\hbar}{G} \right)^{3/2} 
\sim \frac{1}{\mu_e^2} M_\odot \tag{28}
$$

のように、大雑把な見積もりでも大体1太陽質量程度となることがわかります。

# 参考文献

* 小山勝二, 嶺重慎, "ブラックホールと高エネルギー現象"
* [本間希樹, 東京大学教養学部, "宇宙科学II (電波天文学)" 講義スライド](https://www.miz.nao.ac.jp/staffs/MarekiHonma/lecture/komaba2012-9.pdf)

{% include adsense.html %}