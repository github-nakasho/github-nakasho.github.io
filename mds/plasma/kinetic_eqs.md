---
layout: default
title: プラズマ運動論の基礎方程式
parent: プラズマ物理学
math: mathjax3
permalink: /plasma/kinetic_eqs
nav_order: 10
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

# プラズマ運動論の基礎方程式

プラズマは、電磁的に相互作用しあう多数の家電粒子の集合体です。
そららの粒子個々の運動を考慮に入れてプラズマを扱うのが、ここで述べる運動論です。
ここでは、プラズマ運動論の基礎となる方程式を導出していきましょう。

## クリモントビッチ方程式

プラズマ中の荷電粒子の運動は、初期時刻での位置・速度を指定すれば、以降の時刻での位置・速度は運動方程式を用いることで決定することができます。
$$i$$ 番目のプラズマ粒子が位置 $$\mathbf{x}$$ と速度 $$\mathbf{v}$$ からなる 6 次元空間を運動するとき、その軌跡を $$(\mathbf{X}_i, \mathbf{V}_i)$$ のように書くことにします。
ここで大文字の $$\mathbf{X}, \mathbf{V}$$ はラグランジュ座標による表示を強調したもので、その時間発展は運動方程式

$$
\frac{d\mathbf{X}_i}{dt} 
= \mathbf{V}_i \tag{1}
$$

$$
\frac{d\mathbf{V}_i}{dt} 
= \frac{q_i}{m_i} \left( \mathbf{E}_i + \frac{\mathbf{V}_i}{c} \times \mathbf{B} \right) \tag{2}
$$

により記述されます。
ここで電場 $$\mathbf{E}$$ と磁場 $$\mathbf{B}$$ は、時刻 $$t$$ での粒子の位置 $$\mathbf{x} = \mathbf{X}_i (t)$$ における値です。
電磁場は、以下のマクスウェル方程式を用いて求めることができます。

$$
\nabla \cdot \mathbf{E} (\mathbf{x}, t) 
= 4\pi \rho (\mathbf{x}, t) \tag{3}
$$

$$
\nabla \cdot \mathbf{B} (\mathbf{x}, t) 
= 0 \tag{4}
$$

$$
\nabla \times \mathbf{E} (\mathbf{x}, t) 
= - \frac{1}{c} \frac{\partial \mathbf{B} (\mathbf{x}, t)}{\partial t} \tag{5}
$$

$$
\nabla \times \mathbf{B} (\mathbf{x}, t) 
= \frac{4\pi}{c} \mathbf{j} (\mathbf{x}, t) + \frac{1}{c} \frac{\partial \mathbf{E} (\mathbf{x}, t)}{\partial t} \tag{6}
$$

ここでは、場の量はオイラー座標 $$(\mathbf{x}, t)$$ の関数として表示しています。
マクスウェル方程式の右辺に現れている電流密度・電荷密度は、ラグランジュ座標で表された粒子の量と、以下の関係にあります。

$$
\mathbf{j} (\mathbf{x}, t) 
= \sum_i q_i \mathbf{V}_i \delta (\mathbf{x} - \mathbf{X}_i (t)) \tag{7}
$$

$$
\rho (\mathbf{x}, t) 
= \sum_i q_i \delta (\mathbf{x} - \mathbf{X}_i (t)) \tag{8}
$$

(1) - (8) 式は閉じた方程式系を成しています。
よって、これらを全ての粒子について解けば、原理的にはプラズマの全ての振る舞いを知ることが可能です。  
しかし以降では、粒子の一つ一つの軌道を追うことからは離れ、プラズマを集団的に扱うことを考えましょう。
そのために、(電子とイオンなど) 粒子の種類 $$s$$ ごとに、オイラー座標での密度関数を定義することにします。

$$
N_s (\mathbf{x}, \mathbf{v}, t)
= \sum_{i=1}^{N_{s0}} \delta(\mathbf{x} - \mathbf{X}_i (t)) \delta (\mathbf{v} - \mathbf{V}_i) \tag{9}
$$

ここで、総和の計算は粒子の種類ごとに、全ての粒子について行うことにします ($$i = 1, 2, \dots, N_{s0}$$)。
このとき、粒子と場の量を結ぶ式 (7), (8) は

