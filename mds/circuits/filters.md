---
layout: default
title: フィルター
parent: 電気回路
math: mathjax3
permalink: /circuits/filters
nav_order: 15
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
= \frac{R}{-\omega L} 
= - \frac{\omega_0}{\omega} \tag{5}
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

## 移相器

普通のフィルターは周波数によって振幅を変化させます。
しかし振幅は変化させず、位相だけを変化させるフィルターも存在します。
これを移相器 (phase shifter) と呼びます。
例として、次の回路図のようなものがあります。

![](/assets/images/circuits/filters_09.png)  

出力電流が流れないとき、$$R'$$ と $$C$$ を流れる電流は等しいため、$$R'$$ と $$C$$ の両端の電圧は $$\pi / 2$$ の位相差を持つことになります。
そこで、端子 1'-2' 間の交流電圧ベクトルと 2'-1 間の交流電圧ベクトルは直交します。
これらを図示すると、次のようになります。

![](/assets/images/circuits/filters_10.png)  

$$R'$$ をゼロから次第に大きくしていくと、このベクトル図で端子 2' の電圧を示す点は 1-1' を直径とする演習に沿って、矢印の向きに移動します。
したがって出力の振幅は一定のまま、位相が入力に対してゼロから $$\pi$$ 近くまで変化させることができます。
$$R' = \frac{1}{\omega C}$$ のとき、位相差は $$\pi / 2$$ となります。

## その他フィルター

工事中...バターワース・チェビシェフ・ベッセルフィルターなどを追記予定。

## 参考文献

[1] [霜田光一, 桜井 捷海, "エレクトロニクスの基礎"](https://amzn.to/4wAOuib)  
[2] [松澤昭, "はじめてのアナログ電子回路 基本回路編"](https://amzn.to/4eI1r2T)  

{% include adsense.html %}