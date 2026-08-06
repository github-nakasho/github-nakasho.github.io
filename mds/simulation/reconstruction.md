---
layout: default
title: 流体計算のための空間再構成手法
parent: 数値計算
math: mathjax3
permalink: /simulation/reconstruction
nav_order: 8
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

# 流体計算のための空間再構成手法 (工事中)

[HLLD 法](/simulation/hlld)などに代表される近似リーマン解法では、セル中心 $$i, i+1, i+2$$ などの値だけでなく、そのセルの間にある境界面 $$i+1/2, i+3/2$$ などを通過する流束の計算が必要となります。
そこでセル中心の値からセル境界の値を補間する、空間再構成手法が必要となります。
しかし、この補間によって数値振動が発生してしまっては、元も子もありません。
ここでは宇宙 (磁気) 流体計算で主に用いられている、補間手法について見ていきましょう。  
以降では $$V$$ という値を補間することにします。
この $$V$$ は、セル中心 $$i, i+1, i+2, \dots$$ で定義されている量です。
近似リーマン解法では、セル境界 $$i+1/2$$ の左側 (セル $$i$$ の側、以降 L の添字をつけて表します) と $$i+1/2$$ の右側 (セル $$i+1$$ の側、同じく R をつけて表します) を計算する必要があります。
この左側と右側の値を用いることで、それぞれの側での流束 $$\mathbf{F}_\mathrm{L}, \mathbf{F}_\mathrm{R}$$ や、中間状態からくる流束 $$\mathbf{F}^\ast$$ などを求めることが可能になります。

![](/assets/images/simulation/reconstruction_01.png)

以降では簡単のため、セルの間隔 $$x_{i+1} - x_i = \Delta x$$ は一定とします。

## 空間 2 次精度手法

### Minmod

最も基本的な再構成手法の一つです。
単調性が保証されている基礎的な手法ですが、最も散逸的な計算結果となるデメリットも持ちます。
この手法は極めてシンプルです。
まず $$i + 1/2$$ の左側の値 $$V_{L, i+1/2}$$ を、直線 (1次関数) を用いて推測することを考えます。
素朴に考えると、$$i-1$$ と $$i$$ の値から外挿する方法と、$$i$$ と $$i+1$$ の値から内挿する方法、の2つが考えられます。

![](/assets/images/simulation/reconstruction_02.png)  
(左): $$i-1$$ と $$i$$ の値から外挿する方法、(右): $$i$$ と $$i+1$$ の値から内挿する方法。

この2つの直線の傾きを比べたときに、傾きが穏やかを選びます。
すなわち

$$
V_{\mathrm{L}, i+1/2} 
= V_i + 0.5 \mathrm{min} (a, b) \Delta x \qquad \left( a = \frac{V_{i} - V_{i-1}}{\Delta x}, b = \frac{V_{i+1} - V_{i}}{\Delta x} \right) \tag{1}
$$

のようにして求めます。
同様に、$$V_{\mathrm{R}, i-1/2}$$ ($$V_{\mathrm{L}, i+1/2}$$ とはセル中心を挟んで反対側の値) も

$$
V_{\mathrm{R}, i-1/2} 
= V_i - 0.5 \mathrm{min} (a, b) \Delta x \tag{2}
$$

として計算します。
ただし、傾きが負の場合もあるため、正確には傾きの絶対値 $$\vert a \vert, \vert b \vert$$ の大きさを比較しなければなりません。
よって次のように定義される、minmod 関数を用いることにしましょう。

$$
\mathrm{minmod} (a, b) 
= \frac{1}{2} (\mathrm{sgn} (a) + \mathrm{sgn}(b)) \min (\vert a \vert, \vert b \vert) \tag{3}
$$

これを用いると、先ほどの式は

$$
V_{\mathrm{L}, i + 1/2} 
= V_i + 0.5 \mathrm{minmod} (a, b) \Delta x, \quad 
V_{\mathrm{R}, i - 1/2} 
= V_i - 0.5 \mathrm{minmod} (a, b) \Delta x \tag{4}
$$

のように書き直すことができます。
そして注意が必要なのは、次のように左右で傾きの符号が変化するときです。

![](/assets/images/simulation/reconstruction_03.png)  

この場合には解の単調性を維持するために、どちらの直線も採用せず、$$V_{\mathrm{L}, i+1/2} = V_i, V_{\mathrm{R}, i-1/2} = V_i$$ のように $$i$$ 番目のセルの値をそのまま用います。
(3)式は、実は $$a, b$$ が異符号の場合にゼロとなるように設計されています。  
以上の議論から、minmodリミッターを用いる場合には、次のようなコーディング例が考えられます。

```c
a = (V[i] - V[i-1]) / dx;
b = (V[i+1] - V[i]) / dx;
if(a * b <= 0.0) grad = 0.0;
else{
    if(a > 0.0) grad = min(a, b);
    else grad = max(a, b);
}
Vl[i] = V[i] + 0.5 * grad * dx;
Vr[i-1] = V[i] - 0.5 * grad * dx;
```

`a * b <= 0.0` により、`a` と `b` が同符号であるかを判定しています。

{% include adsense.html %} 

### Superbee

Superbee リミッターは、次のような図で考えることができます。

![](/assets/images/simulation/reconstruction_04.png)

まず直線 $$a, b$$ の傾きを比較します。
傾きが小さな方 (この図の場合は $$a$$) の直線を、$$x_i$$ から $$x_{i+1}$$ まで伸ばします (すなわち $$x_{i+1/2}$$ まで伸ばす場合の2倍です。傾きを2倍すると考えても良いでしょう)。
このようにして得られた青点の値と、傾きが大きな直線 $$b$$ の内挿によるマゼンダ点の値とを比較し、値が小さな方を $$V_{\mathrm{L}, i+1/2}$$ として選びます。
$$a, b$$ が両方とも負の傾きの場合もあるため、実際には $$\vert a \vert, \vert b \vert$$ を比較し、その大小関係を決定します。
ただし minmod 法と同様に、$$a, b$$ の符号が異なる場合には、どちらの直線も採用しません。
実際のコーディング例として、次のようなものが考えられます。

```c
a = (V[i] - V[i-1]) / dx;
b = (V[i+1] - V[i]) / dx;
if(a * b <= 0.0) grad = 0.0;
else{
    if(fabs(a) >= fabs(b)){
        if(a > 0.0) grad = min(a, 2.0 * b);
        else grad = max(a, 2.0 * b);
		}
    else{
        if(a > 0.0) grad = min(2.0 * a, b);
        else grad = max(2.0 * a, b);
    }
}
Vl[i] = V[i] + 0.5 * grad * dx;
Vr[i-1] = V[i] - 0.5 * grad * dx;		
```

