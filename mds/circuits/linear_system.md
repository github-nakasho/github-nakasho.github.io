---
layout: default
title: 線形システムの応答
parent: 電気回路
math: mathjax3
permalink: /circuits/linear_system
nav_order: 12
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

# 線形システムの応答

1つの入力端子を持つブラックボックスについて考えましょう。

![](/assets/images/circuits/linear_system_01.png)  

ある1つの入力 $$x_i (t)$$ に対して、出力が $$y_i(t)$$ で表されるとします。
この系に対して、$$i=1, 2, \dots, n$$ の $$n$$ 個の $$x_i(t)$$ を重ね合わせた入力 $$x(t) = \sum_{i=1}^n a_i x_i (t)$$ を加えた時、その出力が $$y(t) = \sum_{i=1}^n a_i y_i (t)$$ のように表されるとき、このブラックボックスは線形系または線形システム (linear system) である、と言います。
ただし $$a_i \ (i=1, 2, \dots, n)$$ は任意の定数です。
ここでは、この線形システムの応答についてを見ていきましょう。

## 周波数応答

線形システムの入力が正弦波であるとき、その出力応答を周波数応答 (frequency response) と呼びます。
さらにそれを周波数の関数として考えるとき、周波数伝達関数 (frequency transfer function) または周波数応答関数と呼びます。  
線形システムでは、先ほど議論した重ね合わせが成り立つため、一般に入力の各フーリエ成分 $$X(\omega)$$ と出力のフーリエ成分 $$Y(\omega)$$ との間には、一定の関係があります。
そこで周波数応答を、次のように定義します。

$$
G(\omega) 
= \frac{Y(\omega)}{X(\omega)} \tag{1}
$$

周波数の関数として $$G(\omega)$$ がわかっていれば、任意の波形の入力のフーリエスペクトル $$X(\omega)$$ に対する、出力のフーリエスペクトル $$Y(\omega) = G(\omega) X(\omega)$$ を求めることができます。  
入力を $$x(t) = e^{i\omega_0 t}$$ とすると、その[フーリエ変換](/math/fourier_transform)は

$$
X(\omega) 
= \frac{1}{2\pi} \int_{-\infty}^\infty e^{i\omega_0 t} e^{-i\omega t} dt 
= \delta(\omega - \omega_0) \tag{2}
$$

のようになります。

{: .note}
[フーリエ変換](/math/fourier_transform)の定義が、リンク先のページと異なります。
こちらではフーリエ変換に $$e^{-i\omega t}$$、そしてフーリエ逆変換に $$e^{i\omega t}$$ を用いています。

周波数応答関数を $$G(\omega)$$ とすると、出力 $$y(t)$$ は $$G(\omega) X(\omega)$$ の逆フーリエ変換から

$$
y(t) 
= \int_{-\infty}^\infty G(\omega) \delta(\omega - \omega_0) e^{i\omega t} d\omega 
= G(\omega_0) e^{i\omega_0 t} \tag{3}
$$

となります。
つまり出力は入力と同じ角周波数であり、大きさは $$\vert G(\omega_0) \vert$$ 倍に、位相は $$\mathrm{arg} (G(\omega_0))$$ だけ進むことがわかります。

### 具体例: CR回路

次図のようなCR回路を考えましょう。

![](/assets/images/circuits/linear_system_02.png)  

