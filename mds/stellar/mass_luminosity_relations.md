---
layout: default
title: 質量-光度関係
parent: 恒星物理学
math: mathjax3
permalink: /stellar/mass_luminosity_relations
nav_order: 23
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

# 質量-光度(-半径)関係

以下の手順に従って、恒星の質量と光度の関係を導出してみましょう。
ただし、電子熱伝導と対流の効果は無視できるものとします。
恒星内部でエネルギーが輻射によって運ばれる場合、その温度勾配は

$$
L_r 
= - 4\pi r^2 \frac{4ac}{3\kappa \rho} T^3 \frac{dT}{dr} \tag{1}
$$

によって決定されるのでした。
ここで$$L_r$$は、中心からの距離が$$r$$の球面を単位時間あたりに通過するエネルギーです。
恒星の表面($$r=R$$)では、星から単位時間あたりに放出されるエネルギー$$L$$ (光度)となります。
この式と、静水圧平衡の式

$$
\frac{dP}{dr} 
= - \frac{GM_r}{r^2} \rho \tag{2}
$$

を用います。

## 不透明度が電子散乱のとき

不透明度が電子散乱、すなわちトムソン散乱を用いた不透明度$$\kappa_\mathrm{el}$$ (定数)で与えられるときを考えましょう。

### 輻射圧優勢の場合

さらに恒星内部の圧力が

$$
P 
\simeq P_\mathrm{rad} 
= \frac{1}{3} a T^4 \ \Longrightarrow \ 
\frac{dP}{dr} 
= \frac{4a}{3} T^3 \frac{dT}{dr} \tag{3}
$$

のようになっている場合を考えます。
(1)式より

$$
L_r 
= - 4\pi r^2 \frac{c}{\kappa \rho} \frac{dP}{dr} 
= - 4\pi r^2 \frac{c}{\kappa \rho} \left( - \frac{GM_r}{r^2} \rho \right) 
= \frac{4\pi c G}{\kappa} M_r \tag{4}
$$

$$r = R$$で$$L_r = L, M_r = M$$より、この場合は

$$
L \propto M \tag{5}
$$

となることがわかります。
輻射圧が優勢となるような状況は、恒星質量が限界付近($$M \sim 100 M_\odot$$)の場合に対応します。

### 理想気体圧力の場合

今度は、圧力が理想気体圧力で近似でき、$$P \propto \rho T$$のように書ける場合を考えましょう。
すると

$$
\left. \frac{dP}{dr} \right\vert_{r=R}
\propto \frac{d}{dr} (\rho T) 
\propto \frac{M}{R^3} \frac{dT}{dr} 
\propto \frac{M}{R^3} \frac{T}{R} \tag{6}
$$

のように書けます。
ここで、$$\rho \propto \frac{M}{R^3}, \frac{dT}{dr} \propto \frac{T}{R}$$のような、粗い近似を行いました。
同様の近似を(2)式に適用すると

$$
\left. \frac{dP}{dr} \right\vert_{r=R}
\propto \frac{M}{R^2} \frac{M}{R^3} 
\propto \frac{M^2}{R^5} \tag{7}
$$

この2式より

$$
\frac{M^2}{R^5} 
\propto \frac{MT}{R^4} \ \Longrightarrow \ 
T 
\propto \frac{M}{R} \tag{8}
$$

そして(1)式より

$$
L 
= -4\pi R^2 \frac{4ac}{3\kappa \rho} T^3 \left. \frac{dT}{dr} \right\vert_{r=R} 
\propto R^2 \frac{R^3}{M} \frac{M^3}{R^3} \frac{M/R}{R} 
\propto M^3 \tag{9}
$$

のようになります。
大質量($$\gtrsim 10M_odot$$)の主系列星では、ガスの不透明度は電子散乱で決定されますが、輻射圧はそれほど優勢ではありません。
先程の輻射圧優勢の場合の結果と合わせると、次のようなことが言えます。
様々な大質量星を観測したとき、ほどほどの大質量星であればその光度は$$M^3$$に比例します。
しかし、質量が非常に大きくなってくると、その光度の質量依存性は3乗よりもゆるやかになり、限界質量あたりでは1乗に近づきます。
そしてここまでの結果から明らかなように、不透明度が電子散乱で決まる場合には、恒星光度は恒星半径に依存しません。
この性質により、大質量星は主系列段階後の進化でも光度をあまり変化させることがありません。

## 不透明度がクラマース型のとき

次に不透明度$$\kappa$$が、free-freeとbound-free不透明度により$$\kappa \propto \rho T^{-3.5}$$のようなクラマース型の場合を考えましょう。
(1)式より

