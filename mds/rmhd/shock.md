---
layout: default
title: 相対論的衝撃波
parent: 相対論的磁気流体力学
math: mathjax3
permalink: /rmhd/shock
nav_order: 6
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

# 相対論的衝撃波

相対論的衝撃波は、宇宙物理学への応用上欠かすことのできない重要な物理現象です。
衝撃波では物理量が不連続に変化しますが、衝撃波の静止系で不連続面での物理量の変化を調べてみましょう。

## 相対論的なランキン・ユゴニオの関係式の導出

上流側の物理量には添字1、下流側の物理量には添字2をつけて表すことにします。
衝撃波面を$$x=0$$にとり、流体は$$x$$軸方向に定常的に運動しているものとします。
すると運動量保存則から、下流でも運動方向は$$x$$軸方向となります。
エネルギーと運動量の保存則から

$$
\frac{A_1}{c^2} \gamma_1^2 v_1 
= \frac{A_2}{c^2} \gamma_2^2 v_2 \tag{1}
$$

$$
\frac{A_1}{c^2} \gamma_1^2 v_1^2 + P_1 
= \frac{A_2}{c^2} \gamma_2^2 v_2^2 + P_2 \tag{2} 
$$

とわかります。
ここで$$A_i = \varepsilon_i + P_i$$としました。
上流の物理量から、下流の物理量を求めることを考えましょう。
未知の量が$$\varepsilon_2, P_2, v_2$$の3つであるのに対し、式の数は2つであるため、これだけでは下流の物理量を求めることができません。
そこで状態方程式を与えることで、$$\varepsilon, P$$との間の関係を定めて解くことにしましょう。

(1)式の両辺に$$v_2$$をかけると

$$
\frac{A_1}{c^2} \gamma_1^2 v_1 v_2 
= \frac{A_2}{c^2} \gamma_2^2 v_2^2 \tag{3}
$$

を得ます。
(3)式を(2)式に用いれば

$$
\frac{A_1}{c^2} \gamma_1^2 v_1^2 - \frac{A_1}{c^2} \gamma_1^2 v_1 v_2 
= \frac{A_1}{c^2} \gamma_1^2 v_1 (v_1 - v_2)
= P_2 - P_1 \tag{4}
$$

のようになります。
さらに

$$
\gamma_i^2 
= \frac{1}{1-\tfrac{v_i^2}{c^2}} 
= \frac{c^2}{c^2 - v_i^2} \ \Longrightarrow \ 
\gamma_i^2 v_i^2 
= c^2 (\gamma_i^2 - 1) \tag{5}
$$

を(2)式に用いると

$$
\begin{align}
&A_1 (\gamma_1^2 - 1) + P_1 
= A_2 (\gamma_2^2 - 1) + P_2 
\underbrace{=}_{(3)} A_1 \gamma_1^2 \frac{v_1}{v_2} - A_2 + P_2 \notag \\
&\Longrightarrow \ 
A_1 \gamma_1^2 \left( 1 - \frac{v_1}{v_2} \right) 
= A_1 - A_2 - P_1 + P_2 
= \varepsilon_1 - \varepsilon_2 \tag{6}
\end{align}
$$

となります。
(4)式と(6)式の比をとりましょう。
すると

$$
\frac{\tfrac{A_1}{c^2} \gamma_1^2 v_1 (v_1 - v_2)}{A_1 \gamma_1^2 \left( 1 - \tfrac{v_1}{v_2} \right)} 
= - \frac{v_1 v_2}{c^2}
= \frac{P_2 - P_1}{\varepsilon_1 - \varepsilon_2} \ \Longrightarrow \ 
v_2 
= \frac{P_1 - P_2}{(\varepsilon_1 - \varepsilon_2) v_1} c^2 \tag{7}
$$

のように、$$v_1$$を用いて$$v_2$$を表現することができます。
ここから

