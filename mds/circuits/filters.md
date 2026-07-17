---
layout: default
title: フィルター
parent: 電気回路
math: mathjax3
permalink: /circuits/filters
nav_order: 15
back_to_top: true
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

# フィルター

ある角周波数・一定の振幅を持つような入力に対し、ある周波数範囲はよく通して、他の周波数範囲を通さないようにするものをフィルター (filter) と呼びます。
ここでは種々のフィルターについて見てみましょう。

## ローパスフィルター

次の図の回路は、ある角周波数以下の交流をよく通し、それ以上の角周波数の交流は通りにくくなります。
これを低域フィルターあるいはローパスフィルター (low-pass filter: LPF) と呼びます。

![](/assets/images/circuits/filters_01.png)  

(a)の[伝達関数](/circuits/transfer_function)を計算しましょう。
$$x(t) = V_\mathrm{in}, y(t) = V_\mathrm{out}$$ とし、さらにこれらをラプラス変換したものをそれぞれ $$X(s), Y(s)$$ とすると

$$
x - L \frac{dI}{dt} - y 
= 0 \tag{1}
$$

ここで $$I$$ は、コイルに流れる電流です。
そして[オームの法則](/circuits/steady_current#オームの法則)より $$V_\mathrm{out} = RI$$ から

$$
x - \frac{L}{R} \frac{dy}{dt} - y 
= 0 \tag{2}
$$

となります。
両辺を[ラプラス変換](/math/laplace_transform)することで

$$
X 
= \frac{L}{R} (sY - y(0)) + Y 
= Y \left( 1 + \frac{L}{R} s \right) \ \Longrightarrow G(s) 
= \frac{Y}{X} 
= \frac{1}{1 + \frac{L}{R}s} 
= \frac{R}{R + Ls} \tag{3}
$$

を得ます。
途中、$$y(0) = 0$$ としました。
$$s = i\omega$$ とすることで、[周波数応答関数](/circuits/transfer_function#周波数応答)を得ることができます。

$$
\begin{align}
&G(i\omega) 
= \frac{R}{R + i\omega L} 
= \frac{R (R-i\omega L)}{R^2 + \omega^2 L^2} \notag \\
&\Longrightarrow \ \vert G (i\omega) \vert 
= \frac{R}{R^2 + \omega^2 L^2} \sqrt{R^2 + \omega^2 L^2} 
= \frac{R}{\sqrt{R^2 + \omega^2 L^2}} 
= \frac{1}{\sqrt{1 + \omega^2 \left( \frac{L}{R}\right)^2}} 
= \frac{1}{\sqrt{1 + \left( \frac{\omega}{\omega_0}\right)^2}} \tag{4}
\end{align}
$$

途中、$$\omega_0 = R/ L$$ としました。
入出力の位相差を $$\varphi$$ とすると

$$
\tan \varphi 
= \frac{-\omega L}{R}
= - \frac{\omega}{\omega_0} \tag{5}
$$

のようになります。
これらから[ボーデ図](/circuits/linear_system#ボーデ図)を描くと、次のようになります。

![](/assets/images/circuits/filters_02.png)  

この伝達関数から、$$\omega \ll \omega_0$$ では $$\vert G(i\omega) \vert \sim 1$$ のようなローパスフィルターとなります。
同様に、先ほどの図(b)もローパスフィルターとなります。
詳しくは[こちらのRC回路](/circuits/transfer_function#具体例-cr回路とrc回路)もぜひご覧ください。
このようにLR回路とRC回路は同等の特性フィルターですが、実際の電子回路ではLR回路の代わりにRC回路を用います。
それはコイルを用いる回路には欠点があるためです。
コイルの巻線は抵抗を伴い、また回路間に不要な相互誘導を生じます。
そして体積が大きいために、集積回路に入れることは実用的でないからです。

## ハイパスフィルター

先ほどの回路の2素子を入れ替えたものは、高域フィルターまたはハイパスフィルター (high-pass filter: HPF) となります。

![](/assets/images/circuits/filters_03.png)  

先ほどのように微分方程式を立て、それを[ラプラス変換](/math/laplace_transform)してみましょう。

$$
x - RI - y 
= 0 \tag{6}
$$

今回は $$V_\mathrm{out} = L \frac{dI}{dt}$$ より、両辺を時間微分することで

$$
\begin{align}
&\frac{dx}{dt} - R \frac{dI}{dt} - \frac{dy}{dt} 
= \frac{dx}{dt} - \frac{R}{L} y - \frac{dy}{dt} 
= 0 \notag \\
&\underbrace{\Longrightarrow}_{ラプラス変換} 
s X - x(0) - \frac{R}{L} Y - (s Y - y(0)) 
\underbrace{=}_{x(0), y(0) = 0} s X - \left( \frac{R}{L} + s \right) Y 
= 0 \tag{7}
\end{align}
$$

となります。
よって、伝達関数は

$$
G(s) 
= \frac{Y}{X} 
= \frac{s\frac{L}{R}}{1 + \frac{L}{R} s} \tag{8}
$$

となります。
$$s = i\omega, \omega_0 = R/L$$ のようにすることで

$$
G(i\omega) 
= \frac{i \frac{\omega}{\omega_0}}{1 + i \frac{\omega}{\omega_0}}
= \frac{i \frac{\omega}{\omega_0} \left(1- i\frac{\omega}{\omega_0} \right)}{1 + \left( \frac{\omega}{\omega_0} \right)^2} \ \Longrightarrow \ 
\vert G(i\omega) \vert 
= \frac{\frac{\omega}{\omega_0}}{\sqrt{1 + \left( \frac{\omega}{\omega_0} \right)^2}} 
= \frac{1}{\sqrt{1 + \left( \frac{\omega_0}{\omega}\right)^2}} \tag{9}
$$

のように整理されます。
この[ボーデ図](/circuits/linear_system#ボーデ図)は、次のようになります。

![](/assets/images/circuits/filters_04.png)  

$$\omega \gg \omega_0$$ のとき、$$\vert G(i\omega) \vert \sim 1$$ のようになることから、ハイパスフィルターであることが確認できました。

<span id="high-low"></span> 

{: .note}
(3)式と(8)式を見比べると、$$G(s)$$ の極の位置 (分母がゼロとなる場所) はどちらも同じです。
では何がローパス・ハイパスの違いを生むのでしょうか。
それは $$G(s) = 0$$ となる位置 (すなわちゼロ点) の違いです。
(8)式から、ハイパスフィルターでは $$s = 0$$ がゼロ点であるとわかります。
$$s = i\omega = 0$$ のとき、これは直流成分に一致します ($$\omega \rightarrow 0$$ では $$\lambda \rightarrow \infty$$ となり、同じ電流・電圧がずっと続くと考えればわかりやすいでしょう)。
ハイパスフィルターは $$s = 0$$ で $$G(s) = 0$$ となり、直流成分 (低周波極限) を透過しないことからもわかるように、低周波を通さない性質が伺えます。
$$G(s)$$ の極だけでなくゼロ点の位置を詳細に設計することで、そのフィルターの性質が左右されるのです。

{% include adsense.html %}

## バンドパスフィルター

電子回路のハイパスフィルターでは、RL回路を用いずにCR回路を用います。
その理由は、[ローパスフィルター](/circuits/filters#ローパスフィルター)の部分で述べたことのほかに、インダクタンス $$L$$ を与えるコイルやその配線には小さな電気容量が必ずつきまとうためです。
このような容量を浮遊容量または迷容量 (stray capacitance) と呼びます。
それを考慮すると、ハイパスフィルターの回路図 (a) は、次の図のようになります。

![](/assets/images/circuits/filters_05.png)  

[キルヒホッフの電圧則](/circuits/steady_current#定常電流電気回路とキルヒホッフの法則)より

$$
V_\mathrm{in} - RI - V_\mathrm{out} 
= 0 \tag{10}
$$

並列接続より

$$
V_\mathrm{out} 
= L \frac{dI_1}{dt} 
= \frac{1}{C} \int I_2 dt \ \Longrightarrow \ 
\frac{dV_\mathrm{out}}{dt} 
= L \frac{d^2 I_1}{dt^2} 
= \frac{I_2}{C} \tag{11}
$$

であり、電流は

$$
I 
= I_1 + I_2 \tag{12}
$$

を満たします。
以上より

$$
\begin{align}
&V_\mathrm{in} - R (I_1 + I_2) - V_\mathrm{out} 
= V_\mathrm{in} - R I_1 - CR \frac{dV_\mathrm{out}}{dt} - V_\mathrm{out} 
= 0 \notag \\
&\Longrightarrow \ 
\frac{dV_\mathrm{in}}{dt} - R \frac{dI_1}{dt} - CR \frac{d^2 V_\mathrm{out}}{dt^2} - \frac{dV_\mathrm{out}}{dt} 
= \frac{dV_\mathrm{in}}{dt} - \frac{R}{L} V_\mathrm{out} - CR \frac{d^2 V_\mathrm{out}}{dt^2} - \frac{dV_\mathrm{out}}{dt} 
= 0 \tag{13}
\end{align}
$$

という微分方程式を得ます。
$$V_\mathrm{in} = x(t), V_\mathrm{out} = y(t)$$ とおき、さらにこれらを[ラプラス変換](/math/laplace_transform)したものをそれぞれ $$X(s), Y(s)$$ とすれば

$$
(s X - x(0)) - \frac{R}{L} Y - CR (s^2 Y - s y(0) - y'(0)) - (sY - y(0)) 
= 0 \tag{14} 
$$

となります。
初期条件として $$x(0), y(0), y'(0) = 0$$ とすると

$$
s X - \frac{R}{L} Y - s^2 CR Y - sY 
= 0 \ \Longrightarrow \ 
Y 
= \frac{s}{s^2 CR + s + \frac{R}{L}} X \tag{15}
$$

よって

$$
G(i\omega) 
= \frac{Y(i\omega)}{X(i\omega)} 
= \frac{i\omega}{-CR \omega^2 + i\omega + \frac{R}{L}} 
= \frac{1}{1 + i \frac{CR}{\omega} \left(\omega^2 - \omega_0^2 \right)} \tag{16}
$$

のようになります。
途中、$$\omega_0^2  = \frac{1}{LC}$$ のように置きました。
$$\omega = \omega_0$$ で $$\vert G(i\omega) \vert = 1$$ となり、それより周波数が高くても低くても、周波数応答の大きさが1より小さくなります。
具体的には、この回路図の[ボーデ図](/circuits/linear_system#ボーデ図)は次のようになります。

![](/assets/images/circuits/filters_06.png)  

これを帯域通過フィルターまたはバンドパスフィルター (band-pass filter) と呼びます。
透過率が $$1/\sqrt{2}$$ になる角周波数で通過帯域の[半値幅 $$\Delta \omega$$](/circuits/series_parallel_resonance#共振の半値幅とq値) を定義すると、$$\Delta \omega \ll \omega_0$$ の近似では

$$
\Delta \omega 
\approx \frac{1}{2RC} \tag{17}
$$

となります。

## バンドリジェクションフィルター

先ほどのバンドパスフィルターのLC並列部分とRを入れ替えた次の回路図は、角周波数 $$\omega_0$$ の付近だけを透過させないようになります。

![](/assets/images/circuits/filters_07.png)  

このようなフィルター回路を帯域除去フィルターあるいはバンドリジェクションフィルター (band-rejection filter) と呼びます。
LC並列部分の電圧降下を $$V_{LC}$$ とすると

$$
V_\mathrm{in} - L \frac{dI_1}{dt} - V_\mathrm{out}
= 0 \tag{18}
$$

$$
V_\mathrm{in} - \frac{1}{C} \int I_2 dt - V_\mathrm{out}
= 0 \ \Longrightarrow \ 
\frac{d^2 V_\mathrm{in}}{dt^2} - \frac{1}{C} \frac{dI_2}{dt} - \frac{d^2 V_\mathrm{out}}{dt^2} 
= 0 \tag{19}
$$

$$
I 
= I_1 + I_2 \tag{20}
$$

$$
V_\mathrm{out} 
= RI\tag{21}
$$

(18), (19)式より

$$
\begin{align}
&\frac{V_\mathrm{in}}{L} - \frac{dI_1}{dt} - \frac{V_\mathrm{out}}{L} + C \frac{d^2 V_\mathrm{in}}{dt^2} - \frac{dI_2}{dt} - C \frac{d^2 V_\mathrm{out}}{dt^2} \notag \\
&= \frac{V_\mathrm{in}}{L}  - \frac{V_\mathrm{out}}{L} + C \frac{d^2 V_\mathrm{in}}{dt^2} - C \frac{d^2 V_\mathrm{out}}{dt^2} - \frac{d}{dt} \underbrace{(I_1 + I_2)}_{(20), (21)} \notag \\
&= \frac{V_\mathrm{in}}{L}  - \frac{V_\mathrm{out}}{L} + C \frac{d^2 V_\mathrm{in}}{dt^2} - C \frac{d^2 V_\mathrm{out}}{dt^2} - \frac{1}{R} \frac{dV_\mathrm{out}}{dt} 
= 0 \tag{22}
\end{align}
$$

この式を[ラプラス変換](/math/laplace_transform)すると

$$
\frac{X}{L} - \frac{Y}{L} + C (s^2 X - s x(0) - x'(0)) - C (s^2 Y - s y(0) - y'(0)) - \frac{1}{R} (sY - y(0)) 
= 0 \tag{23}
$$

より、$$x(0) = x'(0) = y(0) = y'(0) = 0$$ とすれば

$$
G(s) 
= \frac{Y(s)}{X(s)} 
= \frac{1 + LC s^2}{LCs^2 + \frac{L}{R} s + 1} \tag{24}
$$

のようになります。
$$\omega_0^2 = \frac{1}{LC}, \Delta \omega = \frac{1}{RC}$$ とおくと

$$
G(i\omega) 
= \frac{1 - \frac{\omega^2}{\omega_0^2}}{- \frac{1}{\omega_0^2} (\omega^2 - i \omega \Delta \omega) + 1} 
= \frac{1}{1 - i \frac{\omega \Delta \omega}{\omega^2 - \omega_0^2}} \tag{25}
$$

この[ボーデ図](/circuits/linear_system#ボーデ図)は、次のようになります。

![](/assets/images/circuits/filters_08.png)  

$$\omega \rightarrow \omega_0$$ では $$G(i\omega) \rightarrow 0$$ となり、$$\omega_0$$ よりも高周波・低周波では透過率が大きくなります。
透過率が $$1/\sqrt{2}$$ 以下となる帯域幅は、およそ $$2 \Delta \omega$$ となります。

{% include adsense.html %}

## 移相器

普通のフィルターは周波数によって振幅を変化させます。
しかし振幅は変化させず、位相だけを変化させるフィルターも存在します。
これを移相器 (phase shifter) と呼びます。
例として、次の回路図のようなものがあります。

![](/assets/images/circuits/filters_09.png)  

点2での電位は、$$R - R$$ の直列接続部分に電流 $$I_a$$ が流れているとすると

$$
V_\mathrm{in} - R I_a
= V_2, \quad V_\mathrm{in} - R I_a - R I_a 
= 0 \ \Longrightarrow \ V_2 
= R I_a 
= \frac{1}{2} V_\mathrm{in} \tag{26} 
$$

点2'での電位は、$$R' - C$$ の直列接続部分に着目して

$$
\begin{align}
&V_\mathrm{in} - R' I_b 
= V_{2'}, \quad V_\mathrm{in} - R' I_b - \frac{I_b}{i\omega C} 
= 0 \notag \\
&\Longrightarrow \ V_{2'} 
= \frac{I_b}{i\omega C} 
= \frac{\frac{1}{i\omega C}}{R' + \frac{1}{i\omega C}} V_\mathrm{in} 
= \frac{1}{1 + i\omega R'C} V_\mathrm{in} \tag{27}
\end{align}
$$

のようになります。
以上から、2-2'間の電位 $$V_\mathrm{out}$$は

$$
V_\mathrm{out} 
= V_2 - V_{2'} 
= \frac{1}{2} V_\mathrm{in} - \frac{1}{1 + i\omega R'C} V_\mathrm{in} 
= \frac{1}{2} \frac{i\omega R' C - 1}{1 + i\omega R' C} V_\mathrm{in} \tag{28}
$$

よって周波数応答関数は

$$
\begin{align}
G(i\omega) 
&= \frac{V_\mathrm{out}}{V_\mathrm{in}} 
= \frac{1}{2} \frac{i\omega R' C - 1}{1 + i\omega R' C} 
= - \frac{1}{2} \frac{(i\omega R' C - 1)^2}{1 + \omega^2 R'^2 C^2} \notag \\
&= - \frac{1}{2} \frac{-\omega^2 R'^2 C^2 - 2 i \omega R' C + 1}{1 + \omega^2 R'^2 C^2} \tag{29}
\end{align}
$$

のようになります。
この絶対値は

$$
\vert G(i\omega) \vert 
= \frac{1}{2(1 + \omega^2 R'^2 C^2)} \sqrt{(1-\omega^2 R'^2 C^2)^2 + 4 \omega^2 R'^2 C^2} 
= \frac{1}{2} \tag{30}
$$

のように、周波数に依存せず一定となります (1/2になっていますが、このフィルター通過後に増幅器を通すことで、振幅は1に戻すことができます。)
また位相は

$$
\begin{align}
\varphi 
&= \mathrm{arg} (G(i\omega)) 
= \mathrm{arg} (i\omega R'C - 1) - \mathrm{arg}(2) - \mathrm{arg}(1 + i\omega R'C) \notag \\
&= \mathrm{arg} (i\omega R'C - 1) - \mathrm{arg}(1 + i\omega R'C) 
= (\pi - \mathrm{arctan} (\omega R'C)) - \mathrm{arctan} (\omega R'C) \notag \\
&= \pi - 2 \mathrm{arctan} (\omega R' C) \tag{31}
\end{align}
$$

出力電流が流れないとき、$$R'$$ と $$C$$ を流れる電流は等しいため、$$R'$$ と $$C$$ の両端の電圧は $$\pi / 2$$ の位相差を持つことになります。
そこで、端子 1'-2' 間の交流電圧ベクトルと 2'-1 間の交流電圧ベクトルは直交します。
これらを図示すると、次のようになります。

![](/assets/images/circuits/filters_10.png)  

$$R'$$ をゼロから次第に大きくしていくと、このベクトル図で端子 2' の電圧を示す点は 1-1' を直径とする円周に沿って、矢印の向きに移動します。
したがって出力の振幅は一定のまま、位相が入力に対して $$\pi$$ から $$0$$ 近くまで変化させることができます。
$$R' = \frac{1}{\omega C}$$ のとき、位相差は $$\pi / 2$$ となります。  
この回路の形は、ブリッジ回路と同じです。
よって電流が流れないときの条件は、[ホイートストンブリッジ回路における平衡条件](/circuits/steady_circuit_eg#ホイートストンブリッジ回路)からも求めることができます。
平衡条件より

$$
\frac{R}{\omega C} 
= R R' \ \Longrightarrow \ \ R' 
= \frac{1}{\omega C} \tag{32}
$$

## その他のフィルター

ここまでの議論では、特にフィルターの設計については触れてきませんでした。
しかし[ハイパスフィルターとローパスフィルターの違い](#high-low)の部分で触れたように、極とゼロ点の位置から、その性質・性能を詳細に設計することができます。
ここでは代表的な3つのフィルターについて、それらの設計思想とともに見ていきましょう。

### バターワースフィルター

1930年にバターワース (Butterworth) により考案されたフィルターです。
これは特定の周波数を透過するというものではなく、透過帯域が限りなく平坦になるように設計されたものを指します。
その分、透過しない帯域の[ボーデ図](/circuits/linear_system#ボーデ図)の傾きが緩やかになっている特徴も持ちます。  
$$n$$ 次のバターワースフィルターは、次のような周波数応答を持つ[ローパスフィルター](/circuits/filters#ローパスフィルター)です。

$$
\vert G(\omega) \vert^2
= \frac{1}{1 + (\omega / \omega_0)^{2n}} \tag{33}
$$

$$\vert G(\omega) \vert^2$$ を $$\omega = 0$$ の周りでテイラー展開しましょう。
すると

$$
\vert G (\omega) \vert^2 
= 1 - \left( \frac{\omega}{\omega_0}\right)^{2n} + (\omega^{4n} 以上の項) \tag{34}
$$

のようになり、$$\omega^2$$ から $$\omega^{2n-2}$$ までの項が消えています。
よって $$\omega = 0$$ のときの $$\vert G(0) \vert^2 = 1$$ を、大きな $$\omega$$ でも実現できるようになっていることから、ボーデ図の平坦性がわかります。  
このフィルターの極の位置を調べてみましょう。
$$\vert G(\omega) \vert^2 = G(s=i\omega) G(-s = -i\omega)$$ の関係から

$$
G(s) G(-s) 
= \frac{1}{1 + \left(\frac{s}{i\omega_0}\right)^{2n}} \tag{35}
$$

とわかります。
<span id="equation-36"></span>分母がゼロとなる極の位置は

$$
\left( \frac{s}{i\omega_0} \right)^{2n} 
= -1 
= e^{-i\pi + 2ki\pi} \ \Longrightarrow \ s_k
= \omega_0 i e^{i\pi \frac{2k-1}{2n}} 
= \omega_0 e^{i\pi \left( \frac{1}{2} + \frac{2k-1}{2n} \right)} \tag{36} 
$$

のように求めることができます。
ここで $$k = 0, 1, 2, \dots, 2n -1$$ です。
すなわち、バターワースフィルターの極の位置は、複素数平面上の半径 $$\omega_0$$ の円周上に $$\pi/n$$ の角度間隔で並びます。
[安定性の議論から、実部が正の極は指数的に振幅が増大](/circuits/transfer_function#線形システムの安定性)してしまいます。
よって $$2n$$ 個の極のうち、実部が負 (複素数平面上の左半面に位置する) の $$n$$ 個を $$G(s)$$ の極として用いることで、安定なフィルターとなります。

{: .note}
複素数平面上の右半面に位置する極は、$$G(-s)$$ の部分から出てきます。

例として $$n=2, 3, 4$$ の場合の極の位置を、次図に示します。

![](/assets/images/circuits/filters_11.png)  

また(36)式の極を用いることで、伝達関数は

$$
G(s) 
= \frac{\omega_0^n}{\prod_{k=1}^{n} (s-s_k)} \tag{37}
$$

のように書くことができます。
分母の部分を、バターワース多項式とも呼びます。
(37)式から $$\vert G(s) \vert$$ を[デシベル](/circuits/linear_system#補遺b-デシベルについて)で描くと、次のようになります。

![](/assets/images/circuits/filters_12.png)  

$$n$$ が大きくなるにつれ、$$\omega \lesssim 1$$ のプラトーの部分が広くなっていることがわかります。
また $$\omega \gtrsim 1$$ での傾きも、$$n$$ の増加とともに急峻になり、より理想的なローパスフィルターに近づいていることがわかります。  

{% include adsense.html %}

### チェビシェフフィルター

先ほどのバターワースフィルターは、透過帯域の傾きが穏やかという欠点がありました。
透過帯域の傾きを急峻にすることで、理想的なフィルターを設計しようとしたのがチェビシェフフィルターです。
ただし急峻さを突き詰めたことで、透過帯域の部分でリップル (ripple, 微小な振動成分のこと) が発生する欠点を持ちます。  
$$n$$ 次の (第一種) チェビシェフフィルタの振幅特性は

$$
\vert G(\omega) \vert^2 
= \frac{1}{1 + \epsilon^2 T_n^2 (\omega / \omega_0)} \tag{38}
$$

のように与えられます。
ここで [$$T_n$$ はチェビシェフ多項式](/math/chebyshev)、$$\epsilon$$ はリップルの大きさを決めるパラメータです。
[チェビシェフ多項式](/math/chebyshev)は、区間 $$[-1, 1]$$ で $$\vert T_n (x) \vert \leq 1$$ かつ $$\pm 1$$ の間を $$n/2$$ 回往復します。
ここから、透過帯域 $$\omega < \omega_0$$ では $$T_n^2$$ が 0 と 1 の間を往復することで

$$
\frac{1}{1 + \epsilon^2} \leq \vert G \vert^2 \leq 1 \tag{39}
$$

の間を振動するリップルが発生します。  
本来、[チェビシェフ多項式 $$T_n (x)$$](/math/chebyshev) は $$-1 \leq x \leq 1$$ の間で定義されるものですが、(38)式では $$\omega > \omega_0$$ の領域も記述することができます。
$$T_n (\omega / \omega_0) = \mathcal{O} (\omega^n/ \omega_0^n)$$ のような依存性を持つため、$$\omega > \omega_0$$ では $$\vert G(\omega) \vert^2$$ は急速にゼロに近づいていきます。
これにより、先ほど議論した急峻さを実現します。  
リップルの大きさ $$\epsilon$$ は、慣習的に[デシベル](/circuits/linear_system#補遺b-デシベルについて)で表します。
実際のリップルの振幅を $$A \ [\mathrm{dB}]$$ とすると 

$$
\epsilon 
= \sqrt{10^{A/10} - 1} \tag{40}
$$

のように書かれます。  
次に、チェビシェフフィルターの極を求めてみましょう。
(38)式の分母がゼロとなる位置は

$$
1 + \epsilon^2 T_n^2 (s/i) 
= 0 \ \Longrightarrow \ 
T_n (s/i) 
= \pm \frac{i}{\epsilon} \tag{41}
$$

から求めることができます。
$$T_n$$ の振動の様子から、(41)式の解は $$2n$$ 個あることがわかります。
そこでこれらの解を $$s_k \ (k=1, 2, \dots, 2n)$$ のように書くことにしましょう。
すると

$$
\begin{align}
&\cos \left\{ n \cos^{-1} \left( \frac{s_k}{i} \right) \right\} 
= \pm \frac{i}{\epsilon} \notag \\
&\Longrightarrow \ 
\cos^{-1} \frac{s_k}{i} 
= \frac{1}{n} \left\{\cos^{-1} \left(\pm \frac{i}{\epsilon} \right) + 2\pi k \right\} \quad (k = 0, 1, \dots, 2n-1) \tag{42}
\end{align}
$$

を解けば良いことがわかります。
$$\cos^{-1} \left( \pm \frac{i}{\epsilon}\right)$$ の部分を計算するために、$$\cos \alpha = i / \epsilon$$ を満たす複素数 $$\alpha$$ を計算しましょう。

$$
\cos \alpha 
= \frac{e^{i\alpha} + e^{-i \alpha}}{2} 
= \frac{i}{\epsilon} \tag{43}
$$

右辺は純虚数なので、$$\alpha = \frac{\pi}{2} + i\beta$$ のように分解すると

$$
\begin{align}
&\cos \left( \frac{\pi}{2} + i\beta \right) 
= \cos \frac{\pi}{2} \cos (i\beta) - \sin \frac{\pi}{2} \sin(i\beta) 
= - \sin (i\beta) 
= - i \sinh \beta 
= \frac{i}{\epsilon} \notag \\
&\Longrightarrow \ 
\sinh\beta 
= - \frac{1}{\epsilon} \tag{44}
\end{align}
$$

以上より

$$
\cos^{-1} \left( \frac{i}{\epsilon} \right) 
= \alpha 
= \frac{\pi}{2} - i \sinh^{-1} \left( \frac{1}{\epsilon} \right) \tag{45}
$$

のようになります。
途中 $$\sinh^{-1} (x) = - \sinh^{-1} (-x)$$ であることを用いました。
さらに

$$
\cos^{-1} \left( - \frac{i}{\epsilon} \right) 
= \pi - \cos^{-1} \left( \frac{i}{\epsilon} \right) 
= \frac{\pi}{2} + i \sinh^{-1} \left( \frac{1}{\epsilon} \right) \tag{46}
$$

もわかります。
(45), (46)式を(42)式に代入し、さらに $$\mu_0 = \sinh^{-1} \left( \frac{1}{\epsilon}\right)$$ とおけば

$$
\cos^{-1} \left( \frac{s_k}{i} \right) 
= \frac{1}{n} \left( \frac{\pi}{2} \pm i \mu_0 + 2\pi k \right) \ \Longrightarrow \ 
\frac{s_k}{i} 
= \cos \left\{ \frac{4k + 1}{2n} \pi \pm i \mu \right\} \quad (\mu = \mu_0 / n) \tag{47} 
$$

のようになります。

$$
\begin{align}
s_k
&= i\cos \left( \frac{4k+1}{2n} \pi \right) \cos (i\mu) \mp i \sin \left( \frac{4k+1}{2n} \pi \right) \sin (i\mu) \notag \\
&= i\cos \left( \frac{4k+1}{2n} \pi \right) \cosh \mu \pm \sin \left( \frac{4k+1}{2n} \pi \right) \sinh \mu \tag{48}
\end{align}
$$

とし、さらに $$\theta_k = \frac{2k-1}{2n} \pi \ (k=1, 2, \dots, 2n)$$ のようにすることで

$$
s_k 
= - \sinh \mu \sin \theta_k + i \cosh \mu \cos \theta_k \tag{49}
$$

のように、極の位置を求めることができました。
$$\sigma_k = - \sinh \mu \sin \theta_k, \Omega_k = \cosh \mu \cos \theta_k$$ のようにおくと

$$
\left( \frac{\sigma_k}{\sinh \mu} \right)^2 + \left( \frac{\Omega_k}{\cosh \mu}\right)^2 
= \sin^2 \theta_k + \cos^2 \theta_k 
= 1 \tag{50}
$$

のような関係にあることがわかります。
これは、虚軸方向を長軸とし半長軸の長さが $$\cosh \mu$$、実軸方向を短軸として半短軸の長さが $$\sinh \mu$$ の楕円を表しています。
[バターワースの極の位置 (36)式](#equation-36)と比較すると、バターワースの極が存在する真円を実軸方向に $$\tanh \mu$$ 倍だけ押し潰した形になっています。

![](/assets/images/circuits/filters_13.png)  


$$\epsilon \rightarrow 0$$ のとき $$\mu \rightarrow \infty, \tanh \mu \rightarrow 1$$ となることから、バターワースフィルターはチェビシェフフィルターのリップルがない極限である、と見ることができます。
$$\vert G(\omega) \vert$$ を[デシベル](/circuits/linear_system#補遺b-デシベルについて)で描いたグラフは、次のようになります。

![](/assets/images/circuits/filters_14.png)  

バターワースの図と比べ、急峻な減衰を示すことがわかります。
チェビシェフ多項式の次数 $$n$$ を増やすことで、より急峻な減衰を得ることができますが、透過帯域部分でのリップルが激しくなっていることがわかります。
チェビシェフフィルターは透過帯域外でのその急峻さから、隣接チャンネルの分離が最優先となる無線通信 (送受信機のチャンネル選択フィルタ) などに用いられます。

{% include adsense.html %}

### 群遅延特性

バターワースフィルターは透過帯域の $$\vert G \vert$$ の平坦さを追求し、チェビシェフフィルターは減衰の急峻さを最適化した設計でした。
これらは $$\vert G \vert$$ に着目したもので、位相については特に議論されていません。
フィルター回路を通過した信号には、波形の歪みを引き起こさないことが求められます。
信号には様々な角周波数が含まれているので、波形の歪みを引き起こさないためには、様々な信号が角周波数によらず一定時間だけ等しく遅れる必要があります。  
簡単のため、単一角周波数の信号について見てみましょう。

$$
\cos \{\omega t + \varphi (\omega)\} 
= \cos \left\{ \omega \left( t + \frac{\varphi (\omega)}{\omega} \right) \right\} 
= \cos \{\omega (t - \tau)\} \tag{51}
$$

したがって、波形の歪みを引き起こさない理想的なフィルターでは $$\tau$$ が一定である必要があります。
そしてそのためには

$$
\varphi(\omega) 
= -\omega \tau \tag{52}
$$

のように、位相 $$\varphi (\omega)$$ が角周波数 $$\omega$$ に比例する形であれば、角周波数に依存せず一定の時間遅れを生じるだけで、波形の歪みは発生しません。
そこでフィルター回路では、次の量を群遅延 (group delay)として定義します。

$$
\tau_g 
= - \frac{d\varphi}{d\omega} \tag{53}
$$

この $$\tau_g$$ が一定であるかを評価することで、波形に歪みが生じるかどうかを判断することができます。

### ベッセルフィルター

この群遅延の考え方から、ここでは位相を一定に保つことで波形を歪ませないように設計された、ベッセルフィルターについて見ていきましょう。
入力波形 $$x(t)$$ を歪ませることなく、そのまま時間 $$\tau_0$$ だけ遅らせて出力するフィルターがあるとしましょう。
すなわち出力が $$y(t) = x(t- \tau_0)$$ の形で書かれるとします。
[ラプラス変換の時間並進則](/math/laplace_transform#eat-ft)より、この系の[伝達関数](/circuits/transfer_function)は

$$
G_\mathrm{ideal} (s) 
= e^{-s\tau_0} \tag{54}
$$

のようになります。
$$s = i\omega$$ とすると $$\vert G_\mathrm{ideal} \vert = 1$$ であり、位相も $$\varphi = \mathrm{arg}(G_\mathrm{ideal}(i\omega)) = - \omega \tau_0$$ となることが確認できます。
そこで $$e^{s}$$ の形に着目し

$$
e^s 
= \cosh s + \sinh s \ \Longrightarrow \ 
e^{-s} 
= \frac{1}{\cosh s + \sinh s} 
= \frac{1}{\sinh s} \frac{1}{1 + \coth s} \tag{55}
$$

を $$s$$ で近似してみましょう。
半整数次の修正ベッセル関数より

$$
I_{1/2} (s) 
= \sqrt{\frac{2}{\pi s}} \sinh s, \quad I_{-1/2} (s) 
= \sqrt{\frac{2}{\pi s}} \cosh s \tag{56}
$$

であり、これらは修正ベッセル関数の漸化式

$$
I_{\nu - 1} (s) - I_{\nu + 1} (s) 
= \frac{2\nu}{s} I_\nu (s) \tag{57}
$$

を満たします。
$$\nu = k + \frac{1}{2}$$ とおきましょう。
さらに $$r_k = I_{k+1/2} / I_{k-1/2}$$ のように比を定義すると、(57)式から

$$
I_{k - 1/2}- I_{k + 3/2} 
= \frac{2k + 1}{s} I_{k + 1/2} \ \Longrightarrow \ 
\frac{1}{r_k} - r_{k+1} 
= \frac{2k+1}{s} \ \Longrightarrow \ r_k 
= \frac{1}{\frac{2k+1}{s} + r_{k+1}} \tag{58}
$$

を得ます。
$$k=0$$ のとき

$$
r_0 
= \frac{I_{1/2}}{I_{-1/2}} 
= \frac{1}{\coth s} \tag{59}
$$

ですが、(58)式から

$$
\frac{1}{r_0} 
= \coth s
= \frac{1}{s} + r_1 \tag{60}
$$

のようにも書けます。
同様に

$$
r_1 
= \frac{1}{\frac{3}{s} + r_2}, \quad r_2 
= \frac{1}{\frac{5}{s} + r_3}, \dots \tag{61}
$$

のように書けることから

$$
\coth s 
= \frac{1}{s} + \frac{1}{\frac{3}{s} + \frac{1}{\frac{5}{s} + \frac{1}{\ddots}}} \tag{62}
$$

と求まります。
$$s \ll 1$$ では $$r_n \approx \frac{s}{2n+1}$$ のように近似できるため、$$n$$ 段目で $$r_n \sim 0$$ として展開を打ち切ることで、必要な精度を達成することができるとわかります。
そこで (62) 式において、$$\coth s \approx E_n (s) / O_n (s)$$ のように、分子と分母をそれぞれ $$s$$ の $$n$$ 次までで近似すると

$$
G_n (s) 
= \frac{\theta_n(0)}{\theta_n(s)}, \quad \theta_n(s) 
= E_n(s) + O_n(s) \tag{63}
$$

のように書くことができます。
ここで $$\theta_n (s)$$ を逆ベッセル多項式と呼びます。
また (63) 式は $$G(0) = 1$$ で規格化されています。  

{: .note}
この規格化では群遅延が $$\tau_g(0) = 1$$ となるようにされており、バターワースやチェビシェフのときの $$\omega = \omega_0$$ で -3 dB となる場合とは異なります。
図表を用いて比較する際、そのままではスケールが揃わないことに注意が必要です。

具体例として、連分数展開を $$n = 2$$ で止めた場合を求めてみましょう。

$$
\begin{align}
&\coth s 
= \frac{1}{s} + \frac{s}{3} + \mathcal{O}(s^3) 
\approx \frac{s^2 + 3}{3s} \notag \\
&\Longrightarrow \ 
E_2 
= s^2 + 3, \quad O_2 = 3s, \quad \theta_2 
= s^2 + 3s + 3 \tag{64}
\end{align}
$$

$$n = 1, 2, ..., 5$$ をまとめると、下表のようになります。

|$$n$$|$$\theta_n$$|
|:--|:--|
|1|s + 1|
|2|s^2 + 3s + 3|
|3|s^3 + 6s^2 + 15s + 15|
|4|s^4 + 10 s^3 + 45 s^2 + 105s + 105|
|5|s^5 + 15s^4 + 105 s^3 + 420 s^2 + 945s + 945|

そして、$$n=2$$ の場合の群遅延を求めてみましょう。

$$
\begin{align}
&G_2(i\omega) 
= \frac{3}{(i\omega)^2 + 3i\omega + 3} 
= \frac{3}{3-\omega^2 + 3i\omega} 
= 3 \frac{(3-\omega^2) - 3 i \omega}{(3-\omega^2)^2 + 9\omega^2} \notag \\
&\Longrightarrow \ 
\phi_2(\omega) 
= - \tan^{-1} \frac{3\omega}{3-\omega^2} \tag{65}
\end{align}
$$

のようになります。
$$u = \frac{3\omega}{3-\omega^2}$$ とおくと

$$
\frac{du}{d\omega} 
= \frac{3 (3-\omega^2) - 3\omega (-2\omega)}{(3-\omega^2)^2} 
= \frac{9 + 3\omega^2}{(3-\omega^2)^2} \tag{66}
$$

$$
1 + u^2 
= 1 + \frac{9\omega^2}{(3-\omega^2)^2} 
= \frac{9\omega^2 + 9 - 6 \omega^2 + \omega^4}{(3-\omega^2)^2} 
= \frac{\omega^4 + 3\omega^2 + 9}{(3-\omega^2)^2} \tag{67}
$$

より、群遅延は

$$
\begin{align}
\tau_g (\omega)
&= - \frac{d\varphi}{d\omega} 
= - \frac{du}{d\omega} \frac{d\varphi}{du} 
= \frac{9 + 3\omega^2}{(3-\omega^2)^2} \frac{1}{1+u^2} 
= \frac{9 + 3\omega^2}{\omega^4 + 3 \omega^2 + 9} \notag \\
&= 1 - \frac{\omega^4}{\omega^4 + 3\omega^2 + 9} 
= 1 - \frac{\omega^4}{9} + \mathcal{O} (\omega^6) \tag{68}
\end{align}
$$

のように整理できます。
$$\omega^2$$ の項が消えていることがわかります。
証明は省略しますが、一般の $$n$$ では

$$
\tau_g (\omega) 
= 1 - \frac{\omega^{2n}}{\vert \theta_n(i\omega) \vert^2} 
= 1 - \frac{\omega^{2n}}{\vert (2n-1) !! \vert^2} + \mathcal{O}(\omega^{2n+2}) \tag{69}
$$

が成り立ちます。
$$n$$ を大きくすることで定数項である1が、広い $$\omega$$ の範囲で維持されることがわかります。
透過帯域の平坦性を追求したバターワースフィルターに対し、このベッセルフィルターは群遅延の平坦性を最適化した形になっていることがわかります。  
ベッセルフィルターは、波形の忠実さ・正確さが求められる場面で用いられます。
具体的には、オシロスコープのアナログフロントエンドや、デジタル通信のパルス整形、そして時間軸で見たときの波形そのものが意味を持つパルサー観測や突発天体探査のアンチエイリアシングフィルターなどで活躍しています。

{% include adsense.html %}

### 極の位置の比較

最後に、バターワース・チェビシェフ・ベッセルの各フィルターの、極の位置を比較してみましょう。
簡単のため、ここでは $$n = 2$$ に統一して比較を行います。
[バターワースフィルター](/circuits/filters#バターワースフィルター)では、その極は円周上に配置されるのでした。
具体的には、(36)式より

$$
s 
= \omega_0 e^{i\pi \left( \frac{1}{2} + \frac{1}{4} \right)} 
= \omega_0 e^{i\frac{3}{4}\pi} \tag{70}
$$

のようになります。
3つのフィルターを比較するために、時間とともに振動がどのように減少するかを表す減衰比 (または制動比) を用いることにしましょう。
これは

$$
\zeta 
= \vert \cos (\mathrm{arg} (s)) \vert
= \frac{\vert \mathrm{Re}(s) \vert }{\vert s \vert} \tag{71}
$$

のように定義され、複素数平面上でどれだけ虚数軸から遠いかを表します。
例えば純虚数 (虚数軸上) $$s = i\omega$$ の場合、$$e^{st} = e^{i\omega t}$$ から、振動が減衰せずにずっと続くことがわかります。
虚数軸から離れると減衰振動 (リンギング) となりますが、虚数軸から離れるほど、減衰が早くなります。
このことから、$$\zeta$$ が系の安定性の目安になることがわかります。
(71)式の場合

$$
\zeta_\mathrm{Bu} 
= \left\vert \cos \frac{3}{4} \pi \right\vert
= \frac{1}{\sqrt{2}} 
\sim 0.7 \tag{72}
$$

次に[チェビシェフフィルター](/circuits/filters#チェビシェフフィルター)では、(49)式より

$$
\begin{align}
&s 
= - \sinh \mu \sin \frac{\pi}{4} + i \cosh \mu \cos \frac{\pi}{4} 
= - \frac{\sinh \mu}{\sqrt{2}} + i \frac{\cosh \mu}{\sqrt{2}} \notag \\
&\Longrightarrow \ 
\zeta_\mathrm{Ch} 
= \frac{\sinh \mu}{\sqrt{\sinh^2 \mu + \cosh^2 \mu}} \tag{73}
\end{align}
$$

ここで $$\mu = \frac{\sinh^{-1} \left( \frac{1}{\epsilon} \right)}{2}$$ であり、$$\epsilon \rightarrow 0$$ では $$\zeta_\mathrm{Ch} \sim 0.7$$ のように、バターワースフィルターに一致します。
(40)式から、リップルの振幅が $$A = 1 \mathrm{dB}$$ のとき $$\epsilon \sim 0.51, \mu \sim 0.71$$ となり、最終的に $$\zeta_\mathrm{Ch} \sim 0.52$$ を得ます。  
最後にベッセルフィルターです。
(64)式より

$$
\begin{align}
s^2 + 3s + 3 
= 0 
&\Longrightarrow \ s 
= \frac{-3 \pm \sqrt{9 - 12}}{2} 
= \frac{-3 \pm i \sqrt{3}}{2} \notag \\
&\Longrightarrow \ 
\zeta_\mathrm{Be} 
= \left\vert \cos \mathrm{arg} \left( \frac{-3 \pm i \sqrt{3}}{2} \right) \right\vert 
\sim 0.87 \tag{74}
\end{align}
$$

これらのことから $$\zeta_\mathrm{Ch} < \zeta_\mathrm{Bu} < \zeta_\mathrm{Be}$$ とわかります。
$$\zeta$$ の値が小さなチェビシェフフィルターは、虚数軸に近いことを表しており、これは透過しない帯域での減衰は急峻ですが波形が歪んでしまうことを意味します。
それに対し $$\zeta$$ の値が大きなベッセルフィルターは、虚数軸から遠いためリンギングが少なく、波形を保ったままフィルターを通過することができると考えられます。
フィルター設計においては、複素数平面上において極をどの位置に配置するかが重要な鍵となります。  
最後に、これら3つをまとめた表を示します。

| |チェビシェフ|バターワース|ベッセル|
|:--|:--|:--|:--|
|目標|遮断の急峻さ|透過振幅の平坦さ|群遅延の平坦さ|
|極の位置|楕円上|円周上|どちらにも乗らない|
|$$\zeta \ (n=2)$$|$$\sim 0.52$$|$$\sim 0.71$$|$$\sim 0.87$$|

## 補遺A: チェビシェフ多項式の定義域の拡張

チェビシェフ多項式の定義は

$$
T_n(x) 
= \cos (n \cos^{-1} x) \quad (\vert x \vert \leq 1) \tag{A.1}
$$

でした。
しかし[チェビシェフフィルター](/circuits/filters#チェビシェフフィルター)では、$$T_n(\omega / \omega_0)$$ のように、$$\omega / \omega_0 > 1$$ の場合にも値を計算する必要があります。
そこで解析接続を用い、$$\vert x \vert > 1$$ の場合にも定義を拡張しましょう。  
$$\vert x \vert > 1$$ に対し、$$\cos^{-1} x$$ を複素数として扱うことにします。
また $$x>1$$ として、$$x = \cosh t \ (t>0)$$ のように媒介変数を用いて表すことにすると

$$
\cos (it) 
= \cosh t \ \Longrightarrow \ 
\cos^{-1} (\cosh t) 
= it \tag{A.2}
$$

より

$$
T_n (\cosh t) 
= \cos (n \cos^{-1} (\cosh t)) 
= \cos (n \cos^{-1} (cos (it))) 
= \cos (int) 
= \cosh (nt) \tag{A.3}
$$

を得ます。
$$t = \cosh^{-1} x$$ が成り立つので

$$
T_n(x) 
= \cosh(n \cosh^{-1} x) \quad (x > 1) \tag{A.4}
$$

のようになります。
同様に $$x < -1$$ の場合には、$$x = -\cosh t \ (t>0)$$ のように置きます。

$$
\cos (\pi + it) 
= - \cos (it) 
= - \cosh t \tag{A.5}
$$

$$
\begin{align}
T_n (-\cosh t) 
&= \cos (n \cos^{-1} (-\cosh t)) 
= \cos (n \cos^{-1} (\cos (\pi + it))) \notag \\
&= \cos (n (\pi + it)) 
= \cos (n\pi) \cos(int) - \sin(n\pi) \sin (int) \notag \\
&= \cos (n\pi) \cosh(nt) 
= (-1)^n \cosh (n \cosh^{-1}(-x)) \tag{A.6}
\end{align}
$$

のようになります。
まとめると、定義域ごとのチェビシェフ多項式は次のようになります。

$$
T_n(x) 
= \left\{ \begin{array}{ll}
(-1)^n \cosh (n \cosh^{-1} (-x)) & (x < -1) \\
\cos(n \cos^{-1} x) & (\vert x \vert \leq 1) \\
\cosh (n \cosh^{-1} x) & (x > 1)
\end{array} \right. \tag{A.7}
$$

のようになります。
これらは[チェビシェフ多項式が満たす漸化式 $$T_{n+1} (x) + T_{n-1} (x) = 2x T_n(x)$$](/math/chebyshev) を満たします (証明は省略します)。

## 参考文献

[1] [霜田光一, 桜井 捷海, "エレクトロニクスの基礎"](https://amzn.to/4wAOuib)  
[2] [松澤昭, "新しい電気回路 下"](https://amzn.to/4hcJUkO)  
[3] [松澤昭, "はじめてのアナログ電子回路 実用回路編"](https://amzn.to/4h7cYKw)  
[4] [森口繁一,  宇田川銈久, 一松信, "岩波 数学公式3 特殊函数"](https://amzn.to/4fgyyd7)  
[5] [Wolfram MathWorld, "Bessel Polynomial"](https://mathworld.wolfram.com/BesselPolynomial.html)  

{% include adsense.html %}