$$
L 
\simeq - 4 \pi R^2 \frac{4ac}{3\rho^2 T^{-3.5}} T^3 \left. \frac{dT}{dr} \right\vert_{r=R}
\propto R^2 \frac{T^{6.5}}{(M/R^3)^2} \frac{T}{R} 
\propto \frac{R^7 T^{7.5}}{M^2} \tag{10}
$$

クラマース型の不透明度は、比較的低温度のとき有効となります。
この温度範囲では輻射圧が優勢にはならなず、圧力は理想気体で近似されます。
すると(8)式が成り立つため

$$
L 
\propto \frac{R^7}{M^2} \left( \frac{M}{R} \right)^{7.5} 
\propto \frac{M^{5.5}}{R^{0.5}} \tag{11}
$$

## 水素燃焼の場合

主系列星では、中心部で水素からヘリウム合成される核融合反応が起こっているます。
この反応によるエネルギー発生率が表面からのエネルギー放出率と釣り合っており、$$L = \int_0^M \epsilon dM_r$$の関係が成り立ちます。
ここで$$L$$は光度であり、$$\epsilon$$は核融合による単位質量あたりのエネルギー発生率を表します。
このエネルギー発生率が$$\epsilon \propto \rho T^{16}$$のように表現できると仮定した場合、主系列星の半径と質量との関係はどのようになるかを求めてみましょう。

### $$\kappa = \kappa_\mathrm{el}$$かつ輻射圧優勢の場合

このときは$$L \propto M$$より

$$
L 
= \int_0^M \epsilon dM_r 
\propto \rho T^{16} M 
\propto M \ \Longrightarrow \ 
T^{16} 
\propto \frac{1}{\rho} 
\propto \frac{R^3}{M} \tag{12}
$$

そして(2), (3)式より

$$
\frac{M}{R^2} \frac{M}{R^3} 
\propto T^3 \frac{T}{R} \ \Longrightarrow \ 
T 
\propto \frac{M^{1/2}}{R} \tag{13}
$$

以上より

$$
\left( \frac{M^{1/2}}{R} \right)^{16} 
\propto \frac{R^3}{M} \ \Longrightarrow \ 
R \propto M^{9 / 19} \tag{14}
$$

となります。
さらに、中心温度の依存性

$$
T_c
\propto M^{1/38} \tag{15}
$$

のようになります。

### $$\kappa = \kappa_\mathrm{el}$$かつ理想気体圧力の場合

このときは$$L \propto M^3$$より

$$
L 
\propto \rho T^{16} M 
\propto M^3  \ \Longrightarrow \ 
T^{16} 
\propto \frac{M^2}{\rho} 
\propto R^3 M \tag{16}
$$

ここに(8)式を用いれば

$$
\left( \frac{M}{R} \right)^{16} 
\propto R^3 M \ \Longrightarrow \ 
R 
\propto M^{15/19} 
\approx M^{0.8} \tag{17}
$$

と求まります。
そして中心温度は

$$
T_c 
\propto M^{4/19} \tag{18}
$$

### $$\kappa \propto \rho T^{-3.5}$$かつ理想気体圧力の場合

このときは$$L \propto M^{5.5} / R^{0.5}$$より

$$
L 
\propto \rho T^{16} M 
\propto \frac{M^{5.5}}{R^{0.5}} \ \Longrightarrow \ 
T^{16} 
\propto \frac{M^{4.5}}{R^{0.5}} \frac{R^3}{M} 
\propto M^{3.5} R^{2.5} \tag{19}
$$

そして(8)式より

$$
M^{3.5} R^{2.5} 
\propto \left( \frac{M}{R} \right)^{16} \ \Longrightarrow \ 
R 
\propto M^{25/37} 
\approx M^{0.7} \tag{20}
$$

のようになります。
最後に中心温度は

$$
T_c 
\propto M^{12 / 37} \tag{21}
$$

と求まります。
中心が水素燃焼を起こし、かつクラマース型の不透明度が優勢であるような状況は、中小質量の主系列星の場合に当てはまります。
(20)式を$$L \propto M^{5.5}/ R^{0.5}$$に用いると、$$L \propto M^{5.1}$$となります。
すなわち、中小質量星の高度の質量依存性の方が、大質量星の場合より強いことがわかります。
またこの場合には恒星の光度が半径に依存することから、進化によって半径が大きくなると光度が減少することもわかります
(ただし赤色巨星枝に沿って光度が増加するのは、赤色巨星外層ではエネルギーが対流によって運ばれるためで、ここでの議論を適用することができません。)

## 参考文献

[1] [Kippenhahn, Weigert & Weiss, "Stellar Structure and Evolution"](https://amzn.to/43pXiva)  
[2] [高原文郎, "宇宙物理学"](https://amzn.to/4bXfKgP)  
[3] [野本憲一, 定金晃三, 佐藤勝彦, "恒星"](https://amzn.to/4kHBvFv)  

{% include adsense.html %} 