$$
v_1 - v_2 
= v_1 - \frac{P_1 - P_2}{(\varepsilon_1 - \varepsilon_2) v_1} c^2 
= \frac{(\varepsilon_1 - \varepsilon_2) v_1^2 - (P_1 - P_2) c^2}{(\varepsilon_1 - \varepsilon_2) v_1} \tag{8}
$$

を(4)式に代入しましょう。

$$
\begin{aligned}
&\frac{A_1}{c^2} \gamma_1^2 v_1 \frac{(\varepsilon_1 - \varepsilon_2) v_1^2 - (P_1 - P_2) c^2}{(\varepsilon_1 - \varepsilon_2) v_1} 
= P_2 - P_1 \ \Longrightarrow \ 
A_1 \gamma_1^2 
= \frac{(P_2 - P_1)(\varepsilon_1 - \varepsilon_2) c^2}{(\varepsilon_1 - \varepsilon_2) v_1^2 - (P_1-P_2) c^2} \notag \\
&\Longrightarrow \ 
A_1 
= \frac{(P_2 - P_1)(\varepsilon_1 - \varepsilon_2) c^2}{(\varepsilon_1 - \varepsilon_2) v_1^2 - (P_1-P_2) c^2} \left( 1 - \frac{v_1^2}{c^2}\right) 
= \frac{(P_2 - P_1) (\varepsilon_1 - \varepsilon_2) (c^2 - v_1^2)}{(\varepsilon_1 - \varepsilon_2) v_1^2 - (P_1 - P_2) c^2} \notag \\
& \qquad \qquad = \frac{(P_2 - P_1) (\varepsilon_1 - \varepsilon_2) (c^2 - v_1^2)}{(\varepsilon_1 - \varepsilon_2) v_1^2 - (P_1 - P_2) c^2} 
\end{aligned}
$$

$$A_1 = \varepsilon_1 + P_1$$であることを思い出すと

$$
\begin{aligned}
&(P_2 - P_1) (\varepsilon_1 - \varepsilon_2) (c^2 - v_1^2) 
= (\varepsilon_1 + P_1) \{ (\varepsilon_1 - \varepsilon_2) v_1^2 - (P_1 - P_2) c^2 \} \notag \\
&\Longrightarrow \ 
(P_2 - P_1) (\varepsilon_1 - \varepsilon_2) c^2 + (\varepsilon_1 + P_1) (P_1 - P_2) c^2 
= (\varepsilon_1 + P_1) (\varepsilon_1 - \varepsilon_2) v_1^2 + (P_2 - P_1) (\varepsilon_1 - \varepsilon_2) v_1^2 \notag \\
&\Longrightarrow \ 
- (P_2 - P_1) (\varepsilon_2 + P_1) c^2 
= (\varepsilon_1 - \varepsilon_2) (\varepsilon_1 + P_2) v_1^2
\end{aligned}
$$

以上より

$$
\frac{v_1^2}{c^2} 
= \frac{(P_2 - P_1) (\varepsilon_2 + P_1)}{(\varepsilon_2 - \varepsilon_1) (\varepsilon_1 + P_2)} \ \Longrightarrow \ 
\frac{v_1}{c} 
= \sqrt{\frac{(P_2 - P_1) (\varepsilon_2 + P_1)}{(\varepsilon_2 - \varepsilon_1) (\varepsilon_1 + P_2)}} \tag{9}
$$

これを(7)の途中式に代入すると

$$
\frac{v_2}{c} 
= \frac{P_2 - P_1}{\varepsilon_2 - \varepsilon_1} \frac{c}{v_1} 
= \frac{P_2 - P_1}{\varepsilon_2 - \varepsilon_1} \sqrt{\frac{(\varepsilon_2 - \varepsilon_1) (\varepsilon_1 + P_2)}{(P_2 - P_1) (\varepsilon_2 + P_1)}} 
= \sqrt{\frac{(P_2 - P_1) (\varepsilon_1 + P_2)}{(\varepsilon_2 - \varepsilon_1) (\varepsilon_2 + P_1)}} \tag{10}
$$

