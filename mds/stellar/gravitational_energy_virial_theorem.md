---
layout: default
title: 恒星の重力エネルギーとビリアル定理
parent: 恒星物理学
math: mathjax3
permalink: /stellar/gravitational_energy_virial_theorem
nav_order: 3
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

# 恒星の重力エネルギー

星の重力エネルギーは、星を構成しているガス全てを無限遠まで運ぶのに必要なエネルギーに負の符号をつけたものとして評価することができます。
これはエネルギーが必要なだけ低いエネルギー状態にあると考えられることから負の値とします。
質量$$M_r$$を持つ半径$$r$$の球を取り囲む、微小質量$$dM_r$$の球殻を無限遠まで運ぶのに必要なエネルギーを$$dW$$としましょう。
中心からの距離が$$r' (>r)$$での重力$$\frac{GM_r dM_r}{r'^2}$$に逆らって無限遠まで持ち去るので

$$
dW 
= GM_r dM_r \int_r^\infty \frac{dr'}{r'^2} 
= \frac{GM_r}{r} dM_r \tag{1.3.1}
$$

となります。
これを$$dM_r$$について積分することで、星全体のガスを無限遠に運ぶのに必要なエネルギー$$W$$が求まります。
星の重力エネルギー$$E_\mathrm{g}$$は$$-W$$より

$$
E_\mathrm{g} 
= - \int_0^M \frac{GM_r}{r} dM_r \tag{1.3.2}
$$

のように表現されます。
この積分を実行するには$$M_r$$と$$r$$の関係、すなわち星の内部構造を知る必要があります。
しかし近似的に

$$
E_\mathrm{g} 
= -q \frac{GM^2}{R} \tag{1.3.3}
$$

のように書くと、$$q$$は1のオーダーの量となることが知られています。
(1.3.2)式は部分積分を行うとさらに変形ができます。

$$
\begin{align}
E_\mathrm{g} 
&= -\frac{1}{2} \left[ \frac{GM_r^2}{r}\right]_{M_r = 0}^{M_r = M} - \frac{1}{2} \int_0^M \frac{GM_r^2}{r^2} \frac{dr}{dM_r} dM_r \notag \\
&= -\frac{GM^2}{2R} - \frac{1}{2} \int_0^R \frac{GM_r^2}{r^2} dr 
= -\frac{GM^2}{2R} - \frac{1}{2} \int_0^R \frac{d\psi}{dr} M_r dr \notag \\
&= -\frac{GM^2}{2R} - \frac{1}{2} [\psi M_r]_0^R + \frac{1}{2} \int_0^R \psi \frac{dM_r}{dr} dr \tag{1.3.4}
\end{align}
$$

