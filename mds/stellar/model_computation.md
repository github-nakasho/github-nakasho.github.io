---
layout: default
title: 恒星内構造進化モデルの計算
parent: 恒星物理学
math: mathjax3
permalink: /stellar/model_computation
nav_order: 29
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

# 恒星内部構造進化モデルの計算

## 星の構造と進化を記述する微分方程式

ここまでで導いてきた恒星の力学的平衡とエネルギー保存を記述する指揮をまとめて書くと、次のようになります。

$$
\frac{dP}{dM_r} 
= - \frac{GM_r}{4\pi r^4} \tag{7.1.1}
$$

$$
\frac{dr}{dM_r} 
= \frac{1}{4\pi r^2 \rho} \tag{7.1.2}
$$

$$
\frac{dT}{dM_r} 
= \left\{ \begin{array}{cc}
- \frac{L_r}{(4\pi r^2)^2} \frac{3\kappa}{4ac T^3} & (\nabla_\mathrm{rad} < \nabla_\mathrm{ad}: 輻射によるエネルギー輸送) \\
- \frac{GM_r T}{4\pi r^4 P} \nabla_\mathrm{conv} & (\nabla_\mathrm{rad} > \nabla_\mathrm{ad}: 対流によるエネルギー輸送)
\end{array} \right. \tag{7.1.3}
$$

$$
\frac{dL_r}{dM_r} 
= \epsilon_\mathrm{n} - \epsilon_\nu - T \left( \frac{\partial S}{\partial t} \right)_{M_r} \tag{7.1.4}
$$

ここで、$$S$$は単位質量あたりのエントロピー、$$\kappa$$は不透明度、$$\epsilon_\mathrm{n}$$は核反応によるエネルギー発生率、$$\epsilon_\nu$$はニュートリノ放出によるエネルギー損失率です。
これらはガス密度$$\rho$$、温度$$T$$、元素組成$$X_i$$の関数として与えられます。
したがって元素組成の空間分布$$X_i (M_r)$$が与えられれば、上の微分方程式と状態方程式

$$
P 
= f(\rho, T, X_i) \tag{7.1.5}
$$

により閉じた系を作ります。  
エネルギーが放射(+対流)だけで運ばれるか、対流が起こり対流のエネルギー輸送が主流となるかは、[放射温度勾配($$\nabla_\mathrm{ad}$$: 輻射大けでエネルギーを運ぶのに必要な温度勾配)と断熱的温度勾配$$\nabla_\mathrm{ad}$$との大小関係で決定](/stellar/convection#対流の発生)され

$$
\frac{\kappa L_r}{16 \pi G M_r c(1-\beta)} 
= \nabla_\mathrm{rad} \left\{ \begin{array}{cc}
< \nabla_\mathrm{ad} & (輻射輸送) \\
> \nabla_\mathrm{ad} & (対流による輸送) 
\end{array} \right.
$$

となります。
$$\nabla_\mathrm{conv}$$は、対流層内での対数的温度勾配$$\frac{d\ln T}{d\ln P}$$を表し

$$
L_r 
= L_{r, \mathrm{conv}} + L_{r, \mathrm{rad}}
$$

の関係に、[混合距離理論などによる$$L_{r, \mathrm{conv}}$$](/stellar/convection#対流によるエネルギー輸送)と温度勾配の関係を使うことにより得られます。
恒星の十分内部の対流層では$$\nabla_\mathrm{conv}$$は断熱的温度勾配となっており、$$\nabla_\mathrm{conv} = \nabla_\mathrm{ad}$$とされます。  
恒星の進化は、(7.1.4)式のエネルギー保存の関係に表される$$\frac{\partial S}{\partial t}$$の項(エネルギー発生率とエネルギー流量とのバランスが取れていないとき収縮または膨張が起こります)と、元素組成の空間分布の時間変化(核融合と混合)により起こります。
また恒星風による質量の減少が無視できない場合には$$\frac{dM}{dt}$$を与える必要がありますが、現在でも各進化段階で起こる恒星風による質量放出率を理論的に求めることができないため、観測値をもとにした$$M, L, R$$に対する経験的な式が用いられます。  
自転の速い恒星では、遠心力の効果により構造が球対称からズレます。
2次元の構造の計算を行うのは大変なため、自転の効果を考慮する場合の粗い近似として、球対称を維持したまま遠心力の(緯度に対する)平均値を、力学平衡の式に入れて計算するのが一般的です。
自転が速い場合、力学的効果だけでなく、自転により起こされる比較的弱い乱流によって物質の混合も起こるため、遠心力は恒星進化に重要な影響を及ぼします。

{% include adsense.html %} 

## 境界条件

中心での境界条件は

$$
M_r 
= 0 \ で \quad 
r = 0 \ および \ 
L_r = 0 \tag{7.1.6}
$$

のように書けます。
しかし、恒星表面にはハッキリとした境界がないため、近似の程度によって種々の境界条件が考えられます。
最も簡単なものとして、以下のゼロ境界と呼ばれるものがあります。

$$
M_r 
= M \ で \quad 
P = 0 \ および \ 
T = 0 \tag{7.1.7}
$$

しかし、これは表面に近い層には粗い近似となっています。
恒星進化の計算によく使われる近似では、光球の外側に対して[エディントン近似](/atmos/eddington_app)を用いて光球での物理量を求めます
[(エディントン近似の詳細については、こちらをご覧ください。)](/atmos/eddington_app)
光球の外側の大気部分では輻射平衡にあるとすると、$$L_r = L$$より、(7.1.3)式から

$$
\frac{L}{4\pi r^2} 
= - \frac{4ac}{3\kappa \rho} T^3 \frac{dT}{dr} 
= \frac{ac}{3} \frac{dT^4}{d\tau} \tag{7.1.8}
$$

が得られます。
ここで[$$\tau$$は光学的深さ](/atmos/radiative_transfer#光学的深さ-optical-depth)で

$$
d\tau 
= -\kappa \rho dr \tag{7.1.9}
$$

と定義されます。
大気の幾何学的厚さは恒星半径に比べて非常に薄いため、その名ではエネルギー流束$$F = \frac{L}{4\pi r^2}$$が一定であると近似します
(この近似は広がった大気を持つ赤色巨星ではよくない近似ですが、ここでは話を簡単にするためにこの近似を用いて説明していきます。)
この近似のもとでは(7.1.8)式を積分することができ

$$
\tau F 
= \frac{ac}{3} T(\tau)^4 + C \ \Longrightarrow \ 
T(\tau)^4 
= \frac{3}{4} T_\mathrm{eff}^4 \tau + T(0)^4 \tag{7.1.10}
$$

が得られます。
ここで$$C$$は積分定数であり、$$\tau = 0$$を代入することで$$C = \frac{ac}{3} T(0)^4$$となります。
さらにここでは

$$
F 
= \sigma T_\mathrm{eff}^4 
= \frac{ac}{4} T_\mathrm{eff}^4 \tag{7.1.11}
$$

の関係を用いました。
$$\tau=0$$での温度$$T(0)$$は、次のようにして有効温度$$T_\mathrm{eff}$$と関係づけることができます。
エネルギー流束$$F$$は(5.1.2)式を振動数$$\nu$$で積分することで

$$
F 
= \int_{4\pi} I(r, \theta) \cos \theta d\Omega \tag{7.1.12}
$$

と表されます。
これを$$\tau = 0$$に適用しましょう。
$$\tau = 0$$では外側から内側に向かう光は存在しないため、その状況に対する非常に簡単な近似として

$$
I(\tau = 0, \theta) 
= \left\{ \begin{array}{cc}
I^+ \ (定数) & 0 \leq \theta \leq \pi / 2 \\
0 & \pi/2 \leq \theta \leq \pi
\end{array} \right. \tag{7.1.13}
$$

のようにします。
これを(7.1.12)式に代入して積分を行うと

$$
F 
= 2\pi I^+ \int_0^{\pi/2} \cos \theta \sin \theta d\theta 
\underbrace{=}_{\mu = \cos \theta} 2\pi I^+ \int_0^1 \mu d\mu 
= \pi I^+ \tag{7.1.14}
$$

のようになります。
また(5.1.4)式で定義される平均強度$$J_\nu$$を振動数で積分したものは、(5.1.4)式に(7.1.13)式を代入して

$$
J 
= \frac{1}{4\pi} \int_{4\pi} I(r, \theta) d\Omega 
= \frac{I^+}{2} \int_0^{\pi / 2} \sin \theta d\theta 
= \frac{I^+}{2} \tag{7.1.15} 
$$

となります。
また[エディントン近似](/atmos/eddington_app)の一つである$$J_\nu = B_\nu (T)$$の関係を用いると

$$
I^+ 
= 2J 
= 2 \int_0^\infty B_\nu (T) d\nu 
= \frac{ac}{2\pi} T(0)^4 \tag{7.1.16}
$$

を得ます。
(7.1.11), (7.1.14), (7.1.16)式を用いて

$$
\frac{ac}{4} T_\mathrm{eff}^4 
= \frac{ac}{2} T(0)^4 \ \Longrightarrow \ 
T(0)^4 
= \frac{1}{2} T_\mathrm{eff}^4 \tag{7.1.17}
$$

の関係がわかります。
この関係を(7.1.10)式に代入すれば

$$
T(\tau)^4 
= \frac{1}{2} T_\mathrm{eff}^4 \left(1 + \frac{3}{2} \tau \right) \tag{7.1.18}
$$

という、恒星大気での$$T-\tau$$関係が得られます。
この式から、[エディントン近似](/atmos/eddington_app)では$$\tau = 2/3$$が光球面となっていることもわかります。

### $$\tau \ll 1$$での値

光球の十分外側である場所での$$(P, T, \rho)$$がわかれば、そこから内側に向かって積分を実行することができます。
ある質量$$M$$の恒星に対し光度$$L$$と半径$$R$$が与えられると、有効温度$$T_\mathrm{eff}$$が計算できます。
これを用いることで、光球より外側の温度分布は(7.1.18)式から得られます。
重力加速度は一定値$$g = GM/R^2$$を持つとすると、静水圧平衡の式は

$$
\frac{dP}{dr} 
= -g \rho \ \Longrightarrow \ 
\frac{dP}{d\tau} 
= \frac{g}{\kappa} \tag{7.1.19}
$$

となります。
$$\tau \ll 1$$の場所で$$\kappa$$は一定であると仮定すると

$$
P 
\approx \frac{g}{\kappa} \tau \quad (\tau \ll 1) \tag{7.1.20}
$$

となり、そこでの密度は状態式$$P = f(\rho, T, X_i)$$から求まります。

## 元素組成の変化

恒星内部での元素組成分布の時間変化は、恒星の構造変化をもたらす要因の一つです。
元素組成の初期値としては、空間的に均一な分布が仮定されます。
核融合反応が起き始めると、元素組成分布が時間と共に変化して行きます。
さらに対流の起こる領域や、それ以外の場所でも事典などにより乱流が発生する場合には、混合によっても元素組成分布が変えられていきます。
そのような元素姿勢分布の変化は

$$
\left( \frac{\partial X_i}{\partial t} \right)_{M_r} 
= \left( \frac{\partial X_i}{\partial t} \right)_\mathrm{nuc} + \frac{\partial}{\partial M_r} \left( D \frac{\partial X_i}{\partial M_r} \right) \tag{7.1.21} 
$$

のように表されます。
ここで右辺の第一項は核融合反応による元素組成の変化を表し、第二項は対流および弱い乱流による混合を拡散係数$$D$$の拡散過程と見なして表したものです。

## 参考文献

[1] [Kippenhahn, Weigert & Weiss, "Stellar Structure and Evolution"](https://amzn.to/43pXiva)  
[2] [高原文郎, "宇宙物理学"](https://amzn.to/4bXfKgP)  
[3] [野本憲一, 定金晃三, 佐藤勝彦, "恒星"](https://amzn.to/4kHBvFv)  

{% include adsense.html %} 