を得ます。
これらから、上流と下流の速度の比と積がそれぞれ

$$
\frac{v_1}{v_2} 
= \frac{\varepsilon_2 + P_1}{\varepsilon_1 + P_2} \tag{11}
$$

$$
\frac{v_1 v_2}{c^2} 
= \frac{P_2 - P_1}{\varepsilon_2 - \varepsilon_1} \tag{12}
$$

対応するローレンツ因子も計算してみましょう。

$$
\begin{aligned}
\sqrt{1-\frac{v_1^2}{c^2}} 
&= \sqrt{1 - \frac{(P_2 - P_1) (\varepsilon_2 + P_1)}{(\varepsilon_2 - \varepsilon_1) (\varepsilon_1 + P_2)}} 
= \sqrt{\frac{(\varepsilon_2 - \varepsilon_1) (\varepsilon_1 + P_2) - (P_2 - P_1) (\varepsilon_2 + P_1)}{(\varepsilon_2 - \varepsilon_1) (\varepsilon_1 + P_2)}} \\
&= \sqrt{\frac{\varepsilon_1 \varepsilon_2  - \varepsilon_1^2 - \varepsilon_1P_2 - P_2 P_1 + P_1 \varepsilon_2 + P_1^2 }{(\varepsilon_2 - \varepsilon_1) (\varepsilon_1 + P_2)}} \\
&= \sqrt{\frac{\varepsilon_1 \varepsilon_2  - \varepsilon_1^2 - \varepsilon_1P_2 - P_2 P_1 + P_1 \varepsilon_2 + P_1^2 + \varepsilon_1 P_1 - \varepsilon_1 P_1}{(\varepsilon_2 - \varepsilon_1) (\varepsilon_1 + P_2)}} \\
&= \sqrt{\frac{\varepsilon_1 (\varepsilon_2  - \varepsilon_1 - P_2 + P_1 ) + P_1 (\varepsilon_2 - \varepsilon_1 - P_2 + P_1)}{(\varepsilon_2 - \varepsilon_1) (\varepsilon_1 + P_2)}}
= \sqrt{\frac{(\varepsilon_1 + P_1) (\varepsilon_2 - \varepsilon_1 - P_2 + P_1)}{(\varepsilon_2 - \varepsilon_1) (\varepsilon_1 + P_2)}}
\end{aligned}
$$

より

$$
\gamma_1 
= \frac{1}{\sqrt{1-\frac{v_1^2}{c^2}}} 
= \sqrt{\frac{(\varepsilon_2 - \varepsilon_1) (\varepsilon_1 + P_2)}{(\varepsilon_1 + P_1) (\varepsilon_2 - \varepsilon_1 - P_2 + P_1)}} \tag{13}
$$

です。
同様に

$$
\begin{aligned}
\sqrt{1-\frac{v_2^2}{c^2}} 
&= \sqrt{1 - \frac{(P_2 - P_1) (\varepsilon_1 + P_2)}{(\varepsilon_2 - \varepsilon_1) (\varepsilon_2 + P_1)}} 
= \sqrt{\frac{(\varepsilon_2 - \varepsilon_1) (\varepsilon_2 + P_1) - (P_2 - P_1) (\varepsilon_1 + P_2)}{(\varepsilon_2 - \varepsilon_1) (\varepsilon_2 + P_1)}} \notag \\
&= \sqrt{\frac{\varepsilon_2^2 + \varepsilon_2 P_1 - \varepsilon_1 \varepsilon_2 - P_2 \varepsilon_1 - P_2^2 + P_1 P_2}{(\varepsilon_2 - \varepsilon_1) (\varepsilon_2 + P_1)}} \notag \\
&= \sqrt{\frac{\varepsilon_2^2 + \varepsilon_2 P_1 - \varepsilon_1 \varepsilon_2 - P_2 \varepsilon_1 - P_2^2 + P_1 P_2 + \varepsilon_2 P_2 - \varepsilon_2 P_2}{(\varepsilon_2 - \varepsilon_1) (\varepsilon_2 + P_1)}} \notag \\
&= \sqrt{\frac{\varepsilon_2 ( \varepsilon_2 - \varepsilon_1 - P_2 + P_1) + P_2 ( \varepsilon_2 - \varepsilon_1 - P_2 + P_1)}{(\varepsilon_2 - \varepsilon_1) (\varepsilon_2 + P_1)}} 
= \sqrt{\frac{(\varepsilon_2 + P_2) ( \varepsilon_2 - \varepsilon_1 - P_2 + P_1)}{(\varepsilon_2 - \varepsilon_1) (\varepsilon_2 + P_1)}} 
\end{aligned}
$$