$$
\mathbf{j} (\mathbf{x}, t) 
= \sum_s q_s \int N_s (\mathbf{x}, \mathbf{v}, t) \mathbf{v} d^3 \mathbf{v} \tag{10}
$$

$$
\rho (\mathbf{x}, t) 
= \sum_s q_s \int N_s (\mathbf{x}, \mathbf{v}, t) d^3 \mathbf{v} \tag{11}
$$

のように、粒子での総和の代わりに、密度関数を速度空間で積分することで得られます。
このように定義された密度関数が、どのように時間発展するかを考えてみましょう。
(9) 式のオイラー時間微分を計算しましょう。
$$\delta (\mathbf{x} - \mathbf{X}_i(t))$$ の時間微分は

$$
\frac{\partial}{\partial t} \delta (\mathbf{x} - \mathbf{X}_i(t)) 
\underbrace{=}_{\mathbf{u} = \mathbf{x} - \mathbf{X}_i (t)} \frac{\partial \mathbf{u} }{\partial t} \cdot \frac{\partial}{\partial \mathbf{u}} \delta (\mathbf{u}) 
= - \dot{\mathbf{X}}_i \delta'(\mathbf{u}) \tag{12}
$$

のようになります。
一方

$$
\frac{\partial}{\partial \mathbf{x}} \delta (\mathbf{x} - \mathbf{X}_i(t)) 
= \delta'(\mathbf{u}) \cdot \frac{\partial \mathbf{u}}{\partial \mathbf{x}} 
= \delta'(\mathbf{u}) \tag{13}
$$

が成り立つことから

$$
\frac{\partial}{\partial t} \delta (\mathbf{x} - \mathbf{X}_i(t)) 
= - \dot{\mathbf{X}}_i \cdot \frac{\partial}{\partial \mathbf{x}} \delta(\mathbf{x} - \mathbf{X}_i(t)) \tag{14}
$$

のように書くことができます。
$$\delta (\mathbf{v} - \mathbf{V}_i(t))$$ の時間微分も同様に計算することで


$$
\begin{align}
\frac{\partial N_s (\mathbf{x}, \mathbf{v}, t)}{\partial t} 
&= - \sum_i \dot{\mathbf{X}}_i \cdot \nabla_x \delta (\mathbf{x} - \mathbf{X}_i (t)) \delta (\mathbf{v} - \mathbf{V}_i(t)) \notag \\
& \qquad - \sum_i \dot{\mathbf{V}}_i \cdot \nabla_v \delta (\mathbf{x} - \mathbf{X}_i(t)) \delta (\mathbf{v} - \mathbf{V}_i (t)) \tag{15} 
\end{align}
$$

を得ます。
途中、$$\nabla_x = \frac{\partial}{\partial \mathbf{x}}, \nabla_v = \frac{\partial}{\partial \mathbf{v}}$$ としました。
ここに (1), (2) 式を用いることで、$$\dot{\mathbf{X}}_i, \dot{\mathbf{V}}_i$$ を消去すると

$$
\begin{align}
\frac{\partial N_s (\mathbf{x}, \mathbf{v}, t)}{\partial t} 
&= - \sum_i \mathbf{V}_i \cdot \nabla_x \delta (\mathbf{x} - \mathbf{X}_i (t)) \delta (\mathbf{v} - \mathbf{V}_i(t)) \notag \\
& \qquad - \sum_i \frac{q_i}{m_i}\left( \mathbf{E} + \frac{\mathbf{V}_i}{c} \times \mathbf{B} \right) \cdot \nabla_v \delta (\mathbf{x} - \mathbf{X}_i(t)) \delta (\mathbf{v} - \mathbf{V}_i (t)) \tag{16} 
\end{align}
$$

となります。
右辺第一項において、$$\mathbf{V}_i \delta (\mathbf{v} - \mathbf{V}_i(t)) = \mathbf{v} \delta (\mathbf{v} - \mathbf{V}_i(t))$$ が成り立つことを用いると

$$
\begin{align}
(第一項) 
&= \sum_i \mathbf{v} \cdot \nabla_x \delta (\mathbf{x} - \mathbf{X}_i (t)) \delta (\mathbf{v} - \mathbf{V}_i(t)) \notag \\
&= \mathbf{v} \cdot \nabla_x \sum_i \delta (\mathbf{x} - \mathbf{X}_i (t)) \delta (\mathbf{v} - \mathbf{V}_i(t)) 
\underbrace{=}_{(9)} \mathbf{v} \cdot \nabla_x N_s \tag{17} 
\end{align}
$$

