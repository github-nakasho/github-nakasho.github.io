---
layout: default
title: 定常電流の基礎理論
parent: 電気回路
math: mathjax3
permalink: /circuits/steady_current
nav_order: 1
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

# 定常電流の基礎理論

ここでは、定常電流において成り立つ基本法則などについてまとめています。

## オームの法則

電荷の移動方向の単位面積あたりの電流を、電流密度 $$\mathbf{j}$$ と定義しましょう。
すると微視的なオームの法則 (Ohm's law) は、次のように与えられます。

$$
\mathbf{j} 
= \sigma \mathbf{E} \tag{1}
$$

ここで $$\sigma$$ は電気伝導度 (electric conductivity) です。
この単位は $$\mathrm{A} \mathrm{V}^{-1} \mathrm{m}^{-1}$$ で与えられます。
特に $$\mathrm{A} \mathrm{V}^{-1}$$ の部分は電気抵抗の単位の逆数 $$1/\Omega$$ となっており、これをジーメンス $$\mathrm{S}$$ という単位で表すこともあります。
以下に、種々の電気伝導度の値を示します。

|物質名|$$\sigma$$|
|:--|:--|
|銀|$$6 \times 10^7 \ \mathrm{\Omega}^{-1} \mathrm{m}^{-1}$$|
|水道水|$$1 \times 10^{-6} \ \mathrm{\Omega}^{-1} \mathrm{m}^{-1}$$|
|純水|$$1 \times 10^{-9} \ \mathrm{\Omega}^{-1} \mathrm{m}^{-1}$$|
|ガラスエボキシ|$$1 \times 10^{-11} \ \mathrm{\Omega}^{-1} \mathrm{m}^{-1}$$|

(1)式から、巨視的なオームの法則を導出しましょう。
断面積 $$S$$、長さ $$L$$ の一様な電気伝導度を持つ円柱形状の物質を考え、その内部を一様かつ定常的に $$\mathbf{j}$$ の電流密度で電気が流れているとしましょう。

![](/assets/images/circuits/steady_current_01.png)  

この物質内部で(1)式を体積積分すると

$$
\iiint_V \mathbf{j} dV 
= \iiint_V \sigma \mathbf{E} \ \Longrightarrow \ 
\vert \mathbf{j} \vert SL 
= \sigma \vert \mathbf{E} \vert SL \tag{2}
$$

のようになります。
さらに$$I$$、$$V$$、$$R$$を次のように定義します。

$$
I 
\equiv S \vert \mathbf{j} \vert, \qquad V 
\equiv \vert \mathbf{E} \vert, \qquad R 
\equiv \frac{L}{\sigma S} \tag{3}
$$

$$I$$ は断面を通過する電流密度の総量で、電流と呼ばれる量です。
$$V$$ は電場の大きさに距離をかけたものであることから、電位差と同じ次元を持ち、電圧と呼ばれることもあります。
$$R$$ は電気伝導度 $$\sigma$$ の逆数になっていることから、$$\sigma$$ が大きいほど小さな値を持ちます。
これは電流に対してどれだけ流れを邪魔するか (電気伝導度が大きいほど流れを邪魔しない) を表すことから、抵抗 (electric resistance) と呼びます。
これらを用いれば、(2)式は

$$
I 
= \frac{V}{R} \tag{4}
$$

となります。
電気回路においては、このオームの法則の公式がよく用いられます。

## 電荷保存則と連続の式

表面積 $$S$$ を持つ体積 $$V$$ の領域を考え、その領域の電荷の流入・流出を考えましょう。

![](/assets/images/circuits/steady_current_02.png)  

$$S$$ を通して領域内に流入・流出する電荷の総量は、$$V$$内の電荷の総量に時間変動を与えます。
よって、$$V$$ 内の電荷密度を $$\rho$$ とすると

$$
\begin{align}
&- \frac{\partial}{\partial t} \iiint_V \rho dV 
= \iint_S \mathbf{j} \cdot d \mathbf{S} 
\underbrace{=}_{ガウスの定理} \iiint \nabla \cdot \mathbf{j} dV \ \Longrightarrow \ 
\iiint_V \left( \frac{\partial \rho}{\partial t} + \nabla \cdot \mathbf{j} \right) dV 
= 0 \notag \\
& \Longrightarrow \ 
\frac{\partial \rho}{\partial t} + \nabla \cdot \mathbf{j} 
= 0 \tag{5}
\end{align}
$$

のようになります。
これを連続の式と呼びます。
定常電流のみを考える場合、時間微分の項はゼロとなり

$$
\nabla \cdot \mathbf{j} 
= 0 \tag{6}
$$

が成り立ちます。  
(5)式は任意の体積 $$V$$ で成り立ち、他の物理系でもよく見られる式です。
例えば、$$\rho$$ を流体の質量密度、$$\mathbf{v}$$ を流体の流れの速度とすれば、$$\mathbf{j} = \rho \mathbf{v}$$ であり

$$
\frac{\partial \rho}{\partial t} + \nabla \cdot (\rho \mathbf{v}) 
= 0
$$

が、流体の質量保存則を表します。  

## 起電力 

回路に持続的に電流が流れるということは、静電的なクーロン力だけからは起こり得ないことを示しましょう。
次のように、閉曲線 $$C$$ に沿って定常電流 $$\mathbf{j}$$ が流れている状態を考えましょう。

![](/assets/images/circuits/steady_current_03.png)  

この曲線に沿って、オームの法則 (1)式を線積分します。

$$
\oint_C \frac{\mathbf{j}}{\sigma} \cdot d\mathbf{s} 
= \oint_C \mathbf{E} \cdot d\mathbf{s} \tag{7}
$$

閉曲線 $$C$$ 上の至る所で、クーロン力による静電場

$$
\mathbf{E} 
= - \nabla \phi \tag{8}
$$

が成り立っていると仮定しましょう。
ここで $$\phi$$ は、閉曲線に沿って存在する電位です。
これを(7)式に代入すると

$$
\oint_C \frac{\mathbf{j}}{\sigma} \cdot d\mathbf{s} 
= \oint_C (-\nabla \phi) \cdot d\mathbf{s} 
\underbrace{=}_{ストークスの定理} - \iint_{S} \nabla \times (\nabla \phi) dS 
= 0 \tag{9}
$$

が恒等的に成り立ちます。
ここで $$S$$ は、閉曲線 $$C$$ で囲まれる曲面です。
これは有限の $$\mathbf{j}$$ が $$C$$ 上に流れている、という条件と矛盾します。
この矛盾は、(8)式の仮定が間違いであることを意味します。
そこで $$C$$ 上の電場を、保存場である電場 $$\mathbf{E}^{保存} = - \nabla \phi$$ と、保存場でない電場 $$\mathbf{E}^\mathrm{emf}$$ の和として書くことにしましょう。
$$\mathbf{E} = \mathbf{E}^{保存} + \mathbf{E}^\mathrm{emf}$$を改めて(7)式に代入すれば

$$
\oint_C \frac{\mathbf{j}}{\sigma} \cdot d \mathbf{s} 
= \oint_C (-\nabla \phi + \mathbf{E}^\mathrm{emf}) \cdot d\mathbf{s} 
= \oint_C \mathbf{E}^\mathrm{emf} \cdot d\mathbf{s} 
\equiv V^\mathrm{emf} \tag{10}
$$

のようにゼロでない有限の値 $$V^\mathrm{emf}$$ が残ります。
この $$V^\mathrm{emf}$$ を起電力 (ElectroMotive Force: EMF)と呼びます。
起電力は、電場を線積分したものであることから、電位と同じ次元を持ちます。
すなわち定常電流は自然に流れ続けるわけではなく、起電力によって強制的に電位差を作ることで、流れ続けることができるとわかります。

{% include adsense.html %}

## 定常電流電気回路とキルヒホッフの法則

ここでは、定常電流電気回路の計算でよく用いられるキルヒホッフの法則について、その2つの形を求めてみましょう。
次の図のように、導線が一箇所で接続されているような系を考えましょう。

![](/assets/images/circuits/steady_current_04.png)  

接続点を囲む閉曲面 $$S$$ で(6)式を面積積分すると

$$
\iiint_V \nabla \cdot \mathbf{j} dV 
\underbrace{=}_{ガウスの定理} \iint_S \mathbf{j} \cdot d\mathbf{S} 
= 0 \tag{11}
$$

ここで、導線以外の部分には電流が存在しないとしましょう。
さらに $$k$$ 本目の導線の断面積を $$S_k$$ のようにすれば

$$
\iint_S \mathbf{j} \cdot d\mathbf{S} 
= \iint_{S_k} \mathbf{j} \cdot d\mathbf{S} 
= \sum_k I_k 
= 0 \qquad \left( I_k = \iint_{S_k} \mathbf{j} \cdot d\mathbf{S} \right) \tag{12}
$$

のようになります。
ここで $$I_k$$ は $$k$$本目の導線に流れる電流であり、(12)式をキルヒホッフの電流則 (Kirchchoff's current rule) と呼びます。  
続いては、電気回路中の閉経路について考えましょう。
次の図のように、任意の数の電池 (起電力のもと)と抵抗器が繋がれているような閉回路 (環になった回路)を考えます。

![](/assets/images/circuits/steady_current_05.png)  

この回路の導線に沿って(10)式を考えると

$$
\oint_C \frac{\mathbf{j}}{\sigma} \cdot d\mathbf{s} 
= \oint_C \mathbf{E}^\mathrm{emf} \cdot d\mathbf{s} 
= \sum_j V_j^\mathrm{emf} \tag{13}
$$

一方、$$k$$ 番目の抵抗器 $$R_k$$ の部分のみに注目すると、$$R_k$$ 内での電場の線積分が電位差を生むため

$$
\int_{R_k} \frac{\mathbf{j}}{\sigma} \cdot d\mathbf{s} 
= V_k \tag{14}
$$

のようになります。
以上より

$$
\oint_C \frac{\mathbf{j}}{\sigma} \cdot d\mathbf{s} 
= \sum_k V_k 
= \sum_j V_j^\mathrm{emf} \ \Longrightarrow \ 
\sum_j V_j^\mathrm{emf} - \sum_k \underbrace{V_k}_{(4)} 
= \sum_j V_j^\mathrm{emf} - \sum_k R_k I_k 
= 0 \tag{15}
$$

を得ます。
すなわち、任意の閉回路 $$C$$ 内で反時計回りの起電力を正、抵抗器の両端の電位差を負 (電圧降下) として和を取ると、ゼロになることがわかります。
これをキルヒホッフの電圧測 (Kirchhoff's voltage rule) と呼びます。

## ジュール熱

### 巨視的・微視的なジュールの法則

抵抗のある物体 (有限の電気伝導度の物質) に電流を通すと、熱が発生することが知られいます。
これは、物体を摩擦に抗って動かすときに熱が発生するのと同様です。
電流密度 $$\mathbf{j}$$ は

$$
\mathbf{j} 
= -ne \mathbf{v} \tag{16}
$$

のようにも書けるのでした。
ここで $$n$$ は物質中の電子数密度、$$e$$ は素電荷、$$\mathbf{v}$$ は電子の運動速度です。
これと(1)式を見比べると

$$
\mathbf{v} 
= - \frac{\sigma}{en} \mathbf{E} \tag{17}
$$

とわかります。
定常的な電場 $$\mathbf{E}$$ が存在する場所では、自由電子は $$\mathbf{F}_{電場} = - e \mathbf{E}$$ の力による加速度運動を行うはずです。
しかし、(17)式は定常的な電場中では等速運動をすることを表しています。
すなわち、電子には

$$
\mathbf{F}_{抵抗} 
= - \mathbf{F}_{電場} 
= - \frac{e^2 n}{\sigma} \mathbf{v} \tag{18}
$$

の抵抗力が働いていることがわかります。
$$\sigma$$ が無限大ではこの抵抗力はゼロとなり、自由に電子が流れる (抵抗を感じることなく電流が流れる) ことに一致します。  
微視的にはこのように理解できますが、この抵抗によって発生する熱量を、巨視的に求めてみましょう。
電位差 $$V$$ の二点間で電荷 $$q$$ が移動した場合、電荷のする仕事は $$qV$$ です。
よって、抵抗 $$R$$ に電流 $$I$$ が流れた場合に発生する単位時間あたりの仕事 (仕事率) は、$$I$$ が単位時間あたりに移動する電荷量であることを用いて

$$
W 
= I V 
\underbrace{=}_{(4)} RI^2 
= \frac{V^2}{R} \tag{19}
$$

これだけのエネルギーが電流とともに抵抗に入ってくることになり、エネルギー保存則から、このエネルギーが熱として逃げいく (抵抗器の温度上昇に費やされる) ことになります。
これをジュール熱 (Joule heat) と呼び、(19)式をジュールの法則 (Joule's law) と呼びます。 
さらに、次のようにして微視的なジュールの法則を求めてみましょう。
電流密度 $$\mathbf{j}$$ の方向に長さ $$\Delta L$$ の軸を持つ断面積 $$\Delta S$$ の微小円柱を考えます。

![](/assets/images/circuits/steady_current_06.png)  

このとき、単位体積あたりのジュール熱 $$w$$ は、先ほどの $$W$$ をこの微小体積で割ることで

$$
w 
= \frac{IV}{\Delta V} 
= \frac{(\mathbf{j} \Delta S) \cdot (\mathbf{E} \Delta L)}{\Delta S \Delta L} 
= \mathbf{j} \cdot \mathbf{E} \tag{20}
$$

のようになります。
これが微視的なジュール熱です。

### ジュール熱最小の定理

閉回路にキルヒホッフの法則に従う定常電流が流れている場合、発生するジュール熱が最小となることを示しましょう。
まずは閉回路中に起電力がない場合を考えます。
回路網の中の任意の1つの閉回路を取り出し、その閉回路中にある抵抗を $$R_i$$、そこに流れる電流を $$I_i$$ とします。
さらに閉回路の外につながる部分に流れる電流を $$I_\alpha$$、その部分の抵抗を $$R_\alpha$$ としましょう。
この全系で発生するジュール熱は

$$
W 
= \sum_i R_i I_i^2 + \sum_\alpha R_\alpha I_\alpha^2 \tag{21}
$$

のように与えられます。
考えている閉回路に流れる各電流 $$I_1, I_2, \dots$$の全てを、同じ量 $$\delta$$ だけ変えようとも、キルヒホッフの電流則 (12)式は成り立ちます。
しかし、発生するジュール熱のエネルギーは

$$
W' 
= \sum_i R_i (I_i + \delta)^2 + \sum_\alpha R_\alpha I_\alpha^2 \tag{22}
$$

のようになります。
これらの差を計算すると

$$
W' - W 
= 2\delta \sum_i R_i I_i + \delta^2 \sum_i R_i \tag{23}
$$

キルヒホッフの電圧則 (15)式より、この閉回路内に起電力はないから $$\sum_i R_i I_i = 0$$です。
ゆえに

$$
U' - U 
= \delta^2 \sum_i R_i 
> 0 \tag{24}
$$

のようになります。
すなわち、キルヒホッフの法則に従うとき、ジュール熱の発生が最小になっていることがわかります。  
次に、考えている閉回路内に起電力 $$V^\mathrm{emf}$$ が含まれている場合を考えましょう。
起電力を起こす電池は、理想的な場合にはジュール熱を発生させません。
しかし、起電力があることで $$V^\mathrm{emf} I$$の仕事が電流に加えられます。
そこで次のような関数を考えてみましょう。

$$
F 
= \sum_i R_i I_i^2 - 2 \sum_j V_j^\mathrm{emf} I_j + \sum_\alpha R_\alpha I_\alpha^2 \tag{25}
$$

この関数に対し、先ほどと同様に$$I_i \rightarrow I_i + \delta$$のように変化させてみましょう。

$$
\begin{align}
F' 
&= \sum_i R_i (I_i+\delta)^2 - 2 \sum_j V_j^\mathrm{emf} (I_j + \delta) + \sum_\alpha R_\alpha I_\alpha^2 \notag \\
&= \sum_i R_i I_i^2 + 2\delta \sum_i R_i I_i + \delta^2 \sum_i R_i - 2 \sum_j V_j^\mathrm{emf} I_j - 2 \delta \sum_j V_j^\mathrm{emf} + \sum_\alpha R_\alpha I_\alpha^2 \tag{26}
\end{align}
$$

以上より

$$
\begin{align}
F' - F 
&= 2\delta \sum_i R_i I_i + \delta^2 \sum_i R_i - 2 \delta \sum_j V_j^\mathrm{emf} \notag \\
&= 2\delta \underbrace{\left( \sum_i R_i I_i - \sum_j V_j^\mathrm{emf} \right)}_{(15)式よりゼロ} + \delta^2 \sum_i R_i 
= \delta^2 \sum_i R_i 
> 0 \tag{27}
\end{align}
$$

のように、キルヒホッフの法則に従うジュール熱の発生において、先ほどの関数 $$F$$ が最小となることがわかります。

## 参考文献

[1] [中村哲, 須藤彰三, "電磁気学"](https://amzn.to/4eQ96MY)  
[2] [高橋秀俊, "電磁気学"](https://amzn.to/43fQKxC)  
[3] [砂川重信, "理論電磁気学"](https://amzn.to/4do3nLN)  
[4] [松澤昭, "新しい電気回路＜上＞"](https://amzn.to/495eZCl)  

{% include adsense.html %}