より

$$
\gamma_2 
= \frac{1}{\sqrt{1-\frac{v_2^2}{c^2}}} 
= \sqrt{\frac{(\varepsilon_2 - \varepsilon_1) (\varepsilon_2 + P_1)}{(\varepsilon_2 + P_2) ( \varepsilon_2 - \varepsilon_1 - P_2 + P_1)}} \tag{14}
$$

と求まります。
上流と下流の流体の相対速度$$v_\mathrm{rel}$$も計算してみましょう。

$$
\begin{align}
\frac{v_\mathrm{rel}}{c} 
&= \frac{v_1 - v_2}{c \left( 1 - \frac{v_1 v_2}{c^2}\right)} 
\underbrace{=}_{(12)} \left( \frac{v_1}{c} - \frac{v_2}{c} \right) \frac{1}{1 - \frac{P_2 - P_1}{\varepsilon_2 - \varepsilon_1}} \notag \\
&= \sqrt{\frac{P_2 - P_1}{\varepsilon_2 - \varepsilon_1}} \left( \sqrt{\frac{\varepsilon_2 + P_1}{\varepsilon_1 + P_2}} - \sqrt{\frac{\varepsilon_1 + P_2}{\varepsilon_2 + P_1}}\right) \frac{\varepsilon_2 - \varepsilon_1}{\varepsilon_2 - \varepsilon_1 - P_2 + P_1} \notag \\
&= \sqrt{\frac{P_2 - P_1}{\varepsilon_2 - \varepsilon_1}} \frac{\varepsilon_2 + P_1 - \varepsilon_1 - P_2}{\sqrt{(\varepsilon_1 + P_2) (\varepsilon_2 + P_1)}} \frac{\varepsilon_2 - \varepsilon_1}{\varepsilon_2 - \varepsilon_1 - P_2 + P_1} \notag \\
&= \sqrt{\frac{(P_2 - P_1) (\varepsilon_2 - \varepsilon_1)}{(\varepsilon_1 + P_2) (\varepsilon_2 + P_1)}} \tag{15}
\end{align}
$$

また対応するローレンツ因子は

$$
\gamma_\mathrm{rel} 
= \gamma_1 \gamma_2 \left( 1- \frac{v_1 v_2}{c^2}\right) 
\underbrace{=}_{(12), (13), (14)} \sqrt{\frac{(\varepsilon_1 + P_2) (\varepsilon_2 + P_1)}{(\varepsilon_1 + P_1) (\varepsilon_2 + P_2)}} \tag{16}  
$$

のようになります。
これらから、速度の比は有限となり、衝撃波の強さを表す量として$$\varepsilon_2 / \varepsilon_1$$または$$\gamma_\mathrm{rel}$$を取るのが適当であることがわかります。

{% include adsense.html %}

弱い衝撃波の極限では、$$P_2 \simeq P_1, \varepsilon_2 \simeq \varepsilon_1$$より

$$
(9) \ \Longrightarrow \ 
\frac{v_1}{c} 
\approx \sqrt{\frac{\Delta P}{\Delta \varepsilon}} 
\approx \sqrt{\frac{dP}{d\varepsilon}} 
= \frac{c_s}{c} \tag{17}
$$

