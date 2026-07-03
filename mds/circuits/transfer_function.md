---
layout: default
title: 伝達関数
parent: 電気回路
math: mathjax3
permalink: /circuits/transfer_function
nav_order: 13
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

# 伝達関数

[ラプラス変換](/math/laplace_transform)を基礎として、ここでは伝達関数について勉強したことをメモしていきます。

## 伝達関数の定義と基礎

物理的な[線形システム](/circuits/linear_system)では、その入力 $$x(t)$$ とその結果生じる出力 $$y(t)$$ との関係は、ある1つの微積分方程式で表されます。
そこで、伝達関数 (transfer function) $$G(s)$$ は系の入出力の関係を記述する微積分方程式を、[ラプラス変換](/math/laplace_transform)することにより与えられます。
すなわち伝達関数は、出力信号の[ラプラス変換](/math/laplace_transform) $$Y(s)$$ と入力信号の[ラプラス変換](/math/laplace_transform) $$X(s)$$ との比

$$
G(s) 
= \frac{Y(s)}{X(s)} \tag{1}
$$

により定義されます。
伝達関数は多くの場合、次のような有理式で表されます。

$$
G(s) 
= \frac{b_m s^m + b_{m-1} s^{m-1} + \cdots + b_0}{a_n s^n + a_{n-1} s^{n-1} + \cdots + a_0} \tag{2}
$$