解の単調性を維持しつつ、[minmod手法](/simulation/reconstruction#minmod)より数値拡散を抑えた方法であり、接触不連続面もよりシャープに捉えることができます。
しかし、滑らかな極値を歪める特徴も持っているため、万能な手法というわけではありません。
具体的には、滑らかなプロファイルを角張らせるという特徴があります。
例えば、正弦波のような波形を superbee 法を用いた数値計算手法で時間発展させると、頂点付近から平坦になり、最終的に矩形波に近いような形になります。

### Monotonized Centered (MC)

ここまでは $$V_{i-1}$$ と $$V_i$$、そして $$V_i$$ と $$V_{i+1}$$ の差を取る、後退差分と前進差分について考えてきました。
この MC 法では、中心差分である $$V_{i-1}$$ と $$V_{i+1}$$ の差についても考慮します。

![](/assets/images/simulation/reconstruction_05.png)

上図のように3つの直線を考え、その中で最小となるものを選びます。
コーディング例として、次のようなものが考えられます。

```c
a = (V[i] - V[i-1]) / dx
b = (V[i+1] - V[i]) / dx
c = (V[i+1] - V[i-1]) / (2.0 * dx)
if (a * b <= 0.0) grad = 0.0;
else {
    if (a > 0.0) grad = min(2.0 * a, min(2.0 * b, c / 2.0));
    else grad = max(2.0 * a, max(2.0 * b, c / 2.0));
}
Vl[i] = V[i] + 0.5 * grad * dx;
Vr[i-1] = V[i] - 0.5 * grad * dx;
```				

滑らかな領域では中心差分により 2 次精度となり、不連続な箇所では $$2a, 2b$$ の制限から振動を抑えます。
これにより、minmod 法ほど散逸的でないながら、superbee 法ほど滑らかさを失わない、という2つの中間的な立ち位置となります。

### van Leer

これまでの3つの手法とは異なり、この手法は $$a = V_i - V_{i-1}, b = V_{i+1} - V_i$$ の調和平均を取ります。
これは

$$
\Delta 
= \frac{2}{\frac{1}{a} + \frac{1}{b}} 
= \frac{2ab}{a + b} \tag{5}
$$

のように計算されます。
これまでと同様、$$a, b$$ の符号が異なる部分ではゼロとします。
以上をまとめると

$$
\Delta = \left\{ \begin{array}{ll}
\frac{2ab}{a + b} & (ab > 0) \\
0 & (ab \leq 0)  
\end{array} \right. \tag{6}
$$

のように書くことができます。  
これまでの3つの手法は、$$a, b$$ の大きさにより場合分けが必要でした。
これに対し van Leer 手法はそのような場合分けが存在しません。
すなわち微分可能性を持ちます。
リミッターの切り替わり部分が原因でニュートン法の反復が収束しないなどのデメリットを、回避することに成功しています。
$$a, b$$ の場合分けが存在しないため、実装でも if 文が少なく済み、GPU 並列化の恩恵も受けやすい形となっています。
短所としては、すでに紹介した [MC 法](/simulation/reconstruction#monotonized-centered-mc-法)と [superbee 法](/simulation/reconstruction#superbee-法)に比べて、散逸的な結果となります。
そのため、接触不連続面や回転不連続面は、鈍った結果を得ることになります。
これは、調和平均が小さな値に引っ張られることからも理解できます。
例えば $$a, b$$ が両方とも正の実数のときに、$$a \rightarrow 0$$ の極限を考えましょう。
すると (5) 式より $$\Delta \rightarrow 0$$ となることがわかります。
よって $$a, b$$ の値が大きく異なる場所では、[MC 法](/simulation/reconstruction#monotonized-centered-mc-法)よりも積極的に勾配を削ることになります。
[Minmod 法](/simulation/reconstruction#minmod-法)までとはいきませんが、散逸的な手法であるがゆえに安全な手法と言えるかもしれません。  
コーディング例を以下に示します。

```c
a = V[i] - V[i-1];
b = V[i+1] - V[i];
    if(a * b <= 0.0) grad = 0.0;
    else grad = 2.0 * a * b / (a + b);
Vl[i] = V[i] + 0.5 * grad;
Vr[i-1] = V[i] - 0.5 * grad;
```

{: .note}
ここまでこのページをお読みくださった方々は、ちょっと待てとなっているかもしれません。
それはこれまで紹介したものは、基本的には2つの点を結んだ直線によりセル境界での値を予測する "空間 1 次精度" ではないのか？ということです。
この1次精度に、さらに空間を $$\Delta x$$ の幅で離散化したことによる 1 次精度を加えることにより、我々はこれを 2 次精度と呼んでいます。
実際、テスト問題を解いてそのエラーを見てみると $$\Delta x^2 $$ ($$N$$ を格子点数とすると $$N^{-2}$$) で収束していく様子がわかります。
また、この次に出てくる PPM と呼ばれる手法では、3 点を通る 2 次関数からセル境界を推定します。
すると、PPM を用いた流体計算は 2 + 1 = 3 次精度ということになります。
同様にさらに後に登場する MP5 では、5 点を用いてセル境界の値を計算します。
すなわち、MP5 を用いた流体計算は 4 + 1 = 5 次精度です。

{% include adsense.html %} 

## 空間 3 次精度手法

ここからはさらに高次の手法を見ていくことにしましょう。

### Koren 法

[Koren (1993)](https://ir.cwi.nl/pub/5293/05293D.pdf) により提案された手法です。
3次精度手法ながら、[2 次精度手法](/simulation/reconstruction#空間-2-次精度手法)と同じ枠組みで計算することができます。
復習として、[MC 法](/simulation/reconstruction#monotonized-centered-mc-法)に再び注目しましょう。
実は [MC 法](/simulation/reconstruction#monotonized-centered-mc-法)での勾配計算は、次のように書き直すことができます。

$$
\Delta_\mathrm{MC} 
= \mathrm{minmod}_3 \left( 2a, 2b, \frac{a+b}{2} \right) \tag{7}
$$

ここで $$\mathrm{minmod}_3$$ は [minmod 法](/simulation/reconstruction#minmod-法)の部分で出てきた $$\mathrm{minmod}(a, b)$$ の 3 変数バージョンで、引数が 3 つとも同符号ならその絶対値の最小値を返し、3 つが同符号でないならゼロを返す関数です。
(7) 式の 3 つ目の引数を変化させることで、Koren リミッターを得ることができます。

$$
\Delta_\mathrm{Koren, L} 
= \mathrm{minmod}_3 \left( 2a, 2b, \frac{a+2b}{3}\right) \tag{8}
$$

よって、既存の [MC 法](/simulation/reconstruction#monotonized-centered-mc-法)のコードの `c/2` を `(a + 2b) / 3` に書き換えるだけで実装が完了する、という手軽さを持ちます。
ここで注意が必要なのは、(8) 式で $$a \leftrightarrow b$$ のように入れ替えると、違う結果になることです。
これまでの手法は勾配 `grad` を1度だけ計算し、これを用いて `Vl[i] = V[i] + 0.5 * grad * dx`, `Vr[i-1] = V[i] - 0.5 * grad * dx` のようにして計算することができました。
しかし Koren 手法ではそのようなわけにはいきません。
セルの左側面と右側面で $$a, b$$ の役割が入れ替わることで、異なる勾配を評価する必要があります。
具体的には

$$
\Delta_\mathrm{Koren, L} 
= \mathrm{minmod}_3 \left( 2a, 2b, \frac{a+2b}{3} \right), \quad 
\Delta_\mathrm{Koren, R} 
= \mathrm{minmod}_3 \left( 2a, 2b, \frac{2a+b}{3} \right) \tag{9}
$$

のように、左側と右側で異なる計算をする必要があります。
以下に、実装例を示します。

```c
a = V[i] - V[i-1];
b = V[i+1] - V[i];
gradl = minmod3(2.0 * a, 2.0 * b, (a + 2.0 * b) / 3.0);
gradr = minmod3(2.0 * a, 2.0 * b, (2.0 * a + b) / 3.0);
Vl[i]   = V[i] + 0.5 * gradl;
Vr[i-1] = V[i] - 0.5 * gradr;
```

$$i-1, i$$ と $$i, i+1$$ の 3 点を用いる手法はこれまでと同じながら、3 次精度を得ることができます。
以降で紹介する PPM や WENO のように[のりしろ領域](/simulation/boundary)を増やす必要がないため、実装も容易く行うことができます。
しかし、勾配計算を左右で別々に評価する必要があるため、その分だけは計算量が増加します。
そしてこれまでと同じく、極値部分で精度が 1 次に落ちる欠点があります。
さらなる短所として、$$a \leftrightarrow b$$ の非対称性のために、流れの向きや格子の取り方によっては結果が変化することにも注意しましょう。

### Piecewise-Parabolic Method (PPM)

[Colella & Woodward (1984)](https://www.sciencedirect.com/science/article/abs/pii/0021999184901438) において提案された手法です。
これまでの手法は、$$(i-1, i)$$ を通る直線と $$(i, i+1)$$ を通る直線による計算手法でした。
しかしここでは、セルの値 $$V_i$$ と セル境界の値 $$V_{\mathrm{R}, i-1/2}, V_{\mathrm{L}, i+1/2}$$ の 3 つを用い、放物線を構築します。  
まず、セル境界の値を $$i-1, i, i+1, i+2$$ の4つのセルの値から内挿します。

$$
V_{i+1/2} 
= - \frac{1}{12} V_{i-1} + \frac{7}{12} V_i + \frac{7}{12} V_{i+1} - \frac{1}{12} V_{i+2} 
= \frac{7}{12} (V_i + V_{i+1}) - \frac{1}{12} (V_{i-1} + V_{i+2}) \tag{10}
$$

$$-\frac{1}{12}, \frac{7}{12}, \frac{7}{12}, -\frac{1}{12}$$ の係数は、セルの値から境界 $$i + 1/2$$ での値を 4 次精度で再構成する場合に決定されるものです。
この式を中心差分

$$
\delta V_i 
= \frac{V_{i+1} - V_{i-1}}{2}, \quad \delta V_{i+1} 
= \frac{V_{i+2} - V_{i}}{2} \tag{11} 
$$

を用いて書き直しましょう。
すると

$$
V_{i+1/2} 
= V_i + \frac{1}{2} (V_{i+1} - V_i) - \frac{1}{6} (\delta V_{i+1} - \delta V_i) \tag{12}
$$

のようになります (実際に (12) 式を展開すると、(10) 式に一致することが確かめられます)。
ここで $$\delta V_i$$ に修正を加えることで、解の単調性を維持するようにしましょう。
その制限として、先ほどの [MC 法](/simulation/reconstruction#monotonized-centered-mc-法)を用いることにします。
すなわち

$$
\delta V_i \rightarrow \delta_m V_i 
= \mathrm{minmod}_3 \left( \delta V_i, 2 (V_i - V_{i-1}), 2 (V_{i+1} - V_i)\right) \tag{13}
$$

のようにします。  
このようにして、$$V_{i+1/2}$$ を求めることができました。
しかし、私たちが求めたいのは $$V_{\mathrm{L}, i+1/2}, V_{\mathrm{R}, i-1/2}$$ です。
そこで $$i$$ 番目のセル内 $$x_{i-1/2} \leq x \leq x_{i+1/2}$$ の座標を、次の $$\xi \in [0, 1]$$ を用いて表現することにしましょう。

$$
\xi 
= \frac{x - x_{i-1/2}}{\Delta x} \tag{14}
$$

そしてこの $$\xi$$ を用い、$$(x_{i-1/2}, V_{i-1/2}), (x_{i}, V_{i}), (x_{i+1/2}, V_{i+1/2})$$ を通るような放物線

$$
V(\xi) 
= v_0 + v_1 \xi + v_2 \xi^2 \tag{15}
$$

を決定しましょう。
すると $$\xi = 0$$ は $$x = x_{i-1/2}$$、$$\xi = 1$$ は $$x = x_{i+1/2}$$ の値に対応するので

$$
V(0) 
= v_0 
= V_{i-1/2}, \quad V(1) 
= v_0 + v_1 + v_2 
= V_{i+1/2} \tag{16}
$$

となることがわかります。
ここから $$\Delta V_i \equiv V_{i+1/2} - V_{i-1/2}$$ のように定義すると

$$
v_0 
= V_{i-1/2}, \quad v_1 
= \Delta V_i - v_2 \tag{17}
$$

のようになります。
ここで、$$V(\xi)$$ の平均値を計算しましょう。
そしてこの平均値がセルの代表点である $$x = x_i$$ の値、すなわち $$V_i$$ に一致するとして

$$
V_i 
= \int_0^1 V(\xi) d\xi 
= \left[ V_{i-1/2} \xi + \frac{\Delta V_i - v_2}{2} \xi^2 + \frac{v_2}{3} \xi^2 \right]_0^1 
= V_{i-1/2} + \frac{\Delta V_i - v_2}{2} + \frac{v_2}{3} \tag{18}
$$

(18)式を $$v_2$$ について解くことで

$$
\begin{align}
v_2 
&= - 6 V_i + 6 V_{i-1/2} + 3 \Delta V_i 
= - 6 V_i + 3 (V_{i+1/2} + V_{i-1/2}) \notag \\
&= -6 \left\{ V_i - \frac{V_{i+1/2} + V_{i-1/2}}{2} \right\} 
\equiv - v_6 \tag{19}
\end{align}
$$

以上から

$$
V(\xi) 
= V_{i-1/2} + (\Delta V_i + v_6) \xi - v_6 \xi^2 
= V_{i-1/2} + \xi \left\{ \Delta V_i - v_6 (1 - \xi) \right\} \tag{20} 
$$

のように、セル内を2次関数で表現することができました。
これを用いて、いよいよ $$V_{\mathrm{R}, i-1/2} V_{\mathrm{L}, i+1/2}$$ を決定しましょう。
ただし、ここでも単調性を維持するために、次のように場合分けを行います。

{% include adsense.html %} 

* セル自体が極値になっている場合

これは次の図のような場合を意味します。

![](/assets/images/simulation/reconstruction_06.png)

すなわち $$(V_{i+1/2} - V_i) (V_i - V_{i-1/2}) \leq 0$$ ならば、これまでと同じく、精度を犠牲に単調性を維持する構造を持ちます。

$$
V_{\mathrm{R}, i-1/2} = V_i, \quad V_{\mathrm{L}, i+1/2} = V_i \tag{21}
$$

* 放物線の極値がセルの左側 ($$0 < \xi < 1/2$$) にある場合

それは次のような状況です。

![](/assets/images/simulation/reconstruction_07.png)

(20)式の放物線の頂点の座標は、平方完成することで計算することができます。

$$
V(\xi) 
= -v_6 \left\{ \left( \xi - \frac{\Delta V_i + v_6}{2v_6} \right)^2 - \left( \frac{\Delta V_i + v_6}{2 v_6}\right)^2 \right\} + V_{i-1/2} \tag{22}
$$

よって頂点座標は

$$
\xi^\ast 
= \frac{\Delta V_i + v_6}{2v_6} 
= \frac{1 + s}{2s} 
= \frac{1}{2} + \frac{1}{2s} \quad (s \equiv v_6 / \Delta V_i) \tag{23}
$$ 

とわかります。
途中、分子・分母を $$\Delta V_i$$ で割ることで整理を行いました。
このことから、$$0 < \xi < 1/2$$ 側に頂点がくる条件は

$$
-1 < \frac{1}{s} < 0 \ \Longrightarrow \ 
s < -1 \tag{24}
$$

この両辺に $$\Delta V_i$$ をかけて $$v_6$$ と $$\Delta V_i$$ による条件式にしましょう。
しかし、$$\Delta V_i$$ の正負によって、不等号の向きが変化してしまいます。
よって非負の値である $$(\Delta V_i)^2$$ を両辺にかけることにしましょう。

$$
v_6 \cdot \Delta V_i 
< - (\Delta V_i)^2 \tag{25}
$$

のように求まります。  
**ここまで議論してきた放物線は一旦忘れて、また新しい放物線でセル内を表現することにしましょう。**
というのも、私たちがこれまで考えてきた放物線は $$(x_{i-1/2}, V_{i-1/2}), (x_i, V_i), (x_{i+1/2} V_{i+1/2})$$ を通るような放物線であって、$$V_{\mathrm{R}, i-1/2}$$ や $$V_{\mathrm{L}, i-1/2}$$ とは異なるからです。
そこで新しい放物線の方程式として、例えば $$y = x^2$$ を考えましょう。
すると $$x = 0$$ に近い場所では (皆さんが想像する通りの) 放物線の形になっています。
しかし $$x \gg 1$$ の部分に着目すると、ほぼ直線的に増加していることがわかります。

![](/assets/images/simulation/reconstruction_08.png)

つまり、せっかく放物線でフィッティングすることを考えているのに、$$x \gg 1$$ の部分を用いるのでは、2次関数の精度のメリットを活かすことができません。
この議論から **$$0 < \xi < 1/2$$ 側に頂点がくる場合を、$$\xi =0$$ に頂点がある場合として無理やり考える** ことで、放物線の曲がり部分の特徴を活かすようにしましょう。
このとき、頂点が $$\xi =0$$ であると同時に、$$V_\mathrm{L}(0) = V_{i-1/2}$$ である条件を満たさなければなりません。
このような放物線の形として、$$V_\mathrm{L} (\xi) = v_{2, 0} \xi^2 + V_{i-1/2}$$ が考えられます。
ここに平均値が $$V_i$$ に一致するという条件もさらに課すことで

$$
V_i 
= \int_0^1 V_\mathrm{L} (\xi) d\xi 
= \frac{v_{2, 0}}{3} + V_{i-1/2} \ \Longrightarrow \ 
v_{2, 0} 
= 3 (V_i - V_{i-1/2}) \tag{26}
$$

以上から

$$
V_\mathrm{L} (1) 
= V_{\mathrm{L}, i+1/2} 
= 3 (V_i - V_{i-1/2}) + V_{i-1/2} 
= 3 V_i - 2 V_{i-1/2} \tag{27}
$$

のように、$$V_i, V_{i-1/2}$$ の値から $$V_{\mathrm{L}, i+1/2}$$ の値を推定することができます。

* 放物線の極値がセルの右側 ($$1/2 < \xi < 1$$) にある場合

それは次のような状況です。

![](/assets/images/simulation/reconstruction_09.png)

放物線の頂点が $$1/2 < \xi < 1$$ にあるためには、(23)式より

$$
0 < \frac{1}{s} < 1 \ \Longrightarrow \ 
s > 1 \tag{28}
$$

先ほどと同様に、両辺に $$(\Delta V_i)^2$$ をかけることで

$$
v_6 \cdot \Delta V_i 
> (\Delta V_i)^2 \tag{29}
$$

のように書くことができます。
先ほどと同様に、$$1/2 < \xi < 1$$ 側に頂点がある場合、その頂点が $$\xi =1$$ に頂点がある場合として無理やり考えることにしましょう。
このとき、$$\xi = 1$$ では $$V_\mathrm{R}(1) = V_{i+1/2}$$ である条件を満たす必要があります。
このような放物線の形として、$$V_\mathrm{R}(\xi) = v_{2, 1} (\xi -1)^2 + V_{i+1/2}$$ が考えられます。
これを $$[0, 1]$$ で積分した値が、平均値 $$V_i$$ に等しいので

$$
\begin{align}
&V_i 
= \int_0^1 V(\xi) d\xi 
= \int_0^1 \{ v_{2, 1} (\xi -1)^2 + V_{i+1/2} \} d\xi 
\underbrace{=}_{\Xi = \xi-1}  \int_{-1}^0 ( v_{2, 1} \Xi^2 + V_{i+1/2} ) d\Xi 
= \frac{v_{2, 1}}{3} + V_{i+1/2} \notag \\
&\Longrightarrow \ 
v_{2, 1} 
= 3 (V_i - V_{i+1/2}) \tag{30}
\end{align}
$$

となります。
以上から

$$
V_\mathrm{R} (0) 
= V_{\mathrm{R}, i-1/2} 
= 3 (V_i - V_{i+1/2}) +  V_{i+1/2} 
= 3 V_i - 2 V_{i+1/2} \tag{31}
$$

のように、$$V_i, V_{i+1/2}$$ の値から $$V_{\mathrm{R}, i-1/2}$$ の値を推定することもできました。  
以上から、PPM を実装するためのコーディング例を書くと、次のようになります。

```c
/* ---- step 0: MC limiter ---- */
for (i = is-1; i <= ie+1; i++) {
    dc = 0.5*(V[i+1] - V[i-1]); 
    dl = V[i]   - V[i-1];
    dr = V[i+1] - V[i];
    // compute dm from eq. (13)
    dm[i] = minmod3(dc, 2 * dl, 2 * dr);
}

/* ---- step 1: Vint = V_{i+1/2} ---- */
for (i = is-1; i <= ie; i++) {
    // compute eq. (12) using dm
    Vint[i] = V[i] + 0.5 * (V[i+1] - V[i]) - (dm[i+1] - dm[i]) / 6.0;
}

/* ---- step 2 & 3: recunstruct parabolae & impose monotonicity ---- */
for (i = is; i <= ie; i++) {
    // vl = V_{i-1/2}
    vl = Vint[i-1];
    // vr = V_{i+1/2}
    vr = Vint[i]; 
    if ((vr - V[i]) * (V[i] - vl) <= 0.0) {
        // i-th cell is maximal or minimul
        Vl[i] = V[i];
        Vr[i-1] = V[i];
    } else {
        // compute dV = V_{i+1/2} - V_{i-1/2}
        dV = vr - vl;
        // compute v6 from eq. (16)
        V6 = 6.0 * (V[i] - 0.5 * (vl + vr));
        if (dV*V6 > dV*dV) {
            // if 1/2 < xi < 1 ===> compute V_{R, i+1/2} from eq. (31)
            Vr[i-1] = 3.0 * V[i] - 2.0 * vr;
            Vl[i] = vr
        } else if (dV*V6 < -dV*dV) {
            // if 0 < xi < 1/2 ===> compute V_{L, i+1/2} from eq. (27)
            Vl[i] = 3.0 * V[i] - 2.0 * vl;
            Vr[i-1] = vl
        }
    }
}
```

同じ 3 次精度であっても、PPM と [Koren](/simulation/reconstruction#koren-法) では大きな違いがあります。
(12)式からわかるように、セルの値から境界の値を内挿するときの精度は 4 次精度です。
これにより、同じ 3 次精度であっても、計算結果が大きく異なります。
さらに重要なのは、[Koren](/simulation/reconstruction#koren-法) では、境界をはさんだ状態 $$V_{\mathrm{L}, i+1/2}, V_{\mathrm{R}, i+1/2}$$ が別々の式から計算されることです。
それにより境界面の左右で値の不連続性が生まれ、リーマン問題のジャンプから散逸が発生します。
PPM では (12) 式から $$V_{i+1/2}$$ が 1 度だけ計算され、この情報が $$V_{\mathrm{L}, i+1/2}, V_{\mathrm{R}, i+1/2}$$ の両方に共有されます。
単調性の条件に引っかからない滑らかな領域では $$V_{\mathrm{L}, i+1/2} = V_{\mathrm{R}, i+1/2} = V_{i+1/2}$$ が厳密に成立し、リーマン問題のジャンプがなくなります。
このような議論から、PPM を用いた場合にリーマンソルバーがその真価を発揮するのは、真に不連続が存在する箇所のみに限られることになります。
また、PPM ではセル内の平均値 $$V_i$$ (代表点である $$x_i$$ での値) を再現する、セル内分布を表す放物線を計算しています。
これを用いると、例えば、時間 $$\Delta t$$ の間に境界面を通過する領域で放物線を積分することで、境界面を通したセル間の物理量のやり取りを直接計算することができます。
これは Corner Transport Upwind (CTU) 法などに応用することができます。
ただし、コーディング例を見ればわかるように、PPM の方が実装がはるかに複雑です。
さらにはその計算に多くの隣接セルを必要とすることから、[計算領域ののりしろ部分](/simulation/boundary#境界条件の定め方)が増加します。
これにより計算格子数の増加はもちろん、MPI並列化をする際に通信量の増加をもたらします。  
先ほどの議論からわかるように、PPM では極値部分で精度が 1 次まで落ちます。
これを改良した手法が、[Colella & Sekora (2008)](https://www.sciencedirect.com/science/article/abs/pii/S0021999108001435), [Sekora & Colella (2009)](https://arxiv.org/abs/0903.4200) で提案されています (extremum-preserving PPM)。
そして、ここで示した PPM の手法は、等間隔のデカルト格子でのみ適用可能なものです。
例えば、(10)式の4次精度のための係数 (-1/12, 7/12, 7/12, -1/12) という値は、格子間隔の違いや円筒座標・3次元極座標ではそのまま用いることはできません。
PPM に代表される 3 次精度手法だけでなく、同様に 2 次精度や 5 次精度でもこれを解消するために、真面目に計算を行ったのが [Mignone (2014)](https://www.sciencedirect.com/science/article/abs/pii/S0021999114002538?via%3Dihub) です。
気になる方は、各文献を読んでみると良いでしょう。

{% include adsense.html %} 

### Limiter Order 3 (LimO3)

これまで議論してきた [2 次精度手法](/simulation/reconstruction#koren-法)や [Koren 法](/simulation/reconstruction#koren-法)と同様に、3点を用いながら3次精度を叶える、効率的なスキームです。
[Cada & Torrilhon (2009)](https://www.sciencedirect.com/science/article/abs/pii/S0021999109000953) で提案されたこの手法は、古典的な smearing ([minmod](/simulation/reconstruction#minmod-法) で発生するような鈍り)・clipping (これまで議論されてきた極値部分での精度低下)・squaring ([superbee](/simulation/reconstruction#superbee-法) などで発生する角張り) を完全に回避した、として提案されています。
ここでは原論文でなく、記述が簡潔な [Mignone et al. (2010)](https://www.sciencedirect.com/science/article/abs/pii/S0021999110001890?via%3Dihub) に則して、LimO3 を見ていきましょう。
これは

$$
V_{\mathrm{L}, i+1/2} 
= V_i + \frac{\Delta_{i+1/2}}{2} \{P_3 (\theta) + \chi ( \hat{\phi} (\theta) - P_3 (\theta) )\} \tag{30}
$$

のように書かれます。
ここで $$\Delta_{i+1/2} = V_{i+1} - V_i$$ であり、$$\theta = \Delta_{i-1/2} / \Delta_{i+1/2}$$ は前進差分と後進差分で得た勾配の比を表します。
そして 

$$
P_3 (\theta) 
= \frac{2 + \theta}{3} \tag{31}
$$

であり、これは [Koren リミッターの中央分岐の部分](/simulation/reconstruction#koren-法)に一致しています。
$$\hat{\phi} (\theta)$$ は 3 次精度のリミッターで

$$
\hat{\phi} (\theta) 
= \left\{ \begin{array}{ll}
\max [0, \min(P_3(\theta), 2\theta, 1.6)] & (\theta \geq 0) \\
\max \left[ 0, \min \left( P_3 (\theta), -\frac{\theta}{2} \right)\right] & (\theta < 0)  
\end{array} \right. \tag{32}
$$

のような関数です。
このリミッターがこれまでと大きく異なる点は、$$\theta < 0$$ でも $$\hat{\phi} (\theta)$$ がゼロにならない点です。
TVD 条件では $$\theta < 0$$ で $$\hat{\phi} (\theta) = 0$$ を要求していたため、LimO3 は TVD 手法ではないことがわかります。
最後に、$$\chi$$ はスイッチの役割を果たす変数で、$$0 \leq \chi \leq 1$$ の範囲にあります。
この $$\chi$$ によって、制限された再構成と制限のない再構成を自動的に切り替えます。
すなわち、$$\chi = 0$$ ならば $$\{\cdots \}$$ の部分は $$P_3 (\theta)$$ に一致しますが、$$\chi = 1$$ ならば $$\hat{\phi} (\theta)$$ となります。
このような $$\chi$$ スイッチとして、次のようなものが考えられています。

$$
\chi 
= \max \left[ 0, \min \left( 1, \frac{1}{2} + \frac{\eta - 1}{2\epsilon} \right) \right], \quad
\eta = \frac{\Delta_{i-1/2}^2 + \Delta_{i+1/2}^2}{(r \Delta x)^2} \tag{33}
$$

ここで $$\eta$$ は指標関数 (indicator function) と呼ばれるものです。
また $$\epsilon = 10^{-12}$$ としています。
$$\eta \leq 1$$ ならば、$$x$$ 方向の差 $$\Delta_{i\pm 1/2}$$ が小さく、$$\chi = 0$$ となります。
逆に $$\eta > 1$$ では、$$\Delta_{i \pm 1/2}$$ が十分大きいため、リミッター $$\hat{\phi} (\theta)$$ を適用するために、$$\chi =1$$ となります。
さらに、$$r$$ は $$0 \leq r \leq 1$$ を満たす自由なパラメータで、滑らか極値と緩やかな勾配を区別するために用いられます。
これは次のように考えることができます。
$$\eta$$ の分子が $$\Delta_{i-1/2}^2 + \Delta_{i+1/2}^2$$ であることから、これは $$(\Delta_{i-1/2}, \Delta_{i+1/2})$$ 平面における原点からの距離を意味します。
$$\eta$$ はそれを $$(r \Delta x)^2$$ で規格化したものです。

![](/assets/images/simulation/reconstruction_10.png)  

すなわち $$\eta \geq 1$$ ならば $$r \Delta x$$ の円の外側、$$\eta < 1$$ ならば内側に対応します。
滑らかな極値部分では一階微分がゼロなので

$$
\Delta_{i \pm 1/2} 
\approx \frac{1}{2} V'' \Delta x^2 
= \mathcal{O}(\Delta x^2) \tag{34}
$$

です。
これを (33) 式の $$\eta$$ に代入すると

$$
\eta 
\approx \frac{\mathcal{O} (\Delta x^4)}{\mathcal{O} (\Delta x^2)} 
= \mathcal{O} (\Delta x^2) \tag{35}
$$

となります。
$$\Delta x \rightarrow 0$$ の極限では $$\eta \rightarrow 0$$ となることから、滑らかな極値部分および緩やかな勾配部分では $$\chi = 0$$ となり、3次精度が復活するように区別されています。
逆に不連続性が大きなところでは

$$
\Delta_{i \pm 1/2} 
= \mathcal{O}(1) \ \Longrightarrow \eta 
\approx \frac{1}{(r\Delta x)^2} \tag{36}
$$

です。
この場合、$$\Delta x \rightarrow 0$$ として格子点を細かくとると、$$\eta \rightarrow \infty, \chi = 1$$ となるため、常にリミッター $$\hat{\phi} (\theta)$$ が適用されるようになっています。
このように $$r, \eta$$ を通して、滑らかな極値部分と緩やかな勾配部分を区別していることがわかります。  
LimO3 のコーディング例を、次に示します。

```c
// set r (0 ≤ r ≤ 1)
r = 1.0;
// compute Delta_{i-1/2} & Delta_{i+1/2}
dm = V[i] - V[i-1];
dp = V[i+1] - V[i];
// compute Delta_{i+1/2} / 2 * P3(theta), the second term of eq. (30) 
unlim = (dm + 2.0 * dp) / 6.0;
// compute theta = Delta_{i-1/2} / Delta_{i+1/2}
theta = dm * dp / (dp * dp + 1.0e-20);
// compute P3(theta) from eq. (31)
P3 = (2.0 + theta) / 3.0
// compute phi(theta) from eq. (32)
if (theta >= 0.0) phi = fmax(0.0, fmin(fmin(P3, 2.0 * theta), 1.6));
else phi = fmax(0.0, fmin(P3, -0.5 * theta));
// compute Delta_{i+1/2} / 2 * phi(theta), the third term of eq. (30)
lim = 0.5 * dp * phi;
// compute switch eta & chi
eta = (dm * dm + dp * dp) / ((r * dx) * (r * dx));
if (eta < 1.0) chi = 0.0;
else chi = 1.0;
// compute V_{L, i+1/2} from eq. (30)
Vl[i] = V[i] + unlim + chi * (lim - unlim);
```

(30)式を見ると、$$\Delta_{i-1/2} \leftrightarrow \Delta_{i+1/2}$$ としても一致しない、非対称な形をしています。
よって $$V_{\mathrm{R}, i-1/2}$$ を求める式は

$$
V_{\mathrm{R}, i-1/2} 
= V_i - \frac{\Delta_{i-1/2}}{2} \{P_3 (\theta^{-1}) + \chi (\hat{\phi} (\theta^{-1}) - P_3(\theta^{-1}))\} \quad 
\left( \theta^{-1} 
= \frac{\Delta_{i+1/2}}{\Delta_{i-1/2}} \right) \tag{37}
$$

となります。  
先ほどのから議論してきたように、LimO3 の長所としては、3点を用いる手法のまま、極値部分での精度低下を回避できることです。
また実装も簡単で、既存のコードのリミッター関数を差し替えるだけで計算が可能という手軽さもあります。
短所としては、TVD 性が破られていることが挙げられます。
数値振動が生じないという保証がないため、極端な問題ではロバスト性が崩れる可能性を持ちます。
TVD 性を捨てた代わりに、極値での精度を得た、といっても良いでしょう。
また、(33) 式で登場したパラメータ $$r$$ についての言及がありません。
実用上は $$r = 1$$ が用いられています。
LimO3 提案後に出された論文 [Schmidtmann et al. (2016)](https://link.springer.com/article/10.1007/s00574-016-0183-5) では、$$u_t + (f(u))_x = 0$$ を解く場合

$$
\eta 
= \frac{\sqrt{\Delta_{i-1/2}^2 + \Delta_{i+1/2}^2}}{\sqrt{\frac{5}{2}} r \Delta x^2}, \quad 
r 
= \max_{i \in \Omega \backslash \Omega_d} \vert u_{0, i}'' (x) \vert \tag{38}
$$

とするのが良いと示されました。
ここで $$\Omega, \Omega_d$$ はそれぞれ計算領域と、初期条件 $$u_0$$ において不連続がある箇所を表します。
しかし、余計なパラメータが増えているということには変わりありません。

{% include adsense.html %} 

### Essentially Non-Oscillatory (ENO)

続いては ENO と呼ばれる手法について紹介します。
この手法は [Harten et al. (1987)](https://www.sciencedirect.com/science/article/abs/pii/0021999187900313?via%3Dihub) で提案されました。
これはゴドノフスキーム (1 次) とその 2 次精度拡張である MUSCL を任意の精度次数へと一般化したものです。  
まず、セル内の平均値 (代表として $$x_i$$ での値) $$V_i$$ から、次の原始関数を準備します。

$$
v(x_{i+1/2}) 
= \int_{-\infty}^{x_{i+1/2}} V d\xi 
= \sum_{\ell \leq i} V_\ell \Delta x \tag{37}
$$

この式は、セル内の平均値の累積和が、原始関数の $$x_{i + 1/2}$$ (すなわち隣り合うセルとの境界面の位置) での値を厳密に与えることを意味します。
したがって、セル内の平均値から $$x_{i+1/2}$$ での値を再構成する問題は、原始関数 $$v$$ の内挿を計算する問題に帰着することができます。
そこで $$v$$ を $$k+1$$ 個の境界点を通る $$k$$ 次の多項式 $$P(x)$$ で近似することを考えましょう。
するとこれを微分したものは、(37)式から $$V$$ に一致します。
$$p(x) = P'(x)$$ は $$k-1$$ 次の多項式となり、セル平均値を厳密に再現し、$$V$$ を $$k$$ 次精度で近似することがわかります。  
さらに、次のように差分を考えましょう。

$$
v[x_{i-1/2}, x_{i+1/2}] 
= \frac{v_{i+1/2} - v_{i-1/2}}{\Delta x} 
= V_i \tag{38}
$$

$$
v[x_{i-1/2}, x_{i+1/2}, x_{i+3/2}] 
= \frac{v[x_{i+1/2}, x_{i+3/2}] - v[x_{i-1/2}, x_{i+1/2}]}{x_{i+3/2} - x_{i-1/2}} 
= \frac{\bar{V}_{i+1} - \bar{V}_i}{2 \Delta x} 
= \frac{V_{i+1} - V_i}{2 \Delta x} \tag{39}
$$

ここからわかるように、$$v$$ の $$m + 1$$ 階の差分が、$$V$$ の $$m$$ 階の差分に比例します。
これにより、$$V_\mathrm{L}, V_\mathrm{R}$$ を推定するためのグリッド (ステンシル) 選択をセル平均値の差分だけで実行でき、原始関数を実際に計算する必要性がなくなります。  
ステンシル選択アルゴリズムとして、[Harten et al. (1987)](https://www.sciencedirect.com/science/article/abs/pii/0021999187900313?via%3Dihub) では、次のようなものを提案しました。
それはある 1 つのセルから始めて、左右 2 つの候補のうち、(38), (39)式のような差分の大きさが小さい方から 1 セルずつステンシルに追加していく、というものです。
$$k$$ 次精度 ($$k$$ 個のセルを用いる) を目標としましょう。
すると ENO で行うのは

* 初期: ステンシル = {$$i$$} のみ (1セルなので1次精度)
* $$m$$ 段目 ($$m = 1, 2, \dots, k-1$$): 現在のステンシル = {$$a, a+1, \dots, a+m-1$$} として
  - 左へ伸ばした候補: {$$a-1, a, \dots, a+m-1$$} の $$m$$ 階差分
  - 右へ伸ばした候補: {$$a, a+1, \dots, a+m$$} の $$m$$ 階差分  
  の2つのうちの、絶対値が小さな方を採用する

のようにまとめることができます。
絶対値の小さな方を採用する理由は、差分がその区間における関数の「粗さ」の尺度となっているためです。
不連続をまたぐようなステンシルでは、高階の差分が $$\mathcal{O} (\Delta x^m)$$ のようになり、 $$\Delta x \rightarrow 0$$ で発散します。
一方、滑らかな部分では、$$\mathcal{O}(1)$$ のようになります。
したがって、差分の絶対値が小さな方を採用することで、不連続な箇所をまたがない方を選んでいることになります。  
ここでは、3 次の ENO の具体的な形を見てみましょう。
$$k = 3$$ のとき、$$m = 1, 2$$ 段階までしか存在しません。
よって $$i$$ 番目のセルの候補ステンシルは 3 つとなります。

* 1 段目: 1 セルから左右にステンシルを伸ばし、2セルにします。$$\vert V_i - V_{i-1} \vert$$ と $$\vert V_{i+1} - V_i \vert$$ の比較により、追加するステンシルを決定します。
* 2 段目: 2 セルから 3 セルにステンシルを増やします。そのために現在のステンシルを $$\{a, a+1\}$$ とすると、$$\vert V_{a+1} - 2 V_a + V_{a-1} \vert$$ と $$\vert V_{a+2} - 2 V_{a+1} + V_a \vert$$ を比較します。

この操作において選ばれるステンシルの組合せは、$$\{i-2, i-1, i\}$$ (1, 2 段目の両方で左が選ばれる) $$\{i-1, i, i+1\}$$ (1段目と2段目で左右が1回ずつ選ばれる) $$\{i, i+1, i+2\}$$ (1, 2 段目の両方で右が選ばれる) の 3 つです。

![](/assets/images/simulation/reconstruction_11.png)  

これら 3 つのステンシルの組合せにおいて、$$V_{\mathrm{L}, i+1/2}$$ を計算する場合

$$
S_0 = \{i-2, i-1, i\}: \frac{2 V_{i-2} - 7 V_{i-1} + 11 V_i}{6} \tag{40}
$$

$$
S_1 = \{i-1, i, i+1 \}: \frac{- V_{i-1} + 5 V_i + 2 V_{i+1}}{6} \tag{41}
$$

$$
S_2 = \{i, i+1, i+2\}: \frac{2 V_{i} + 5 V_{i+1} - V_{i+2}}{6} \tag{42}
$$

の 3 つが考えられます。  
同様に、$$V_{\mathrm{R}, i-1/2}$$ を求める計算をしましょう。
その際の係数は、$$s \rightarrow 2-s$$ としたものに一致します。
すなわち

$$
S_0 = \{i-2, i-1, i\}: \frac{- V_{i-2} + 5 V_{i-1} + 2 V_i}{6} \tag{43}
$$

$$
S_1 = \{i-1, i, i+1 \}: \frac{2 V_{i-1} + 5 V_i - V_{i+1}}{6} \tag{44}
$$

$$
S_2 = \{i, i+1, i+2\}: \frac{11 V_{i} - 7 V_{i+1} + 2 V_{i+2}}{6} \tag{45}
$$

$$S_1$$ は [Koren](/simulation/reconstruction#koren-法) の無制限再構成に一致します。
そしてこれは [LimO3](/simulation/reconstruction#limiter-order-3-limo3) でも出てきます。
つまり [Koren](/simulation/reconstruction#koren-法) は常に $$S_1$$ を用いる手法、[LimO3](/simulation/reconstruction#limiter-order-3-limo3) は $$S_1$$ を基準に、スイッチを用いて制限関数へと切り替える手法とも言えます。
そしてこの ENO3 は、$$S_0, S_1, S_2$$ の 3 つから、状況に応じて選択する手法となります。

![](/assets/images/simulation/reconstruction_12.png)  
ENO による $$V_{\mathrm{L}, i+1/2}$$ の計算例。この場合、不連続をまたがない $$\{i-2, i-1, i\}$$ を用いた $$S_0$$ が選ばれる。  

実際のコーディング例を、次に示します。

```c
// set a (the minimum index of stencils)
a = i;
// 1st step: compare left-sided difference & right-sided difference
if fabs(V[i] - V[i-1]) < fabs(V[i+1] - V[i]) a = i - 1;
else a = i;
// 2nd step
d2l = V[a+1] - 2.0 * V[a] + V[a-1];
d2r = V[a+2] - 2.0 * V[a+1] + V[a];
if (fabs(d2l) < fabs(d2r)) a--;

V0 = V[a];
V1 = V[a+1];
V2 = V[a+2];

if (a == i - 2) {
  Vl[i] = (2.0 * V0 - 7.0 * V1 + 11.0 * V2) / 6.0;
  Vr[i-1] = (- V0 + 5.0 * V1 + 2.0 * V2) / 6.0;
}
else if (a == i - 1) {
  Vl[i] = (- V0 + 5.0 * V1 + 2.0 * V2) / 6.0;
  Vr[i-1] = (2.0 * V0 + 5.0 * V1 - V2) / 6.0;
}
else if (a == i) {
  Vl[i] = (2.0 * V0 + 5.0 * V1 - V2) / 6.0;
  Vr[i-1] = (11.0 * V0 - 7.0 * V1 + 2.0 * V2) / 6.0;
}
```

TVD 手法は「計算時間を進めても、全変動を絶対に増やさない」という厳しい保証を課していました。
その代償として、極値部分での鈍り (クリッピング) が生じる問題があります。
ENO では TVD 性を捨てる代わりに、滑らかな極値でも精度が低下しません。
振動が発生する可能性はゼロではないものの、$$\Delta x \rightarrow 0$$ の極限では必ず振動が消える、というのが essentially non-oscillatory の所以です。
ENO のステンシル選択は、どこが滑らかかだけを判定しています。
極値かどうかは判定しておらず、滑らかでありさえすれば ENO で指定した $$k$$ 次の精度を達成することができます。
ここで具体的に示したのは $$k=3$$ 次の式ですが、$$k=4, 5, ...$$ の高次に任意に拡張することが可能です。
また [LimO3](/simulation/reconstruction#limiter-order-3-limo3) のように、自分で調整するパラメータが存在しません。
ただし、短所もあります。
データのわずかな変化 (不連続さ) によりステンシル選択が不連続に切り替わります。
これにより、数値流束が微分不可能な関数になり得ます。
またステンシル選択が、流体の質量密度 $$\rho$$ や 流体速度 $$v$$ によって変化する可能性があります。
成分ごとに異なるステンシルが選択されることにより、不整合が発生し得ます。
そしてコーディング例を見ていただければ分かる通り、`if` 文による分岐が多いのも特徴です。
このため、GPU 計算などには不向きな手法と言えるでしょう。  
$$k = 3$$ の場合、$$2 k - 1 = 5$$ 個のセルにアクセスしながら、実際に使うのは $$k$$ 個のセルのみです。
5 点を利用しているにも関わらず、3 次精度にとどまっています。
これはデータを無駄にしていることになり、メモリ使用量などの増加が見込まれます。
これを解消した手法が、5 次精度の部分で紹介する Wighted ENO (WENO) スキームです。
これは 3 つの候補 $$S_0, S_1, S_2$$ を適当に重み付けして足し合わせることで、5 点から 5 次の精度を実現するというものです。

{% include adsense.html %} 

## 空間 5 次精度手法

最後に、空間 5 次精度を達成する手法についてみていきましょう。

```
詳細な導出は省略しています。時間があればそのうち加筆したいです。
```

### Weighted ENO (WENO)

これは [Jiang & Shu (1996)](https://www.sciencedirect.com/science/article/abs/pii/S0021999196901308) で提案された手法です。
先ほどの ENO で出てきた 3 つの候補 $$S_0, S_1, S_2$$ を、適当に重み付けして用いるというのが、WENO スキームです。

$$
V_{\mathrm{L}, i+1/2} 
= w_0 \frac{2 V_{i-2} - 7 V_{i-1} + 11 V_i}{6} + w_1 \frac{-V_{i-1} + 5 V_i + 2 V_{i+1}}{6} + w_2 \frac{2 V_i + 5 V_{i+1} - V_{i+2}}{6} \tag{46}
$$

ここで重み $$w_\ell \ (\ell = 0, 1, 2)$$ は、次のように与えられます。

$$
w_\ell 
= \frac{\alpha_\ell}{\sum_{m=0}^2 \alpha_m}, \quad
\alpha_\ell 
= \frac{d_\ell}{(\beta_\ell + \epsilon)^2} \tag{47}
$$

さらに $$d_0 = 1/10, d_1 = 6/10, d_2 = 3/10$$ で、この係数 $$d_\ell$$ は 5 次精度近似の場合に与えられる最適な重みから計算されます。
そして $$\epsilon$$ は、$$\beta_\ell$$ が小さな場合にゼロ除算を防ぐための小さな値で、[Jiang & Shu (1996)](https://www.sciencedirect.com/science/article/abs/pii/S0021999196901308) では $$\epsilon = 10^{-6}$$ が用いられています。
最後に $$\beta_\ell$$ は

$$
\begin{align}
\beta_0 
&= \frac{13}{12} (V_{i-2} - 2 V_{i-1} + V_i)^2 + \frac{1}{4} (V_{i-2} - 4 V_{i-1} + 3 V_i)^2 \notag \\
&= \frac{13}{12} (\Delta_{i+1/2} - \Delta_{i-1/2})^2 + \frac{1}{4} (3 \Delta_{i-1/2} - \Delta_{i-3/2})^2 \tag{48}
\end{align}
$$

$$
\begin{align}
\beta_1 
&= \frac{13}{12} (V_{i-1} - 2 V_{i} + V_{i+1})^2 + \frac{1}{4} (V_{i-1} - V_{i+1})^2 \notag \\
&= \frac{13}{12} (\Delta_{i+1/2} - \Delta_{i-1/2})^2 + \frac{1}{4} (\Delta_{i+1/2} + \Delta_{i-1/2})^2 \tag{49}
\end{align}
$$

$$
\begin{align}
\beta_2 
&= \frac{13}{12} (V_{i} - 2 V_{i+1} + V_{i+2})^2 + \frac{1}{4} (3 V_{i} - 4 V_{i+1} + V_{i+2})^2 \notag \\
&= \frac{13}{12} (\Delta_{i+3/2} - \Delta_{i+1/2})^2 + \frac{1}{4} (\Delta_{i+3/2} - 3 \Delta_{i+1/2})^2 \tag{50}
\end{align}
$$

で与えられます。  
この $$\beta_\ell$$ は $$\Delta$$ の差で書かれていることからわかるように、補間を行う変数の滑らかさを表す指標となっています。
実装例は次のようになります。

```c
// set small epsilon 
eps = 1.0e-6;
// set d0, d1, d2 for left side
d0l = 0.1;
d1l = 0.6;
d2l = 0.3;
// set d0, d1, d2 for right side
d0r = 0.3;
d1r = 0.6;
d2r = 0.1;
// set coefficients for beta
c1 = 13.0 / 12.0;
c2 = 0.25;
// compute beta 
beta0 = c1 * (V[i-2] - 2.0 * V[i-1] + V[i]) ** 2 + c2 * (V[i-2] - 4.0 * V[i-1] + 3.0 * V[i]) ** 2;
beta1 = c1 * (V[i-1] - 2.0 * V[i] + V[i+1]) ** 2 + c2 * (V[i-1] - V[i+1]) ** 2;
beta2 = c1 * (V[i] - 2.0 * V[i+1] + V[i+2]) ** 2 + c2 * (3.0 * V[i] - 4.0 * V[i+1] + V[i+2]) ** 2;
// compute inverse of (beta + epsilon) ^ 2
r0 = 1.0 / (beta0 + eps) ** 2;
r1 = 1.0 / (betar + eps) ** 2;
r2 = 1.0 / (beta2 + eps) ** 2;
// compute alpha0, alpha1, alpha2 for left side
alpha0l = d0l * r0;
alpha1l = d1l * r1;
alpha2l = d2l * r2;
oneosumalphal = 1.0 / (alpha0l + alpha1l + alpha2l);
// compute weights for left side
w0l = alpha0l * oneosumalphal;
w1l = alpha1l * oneosumalphal;
w2l = alpha2l * oneosumalphal;
// compute S0, S1, S2 for left side
S0l = (2.0 * V[i-2] - 7.0 * V[i-1] + 11.0 * V[i]) / 6.0;
S1l = (- V[i-1] + 5.0 * V[i] + 2.0 * V[i+1]) / 6.0;
S2l = (2.0 * V[i] + 5.0 * V[i+1] - V[i+2]) / 6.0;
// compute Vl
Vl[i] = w0l * S0l + w1l * S1l + w2l * S2l;
// compute alpha0, alpha1, alpha2 for right side
alpha0r = d0r * r0;
alpha1r = d1r * r1;
alpha2r = d2r * r2;
oneosumalphar = 1.0 / (alpha0r + alpha1r + alpha2r);
// compute weights for right side
w0r = alpha0r * oneosumalphar;
w1r = alpha1r * oneosumalphar;
w2r = alpha2r * oneosumalphar;
// compute S0, S1, S2 for right side
S0r = (- V[i-2] + 5.0 * V[i-1] + 2.0 * V[i]) / 6.0;
S1r = (2.0 * V[i-1] + 5.0 * V[i] - V[i+1]) / 6.0;
S2r = (11.0 * V[i] - 7.0 * V[i+1] + 2.0 * V[i+2]) / 6.0;
// compute Vr
Vr[i-1] = w0r * S0r + w1r * S1r + w2r * S2r;
```

ENO が 5 点で 3 次だったのに比べると、5 点から 5 次精度を成功させた WENO はデータの使用効率が向上していることがわかります。
また重みが $$\beta_\ell$$ の滑らかな関数であるため、ENO でのステンシル切り替えに伴う不連続性などの問題が解消されています。
`if` 文のような分岐もなく、実装も単純なのも利点です。
WENO は他の 3 次・5 次スキームより散逸的とされていますが、その分、多くのケースでロバストに計算を進めることができます。
もちろん、短所もあります。
それは臨界点 (1 階微分がゼロとなる点、極値も含まれる) で精度が 3 次に落ちることです。
先ほどは長所として挙げたロバスト性ですが、逆に言えば散逸が大きいと言い換えることもできます。
さらに (47) 式で出てきた $$\epsilon$$ は $$\beta_\ell$$ と同じ次元です。
$$\beta_\ell$$ は $$V^2$$ の次元を持つため、補間を行う物理量によって変数のスケールが変化します。
よって、この $$\epsilon$$ も他の変数と同様に規格化するか、後述の WENO-Z と呼ばれる手法を用いるのが良いでしょう。
最後に、この $$\epsilon$$ をめぐって次のような現象も起きます。
(48)-(50)式からわかるように、$$\beta_\ell$$ は $$\Delta x \rightarrow 0$$ の極限でゼロに漸近するような関数です。
すると $$\Delta x$$ を小さくしてシミュレーション解像度を上げていったとき、ある解像度以上では (47) 式の $$\alpha_\ell$$ の分母において $$\epsilon$$ が支配的になります。
これは $$\alpha_\ell \approx d_\ell / \epsilon^2$$ のようになるため、最終的に $$w_\ell \approx d_\ell$$ となります。
このような理由から WENO は、ある解像度から線形の 5 次スキームに変化します。
このため、収束テストでは誤差が理想的な 5 次精度を達成しますが、その分、衝撃波などの非線形な現象を正しく捉えることができなくなります。
このような理由からも、WENO-Z を用いるのが良いとされています。

### WENO-Z

先ほどの [WENO](/simulation/reconstruction#weighted-eno-weno) では、臨界点で精度が落ちる欠点がありました。
これを簡単な改良で克服したのが、[Borges et al. (2008)](https://www.sciencedirect.com/science/article/abs/pii/S0021999107005232) で提案された WENO-Z です。
WENO-Z では、$$\alpha_\ell$$ の計算を変えます。

$$
\alpha_\ell^\mathrm{Z} 
= d_\ell \left\{ 1 + \left( \frac{\vert \beta_0 - \beta_2 \vert}{\beta_\ell + \epsilon} \right)^p \right\} \tag{51}
$$

ここで $$p$$ は非線形性を調整するパラメータです。
$$p = 1$$ ならば WENO-Z は4 次精度になりますが、滑らかな部分での散逸が小さく、結果として高解像度を与えます。
$$p = 2$$ ならば 5 次精度になりますが、滑らかな部分での散逸が大きくなり、結果として低い解像度の結果を得ます。
$$p \rightarrow \infty$$ では完全な線形 5 次手法に一致し、衝撃波などの非線形現象を捉える能力がなくなります。
よって実用では、$$p = 1$$ が用いられ、これを WENO-Z として紹介している論文も多くあります。
(51) 式以外の部分は変えません。
よって、実装例もほぼ変わらず、次のようになります。

```c
// set small epsilon 
eps = 1.0e-40;
// set d0, d1, d2 for left side
d0l = 0.1;
d1l = 0.6;
d2l = 0.3;
// set d0, d1, d2 for right side
d0r = 0.3;
d1r = 0.6;
d2r = 0.1;
// set coefficients for beta
c1 = 13.0 / 12.0;
c2 = 0.25;
// compute beta 
beta0 = c1 * (V[i-2] - 2.0 * V[i-1] + V[i]) ** 2 + c2 * (V[i-2] - 4.0 * V[i-1] + 3.0 * V[i]) ** 2;
beta1 = c1 * (V[i-1] - 2.0 * V[i] + V[i+1]) ** 2 + c2 * (V[i-1] - V[i+1]) ** 2;
beta2 = c1 * (V[i] - 2.0 * V[i+1] + V[i+2]) ** 2 + c2 * (3.0 * V[i] - 4.0 * V[i+1] + V[i+2]) ** 2;
// compute tau = |beta0 - beta2|
tau = fabs(beta0 - beta2);
// compute common parts
r0 = 1.0 + tau / (beta0 - eps);
r1 = 1.0 + tau / (beta1 - eps);
r2 = 1.0 + tau / (beta2 - eps);
// compute alpha0, alpha1, alpha2 for left side
alpha0l = d0l * r0;
alpha1l = d1l * r1;
alpha2l = d2l * r2;
oneosumalphal = 1.0 / (alpha0l + alpha1l + alpha2l);
// compute weights for left side
w0l = alpha0l * oneosumalphal;
w1l = alpha1l * oneosumalphal;
w2l = alpha2l * oneosumalphal;
// compute S0, S1, S2 for left side
S0l = (2.0 * V[i-2] - 7.0 * V[i-1] + 11.0 * V[i]) / 6.0;
S1l = (- V[i-1] + 5.0 * V[i] + 2.0 * V[i+1]) / 6.0;
S2l = (2.0 * V[i] + 5.0 * V[i+1] - V[i+2]) / 6.0;
// compute Vl
Vl[i] = w0l * S0l + w1l * S1l + w2l * S2l;
// compute alpha0, alpha1, alpha2 for right side
alpha0r = d0r * r0;
alpha1r = d1r * r1;
alpha2r = d2r * r2;
oneosumalphar = 1.0 / (alpha0r + alpha1r + alpha2r);
// compute weights for right side
w0r = alpha0r * oneosumalphar;
w1r = alpha1r * oneosumalphar;
w2r = alpha2r * oneosumalphar;
// compute S0, S1, S2 for right side
S0r = (- V[i-2] + 5.0 * V[i-1] + 2.0 * V[i]) / 6.0;
S1r = (2.0 * V[i-1] + 5.0 * V[i] - V[i+1]) / 6.0;
S2r = (11.0 * V[i] - 7.0 * V[i+1] + 2.0 * V[i+2]) / 6.0;
// compute Vr
Vr[i-1] = w0r * S0r + w1r * S1r + w2r * S2r;
```

先ほど説明したように、WENO-Z では臨界点での精度が良くなっています。
$$p=2$$ では完全に 5 次精度となり、$$p=1$$ でも 4 次に改善しています。
実装の追加コストもほとんどないのも、良い点です。
同じく [WENO](/simulation/reconstruction#weighted-eno-weno) を改善した手法に [WENO-M (Mapped WENO)](https://www.sciencedirect.com/science/article/abs/pii/S0021999105000409) と呼ばれるものがありますが、こちらは写像関数を用います。
写像関数の評価を必要とするため、コストが高いという欠点がありましたが、WENO-Z はこのような高価な計算・評価を必要としません。
そして、[WENO](/simulation/reconstruction#weighted-eno-weno) が持っていた $$\epsilon$$ 依存性の問題も改善されています。
WENO-Z でも $$\beta_\ell \rightarrow 0$$ の極限で $$\alpha_\ell \rightarrow d_\ell$$ となることは変わりません。
しかし、$$\vert \beta_0 - \beta_2 \vert = \mathcal{O}(\Delta x^5)$$ であるため、$$\epsilon$$ に関係なく $$d_\ell$$ への収束が素早く起こります。
このため、$$\epsilon$$ を [WENO](/simulation/reconstruction#weighted-eno-weno) よりも小さく設定することが可能となります。
具体的には、$$\epsilon = 10^{-40}$$ がよく用いられているようです。
ただし、$$\epsilon$$ が無次元でない問題は [WENO](/simulation/reconstruction#weighted-eno-weno) から引き続き残っているため、$$\epsilon$$ の無次元化は WENO-Z でも必要です。
高解像で細かな構造を捉えることを可能にする分、[WENO](/simulation/reconstruction#weighted-eno-weno) よりもロバスト性に欠けることも報告されています。

### Monotonicity Preserving

この手法は [Suresh & Huynh (1997)](https://www.sciencedirect.com/science/article/abs/pii/S0021999197957454?via%3Dihub) で提案されたものです。
5 次精度手法であるため、これを MP5 と呼びます。
MP 手法は、局所的な極値と不連続な箇所を区別するために、5 点以上のステンシルを用います。

![](/assets/images/simulation/reconstruction_13.png)  
MP5 の概念図。$$(i-1, i, i+1)$$ の 3 点 (黒点) のみだと、不連続と極値を区別できない。しかし、$$i-2, i+2$$ の 2 点 (白点) も用いることで、この 2 つの区別が可能となる。

そして MP5 では最初に正確な多項式での内挿を考え、次にその結果を制限することで、不連続点近傍での単調性と滑らかな領域での精度を保ちます。
それでは MP5 の具体的な方法を見ていきましょう。
$$V_{\mathrm{L}, i+1/2}$$ を計算することを考えます。
最初に、制限のない 5 次精度再構成を計算します。

$$
V_{\mathrm{L}} 
= \frac{2 V_{i-2} - 13 V_{i-1} + 47 V_i + 27 V_{i+1} - 3 V_{i+2}}{60} \tag{52}
$$

この係数は、実は [WENO](/simulation/reconstruction#weighted-eno-weno) での最適な重み $$1/10, 6/10, 3/10$$ を $$S_0, S_1, S_2$$ に適用した場合に一致します。
すなわち MP5 と [WENO](/simulation/reconstruction#weighted-eno-weno) は同じ多項式から出発している手法と言えます。
そしてこの 2 つの手法は、不連続部分への対処法に違いがあります。  
次に、単調性を制限するための量を計算しましょう。
これは次のように与えられます。

$$
V_\mathrm{MP} 
= V_i + \mathrm{minmod} (\Delta_{i+1/2}, \alpha \Delta_{i-1/2}) \tag{53}
$$

ここで $$\alpha \geq 2$$ であり、通常は $$\alpha = 4$$ が用いられます。
もし $$V_\mathrm{L}$$ が $$V_i$$ と $$V_\mathrm{MP}$$ の間にある場合、これをそのまま $$V_{\mathrm{L}, i+1/2}$$ として採用します。
すなわち

$$
(V_\mathrm{L} - V_i) (V_\mathrm{L} - V_\mathrm{MP}) \leq \epsilon \ \Longrightarrow \ 
V_{\mathrm{L}, i+1/2} 
= V_\mathrm{L} \tag{54}
$$

です。
しかしもし $$V_\mathrm{L}$$ が $$V_i$$ と $$V_\mathrm{MP}$$ の間にない場合には、次の段階に進みます。  
2階の微分に対応する量を $$D_i = V_{i+1} - 2 V_{i} + V_{i-1}$$ として

$$
D_{\mathrm{M4}, i+1/2} 
= \mathrm{minmod4} (4 D_i - D_{i+1}, 4 D_{i+1} - D_i, D_i, D_{i+1}) \tag{55}
$$

$$
D_{\mathrm{M4}, i-1/2} 
= \mathrm{minmod4} (4 D_i - D_{i-1}, 4 D_{i-1} - D_i, D_i, D_{i-1}) \tag{56}
$$

のようにして、曲率について計算します。
ここで 4 つの引数を持つ minmod 関数は、次のように与えられます。

$$
\begin{align}
\mathrm{minmod4} (w, a, b, c) 
&= \frac{1}{8} (\mathrm{sgn}(w) + \mathrm{sgn}(a)) \vert (\mathrm{sgn}(w) + \mathrm{sgn}(b)) (\mathrm{sgn}(w) + \mathrm{sgn}(c)) \vert \notag \\
& \qquad \qquad \times \mathrm{min} (\vert w \vert, \vert a \vert, \vert b \vert, \vert c \vert) \tag{57}
\end{align}
$$

この関数は、4 つの引数 $$w, a, b, c$$ が全て同符号のときのみゼロでない値を返します。
どれか一つでも異なる符号を持つと、$$(\mathrm{sgn} \cdots )$$ の部分からゼロとなります。
例えば全てが正の実数の場合には、$$w, a, b, c$$ の中の最小値が返されます。  
ここまでの量を用い、4 つの基準値を計算しましょう。
まずは上限を表す値です。

$$
V_\mathrm{UL} 
= V_i + \alpha (V_i - V_{i-1}) \tag{58}
$$

次に、平均値を算出しておきます。

$$
V_\mathrm{AV} 
= \frac{V_i + V_{i+1}}{2} \tag{59}
$$

そして中央値を求めます。

$$
V_\mathrm{MD} 
= V_\mathrm{AV} - \frac{1}{2} D_{\mathrm{M4}, i+1/2} \tag{60}
$$

最後に、大きな曲率の場合の値を基準として用います。

$$
V_\mathrm{LC} 
= V_i + 0.5 (V_i - V_{i-1}) + \frac{4}{3} D_{\mathrm{M4}, i-1/2} \tag{61}
$$

これらを用い、$$V_{\mathrm{L}, i+1/2}$$ が許容される最小値・最大値を計算します。

$$
V_\mathrm{min} 
= \max (\min (V_i, V_{i+1}, V_\mathrm{MD}), \min (V_i V_\mathrm{UL}, V_\mathrm{LC})) \tag{62}
$$

$$
V_\mathrm{max} 
= \min (\max (V_i, V_{i+1}, V_\mathrm{MD}), \max (V_i V_\mathrm{UL}, V_\mathrm{LC})) \tag{63}
$$

この 2 つの値と (52) 式から、中央値を計算します。

$$
V_{\mathrm{L}, i+1/2} 
= \mathrm{median} (V_\mathrm{L}, V_\mathrm{min}, V_\mathrm{max})
= V_\mathrm{L} + \mathrm{minmod} (V_\mathrm{min} - V_\mathrm{L}, V_\mathrm{max} - V_\mathrm{L}) \tag{64}
$$

右側の値 $$V_{\mathrm{R}, i-1/2}$$ は、鏡映しにすることで得られます。
すなわち、これまでの数式において添字を $$(i-2, i-1, i, i+1, i+2) \rightarrow (i+2, i+1, i, i-1, i-2)$$ のようにすることで計算できます。  
実装例は次のようになります。

```c
// set constants for MP5
alpha = 4.0;
eps = 1.0e-10;

// define MP5 function
double mp5(double m2, double m1, double c, double p1, double p2)
{
    // compute VL, left sided value from interpolation
    fl = (2.0 * m2 - 13.0 * m1 + 47.0 * c + 27.0 * p1 - 3.0 * p2) / 60.0;
    // compute V[i] - V[i-1]
    dm = c - m1;
    // compute V[i+1] - V[i]
    dp = p1 - c;
    // compute VMP = V[i] + minmod(V[i+1]-V[i], alpha*(V[i]-V[i-1]))
    fMP = c + minmod2(dp, alpha * dm);
    // if V[i] ≤ Vl ≤ VMP, return VL
    if ((fl - c) * (fl - fMP) <= eps) return fl;
    // if not, proceed to next step
    else{

      dcm = c - 2.0 * m1 + m2;
      dc = p1 - 2.0 * c + m1;
      dcp = p2 - 2.0 * p1 + c;
      dM4p = minmod4(4.0 * dc - dcp, 4.0 * dcp - dc, dc, dcp);
      dM4m = minmod4(4.0 * dc - dcm, 4.0 * dcm - dc, dc, dcm);
      fUL = c + alpha * dm;
      fAV = 0.5 * (c + p1);
      fMD = fAV - 0.5 * dM4p;
      fLC = c + 0.5 * dm + 4.0 / 3.0 * dM4m;
      fLB = fmax(fmin(fmin(c, p1), fMD), fmin(fmin(c, fUL), fLC));
      fUB = fmin(fmax(fmax(c, p1), fMD), fmax(fmax(c, fUL), fLC));
      return fl + minmod2(fLB - fl, fUB - fl);
    }
}

Vl[i] = mp5(V[i-2], V[i-1], V[i], V[i+1], V[i+2]);
Vr[i-1] = mp5(V[i+2], V[i+1], V[i], V[i-1], V[i-2]);
```

## 参考文献

[1] [Koren, 1993, "A Robust Upwind Discretization Method for Advection, Diffusion, and Source Terms"](https://ir.cwi.nl/pub/5293/05293D.pdf)  
[2] [Colella & Woodward, 1984, "The Piecewise Parabolic Method (PPM) for gas-dynamical simulations"](https://www.sciencedirect.com/science/article/abs/pii/0021999184901438)  
[3] [MacCann, "Note: Piecewise Parabolic Method (PPM)"](https://web.physics.ucsb.edu/~mccann/notes/PPM.pdf)  
[4] [Colella & Sekora, 2008, "A limiter for PPM that preserves accuracy at smooth extrema"](https://www.sciencedirect.com/science/article/abs/pii/S0021999108001435)  
[5] [Sekora & Colella, 2009, "Extremum-Preserving Limiters for MUSCL and PPM"](https://arxiv.org/abs/0903.4200)  
[6] [Mignone, 2014, "High-order conservative reconstruction schemes for finite volume methods in cylindrical and spherical coordinates"](https://www.sciencedirect.com/science/article/abs/pii/S0021999114002538?via%3Dihub)  
[7] [Cada & Torrilhon, 2009, "Compact third-order limiter functions for finite volume methods"](https://www.sciencedirect.com/science/article/abs/pii/S0021999109000953)  
[8] [Mignone, 2010, "High-order conservative finite difference GLM-MHD schemes for cell-centered MHD"](https://www.sciencedirect.com/science/article/abs/pii/S0021999110001890?via%3Dihub)  
[9] [Schmidtmann et al., 2016, "On third-order limiter functions for finite volume methods"](https://link.springer.com/article/10.1007/s00574-016-0183-5)  
[10] [Harten et al., 1987, "Uniformly high order accurate essentially non-oscillatory schemes"](https://www.sciencedirect.com/science/article/abs/pii/0021999187900313?via%3Dihub)  
[11] [Jiang & Shu, 1996, "Efficient Implementation of Weighted ENO Schemes"](https://www.sciencedirect.com/science/article/abs/pii/S0021999196901308)  
[12] [Borges et al., 2008, "An improved weighted essentially non-oscillatory scheme for hyperbolic convervataion laws"](https://www.sciencedirect.com/science/article/abs/pii/S0021999107005232)  
[13] [Henrick et al., 2005, "Mapped weighted essentially non-oscillatory schemes: Achieving optimal order near critical points"](https://www.sciencedirect.com/science/article/abs/pii/S0021999105000409)  
[14] [Suresh & Huynh, 1997, "Accurate Monotonicity-Preserving Schemes With Runge-Kutta Time Stepping"](https://www.sciencedirect.com/science/article/abs/pii/S0021999197957454?via%3Dihub)  
[15] [藤井孝藏, "流体力学の数値計算法"](https://link.amazon/B0evXla4k)  
[16] [冨坂幸治, 花輪知幸, 牧野淳一郎, "シミュレーション天文学"](https://link.amazon/B05g3abjX)  
[17] [CANS+ ドキュメント](https://www.astro.phys.s.chiba-u.ac.jp/cans/doc/index.html)  

{% include adsense.html %} 