のように整理することができます。
第二項も同様に整理しますが、粒子の総和をとる部分において $$q_i \rightarrow q_s, m_i \rightarrow m_s$$ のように、粒子種で電荷と質量が共通していることを用いると

$$
\frac{\partial N_s}{\partial t} + \mathbf{v} \cdot \nabla_x N_s + \frac{q_s}{m_s} \left( \mathbf{E} + \frac{\mathbf{v}}{c} \times \mathbf{B}\right) \cdot \nabla_v N_s 
= 0 \tag{18}
$$

を得ます。
これを、クリモントビッチ方程式 (Klimontovich equation) と呼び、プラズマ粒子一つ一つの情報をスパイク的なデルタ関数の集合として含む密度関数の時間発展を、オイラー座標で記述したものです。
(18) 式のクリモントビッチ方程式、(3) - (6) 式のマクスウェル方程式、(10), (11) 式は、閉じた時間発展方程式系をなしています。
そのため、全ての粒子および電磁場の初期条件を与えれば、プラズマの運動を決定論的に解くことができます。  
クリモントビッチ方程式は、プラズマ密度の保存則を表しています。
$$\nabla_x, \nabla_v$$ が $$\mathbf{x}, \mathbf{v}$$ に対する微分演算子であること、および $$\nabla \cdot (\mathbf{v} \times \mathbf{B}) = 0$$ であることを用いると

$$
\frac{\partial N_s}{\partial t} + \nabla_x \cdot (N_s \mathbf{v}) + \nabla_v \cdot \left\{ \frac{q_s}{m_s} \left( \mathbf{E} + \frac{\mathbf{v}}{c} \times \mathbf{B}\right) \right\} N_s 
= 0 \tag{19}
$$

のように書き直すことができます。
これは質量保存則 (連続の式) $$\frac{\partial \rho}{\partial t} + \nabla \cdot (\rho \mathbf{v}) = 0$$ と同じ形をしていることから、プラズマが $$(\mathbf{x}, \mathbf{v})$$ の 6 次元位相空間において、生成・消滅をしないことを表しています。

## ボルツマン方程式とブラソフ方程式

ここまでで導出してきたクリモントビッチ方程式は、時刻 $$t$$ に個々の粒子が 6 次元位相空間 $$(\mathbf{x}, \mathbf{v})$$ のある点に存在することを表す、スパイク的な密度関数の時間発展を記述するものでした。
しかし、高温プラズマを扱う上で必要となるのは、デバイ半径程度またはそれ以上の空間スケールでの情報であり、この体積空間中には極めて多数の粒子が含まれることになります。
そのため、プラズマ運動論の基礎方程式において実際に必要となるのは、クリモントビッチ方程式の密度関数を座標と速度空間の微小体積 $$\Delta \mathbf{x} \Delta \mathbf{v}$$ で平均化して得られる、空間的に滑らかな分布関数です。
そこで、スパイク的な密度関数 $$N_s (\mathbf{x}, \mathbf{v}, t)$$ を、空間的に平均化された滑らかな部分とその残りのデルタ関数的な振る舞いをする部分に分けて

$$
N_s (\mathbf{x}, \mathbf{v}, t)
= f_s (\mathbf{x}, \mathbf{v}, t) + \delta N_s (\mathbf{x}, \mathbf{v}, t), \quad 
f_s (\mathbf{x}, \mathbf{v}, t) 
\equiv \langle N_s (\mathbf{x}, \mathbf{v}, t) \rangle \tag{20} 
$$

のように表すことにしましょう。
ここで $$\langle \cdots \rangle $$ は平均処理を表します。
クリモントビッチ方程式 (18) に、(20) 式の分解を代入しましょう。
すると

$$
(第一項) 
= \frac{\partial}{\partial t} (f_s + \delta N_s) \tag{21}
$$

$$
(第二項) 
= \mathbf{v} \cdot \nabla_x (f_s + \delta N_s) \tag{22}
$$

次に、電場と磁場についても滑らかな部分とスパイク的な部分とに分けて考えることにしましょう。
すなわち