となります。
途中、$$P_2 - P_1 = \Delta P, \varepsilon_2 - \varepsilon_1 = \Delta \varepsilon$$としました。
$$v_2$$においても同様に$$c_s$$となることから、弱い衝撃波極限では$$v_1 = v_2 = c_s$$になることがわかります。
すなわち、衝撃波は上流の速度が音速を超えた場合にのみ生じると言えます。  
超相対論的極限では、状態方程式が$$P = \varepsilon / 3$$となるため

$$
\frac{v_1}{c} 
= \sqrt{\frac{\left( \frac{\varepsilon_2}{3} - \frac{\varepsilon_1}{3}\right) \left( \varepsilon_2 + \frac{\varepsilon_1}{3}\right)}{\left( \varepsilon_2 - \varepsilon_1\right) (\varepsilon_1 + \frac{\varepsilon_2}{3})}} 
= \sqrt{\frac{3 \varepsilon_2 + \varepsilon_1}{3(3\varepsilon_1 + \varepsilon_2)}} \tag{18}
$$

$$
\frac{v_2}{c} 
= \sqrt{\frac{\left( \frac{\varepsilon_2}{3} - \frac{\varepsilon_1}{3}\right) \left( \varepsilon_1 + \frac{\varepsilon_2}{3}\right)}{\left( \varepsilon_2 - \varepsilon_1\right) (\varepsilon_2 + \frac{\varepsilon_1}{3})}} 
= \sqrt{\frac{3\varepsilon_1 + \varepsilon_2}{3(3\varepsilon_2 + \varepsilon_1)}} \tag{19}
$$

$$
\frac{v_1}{v_2} 
= \frac{3 \varepsilon_2 + \varepsilon_1}{3 \varepsilon_1 + \varepsilon_2} \tag{20}
$$

$$
\frac{v_\mathrm{rel}}{c} 
= \sqrt{\frac{\left( \frac{\varepsilon_2}{3} - \frac{\varepsilon_1}{3}\right) (\varepsilon_2 - \varepsilon_1)}{\left( \varepsilon_1 + \frac{\varepsilon_2}{3}\right) \left( \varepsilon_2 + \frac{\varepsilon_1}{3}\right)}} 
= \frac{\sqrt{3} (\varepsilon_2 - \varepsilon_1)}{\sqrt{(3\varepsilon_1 + \varepsilon_2) (3\varepsilon_2 + \varepsilon_1)}} \tag{21}
$$

$$
\gamma_\mathrm{rel} 
= \sqrt{\frac{\left( \varepsilon_1 + \frac{\varepsilon_2}{3}\right) \left( \varepsilon_2 + \frac{\varepsilon_1}{3} \right)}{\left( \varepsilon_1 + \frac{\varepsilon_1}{3}\right) \left( \varepsilon_2 + \frac{\varepsilon_2}{3}\right)}} 
= \sqrt{\frac{\left(3 \varepsilon_1 + \varepsilon_2\right) \left( 3\varepsilon_2 + \varepsilon_1 \right)}{16 \varepsilon_1 \varepsilon_2}} 
= \frac{1}{4} \sqrt{\left( 3 + \frac{\varepsilon_2}{\varepsilon_1}\right) \left( 3 + \frac{\varepsilon_1}{\varepsilon_2}\right)} \tag{22}
$$

のような関係式を得ます。
さらに強い衝撃波の極限$$\tfrac{\varepsilon_2}{\varepsilon_1} \rightarrow \infty$$では、$$v_1 \rightarrow c, v_2 \rightarrow \tfrac{c}{3}, v_\mathrm{rel} \rightarrow c, \gamma_\mathrm{rel} \rightarrow \sqrt{\frac{3\varepsilon_2}{16\varepsilon_1}}$$となります。
逆に弱い衝撃波の極限$$\tfrac{\varepsilon_2}{\varepsilon_1} \rightarrow 1$$では、$$v_1 \rightarrow \tfrac{c}{\sqrt{3}}, v_2 \rightarrow \tfrac{c}{\sqrt{3}}$$のように、上流の下流も音速で運動していることがわかります。  
一般の状態方程式には粒子数が入るため、保存する粒子数についての連続の式を考慮する必要があります。
粒子が生成・崩壊しないとすると