系の伝達関数がわかれば、入力信号の[ラプラス変換](/math/laplace_transform) $$X(s)$$ に対する出力信号の[ラプラス変換](/math/laplace_transform) $$Y(s)$$ に対する出力信号の[ラプラス変換](/math/laplace_transform) が $$Y(s) = G(s) X(s)$$ として求められます。
よって出力信号の時間的変化 $$y(t)$$ は、その[逆ラプラス変換](/math/laplace_transform#ラプラス逆変換)により

$$
y(t) 
= \mathcal{L}^{-1} [Y(s)] 
= \mathcal{L}^{-1} [G(s) X(s)] \tag{3}
$$

のように求めることができます。  
例えば、[線形システムの周波数応答と同じCR回路](/circuits/linear_system#具体例-cr回路)について考えてみましょう。
入力 $$x(t)$$ の[ラプラス変換](/math/laplace_transform) $$X(s)$$ に対しては

$$
\frac{dx}{dt} 
= \frac{y}{RC} + \frac{dy}{dt} \ \underbrace{\Longrightarrow}_{ラプラス変換} \ 
s X(s) - x(0) 
= \frac{Y(s)}{RC} + s Y(s) - y(0) \tag{4}
$$

のようになります。
初期に $$x(0) = y(0) = 0$$ とすれば、この系の伝達関数が

$$
G(s) 
= \frac{Y(s)}{X(s)} 
= \frac{sRC}{1+sRC} \tag{5}
$$

と求まります。
(3)式を用いることで、出力 $$y(t)$$ が計算できます。  
特に入力信号がデルタ関数の場合、その[ラプラス変換](/math/laplace_transform)は

$$
X(s) 
= \mathcal{L}[x(t)] 
= \mathcal{L}_- [\delta(t)] 
= 1 \tag{6}
$$

です。
したがって、出力の[ラプラス変換](/math/laplace_transform)は

$$
Y(s) 
= G(s) X(s) 
= G(s) \tag{7}
$$

となります。
すると、デルタ関数入力に対する出力の時間変化と伝達関数の間に

$$
g(t) 
= \mathcal{L}^{-1} [G(s)] \ \Longrightarrow \ 
G(s) 
= \mathcal{L} [g(t)] \tag{8}
$$

のような関係があるとわかります。
すなわち、デルタ関数に対する応答を (例えば実験的に) 知ることができれば、その[ラプラス変換](/math/laplace_transform)により $$G(s)$$ を求めることができます。

## 線形システムの安定性

伝達関数 $$G(s)$$ が(2)式のような形で表されるとき、$$G(s)$$ の極 (pole) を $$s_i \ (i = 1, 2, \dots, n)$$ としましょう。
この系のパルス応答 $$g(t)$$ は、$$t>0$$ で

$$
g(t) 
= \sum_{i=1}^n \mathrm{Res}_i e^{s_i t} \tag{9}
$$

で与えられます。
ただし $$\mathrm{Res}_i$$ は、極 $$s_i$$ の留数 (residue) を表します。  
一般に、(2)式の極 $$s_i$$ が $$\ell$$ 重の多重極のときには、$$s_i = s_{i+1} = \cdots = s_{i+\ell-1}$$ のように書くと、(2)式は

$$
G(s) 
= \frac{b_m s^m + b_{m-1} s^{m-1} + \cdots + b_0}{(s-s_1)(s-s_2) \cdots (s-s_n)} \tag{10}
$$

のように表すことができます。
1重の極の留数 $$\mathrm{Res}_i$$ は

$$
\mathrm{Res}_i 
= [(s-s_i) G(s)]_{s=s_i} \tag{11}
$$

のように与えられます。
そして $$\ell$$ 重の極では

$$
\mathrm{Res}_i 
= \frac{1}{(\ell-1)!} \frac{d^{\ell-1}}{ds^{\ell-1}} [(s-s_i)^\ell G(s)]_{s=s_i} \tag{12}
$$

となります。  
このようにして、ある系のパルス応答 $$g(t)$$ が(9)式で表されるため、その右辺が時間的にどのように変化するかを調べることで、系の安定性を判定することができます。
極 $$s_i$$ の実部を $$\sigma_i$$、そして虚部を $$\omega_i$$ とすれば、(9)式の右辺は

$$
e^{s_i t} 
= \exp (\sigma_i t + i \omega_i t) \tag{13}
$$

のようになります。
$$\sigma_i > 0$$ ならば発散し、$$\sigma_i = 0$$ ならば定常的な振動、$$\sigma_i < 0$$ ならば安定な応答を示します。
極の位置と応答波形の関係を、次図に示します。

![](/assets/images/circuits/transfer_function_01.png)  

そこで、ある線形システムの伝達関数の全ての極 $$s_i$$ の実部が負 ($$u=1, 2, \dots, n$$ で $$\sigma_i < 0$$) のときのみ、パルス入力に対する応答が減衰し、安定となります。  
これは電子回路の解析や設計をするのに、極めて重要な関数です。
例えば、安定な増幅器にフィードバックをつけて発振器にする場合を考えましょう。
これは $$G(s)$$ の実部が負だった極 $$s_i$$ の中の1つが正となるように、フォードバックで $$G(s)$$ を変えることに相当します。
また不安定な増幅器では極の実部が正であるため、これに適当なフィードバックをつけて $$G(s)$$ を変化させ、その極の実部が負になるようにすることで、増幅器を安定化させることができます。

{% include adsense.html %}

## 周波数応答

周波数応答については[線形システムの応答](/circuits/linear_system#周波数応答)部分でも触れましたが、ここでは[ラプラス変換](/math/laplace_transform)の見地から周波数応答について述べることにしましょう。
ある線形システムに $$t=0$$ から $$x(t) = e^{i\omega t}$$ の入力を加えたとします。
$$e^{i\omega t}$$ の[ラプラス変換](/math/laplace_transform)より

$$
X(s) 
= \frac{1}{s-i\omega} \tag{14}
$$

です。
この系の伝達関数を $$G(s)$$ とすると、出力は

$$
Y(s) 
= G(s) X(x) 
= \frac{G(s)}{s-i\omega} \ \Longrightarrow \ 
y(t) 
= \mathcal{L}^{-1} \left[ \frac{G(s)}{s-i\omega}\right] \tag{15}
$$

のように与えられます。
$$X(s)$$ の極が $$s = i\omega$$ にあるので、(9)式より

$$
y(t) 
= \sum_{i=1}^n \frac{\mathrm{Res}_i}{s_i - i\omega} e^{s_i t} + G(i\omega) e^{i\omega t} \tag{16}
$$

となります。  
安定なシステムでは、前述のように $$\mathrm{Re}(s_i)<0$$ であるから、時間が経つに連れて第一項はゼロになります。
すなわち、定常状態で入力周波数 $$\omega$$ に対する出力は $$G(i\omega)$$ となります。
したがって、ラプラス変換の伝達関数 $$G(s)$$ で $$s = i\omega$$ とおいたものが、[正弦波入力に対する周波数応答](/circuits/linear_system#周波数応答)を与え、[フーリエ変換](/math/fourier_transform)の周波数応答関数と同等になります。

### 具体例: CR回路とRC回路

実際、周波数応答の部分と同様に[CR回路](/circuits/linear_system#具体例-cr回路)を考えてみましょう。
入力電圧を $$V_\mathrm{in} = x(t)$$、出力電圧を $$V_\mathrm{out} = y(t)$$ とすると、この回路の入出力を関係づける微分方程式は

$$
\frac{dx}{dt} 
= \frac{y}{RC} + \frac{dy}{dt} \tag{17}
$$

のようになるのでした。
両辺を[ラプラス変換](/math/laplace_transform)すると

$$
s X(s) - x(0) 
= \frac{Y(s)}{RC} + s Y(s) - y(0) \tag{18}
$$

初期条件として $$x(0) = y(0) = 0$$ とすると

$$
Y(s) 
= \frac{s RC}{1 + s RC} X(s) \ \Longrightarrow \ 
G(s) 
= \frac{s RC}{1 + s RC} \tag{19}
$$

のようになり、$$s = i\omega$$ を代入すれば、[フーリエ変換により求めた周波数応答](/circuits/linear_system#具体例-cr回路)と同じものを得ることができます。
(19)式の極は $$s = -\frac{1}{RC}$$ です。
先ほど[線形システムの安定性](/circuits/transfer_function#線形システムの安定性)の部分で議論したように、極の実部が負であることから、これは安定なシステムであることがわかります。  
線形システムの応答部分で少し触れたように、CとRを入れ替えた次の回路はローパスフィルターとなります。
この伝達関数を求めてみましょう。

![](/assets/images/circuits/transfer_function_02.png)  

この回路においても、先ほどのように微分方程式を立てます。
[キルヒホッフの電圧則](/circuits/steady_current#定常電流電気回路とキルヒホッフの法則)より

$$
V_\mathrm{in} - RI - V_\mathrm{out} 
= 0 \tag{20}
$$

コンデンサー部分では

$$
V_\mathrm{out} 
= \frac{1}{C} \int I dt \ \Longrightarrow \ 
I 
= C \frac{dV_\mathrm{out}}{dt} \tag{21}
$$

より、$$V_\mathrm{in} = x(t), V_\mathrm{out} = y(t)$$ とすれば

$$
x(t) 
= RC \frac{dy}{dt} + y(t) \tag{22}
$$

となります。
これを[ラプラス変換](/math/laplace_transform)し、先ほどと同様に初期条件として $$x(0) = y(0) = 0$$ とすれば

$$
X(s) 
= RC (s Y(s) - y(0)) + Y(s) \ \Longrightarrow \ 
Y(s) 
= \frac{1}{1 + s RC} X(s) \tag{23}
$$

のように、伝達関数が $$G(s) = \frac{1}{1 + s RC}$$ と求まります。
したがって、この場合に $$\vert G(i\omega) \vert$$ と $$\mathrm{arg} [G(i\omega)]$$ を描画したボーデ図は、次のようになります。

![](/assets/images/circuits/transfer_function_03.png)  

低周波領域では減衰がなく、また位相の遅れもないことがわかります。

### 具体例2: 極を2つ持つ回路

次のような回路について考えてみましょう。

![](/assets/images/circuits/transfer_function_04.png)  

キルヒホッフの電圧則より

$$
V_\mathrm{in} - L \frac{dI}{dt} - V_\mathrm{out} 
= 0 \tag{24}
$$

並列接続より

$$
V_\mathrm{out} 
= RI_1 
= \frac{1}{C} \int I_2 dt \tag{25}
$$

であり、電流は

$$
I 
= I_1 + I_2 \tag{26}
$$

を満たします。
以上より

$$
\begin{align}
V_\mathrm{in} - L \frac{d}{dt} (I_1 + I_2) - V_\mathrm{out} 
&= V_\mathrm{in} - L \frac{d}{dt} \left( \frac{V_\mathrm{out}}{R} + C \frac{dV_\mathrm{out}}{dt} \right) - V_\mathrm{out} \notag \\
&= V_\mathrm{in} - \frac{L}{R} \frac{dV_\mathrm{out}}{dt} - LC \frac{d^2V_\mathrm{out}}{dt^2} - V_\mathrm{out} 
= 0 \tag{27}
\end{align}
$$

のような微分方程式を得ます。
$$V_\mathrm{in} = x(t), V_\mathrm{out} = y(t)$$ として、[ラプラス変換](/math/laplace_transform)を施すと

$$
X(s) 
= \frac{L}{R} (s Y(s) - y(0)) + LC (s^2 Y(s) - s y(0) - y'(0)) + Y(s) \tag{28}
$$

のようになります。
$$y(0) = y'(0) = 0$$ とすれば

$$
\begin{align}
&X(s) 
= \left(LC s^2 + \frac{L}{R} s + 1 \right) Y(s) \notag \\
&\Longrightarrow \ 
G(s) 
= \frac{Y(s)}{X(s)} 
= \frac{1}{s^2 + 2 \zeta \omega_0 s + \omega_0^2} \quad \left( \omega_0^2 = \frac{1}{LC}, \zeta = \frac{1}{2R} \sqrt{\frac{L}{C}} \right) \tag{29}
\end{align}
$$

のようになります (途中、両辺を定数 $$LC$$ で割ることで、規格化を行いました。)
$$s = i\omega$$ とした周波数応答の振幅と位相差は、$$x \equiv \omega / \omega_0$$ とおくと

$$
G(i\omega) 
= \frac{1}{-\omega^2 + 2 i \zeta \omega_0 \omega + \omega_0^2} \ \Longrightarrow \ 
\left\{ \begin{array}{l}
\displaystyle{\vert G(i\omega) \vert 
= \frac{1}{\sqrt{(1-x^2)^2 + 4\zeta^2 x^2}}} \\
\displaystyle{\mathrm{arg}[G(i\omega)] 
= - \tan^{-1} \left( \frac{2\zeta x}{1-x^2}\right)}
\end{array} \right.\tag{30}
$$

のようになります。
$$\zeta = 0.01, 0.2, 0.5, 1.0$$ のように変化させた場合のボーデ図を、次に示します。

![](/assets/images/circuits/transfer_function_05.png)  

これは低周波では減衰が起こらない、ローパスフィルターです。
ただし $$\zeta < 1/\sqrt{2}$$ では $$\omega \sim \omega_0$$ で共振が生じる、共振型ローパスフィルターです。

{% include adsense.html %}

## 伝達関数を用いた解法

ここからは伝達関数を用い、回路の出力を求める例題を見ていきましょう。

### 具体例1: ローパスフィルターにおける過渡的出力

先ほどのRC回路に、$$t=0$$ から $$V_0 \cos \omega t$$ (または $$V_0 \sin \omega t$$) を加えた場合の出力を、ラプラス変換で求めてみましょう。
$$G(s)$$ は(23)式で与えられるとします。
するとその極は $$s_1 = -\frac{1}{RC}$$ であり、留数は $$\mathrm{Res}_1 = \frac{1}{RC}$$ となるため、(9)式より

$$
g(t) 
= \frac{1}{RC} e^{-\frac{t}{RC}} \tag{31}
$$

となります。
よって、入力 $$e^{i\omega t}$$ に対する出力を[ラプラス変換](/math/laplace_transform)したものは

$$
Y(s) 
= G(s) X(s) 
= \frac{1}{1+sRC} \frac{1}{s-i\omega} \tag{32}
$$

のように求まります。
$$Y(s)$$ の極は $$s_1 = i\omega, s_2 = - \frac{1}{RC}$$ であり、それぞれの留数は

$$
\mathrm{Res}_1 
= \frac{1}{1+i\omega RC}, \quad \mathrm{Res}_2 
= - \frac{1}{1+i\omega RC} \tag{33}
$$

です。
そこで(9)式を用いると

$$
y(t) 
= \frac{1}{1+i\omega RC} e^{i\omega t} - \frac{1}{1+i\omega RC} e^{-\frac{t}{RC}} \tag{34}
$$

が得られます。
(34)式の実部を取ることで、入力が $$V_0 \cos \omega t$$ のときの出力は

$$
y(t) 
= \frac{V_0}{1+\omega^2 R^2 C^2} (\cos \omega t + \omega RC \sin \omega t - e^{-\frac{t}{RC}}) \tag{35} 
$$

となります。
また入力が $$V_0 \sin \omega t$$ のときの出力は

$$
y(t) 
= \frac{V_0}{1+\omega^2 R^2 C^2} \{ \sin \omega t - \omega RC ( \cos \omega t - e^{-\frac{t}{RC}}) \} \tag{36} 
$$

のようになります。
最後の2つの式において、右辺第三項が過渡現象を表し、第二項が位相の遅れた成分を示しています。

### 具体例2: ローパスフィルターに階段関数パルスを入力した場合

先ほどと同じRC回路に、今度は[階段関数](/math/laplace_transform#ヘヴィサイドの階段関数)パルス $$x(t) = \Theta (t)$$ を加えたときの出力を求めてみましょう。
$$\Theta (t)$$ の[ラプラス変換](/math/laplace_transform#ヘヴィサイドの階段関数)より

$$
Y(s) 
= \frac{1}{1+sRC} \frac{1}{s} \tag{37}
$$

となります。
$$Y(s)$$ の極は $$s_1 = 0, s_2 = - \frac{1}{RC}$$ であり、その留数は $$\mathrm{Res}_1 = 1, \mathrm{Res}_2 = -1$$ となります。
よってこの出力は

$$
y(t) 
= 1 - e^{-\frac{t}{RC}} \tag{38}
$$

のようになります。

## 補遺: $$\tan^{-1}$$ の描画についてとボーデ図作成のJuliaスクリプト

(30)式の描画では、$$\tan^{-1}$$ (プログラミング言語の`atan`関数) の計算が必要になります。
`atan`の値域は $$(-\pi/2, \pi/2)$$ です。
しかし、$$x > 1$$ (すなわち $$\omega > \omega_0$$) のとき、分母が負になります。
すると本来の偏角は $$-\pi < \mathrm{arg} (G) < -\pi / 2$$ になるはずですが、`atan`関数は値域の制約から $$0 \leq \mathrm{arg} (G) \leq \pi / 2$$ の値を返します。  
そこで単なる`atan`ではなく、$$\mathrm{atan2}(y, x)$$ を用いることにしましょう。
ここで $$x, y$$ はそれぞれ複素数の実部と虚部 (すなわち $$x + iy$$) であり、このときの偏角 $$\theta$$ は $$- \pi \leq \theta \leq \pi$$ の範囲をとります。
これを用いたJulia言語スクリプトは、次のようになります。

```julia
using LaTeXStrings
using Plots
gr()


function calc_transfer_function(zeta, xs)
    absG = 1.0 ./ sqrt.((1.0 .- xs .^ 2) .^ 2 .+ 4.0 .* zeta ^ 2 .* xs .^ 2)
    argG = - atan.(2.0 .* zeta .* xs, 1.0 .- xs .^ 2)
    return absG, rad2deg.(argG)
end

len_x = 512
xmax = 10.0
xmin = 0.1
xs = logrange(xmin, xmax, length=len_x)
zetas = [0.01, 0.2, 0.5, 1.0]
n_zetas = length(zetas)
color_list = reshape(range(colorant"deepskyblue", stop=colorant"orange", length=n_zetas), 1, n_zetas);
p1 = plot()
p2 = plot()
for n in 1:n_zetas
    absG, argG = calc_transfer_function(zetas[n], xs)
    dB_G = 20 .* log10.(absG)
    plot!(p1, xs, dB_G, linecolor=color_list[n], xlim=[xmin, xmax], linewidth=3, legend=:topright, xlabel=L"\omega / \omega_0", ylabel=L"\vert G \vert \ (\mathrm{dB})", label=L"\zeta="*string(zetas[n]), xscale=:log10, left_margin=5Plots.mm)
    plot!(p2, xs, argG, linecolor=color_list[n], xlim=[xmin, xmax], linewidth=3, legend=:topright, xlabel=L"\omega / \omega_0", ylabel=L"\mathrm{arg}(G) \ (\mathrm{degree})", label=L"\zeta="*string(zetas[n]), xscale=:log10, left_margin=5Plots.mm)
end
plt = plot(p1, p2, layout=(2, 1), size=(500, 700))
savefig(plt, "bode_diagram_LRC.png")
```

{: .note}
もっと良いJuliaの書き方があったら、ぜひご教示ください m(-_-)m

## 参考文献

[1] [霜田光一, 桜井 捷海, "エレクトロニクスの基礎"](https://amzn.to/4wAOuib)  
[2] [松澤昭, "新しい電気回路 上"](https://amzn.to/44ozUxv)  

{% include adsense.html %}