$$
\mathbf{E}
= \mathbf{E}^m + \delta \mathbf{E}, \quad 
\mathbf{B}
= \mathbf{B}^m + \delta \mathbf{B} \tag{23}
$$

のようにすると、ローレンツ力部分は

$$
\mathbf{a} 
\equiv \frac{q_s}{m_s} \left( \mathbf{E} + \frac{\mathbf{v}}{c} \times \mathbf{B}\right) 
= \mathbf{a}^m + \delta \mathbf{a} \tag{24}
$$

のように、同様に滑らかな部分とスパイク的な部分に分けることができます。
ここで

$$
\mathbf{a}^m 
= \frac{q_s}{m_s} \left( \mathbf{E}^m + \frac{\mathbf{v}}{c} \times \mathbf{B}^m \right), \quad
\delta \mathbf{a} 
= \frac{q_s}{m_s} \left( \delta \mathbf{E} + \frac{\mathbf{v}}{c} \times \delta \mathbf{B} \right) \tag{25}
$$

です。
これらを用いると、(18) 式の第三項は

$$
(\mathbf{a}^m + \delta \mathbf{a}) \cdot \nabla_v (f_s + \delta N_s) 
= \mathbf{a}^m \cdot \nabla_v f_s + \mathbf{a}^m \cdot \nabla_v \delta N_s + \delta \mathbf{a} \cdot \nabla_v f_s + \delta \mathbf{a} \cdot \nabla_v \delta N_s \tag{26}
$$

のようになります。
定義から、$$\langle \delta N_s \rangle = 0, \langle \delta \mathbf{E} \rangle = \mathbf{0}, \langle \delta \mathbf{B} \rangle = \mathbf{0}$$ です。
これらから、クリモントビッチ方程式の平均を取ると

$$
\frac{\partial f_s}{\partial t} + \mathbf{v} \cdot \nabla_x f_s + \langle \mathbf{a}^m \cdot \nabla_v f_s + \mathbf{a}^m \cdot \nabla_v \delta N_s + \delta \mathbf{a} \cdot \nabla_v f_s + \delta \mathbf{a} \cdot \nabla_v \delta N_s \rangle 
= 0 \tag{27}
$$

第三項の平均処理部分では

$$
\langle \mathbf{a}^m \cdot \nabla_v f_s \rangle 
= \mathbf{a}^m \cdot \nabla_v f_s \tag{28}
$$

$$
\langle \mathbf{a}^m \cdot \nabla_v \delta N_s \rangle 
= \mathbf{a}^m \cdot \nabla_v \langle \delta N_s \rangle 
= 0 \tag{29}
$$

$$
\langle \delta \mathbf{a} \cdot \nabla_v f_s \rangle 
= \langle \delta \mathbf{a} \rangle \cdot \nabla_v f_s 
= 0 \tag{30}
$$

のようになることから、最終的に

$$
\frac{\partial f_s}{\partial t} + \mathbf{v} \cdot \nabla_x f_s + \mathbf{a}^m \cdot \nabla_v f_s 
= - \langle \delta \mathbf{a} \cdot \nabla_v \delta N_s \rangle \tag{31}
$$

を得ます。
右辺がゼロとなっていないのは、$$\delta \mathbf{a}, \delta N_s$$ は微小量ではないためです。
(20), (23)式の分解では、滑らかな平均部分とスパイク的な部分とに分けただけであり、その大きさには言及していません。
よって一般には、右辺はゼロにはならないことがわかります。
(31) 式の左辺は、全て $$(\mathbf{x}, \mathbf{v})$$ 空間において滑らかに変化する関数です。
右辺は、電磁場を介しての離散的な粒子同士の相関であり、衝突効果を表しています。
特に、この右辺を $$\left( \frac{\partial f_s}{\partial t}\right)_\mathrm{c}$$ のように書いたものを、ボルツマン方程式 (Boltzmann equation) と呼びます。

{: .note}
この衝突という言葉は、いささか誤解を招くかもしれません。
この衝突項の実情は、私たちが想像する二体衝突ではなく、デバイ半径内の多数の粒子との弱い相互作用の累積です。
プラズマでは小角度散乱の積み重ねが支配的であるためです。

## 参考文献

[] []()  

{% include adsense.html %} 
