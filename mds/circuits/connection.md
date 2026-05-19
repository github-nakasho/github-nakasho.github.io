---
layout: default
title: 回路素子の結合
parent: 電気回路
math: mathjax3
permalink: /circuits/connection
nav_order: 2
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

# 回路素子とその結合

回路素子の結合について、いくつかのトピックスをまとめています。

## 回路における重ね合わせの原理

重ね合わせの原理は、物理学ではしばしば重要な役割を果たします。
回路論においてもこれは同様です。
この原理が回路論において成り立つ理由は、[オームの法則](/circuits/steady_current#オームの法則)が線形であることに由来します。  
オームの法則は、抵抗の両端の電位を $$V_1, V_2$$ としたとき

$$
V_1 - V_2 
= RI \tag{1}
$$

であると言っています。
今、1つの実験を行った時の測定値 $$V_1^a, V_2^a, I^a$$ について

$$
V_1^a - V_2^a 
= R I^a \tag{2}
$$

という関係が得られたとしましょう。
そして次の別の実験での値 $$V_1^b, V_2^b, I^b$$ について

$$
V_1^b - V_2^b 
= R I^b \tag{3}
$$

となったとします。
もし、第3の実験での測定値 $$V_1^c, V_2^c$$ について

$$
\left\{ \begin{array}{l}
V_1^c 
= V_1^a + V_1^b \\
V_2^c 
= V_2^a + V_2^b 
\end{array} \right. \tag{4}
$$

であるならば、当然

$$
V_1^c - V_2^c 
= R I^c \tag{5}
$$

で決まる $$I^c$$ は

$$
I^c 
= I^a + I^b \tag{6}
$$

という関係を持ちます。
すなわち、電位差が前の2つの実験のときの和に等しければ、電流も前の2つの実験で得られたものの和に等しくなります。
これが、回路における重ね合わせの原理です。  
例えば次の図のように考えてみましょう。

![](/assets/images/circuits/connection_01.png)  

(a)の場合、つまり左側に起電力 $$E_1$$ の電池を繋ぎ、右側は短絡した場合には、中央の電流計に $$I^a$$ の電流が流れたとします。
次に(b)のように右側に起電力 $$E_2$$ の電池を繋ぎ、左側を短絡したとき、電流計に $$I^b$$ の電流が流れたとします。
そして左側に $$E_1$$、右側に $$E_2$$ の電池を繋いだ(c)の図の場合には、電流は

$$
I^c 
= I^a + I^b \tag{7} 
$$

となります。
なぜなら、(a), (b), (c)の3つの場合について、各部の電位が全て

$$
V_i^c 
= V_i^a + V_i^b \tag{8}
$$

のようになり、また各部の電流が全て

$$
I_i^c 
= I_i^a + I_i^b \tag{9}
$$

の関係を満たすと仮定すれば、(a), (b)の場合に回路の方程式 [(オームの法則)](/circuits/steady_current#オームの法則)が満たされているとしたとき、(c)の場合も全ての方程式が満たされるためです。

## 等価回路

電池などのように起電力を持つ回路素子は、電源と呼ばれます。
しかし、その端子電圧 (terminal voltage) は電流を取ると下がることが知られています。
電流を $$I$$、起電力を $$E$$ とするとき、端子電圧 $$V$$ は近似的に

$$
V 
= E - R_I I \tag{10}
$$

のように表されます。
$$R_I$$ を電源の内部抵抗と呼びます。  
電池の電圧-電流特性が(10)式で表されるとき、これを回路記号で次のように表すことができます。

![](/assets/images/circuits/connection_02.png)  

これは一定の起電力 $$E$$ を持つ電池と抵抗 $$R_I$$ とを直列に書き表したものです。
このように1つの物体や回路の一部の電気的特性を考えるのに、これをある回路に置き換えて考えることができる場合、その回路を等価回路 (equivalent circuit) と呼びます。

### テブナンの定理

次の図の右パネルのように、複雑な回路の2端子間に新しく抵抗 $$R_\mathrm{L}$$ を繋いだときに、この抵抗に流れる電流を計算したいとしましょう。

![](/assets/images/circuits/connection_03.png)  

このとき、回路網について忠実に[キルヒホッフの法則](/circuits/steady_current#定常電流電気回路とキルヒホッフの法則)を適用して計算する代わりに、その2端子からみた回路網を定電圧源 $$E_\mathrm{eq}$$ と抵抗 $$R_\mathrm{eq}$$ を持つ等価回路に置き換えます。
これにより、図の左パネルのように考えることができるようになります。
ここで $$E_\mathrm{eq}$$ は $$R_L$$ を接続しないときの2端子間の電圧であり、$$R_\mathrm{eq}$$ は回路網内の全起電力をゼロに (ショート) したときの2端子間の抵抗です。
この関係は、[重ね合わせの原理](/circuits/connection#回路における重ね合わせの原理)から証明することができ、これをテブナンの定理 (Thévinin's theorem) と呼びます。  
$$R_\mathrm{eq}$$ はまた、$$E_\mathrm{eq}$$ と2端子間の短絡電流との比として求めることが可能です。
このように、テブナンの定理を用いて $$E_\mathrm{eq}, R_\mathrm{eq}$$ を求めることができれば、負荷抵抗 $$R_\mathrm{L}$$ を流れる電流は即座に

$$
I 
= \frac{E_\mathrm{eq}}{R_\mathrm{eq} + R_\mathrm{L}} \tag{11}
$$

のように与えられるとわかります。

### ノートンの定理

先ほどの電圧源と抵抗で表される等価回路の代わりに、内部抵抗が無限大の電流源と抵抗で表現することもできます。
等価電圧源の起電力が $$E_\mathrm{eq}$$ で、等価抵抗が $$R_\mathrm{eq}$$ である回路は、電流が $$I_\mathrm{eq} = E_\mathrm{eq} / R_\mathrm{eq}$$ である定電流源と抵抗 $$R_\mathrm{eq}$$ とにより、次の図のように書くこともできます。

![](/assets/images/circuits/connection_04.png)  

このように、回路網の2端子特性を定電流源 $$I_\mathrm{eq}$$ と等価抵抗 $$R_\mathrm{eq}$$ で表すことができるますが、これをノートンの定理 (Norton's theorem) と呼びます。

{% include adsense.html %}

### 補償定理

電圧源もしくは電流源を含む回路において、抵抗 $$R_L$$ に電流 $$I_L$$ が流れているとしましょう。
抵抗 $$R_L$$ が $$\Delta R_L$$ だけ変化したときの電流変化 $$\Delta I_L$$ は、回路内の電圧源もしくは電流源をゼロとし、抵抗 $$\Delta R_L$$ に直列に電圧源 $$I_L \Delta R_L$$ を挿入した時に流れる電流から求めることができます。
これを補償定理と呼びます。  
次の図のパネル(a)のように、[テブナンの定理](/circuits/connection#テブナンの定理)から任意の電気回路は電圧 $$V_\mathrm{eq}$$ と内部抵抗 $$R_\mathrm{eq}$$ の直列回路で表すことができます。

![](/assets/images/circuits/connection_05.png)  

そしてこの回路に負荷抵抗 $$R_\mathrm{L}$$ が直列に接続されたときに流れる電流 $$I_\mathrm{L}$$ は

$$
I_\mathrm{L} 
= \frac{V_\mathrm{eq}}{R_\mathrm{eq} + R_\mathrm{L}} \tag{12}
$$

のようになります。
そして負荷抵抗が $$\Delta R_\mathrm{L}$$ だけ変化した場合に流れる電流を求めましょう。
これは $$R_\mathrm{L}$$ と $$\Delta R_\mathrm{L}$$ の抵抗を直列に繋いだ場合に等しく、図のパネル(b)のように描くことができます。
このときの電流は

$$
I_\mathrm{L} + \Delta I_\mathrm{L} 
= \frac{V_\mathrm{eq}}{R_\mathrm{eq} + R_\mathrm{L} + \Delta R_\mathrm{L}} \tag{13}
$$

のようになります。
(13)式から(12)式を差し引くことで、電流変化 $$\Delta I_\mathrm{L}$$ は

$$
\begin{align}
\Delta I_\mathrm{L} 
&= \frac{V_\mathrm{eq}}{R_\mathrm{eq} + R_\mathrm{L} + \Delta R_\mathrm{L}} - \frac{V_\mathrm{eq}}{R_\mathrm{eq} + R_\mathrm{L}} 
= - \frac{\Delta R_L}{R_\mathrm{eq} + R_\mathrm{L} + \Delta R_\mathrm{L}} \frac{V_\mathrm{eq}}{R_\mathrm{eq} + R_\mathrm{L}} \notag \\
&= - \frac{\Delta R_L I_\mathrm{L}}{R_\mathrm{eq} + R_\mathrm{L} + \Delta R_\mathrm{L}} \tag{14}
\end{align}
$$

この式は、図のパネル(c)に示すように、回路内の電圧源もしくは電流源をゼロとし、抵抗 $$\Delta R_\mathrm{L}$$ に直列に電圧源 $$I_\mathrm{L} \Delta R_\mathrm{L}$$ を挿入したときに流れる電流に等しいことがわかります。
これが補償定理です。

## 抵抗の直列結合・並列結合

すでに何度か出てきましたが、抵抗を直列につないだ場合の抵抗値の合成則について見ていきましょう。

![](/assets/images/circuits/connection_06.png)  

上図のように $$R_1, R_2$$ を直列 (series) につないだとき、この回路全体の抵抗値 $$R$$ は

$$
R 
= \frac{V_1 - V_3}{I} 
= \frac{V_1 - V_2}{I} + \frac{V_2 - V_3}{I} 
= R_1 + R_2 \tag{15}
$$

のように、各々の抵抗の和に等しくなります。  
次に、2つの抵抗を並列 (parallel) につなぐ場合を考えましょう。

![](/assets/images/circuits/connection_07.png)  

$$R_1, R_2$$ に流れる電流をそれぞれ $$I_1, I_2$$、そしてこの並列回路の両端における電位差を $$V$$ とすると

$$
I_1 
= \frac{V}{R_1}, \quad 
I_2 
= \frac{V}{R_2} \tag{16}
$$

が成り立ちます。
この並列回路に流れる電流の合計は

$$
I
= I_1 + I_2 
= \left( \frac{1}{R_1} + \frac{1}{R_2} \right) V \tag{17}
$$

です。
以上から、並列接続された抵抗全体の値 $$R$$ は

$$
R 
= \frac{V}{I} 
= \frac{1}{\frac{1}{R_1} + \frac{1}{R_2}} \ \Longrightarrow \ 
\frac{1}{R} 
= \frac{1}{R_1} + \frac{1}{R_2} \tag{18}
$$

のようになります。  
並列回路の場合、抵抗値の逆数が頻繁に出てきます。
そこでこのようなときには、抵抗値の逆数であるコンダクタンス $$G$$ (conductance) を用いるのが便利です。
抵抗は電気がどれだけ流れにくいかを表す指標で、大きいほど電流が流れにくくなります。
しかしその逆数であるコンダクタンスは、どれだけ電流が流れやすいかを表す指標で、大きいほど電流が流れやすくなります。
先ほどの並列接続の場合の合成則を、コンダクタンスを用いて書き直してみましょう。
抵抗 $$R_1, R_2$$ に対応するコンダクタンスをそれぞれ $$G_1, G_2$$ とすると

$$
I_1 
= G_1 V, \quad I_2 
= G_2 V \tag{19}
$$

より、電流の合計値は

$$
I 
= I_1 + I_2 
= (G_1 + G_2) V \tag{20}
$$

のようになります。
よって並列接続された抵抗の全体のコンダクタンス $$G$$ は

$$
G 
= \frac{I}{V} 
= G_1 + G_2 \tag{21}
$$

と求まり、式が簡素化されていることがわかります。

## 参考文献

[1] [高橋秀俊, "電磁気学"](https://amzn.to/43fQKxC)  
[2] [霜田光一, 桜井 捷海, "エレクトロニクスの基礎"](https://amzn.to/4wAOuib)  
[3] [松澤昭, "新しい電気回路＜上＞"](https://amzn.to/495eZCl)  

{% include adsense.html %}