入力電圧を $$V_\mathrm{in} = x(t)$$、出力電圧を $$V_\mathrm{out} = y(t)$$ とします。
[キルヒホッフの電圧則](/circuits/steady_current#定常電流電気回路とキルヒホッフの法則)より

$$
V_\mathrm{in} - \frac{1}{C} \int I dt - V_\mathrm{out} 
= 0 \tag{4}
$$

となります。
さらに抵抗部分では

$$
V_\mathrm{out} 
= RI \tag{5}
$$

より

$$
x(t) 
= \frac{1}{RC} \int y(t) dt + y(t) \underbrace{\Longrightarrow}_{両辺時間微分} 
\frac{dx}{dt} 
= \frac{y}{RC} + \frac{dy}{dt} \tag{6}
$$

を得ます。
両辺を[フーリエ変換](/math/fourier_transform)しましょう。
$$x(t), y(t)$$ を[フーリエ変換](/math/fourier_transform)したものをそれぞれ $$X(\omega), Y(\omega)$$ とすると

$$
i\omega X(\omega) 
= \frac{Y(\omega)}{RC} + i\omega Y(\omega) \ \Longrightarrow \ 
Y(\omega) 
= \frac{i\omega RC}{1 + i\omega RC} X(\omega) \tag{7}
$$

の関係があります。
(1)式より、この回路の周波数応答関数は

$$
G(\omega) 
= \frac{i\omega RC}{1 + i\omega RC} \tag{8}
$$

のようになります。  
一般に、入力

$$
x(t) 
= \int_{-\infty}^\infty X(\omega) e^{i\omega t} d\omega \tag{9}
$$

に対する出力は

$$
y(t) 
= \int_{-\infty}^\infty G(\omega) X(\omega) e^{i\omega t} d\omega \tag{10}
$$

で与えられます。
これは(8)式以外の一般の $$G(\omega)$$ を持つ線形システムについても成立します。  
周波数応答関数は、定常的な正弦波に近い波形の入力に対する応答を調べるのによく用いられます。
しかしこの手法は、過渡現象を調べるのにももちろん役立ちます。
例えば先ほどのCR回路に[ヘヴィサイドの階段関数 $$\Theta (t)$$ ](/math/fourier_transform#ヘヴィサイドの階段関数)を入力としたときの応答は、[$$\Theta(t)$$ のフーリエ変換](/math/fourier_transform#ヘヴィサイドの階段関数)と(8)式を、(10)式に代入することで計算できます。

$$
y(t) 
= \int_{-\infty}^\infty \left( \frac{1}{2} \delta(\omega) + \frac{1}{2\pi i\omega} \right) \frac{i\omega RC}{1 + i\omega RC} e^{i\omega t} d\omega 
= \frac{1}{2\pi} \int_{-\infty}^\infty \frac{e^{i\omega t}}{(RC)^{-1} + i\omega} d\omega
= e^{-\frac{t}{RC}} \tag{11}
$$

これは(6)式を直接解いた結果と一致します。

{% include adsense.html %}

### ボーデ図

$$G(\omega)$$ の周波数依存性を示す図を、ボーデ図 (Bode diagram) と呼びます。
通常、$$\vert G(\omega) \vert$$ を[デシベル](/circuits/linear_system#補遺b-デシベルについて)で表し、位相差 $$\mathrm{arg} [G(\omega)]$$ は度 (°) で表現します。
そして横軸は周波数を対数目盛で取ります。
先ほどの(8)式の周波数応答関数のボーデ図は、次のようになります。

![](/assets/images/circuits/linear_system_03.png)  

これは高周波をよく通す高域フィルター、またはハイパスフィルター (High-Pass Filter: HPF) です。
$$\omega \ll \omega_0$$ では、周波数に比例する $$\omega / \omega_0$$ の透過率となります。
入出力の位相差を $$\varphi$$ とすると

$$
\varphi (\omega) 
= \cot^{-1} (\omega RC) \tag{12}
$$

のようになり、先ほどの図の下パネルの曲線がこれを表しています。

## インパルス応答

ある線形システムにおいて、デルタ関数型の入力 $$\delta (t)$$ に対する出力 $$g(t)$$ を、そのシステムのインパルス応答と呼びます。
[インパルス $$\delta (t)$$ のフーリエ変換は $$\frac{1}{2\pi}$$ ](/math/fourier_transform#デルタ関数)です。
よってインパルス入力に対する出力は、(10)式より

$$
g(t) 
= \frac{1}{2\pi} \int_{-\infty}^\infty G(\omega) e^{i\omega t} d\omega \tag{13}
$$

となります。
すなわち、周波数応答関数の[フーリエ変換](/math/fourier_transform)が、系のインパルス応答 (または重み関数) となります。

{: .note}
インパルス応答関数は、物理学ではグリーン関数 (Green's function) とも呼ばれます。

物理的に実現できる系では、因果律により、出力は入力パスる以前の時刻には現れません。
よって $$t<0$$ では $$g(t) = 0$$ です。  
一般の入力波形 $$x(t)$$ はデルタ関数を用いて

$$
x(t) 
= \int_{-\infty}^\infty x(\tau) \delta (t-\tau) d\tau \tag{14}
$$

のように表されます。
線形システムでは、入出力の重ね合わせ関係が成立します。
よってこの入力に対する出力は、インパルス応答を重み関数とした積分

$$
y(t) 
= \int_{-\infty}^\infty x(\tau) g(t-\tau) d\tau \tag{15}
$$

で与えられます。
そこで、それぞれのフーリエ変換を $$X(\omega), Y(\omega), G(\omega)$$ とすれば、[畳み込み定理](/math/fourier_transform#畳み込み定理)より

$$
Y(\omega) 
= G(\omega) X(\omega) \tag{16}
$$

となります。
したがって、(15)式は現象を時間領域で考え、(16)式は角周波数領域で考えてことになります。
もちろん、(15), (16)式は等価なものです。

## 補遺A: (11)式の計算

$$
\int_{-\infty}^\infty \frac{e^{i\omega t}}{(RC)^{-1} + i\omega} d\omega 
= \frac{1}{i} \int_{-\infty}^\infty \frac{e^{i\omega t}}{\omega- i(RC)^{-1}} d\omega \tag{A.1}
$$

の計算を行いましょう。
ただし、先ほどのCR回路の例ではヘヴィサイドの階段関数を入力として用いているため、$$t>0$$ のみを考えるものとします。
複素数が存在するため、複素数平面上の次のような経路での積分を考えます。

![](/assets/images/circuits/linear_system_04.png)  

$$
\left\{ \begin{array}{ll}
C_1: & 実軸上 \ -r \rightarrow r \\
C_2: & \omega = r e^{i\theta} \quad (\theta: 0 \rightarrow \pi)
\end{array} \right. \tag{A.2} 
$$

実軸上の積分を $$-\infty \rightarrow \infty$$ とするため、最後に $$\lim_{r \rightarrow \infty}$$ のように極限を取ることを考えましょう。
すると、留数定理より

$$
\oint_{C_1 + C_2} \frac{e^{i\omega t}}{\omega- i(RC)^{-1}} d\omega 
= 2\pi i \mathrm{Res}(\omega = i(RC)^{-1}) \tag{A.3}
$$

$$e^{i\omega t}$$ を $$\omega = i (RC)^{-1}$$ の周りでテイラー展開すると

$$
e^{i\omega t} 
= e^{-\frac{t}{RC}} + ((\omega - i(RC)^{-1})を含む項) \tag{A.4}
$$

のようになるため

$$
\frac{e^{i\omega t}}{\omega- i(RC)^{-1}} 
= \frac{e^{-\frac{t}{RC}}}{\omega - i (RC)^{-1}} + (それ以外の項) 
$$

を得ます。
右辺において、第一項以外は $$\omega = i (RC)^{-1}$$ で正則なので

$$
\mathrm{Res} (\omega = i(RC)^{-1}) 
= e^{-\frac{t}{RC}} \tag{A.5}
$$

となります。
次に $$C_2$$ 経路上の積分を考えましょう。
$$\lim_{r \rightarrow \infty}$$ での積分の大きさを考えると

$$
\begin{align}
\lim_{r \rightarrow \infty} \left\vert \int_{C_2} \frac{e^{i r e^{i\theta} t}}{r e^{i\theta} - i(RC)^{-1}} ir e^{i\theta} d\theta \right\vert
&\leq \lim_{r \rightarrow \infty} \int_{C_2} \left\vert \frac{e^{i r t \cos \theta } e^{-r t \sin \theta}}{\vert r e^{i\theta} - i(RC)^{-1}} \right\vert \vert ir e^{i\theta} \vert d\theta \notag \\
&\leq \lim_{r \rightarrow \infty} r \int_{C_2}  \frac{e^{-r t \sin \theta}}{\vert r - (RC)^{-1}} d\theta \tag{A.6}
\end{align}
$$

$$t>0$$ かつ $$\sin \theta \leq 0 \ (\theta: 0 \rightarrow \pi)$$ より、(A.6)式の最右辺はゼロとなります。
よって

$$
\frac{1}{i} \lim_{r \rightarrow \infty} \oint_{C_1 + C_2} \frac{e^{i\omega t}}{\omega- i(RC)^{-1}} d\omega 
= \frac{1}{i} \int_{-\infty}^\infty \frac{e^{i\omega t}}{\omega- i(RC)^{-1}} d\omega 
= 2\pi e^{-\frac{t}{RC}} \tag{A.6}
$$

以上より、(11)式が計算できました。

{: .note}
このような計算は、例えば[プラズマ物理の湯川ポテンシャル](/plasma/yukawa_pot)や[電磁放射の遅延グリーン関数計算](/astroelec/retarded_green)などでも出てきます。
どのように計算するかを覚えておくことは、非常に有用です。

## 補遺B: デシベルについて

デシベル (dB) は減衰または増幅を表す対数目盛です。
入力電力 $$P_\mathrm{in}$$ が $$L$$ デシベルの減衰を受けて、出力電力が $$P_\mathrm{out}$$ になるとき

$$
L 
= 10 \log \frac{P_\mathrm{in}}{P_\mathrm{out}} \tag{B.1}
$$

のように書かれます。
$$A$$ デシベルの増幅では

$$
A 
= 10 \log \frac{P_\mathrm{out}}{P_\mathrm{in}} \tag{B.2}
$$

です。  
これらの関係から、減衰を $$A$$ と同様に定義して、負の数のデシベルで表すこともあります。
電力は振幅の2乗に比例するため、入力の振幅を $$x$$、出力の振幅を $$y$$ とすると

$$
A 
= 20 \log \frac{y}{x} 
= 20 \log \vert G(\omega) \vert \tag{B.3}
$$

のようになります。
すなわち、$$\vert G \vert^2 = 0.5$$ がおよそ-3.01dBとなります。
6.02dBで振幅比が2倍、10dBで $$\sqrt{10}$$ 倍、20dBで10倍です。

## 参考文献

[1] [霜田光一, 桜井 捷海, "エレクトロニクスの基礎"](https://amzn.to/4wAOuib)  
[2] [三尾典克, "電磁気学第2 参考資料 グリーン関数とラプラス方程式・波動方程式"](http://www.g-munu.t.u-tokyo.ac.jp/mio/note/elemag/waveeq.pdf)  

{% include adsense.html %}