$$
n_1 \gamma_1 v_1 
= n_2 \gamma_2 v_2 \tag{23}
$$

です。
(13), (14)式より

$$
\frac{\gamma_2}{\gamma_1} 
= \sqrt{\frac{(\varepsilon_2 + P_1) (\varepsilon_1 + P_1)}{(\varepsilon_2 + P_2) (\varepsilon_1 + P_2)}} \tag{24}
$$

であることと、(11)式を用いれば

$$
\frac{n_1}{n_2} 
= \frac{\gamma_2 v_2}{\gamma_1 v_1} 
= \sqrt{\frac{(\varepsilon_1 + P_1) (\varepsilon_1 + P_2)}{(\varepsilon_2 + P_2)(\varepsilon_2 + P_1)}} \ \Longrightarrow \ 
\frac{(\varepsilon_1 + P_1) (\varepsilon_1 + P_2)}{n_1^2} 
= \frac{(\varepsilon_2 + P_2) (\varepsilon_2 + P_1)}{n_2^2} \tag{25}
$$

を得ます。
特にこの式を、相対論的なランキン・ユゴニオの関係式と呼びます。
上流の物理量(添字1が付いたもの)が与えられたとき、(9)式から$$\varepsilon_2, P_2$$の関係式が与えられます。
これに(25)式および状態方程式を合わせれば、$$\varepsilon_2, P_2, n_2$$を求めることができます。
そうして得られたものを(10)式に代入すれば、下流の速度$$v_2$$が求められることになります。  
一般的な場合は複雑で、数値的な取り扱いが必要となります。
そのため、$$P_1 = 0, \varepsilon_1 = n_1 mc^2$$という、強い衝撃波の極限のみを考えてみましょう。
この場合のランキン・ユゴニオの関係式は

$$
\frac{\varepsilon_1(\varepsilon_1 + P_2)}{n_1^2} 
= \frac{\varepsilon_2 (\varepsilon_2 + P_2)}{n_2^2} \tag{26}
$$

のようになります。
また上流と下流の相対的なローレンツ因子は、(16)式より

$$
\gamma_\mathrm{rel} 
= \sqrt{\frac{\varepsilon_2 (\varepsilon_1 + P_2)}{\varepsilon_1 (\varepsilon_2 + P_2)}} \ \Longrightarrow \ 
\frac{\varepsilon_1 + P_2}{\varepsilon_2 + P_2} 
= \gamma_\mathrm{rel}^2 \frac{\varepsilon_1}{\varepsilon_2} \tag{27}
$$

となることから

$$
\frac{\varepsilon_1}{n_1^2} 
= \frac{\varepsilon_2}{n_2^2} \frac{1}{\gamma_\mathrm{rel}^2} \frac{\varepsilon_2}{\varepsilon_1} \ \Longrightarrow \ 
\frac{\varepsilon_2}{n_2} 
= \gamma_\mathrm{rel} \frac{\varepsilon_1}{n_1} 
= \gamma_\mathrm{rel} m c^2 \tag{28}
$$