途中、[(1.1.8)式](/stellar/basic_equations#球対称の場合)を用いました。
さらに重力ポテンシャル$$\psi$$は[(1.1.8)式](/stellar/basic_equations#球対称の場合)を積分することで

$$
\psi(r) 
= \int^r \frac{GM_r}{r'^2} dr' 
= -\frac{GM_r}{r} + \int^r \frac{G}{r'} \frac{dM_{r'}}{dr'} dr' + C 
= -\frac{GM_r}{r} + 4\pi G \int^r \rho r' dr' + C 
$$

を得ます。
途中、[(1.1.11)式](/stellar/basic_equations#ラグランジュ座標を用いた記述)を用いました。
積分定数$$C$$は、恒星外部$$(r>R)$$で$$\psi(r) = - \frac{GM}{r}$$となるように選ぶと

$$
\psi (r) 
= - \frac{GM_r}{r} - 4\pi G \int_r^R \rho (r') r' dr' \tag{1.3.5}
$$

のように表されます。
第一項は質点系でも見られるものですが、第二項はガス球を考えた場合に出てくる特有の項です。
この式から$$\psi (R) = -\frac{GM}{R}$$であることを(1.3.4)式に用いると、最終的に

$$
E_\mathrm{g} 
= \frac{1}{2} \int_0^M \psi dM_r \tag{1.3.6}
$$

を得ます。

# ビリアル定理

[静水圧平衡の式(1.2.1)](/stellar/hydrostatic#静水圧平衡と恒星中心の温度依存性)の両辺に$$4\pi r^3$$をかけたものを、恒星全体で積分しましょう。

$$
\int_0^M 4\pi r^3 \frac{dP}{dM_r} dM_r 
= - \int_0^M \frac{GM_r}{r} dM_r 
\underbrace{=}_{(1.3.2)} E_\mathrm{g} \tag{1.4.1} 
$$

となります。
左辺を部分積分しましょう。
表面で圧力$$P = 0$$、中心で$$r = 0$$であること、そして[(1.1.15)式](/stellar/basic_equations#ラグランジュ座標を用いた記述)を用いると

$$
E_\mathrm{g} 
= [4\pi r^3 P]_{M_r = 0}^{M_r = M} - 3 \int_0^M 4\pi r^2 P \frac{dr}{dM_r} dM_r 
= - 3 \int_0^M \frac{P}{\rho} dM_r \tag{1.4.2}
$$

を得ます。  
理想気体では、$$P/\rho = (C_P - C_V) T = (\gamma - 1) e_i$$という関係があります。
ここで$$C_P, C_V$$はそれぞれ定圧比熱と定積比熱を表し、$$\gamma = C_P / C_V$$は比熱比です。
また$$e_i$$は単位質量あたりの内部エネルギーを表します。
理想気体かどうかに関わらず、圧力は運動量流束で表されるため

$$
P 
\simeq \frac{1}{3} n v (mv) 
= \frac{1}{3} nmv^2 
\propto \rho e_\mathrm{i}
$$

と書けます。
途中の$$n$$はガス粒子密度、$$m$$はガス粒子一つの質量、$$v$$はガス粒子の熱運動速度を表します。
先程記述したように、$$P/\rho$$は$$e_i$$に比例する量であるため、一般に

$$
\frac{P}{\rho} 
= (\gamma - 1) e_\mathrm{i} \tag{1.4.3}
$$

と書くことができます。
ただし、(1.4.3)式の$$\gamma$$は一般には比熱比ではありません。
(1.4.3)式を用いると、(1.4.2)式は

$$
E_\mathrm{g} 
= -3 \int_0^M (\gamma - 1) e_\mathrm{i} dM_r 
= -3 (\gamma - 1) E_\mathrm{i}
$$

と表すことができます。
ここで、最後の$$\gamma$$は恒星の中での平均的な値を表すものとし、$$E_\mathrm{i}$$は恒星全体の内部エネルギーを表します。
この式は、恒星の静水圧平衡状態におけるビリアル定理

$$
E_\mathrm{g} 
= -3(\gamma - 1) E_\mathrm{i} \tag{1.4.4}
$$

を与えます。
この定理は、恒星全体の重力エネルギーと内部エネルギーとの関係を表しています。
恒星の全エネルギー$$E_\mathrm{tot}$$を計算すると

$$
E_\mathrm{tot} 
= E_\mathrm{g} + E_\mathrm{i}
= - (3\gamma - 4) E_\mathrm{i}
= \frac{3\gamma - 4}{3(\gamma - 1)}E_\mathrm{g} \quad 
\left( = -\frac{3\gamma - 4}{3(\gamma - 1)} q \frac{GM^2}{R}\right) \tag{1.4.5}
$$

のようになります。
この式は$$\gamma > 4/3$$のときのみ$$E_\mathrm{tot} < 0$$となり、恒星のガスが束縛された状態にあることを表しています。
単原子分子からなる理想気体では$$\gamma = 5/3$$なので、この条件を満たしていることになります。  
光子ガスの場合、[$$P_\mathrm{rad} = \frac{1}{3}a T^4 = \frac{1}{3} U_\mathrm{rad}$$](/atmos/moment#radiation-pressure-輻射圧)と表されます。
ここで$$a$$は輻射定数、$$U_\mathrm{rad}$$は輻射のエネルギー密度です。
ここから、これは$$\gamma = 4/3$$に相当します。
これは、星全体で輻射圧がガス圧に比べて優勢になってくると、$$E_\mathrm{tot}=0$$の状態、すなわち束縛されない状態に近づいて行くことを表しています。

## 参考文献

[1] [野本憲一, 佐藤勝彦, 定金晃三, "シリーズ現代の天文学 恒星"](https://amzn.to/3tithNI)  

{% include adsense.html %} 