を得ます。
これは、下流での1粒子辺の内部エネルギーが$$\gamma_\mathrm{rel}$$となることがわかります。
さらに[状態方程式](/rmhd/thermo_dynamics_rel#熱平衡)として

$$
P 
= (\Gamma -1) (\varepsilon - n mc^2) \tag{29}
$$

を用いることにすると

$$
\frac{P_2}{n_2} 
= (\Gamma - 1) \left( \frac{\varepsilon_2}{n_2} - mc^2\right) 
\underbrace{=}_{(28)} (\Gamma -1) (\gamma_\mathrm{rel} - 1) mc^2 \tag{30} 
$$

(28), (30)式を(26)式に代入していきましょう。

$$
\frac{\varepsilon_1}{n_1} \left( \frac{\varepsilon_1}{n_1} + \frac{P_2}{n_1}\right) 
= \frac{\varepsilon_2}{n_2} \left( \frac{\varepsilon_2}{n_2} + \frac{P_2}{n_2} \right)
$$

$$
(左辺) 
= mc^2 \left( mc^2 + \frac{n_2}{n_1} \frac{P_2}{n_2}\right) 
= mc^2 \left\{ mc^2 + \frac{n_2}{n_1} (\Gamma - 1) (\gamma_\mathrm{rel}-1) mc^2 \right\} 
$$


$$
(右辺)
= \gamma_\mathrm{rel} mc^2 \{\gamma_\mathrm{rel} mc^2 + (\Gamma - 1) (\gamma_\mathrm{rel} -1) mc^2\}
$$

より

$$
\begin{align}
\frac{n_2}{n_1} 
&= \frac{\gamma_\mathrm{rel} \{ \gamma_\mathrm{rel} + (\Gamma - 1) (\gamma_\mathrm{rel} - 1) \} - 1}{(\Gamma -1)(\gamma_\mathrm{rel} - 1)} 
= \frac{\gamma_\mathrm{rel}^2 + \gamma_\mathrm{rel} (\Gamma -1) (\gamma_\mathrm{rel} -1) -1}{(\Gamma -1) (\gamma_\mathrm{rel}-1)} \notag \\
&= \frac{(\gamma_\mathrm{rel} -1) \{(\gamma_\mathrm{rel}+1) + \gamma_\mathrm{rel} (\Gamma -1)\}}{(\Gamma -1) (\gamma_\mathrm{rel}-1)} 
= \frac{\gamma_\mathrm{rel} \Gamma +1}{\Gamma -1} \tag{31}
\end{align}
$$

と求めることができます。
この比は$$\gamma_\mathrm{rel} \gg 1$$のとき、$$\gamma_\mathrm{rel}$$に比例して大きくなることがわかります。
しかし、速度の比は

$$
\begin{align}
\frac{v_1}{v_2} 
&\underbrace{=}_{(11)} \frac{\varepsilon_2 + P_1}{\varepsilon_1 + P_2} 
= \frac{\frac{\varepsilon_2}{n_1}}{\frac{\varepsilon_1}{n_1} + \frac{P_2}{n_1}} 
= \frac{\frac{n_2}{n_1} \frac{\varepsilon_2}{n_2}}{mc^2 + \frac{n_2}{n_1}\frac{P_2}{n_2}} 
= \frac{\frac{\gamma_\mathrm{rel} \Gamma + 1}{\Gamma -1} \gamma_\mathrm{rel} mc^2}{mc^2 + \frac{\gamma_\mathrm{rel} \Gamma +1}{\Gamma-1} (\Gamma-1) (\gamma_\mathrm{rel} -1) mc^2} \notag \\
&= \frac{\gamma_\mathrm{rel} \Gamma + 1}{(\Gamma - 1) (\gamma_\mathrm{rel} \Gamma - \Gamma + 1)} \tag{32}
\end{align}
$$

であり、また

$$
\begin{align}
\frac{\gamma_1}{\gamma_2} 
&\underbrace{=}_{(24)} \sqrt{\frac{(\varepsilon_2 + P_2) (\varepsilon_1 + P_2)}{(\varepsilon_1 + P_1) (\varepsilon_2 + P_1)}} 
= \sqrt{\frac{\left( \frac{\varepsilon_2}{n_1} + \frac{P_2}{n_1} \right) \left( \frac{\varepsilon_1}{n_1} + \frac{P_2}{n_1} \right)}{ \frac{\varepsilon_1}{n_1} \frac{\varepsilon_2}{n_1}}} 
= \sqrt{\frac{\frac{n_2}{n_1} \left( \frac{\varepsilon_2}{n_2} + \frac{P_2}{n_2}\right) \left( mc^2 + \frac{n_2}{n_1} \frac{P_2}{n_2}\right)}{ mc^2 \frac{n_2}{n_1} \frac{\varepsilon_2}{n_2}}} \notag \\
&= \sqrt{\frac{\{\gamma_\mathrm{rel} mc^2 + (\Gamma -1)(\gamma_\mathrm{rel} -1) mc^2\} \{ mc^2 + (\gamma_\mathrm{rel} \Gamma + 1)(\gamma_\mathrm{rel} -1) mc^2\} }{\gamma_\mathrm{rel} m^2 c^4}} \notag \\
&= \sqrt{\frac{ \gamma_\mathrm{rel} (\gamma_\mathrm{rel} \Gamma - \Gamma +1)^2}{\gamma_\mathrm{rel}}} 
= \gamma_\mathrm{rel} \Gamma - \Gamma + 1 \tag{33}
\end{align}
$$

のように整理されます。
ここからわかるように、衝撃波静止系で見た数密度の比$$\frac{n_2 \gamma_2}{n_1 \gamma_1} = \frac{v_1}{v_2}$$はそれほど大きくならないことがわかります。
また$$\gamma_1$$と$$\gamma_\mathrm{rel}$$の関係式は

$$
\gamma_1^2 
= \frac{(\gamma_\mathrm{rel} + 1) \{\Gamma (\gamma_\mathrm{rel} -1) + 1\}^2}{\Gamma (2-\Gamma) (\gamma_\mathrm{rel}-1) + 2} \tag{34}
$$

となります。

## 無衝突衝撃波について

衝撃波は、衝撃波面の薄い領域で粘性による散逸が起こることによる構造です。
宇宙物理など多くの場合では、媒質は中性流体ではなく、電離したプラズマです。
しかも、粒子どうしの衝突が頻繁には起こらない無衝突プラズマであることが知られています。
このときには、粒子間の相互作用は電磁場を媒介として起こるとされています。
2つの無衝突プラズマを超音速で衝突させると、2つのプラズマはお互いにすり抜けようとしますが、この状態は電磁場の不安定モードを強く励起します。
このようにして励起されたプラズマ波動により荷電粒子の機動が乱され、衝撃波構造を形成します。
これを無衝突衝撃波と呼びます。
無衝突衝撃波が実際に生じることは、非相対論的な場合ですが、太陽風が地球磁気圏に衝突して形成する弓状衝撃波や超新星残骸など多くの天体で観測されています。
またガンマ線バーストでは、相対論的な衝撃波が生じていると考えられています。
多くの場合、プラズマ中に磁場が存在していますが、たとえもともとのプラズマが磁場を含んでいなくとも、ワイベル不安定性により自発的に磁場が生成され、衝撃波構造を形成できると考えられています。
無衝突衝撃波の構造は流体のスケールで見れば十分小さいため、衝撃波の十分下流で熱平衡状態になるとすると、上流と下流の物理量の関係は、ここまで考えてきたような流体力学的なもので記述できるはずです。
しかし、無衝突衝撃波は散逸の過程は流体力学的な粘性散逸ではないため、そこでは高エネルギーの非熱的粒子の加速などの現象が起こります。
この効果は流体力学では記述できないため、衝撃波の構造なども修正が必要となります。
この研究テーマは、現代の宇宙物理学およびプラズマ物理学の最先端の研究課題の一つとなっています。

## 参考文献

[1] [Rezzolla & Zanotti, "Relativistic Hydrodynamics"](https://amzn.to/4t57unb)  
[2] [北島 歓大, 2025, "相対論的流体力学の粒子法的数値計算法の開発及び高速噴流の解析"](https://nagoya.repo.nii.ac.jp/records/2012452)  
[3] [田中 秀和, "宇宙流体力学"](https://jupiter.astr.tohoku.ac.jp/~hidekazu/lecture/astrophys_fluid_dyn.pdf)  
[4] [高原文郎, "特殊相対論"](https://amzn.to/49sJUrA)  

{% include adsense.html %} 
