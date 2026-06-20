---
layout: default
title: 交流における四端子回路と相反定理
parent: 電気回路
math: mathjax3
permalink: /circuits/ac_four_terminal_network
nav_order: 10
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

# 交流における相反定理と四端子回路

回路の素子のインピーダンスとその合成則を知っていれば、複雑な交流回路も計算することができます。
しかし四端子回路または四端子回路網 (four-terminal network) の性質を知っておくと、便利な場面が多くあります。
先の例で示したように、[変圧器も四端子回路の一種](/circuits/ac#補遺a-変圧器とその原理についての話題)であり、またトランジスターや変成器も四端子回路です。
ここでは、最初に[直流での相反定理](/circuits/four_terminal_network_reciprocity_theorem)の交流バージョンを見ていきましょう。
そして四端子回路の記述法や、様々な四端子回路の例について勉強しましょう。

## 交流における相反定理

電気回路の相反定理 (reciprocity theorem) は、[直流回路に対して証明しました。](/circuits/four_terminal_network_reciprocity_theorem#相反定理)
しかしこれは、$$L, C$$ を含む交流回路についても、全く同様に成立します。
次図のように、2対の端子が出ている回路において、各端子対に流れる電流を $$\mathcal{I}_1, \mathcal{I}_2$$、そしてそれぞれの端子対間の電位差を $$\mathcal{V}_1, \mathcal{V}_2$$ としましょう。

![](/assets/images/circuits/ac_four_terminal_network_01.png)  

また、この同じ回路に対し、別の場合の電流 $$\mathcal{I}_1', \mathcal{I}_2'$$ が流れ、電位差 $$\mathcal{V}_1', \mathcal{V}_2'$$ が現れたとしましょう。
このとき

$$
\mathcal{V}_1 \mathcal{I}_1' + \mathcal{V}_2 \mathcal{I}_2' 
= \mathcal{V}_1' \mathcal{I}_1 + \mathcal{V}_2' \mathcal{I}_2 \tag{1}
$$

が成り立ちます。
これが相反定理であり、これは直流の場合と全く同じ形です。
ただし、$$\mathcal{V}, \mathcal{I}$$ がこの場合には複素数であるという違いがあります。
その証明方法は、[直流の場合の相反定理](/circuits/four_terminal_network_reciprocity_theorem)の証明と全く同じです。  
ここで、電流と電圧の間の関係は全て線形であるから、$$\mathcal{I}_1, \mathcal{I}_2$$ についても、これらは電圧 $$\mathcal{V}_1, \mathcal{V}_2$$ によって、次のような線形の形で与えられるはずです。

$$
\left\{ \begin{array}{l}
\mathcal{I}_1 
= \mathcal{Y}_{11} \mathcal{V}_1 + \mathcal{Y}_{12} \mathcal{V}_2 \\
\mathcal{I}_2 
= \mathcal{Y}_{21} \mathcal{V}_1 + \mathcal{Y}_{22} \mathcal{V}_2
\end{array} \right. \tag{2}
$$

この係数 $$\mathcal{Y}_{11}, \mathcal{Y}_{12}, \mathcal{Y}_{21}, \mathcal{Y}_{22}$$ の意味は、直流のときに定義した $$G_{11}, G_{12}, G_{21}, G_{22}$$ と全く同様です。
すなわち、$$\mathcal{Y}_{11}$$ は端子対2を短絡したときの端子対1の間で測ったアドミタンスです。
そして $$\mathcal{Y}_{12}$$ は、端子対2に電圧を加え、端子対1を短絡したときに端子対1に流れる電流を表す係数を表します。
これを伝達アドミタンス (transfer admittance) と呼びます。
直流と異なるところは、やはり $$\mathcal{Y}_{11}, \mathcal{Y}_{12}, \mathcal{Y}_{21}, \mathcal{Y}_{22}$$ などが、一般に複素数であることです。
(2)式を

$$
\boldsymbol{\mathcal{I}} 
= \boldsymbol{\mathcal{Y}} \boldsymbol{\mathcal{V}}, \quad 
\boldsymbol{\mathcal{Y}} = \left( \begin{array}{cc}
\mathcal{Y}_{11} & \mathcal{Y}_{12} \\
\mathcal{Y}_{21} & \mathcal{Y}_{22}
\end{array} \right) \tag{3}
$$

のように行列とベクトルで表現したとき、$$\boldsymbol{\mathcal{Y}}$$ をアドミッタンス行列 (admittance matrix) と呼びます。
(2)式において $$\mathcal{I} \rightarrow \mathcal{I}', \mathcal{V} \rightarrow \mathcal{V}'$$ のように変えたものを、(1)式に代入すると

$$
\mathcal{V}_1 (\mathcal{Y}_{11} \mathcal{V}_1' + \mathcal{Y}_{12} \mathcal{V}_2') + \mathcal{V}_2 (\mathcal{Y}_{21} \mathcal{V}_1' + \mathcal{Y}_{22} \mathcal{V}_2') 
= \mathcal{V}_1' (\mathcal{Y}_{11} \mathcal{V}_1 + \mathcal{Y}_{12} \mathcal{V}_2) + \mathcal{V}_2' (\mathcal{Y}_{21} \mathcal{V}_1 + \mathcal{Y}_{22} \mathcal{V}_2) \tag{4}
$$

となります。
これが任意の $$\mathcal{V}_1, \mathcal{V}_2, \mathcal{V}_1', \mathcal{V}_2'$$ に対して成立するためには、$$\mathcal{V}_1 \mathcal{V}_1', \mathcal{V}_1 \mathcal{V}_2', \mathcal{V}_2 \mathcal{V}_1', \mathcal{V}_2 \mathcal{V}_2'$$ のそれぞれの係数が左右で等しくならなければなりません。
特に $$\mathcal{V}_1 \mathcal{V}_2'$$ の係数を等しいとおくと

$$
\mathcal{Y}_{12} 
= \mathcal{Y}_{21} \tag{5}
$$

が得られます。
すなわち、アドミタンス行列は対称行列です。
これも相反定理と呼びます。  
(2)式は、逆に

$$
\left\{ \begin{array}{l}
\mathcal{V}_1 
= \mathcal{Z}_{11} \mathcal{I}_1 + \mathcal{Z}_{12} \mathcal{I}_2 \\
\mathcal{V}_2 
= \mathcal{Z}_{21} \mathcal{I}_1 + \mathcal{Z}_{22} \mathcal{I}_2 
\end{array} \right. \tag{6}
$$

のように書くこともできます。
ここでも、相反定理は

$$
\mathcal{Z}_{12} 
= \mathcal{Z}_{21} \tag{7}
$$

という関係をもたらします。
(6)式を

$$
\boldsymbol{\mathcal{V}} 
= \boldsymbol{\mathcal{Z}} \boldsymbol{\mathcal{I}}, \quad 
\boldsymbol{\mathcal{Z}} 
= \left( \begin{array}{cc}
\mathcal{Z}_{11} & \mathcal{Z}_{12} \\
\mathcal{Z}_{21} & \mathcal{Z}_{22} 
\end{array} \right) \tag{8}
$$

のように書き、$$\boldsymbol{\mathcal{Z}}$$ をインピーダンス行列 (impedance matrix) と呼びます。
$$\boldsymbol{\mathcal{Y}}$$ と同様、こちらも対称行列となります。
(3)式より

$$
\boldsymbol{\mathcal{V}} 
= \boldsymbol{\mathcal{Y}}^{-1} \boldsymbol{\mathcal{I}}
$$

と(8)式を見比べれば

$$
\boldsymbol{\mathcal{Z}} 
= \boldsymbol{\mathcal{Y}}^{-1} \tag{9}
$$

のように、$$\boldsymbol{\mathcal{Z}}, \boldsymbol{\mathcal{Y}}$$ は互いに逆行列の関係にあることがわかります。  
また

$$
\left\{ \begin{array}{l}
\mathcal{V}_1 
= \mathcal{A} \mathcal{V}_2 + \mathcal{B} \mathcal{I}_2 \\
\mathcal{I}_1 
= \mathcal{C} \mathcal{V}_2 + \mathcal{D} \mathcal{I}_2 \\
\end{array} \right. \ \Longrightarrow \ 
\left( \begin{array}{c} 
\mathcal{V}_1 \\
\mathcal{I}_1
\end{array}\right) 
= \left( \begin{array}{cc}
\mathcal{A} & \mathcal{B} \\
\mathcal{C} & \mathcal{D}
\end{array} \right) \left( \begin{array}{c} 
\mathcal{V}_2 \\
\mathcal{I}_2
\end{array}\right) \tag{10}
$$

のように書いた場合、$$\mathcal{A}, \mathcal{B}, \mathcal{C}, \mathcal{D}$$ を四端子定数 (four-terminal constant) と呼びます。
またこの行列を、ABCD行列と呼びます。
$$L, C, R, M$$ から成る受動的な回路網では、先ほどの相反定理が成り立つため

$$
\mathcal{A} \mathcal{D} - \mathcal{B} \mathcal{C} 
= 1 \tag{11}
$$

の関係が成り立ちます。
また相反定理が成り立つとき、先ほどのインピーダンス行列・アドミタンス行列との間に

$$
\mathcal{Z}_{11} 
= \frac{\mathcal{A}}{\mathcal{C}}, \quad
\mathcal{Z}_{22} 
= \frac{\mathcal{D}}{\mathcal{C}}, \quad
\mathcal{Z}_{12} 
= \mathcal{Z}_{21} 
= \frac{1}{\mathcal{C}} \tag{12}
$$

$$
\mathcal{Y}_{11} 
= \frac{\mathcal{D}}{\mathcal{B}}, \quad
\mathcal{Y}_{22} 
= \frac{\mathcal{A}}{\mathcal{B}}, \quad
\mathcal{Y}_{12} 
= \mathcal{Y}_{21} 
= - \frac{1}{\mathcal{B}} \tag{13}
$$

の関係が成り立ちます。  
四端子回路では、入出力の電圧電流の中の2つを独立変数とすれば、他の2つの変数が決定されます。
したがって、一般に2行2列の行列で回路を表現することができます。
そこで、ABCD行列・インピーダンス行列・アドミタンス行列のほかに、入力の電流および出力の電圧を独立変数として、入力電圧および出力電流を表現する方法もあります。
この表示の方法は、入出力の量が混在して使用されているため、ハイブリッドパラメータ (hybrid parameter, hパラメータ) 表示と言います。
今の表現を数式で表すと

$$
\left( \begin{array}{c}
\mathcal{V}_1 \\
\mathcal{I}_2
\end{array} \right) 
= \left( \begin{array}{cc}
\mathcal{h}_{11} & \mathcal{h}_{12} \\
\mathcal{h}_{21} & \mathcal{h}_{22}
\end{array} \right) \quad \mathrm{or} \quad \left( \begin{array}{c}
\mathcal{V}_1 \\
\mathcal{I}_2
\end{array} \right) 
= \left( \begin{array}{cc}
\mathcal{h}_\mathrm{i} & \mathcal{h}_\mathrm{r} \\
\mathcal{h}_\mathrm{f} & \mathcal{h}_\mathrm{o}
\end{array} \right) \tag{14}
$$

のようになります。
それぞれの添字 $$\mathrm{i}$$ はinput、$$\mathrm{r}$$ はreverse、$$\mathrm{f}$$ はforward、$$\mathrm{o}$$ はoutputを意味します。
hパラメータの $$\mathcal{h}_\mathrm{i} = \mathcal{h}_{11}$$ は出力をショートしたときの入力インピーダンス、$$\mathcal{h}_\mathrm{r}=\mathcal{h}_{12}$$ は入力電流が流れない ($$\mathcal{I}_1 = 0$$) 場合の逆方向電圧増幅率 (reverse voltage gain), $$\mathcal{h}_\mathrm{f} = \mathcal{h}_{21}$$ は出力をショート ($$\mathcal{V}_2 = 0$$) したときの順方向電流増幅率、$$\mathcal{h}_\mathrm{o}=\mathcal{h}_{22}$$ は入力電流 ($$\mathcal{I}_1 =0$$) のときの出力アドミタンスです。
hパラメータを四端子定数で表すと

$$
\mathcal{h}_\mathrm{i} 
= \frac{\mathcal{B}}{\mathcal{D}}, \quad 
\mathcal{h}_\mathrm{r} 
= \mathcal{A} - \frac{\mathcal{B C}}{\mathcal{D}}, \quad 
\mathcal{h}_\mathrm{f} 
= - \frac{1}{\mathcal{D}}, \quad 
\mathcal{h}_\mathrm{o} 
= \frac{\mathcal{C}}{\mathcal{D}} \tag{15}
$$

のようになります。  
ハイブリッドパラメータは、トランジスターの小信号特性を表示するのによく用いられます。
相反定理 (11)式が成り立つとき、$$\mathcal{h}_\mathrm{r} = - \mathcal{h}_\mathrm{f}$$ となりますが、トランジスターなどの能動的回路ではこれは成り立ちません。

{% include adsense.html %} 

## 四端子回路網の接続

### 接続とその合成行列

* カスケード接続

四端子回路を次図のように接続することを、カスケード接続 (cascade connection) あるいは継続接続と呼びます。

![](/assets/images/circuits/ac_four_terminal_network_02.png)  

この場合は、1つの四端子回路の出力が次の四端子回路の入力になっているため、(10)式の表現が便利です。
合成回路の四端子定数は、次のように計算されます。

$$
\left( \begin{array}{cc}
\mathcal{A} & \mathcal{B} \\
\mathcal{C} & \mathcal{D}  
\end{array} \right) 
= \left( \begin{array}{cc}
\mathcal{A}_1 & \mathcal{B}_1 \\
\mathcal{C}_1 & \mathcal{D}_1  
\end{array} \right)
\left( \begin{array}{cc}
\mathcal{A}_2 & \mathcal{B}_2 \\
\mathcal{C}_2 & \mathcal{D}_2  
\end{array} \right) \tag{16}
$$

すなわち $$\mathcal{A} = \mathcal{A}_1 \mathcal{A}_2 + \mathcal{B}_1 \mathcal{C}_2$$ などです。

* 直列接続

2つの四端子回路の直列接続は、次の図のように表されます。

![](/assets/images/circuits/ac_four_terminal_network_03.png)  

この場合の接続するインピーダンス行列をそれぞれ $$(\mathcal{Z}_{ij}'), (\mathcal{Z}_{ij}'')$$ とすると、合成四端子回路のインピーダンス行列は

$$
(\mathcal{Z}_{ij}) 
= (\mathcal{Z}_{ij}' + \mathcal{Z}_{ij}'') \tag{17}
$$

すなわち $$\mathcal{Z}_{11} = \mathcal{Z}_{11}' + \mathcal{Z}_{11}''$$ などです。

* 並列接続

最後に、四端子回路の並列接続は、次図のようになります。

![](/assets/images/circuits/ac_four_terminal_network_04.png)  

この場合はアドミタンス行列を用いるのが便利で、合成四端子回路のアドミタンス行列は

$$
(\mathcal{Y}_{ij}) 
= (\mathcal{Y}_{ij}' + \mathcal{Y}_{ij}'') \tag{18}
$$

となります。
これらのうちのカスケード接続は、フィルター・遅延回路などにしばしば用いられ、超高周波の分布定数回路の理論にも使われます。

### 四端子回路の例

* 二端子回路 (回路素子を1つだけ含む回路)

四端子回路は ($$L, C, R$$ など) その回路素子のつなぎ方により、その形からT型・$$\pi$$ 型・格子型などがあります。
最も簡単な四端子回路は、次図に示すように二端子回路を1つだけ含むものです。

![](/assets/images/circuits/ac_four_terminal_network_05.png)  

まずは(a)の四端子定数を求めてみましょう。

$$
\mathcal{I}_1 
= \mathcal{I}_2, \quad 
\mathcal{V}_1 - \mathcal{Z} \mathcal{I}_1 
= \mathcal{V}_2 \tag{19}
$$

より、これらを(10)式の形に並べましょう。
すると

$$
\left\{ \begin{array}{l}
\mathcal{V}_1 
= \mathcal{V}_2 + \mathcal{Z} \mathcal{I}_2 \\
\mathcal{I}_1 
= \mathcal{I}_2 
\end{array} \right. \tag{20}
$$

より、求めたかった四端子行列は

$$
\left( \begin{array}{cc}
1 & \mathcal{Z} \\
0 & 1
\end{array} \right) \tag{21}
$$

のように表されます。  
さらに(b)の四端子定数も計算しましょう。

$$
\mathcal{V}_1 
= \mathcal{V}_2, \quad \mathcal{V}_2 
= \mathcal{Z} (\mathcal{I}_1 - \mathcal{I}_2) \tag{22}
$$

より、先ほどと同様に並べてみましょう。
すると

$$
\left\{ \begin{array}{l}
\mathcal{V}_1 = \mathcal{V}_2 \\
\mathcal{I}_1 = \frac{\mathcal{V}_2}{\mathcal{Z}} + \mathcal{I}_2
\end{array} \right. \tag{23}
$$

より、求めたかった四端子行列は

$$
\left( \begin{array}{cc}
1 & 0 \\
1/\mathcal{Z} & 1
\end{array} \right) \tag{24}
$$

となります。

* 逆L型

![](/assets/images/circuits/ac_four_terminal_network_06.png)  

$$
\left( \begin{array}{cc}
1 & \mathcal{Z}_1 \\
0 & 1
\end{array} \right) \left( \begin{array}{cc}
1 & 0 \\
1/\mathcal{Z}_2 & 1
\end{array} \right) 
= \left( \begin{array}{cc}
1 + \frac{\mathcal{Z}_1}{\mathcal{Z}_2}& \mathcal{Z}_1 \\
\frac{1}{\mathcal{Z}_2} & 1
\end{array} \right) \tag{25}
$$

この形は、フィルター回路の部分でよく出現します。

* T型

![](/assets/images/circuits/ac_four_terminal_network_07.png)  

$$
\begin{align}
\left( \begin{array}{cc}
1 & \mathcal{Z}_1 \\
0 & 1
\end{array} \right) \left( \begin{array}{cc}
1 &  \\
1/\mathcal{Z}_2 & 1
\end{array} \right) \left( \begin{array}{cc}
1 & \mathcal{Z}_3 \\
0 & 1
\end{array} \right) 
&= \left( \begin{array}{cc}
1 + \frac{\mathcal{Z}_1}{\mathcal{Z}_2} & \mathcal{Z}_1 \\
\frac{1}{\mathcal{Z}_2} & 1
\end{array} \right) \left( \begin{array}{cc}
1 & \mathcal{Z}_3 \\
0 & 1
\end{array} \right) \notag \\
&= \left( \begin{array}{cc}
1 + \frac{\mathcal{Z}_1}{\mathcal{Z}_2} & \frac{\mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1}{\mathcal{Z}_2} \\
\frac{1}{\mathcal{Z}_2} & 1 + \frac{\mathcal{Z}_3}{\mathcal{Z}_2}
\end{array} \right) \tag{26}
\end{align}
$$

{: .note }
T型において $$\mathcal{Z}_3 = 0$$ とすることでも、逆L型を導出することができます。

* $$\pi$$ 型

![](/assets/images/circuits/ac_four_terminal_network_08.png)  

$$
\begin{align}
\left( \begin{array}{cc}
1 & 0 \\
1/\mathcal{Z}_2 & 1 
\end{array} \right) \left( \begin{array}{cc}
1 & \mathcal{Z}_1 \\
0 & 1 
\end{array} \right) \left( \begin{array}{cc}
1 & 0 \\
1/\mathcal{Z}_3 & 1 
\end{array} \right) 
&= \left( \begin{array}{cc}
1 & \mathcal{Z}_1 \\
\frac{1}{\mathcal{Z}_2} & \frac{\mathcal{Z}_1}{\mathcal{Z}_2} + 1 
\end{array} \right)  \left( \begin{array}{cc}
1 & 0 \\
1/\mathcal{Z}_3 & 1 
\end{array} \right) \notag \\
&= \left( \begin{array}{cc}
1 + \frac{\mathcal{Z}_1}{\mathcal{Z}_3} & \mathcal{Z}_1 \\
\frac{\mathcal{Z}_1 + \mathcal{Z}_2 + \mathcal{Z}_3}{\mathcal{Z}_2 \mathcal{Z}_3} & 1 + \frac{\mathcal{Z}_1}{\mathcal{Z}_2} 
\end{array} \right) \tag{27}
\end{align}
$$

{: .note }
また $$\pi$$ 型において $$\mathcal{Z}_2 = \infty$$ とすることでも、逆L型を導出することができます。

{% include adsense.html %} 

* 格子型

![](/assets/images/circuits/ac_four_terminal_network_09.png)  

いきなり四端子行列を考えるのは複雑なため、まずはこの回路のインピーダンス行列を求めましょう。
そして最後に(12)式を用いることで、四端子行列を求めることにします。  
まずは $$\mathcal{I}_2 = 0$$ の場合を考えます。
このとき、C, D より右側はないものと考えて良いでしょう。
この場合には、電圧 $$\mathcal{V}_1$$ を ACB, ADB の並列回路にかけたことになります。
この場合の合成インピーダンス $$\mathcal{Z}$$ は

$$
\frac{1}{\mathcal{Z}} 
= \frac{1}{\mathcal{Z}_1 + \mathcal{Z}_2} + \frac{1}{\mathcal{Z}_3 + \mathcal{Z}_4} 
= \frac{\mathcal{Z}_1 + \mathcal{Z}_2 + \mathcal{Z}_3 + \mathcal{Z}_4}{(\mathcal{Z}_1 + \mathcal{Z}_2) (\mathcal{Z}_3 + \mathcal{Z}_4)} \tag{28}
$$

と求まります。
よってこのときの電圧 $$\mathcal{V}_1$$ は

$$
\left. \mathcal{V}_1 \right\vert_{\mathcal{I}_2 = 0} 
= \mathcal{Z} \mathcal{I}_1 
= \frac{(\mathcal{Z}_1 + \mathcal{Z}_2) (\mathcal{Z}_3 + \mathcal{Z}_4)}{\mathcal{Z}_1 + \mathcal{Z}_2 + \mathcal{Z}_3 + \mathcal{Z}_4} \mathcal{I}_1 \tag{29}
$$

のように求まります。
(29)式と、(6)式から $$\mathcal{V}_1 = \mathcal{Z}_{11} \mathcal{I}_1$$ を比較すると

$$
\mathcal{Z}_{11} 
= \frac{(\mathcal{Z}_1 + \mathcal{Z}_2) (\mathcal{Z}_3 + \mathcal{Z}_4)}{\mathcal{Z}_1 + \mathcal{Z}_2 + \mathcal{Z}_3 + \mathcal{Z}_4} \tag{30}
$$

A->C->Bに流れる電流を $$\mathcal{I}_\mathrm{ACB}$$ とすると

$$
\mathcal{V}_1 - \mathcal{Z}_1 \mathcal{I}_\mathrm{ACB} - \mathcal{Z}_2 \mathcal{I}_\mathrm{ACB} 
= 0 \ \Longrightarrow \ 
\mathcal{I}_\mathrm{ACB} 
= \frac{\mathcal{V}_1}{\mathcal{Z}_1 + \mathcal{Z}_2} \tag{31}
$$

より、CB間の電位差は

$$
\mathcal{V}_\mathrm{CB} 
= \mathcal{Z}_2 \mathcal{I}_\mathrm{ACB} 
= \frac{\mathcal{Z}_2}{\mathcal{Z}_1 + \mathcal{Z}_2} \mathcal{V}_1 \tag{32}
$$

となります。
同様にA->D->Bに流れる電流を考え、そこからDB間の電位差を計算すると

$$
\mathcal{V}_\mathrm{DB}
= \frac{\mathcal{Z}_4}{\mathcal{Z}_3 + \mathcal{Z}_4} \mathcal{V}_1 \tag{33}
$$

を得ます。
以上から、$$\mathcal{I}_2 = 0$$ の場合の $$\mathcal{V}_2$$ は、電流の向きに注意して

$$
\begin{align}
&\left. \mathcal{V}_2 \right\vert_{\mathcal{I}_2 = 0} - \mathcal{V}_\mathrm{CB} + \mathcal{V}_\mathrm{DB} 
= 0 \notag \\ 
&\Longrightarrow \ 
\left. \mathcal{V}_2 \right\vert_{\mathcal{I}_2 = 0}
= \left( \frac{\mathcal{Z}_2}{\mathcal{Z}_1 + \mathcal{Z}_2} - \frac{\mathcal{Z}_4}{\mathcal{Z}_3 + \mathcal{Z}_4} \right) \left. \mathcal{V}_1 \right\vert_{\mathcal{I}_2 = 0} \notag \\
& \qquad \qquad = \frac{\mathcal{Z}_2 (\mathcal{Z}_3 + \mathcal{Z}_4) - \mathcal{Z}_4 (\mathcal{Z}_1 + \mathcal{Z}_2)}{(\mathcal{Z}_1 + \mathcal{Z}_2) (\mathcal{Z}_3 + \mathcal{Z}_4)} \frac{(\mathcal{Z}_1 + \mathcal{Z}_2) (\mathcal{Z}_3 + \mathcal{Z}_4)}{\mathcal{Z}_1 + \mathcal{Z}_2 + \mathcal{Z}_3 + \mathcal{Z}_4} \mathcal{I}_1 \notag \\
& \qquad \qquad = \frac{\mathcal{Z}_2 \mathcal{Z}_3 - \mathcal{Z}_1 \mathcal{Z}_4}{\mathcal{Z}_1 + \mathcal{Z}_2 + \mathcal{Z}_3 + \mathcal{Z}_4} \mathcal{I}_1 \tag{34}
\end{align}
$$

を得ます。
(34)式と、(6)式から $$\mathcal{V}_2 = \mathcal{Z}_{21} \mathcal{I}_1$$ を比較することで

$$
\mathcal{Z}_{21} 
= \frac{\mathcal{Z}_2 \mathcal{Z}_3 - \mathcal{Z}_1 \mathcal{Z}_4}{\mathcal{Z}_1 + \mathcal{Z}_2 + \mathcal{Z}_3 + \mathcal{Z}_4} \tag{35}
$$

と求まります。  
$$\mathcal{I}_1 = 0$$ とすることで、同様に $$\mathcal{Z}_{12}, \mathcal{Z}_{22}$$ を求めることができます。
先ほどの $$\mathcal{I}_2 = 0$$ の場合には、電流が $$\mathcal{Z}_1 \rightarrow \mathcal{Z}_2$$ に流れるものと $$\mathcal{Z}_3 \rightarrow \mathcal{Z}_4$$ に流れるものの並列接続でしたが、$$\mathcal{I}_1 = 0$$ のときには $$\mathcal{Z}_1 \rightarrow \mathcal{Z}_3$$ に流れるものと $$\mathcal{Z}_2 \rightarrow \mathcal{Z}_4$$ に流れるものの並列接続と考えることができます。
よって $$\mathcal{Z}_2$$ と $$\mathcal{Z}_3$$ を交換したものに等しいため

$$
\mathcal{Z}_{12} 
= \frac{\mathcal{Z}_3\mathcal{Z}_2 - \mathcal{Z}_1 \mathcal{Z}_4}{\mathcal{Z}_1 + \mathcal{Z}_2 + \mathcal{Z}_3 + \mathcal{Z}_4} 
= \mathcal{Z}_{21}, \quad \mathcal{Z}_{22} 
= \frac{(\mathcal{Z}_1 + \mathcal{Z}_3) (\mathcal{Z}_2 + \mathcal{Z}_4)}{\mathcal{Z}_1 + \mathcal{Z}_2 + \mathcal{Z}_3 + \mathcal{Z}_4} \tag{36}
$$

のようになります。
最後に(12)式を用いることで、次を得ます。

$$
\mathcal{A} 
= \frac{(\mathcal{Z}_1 + \mathcal{Z}_2) (\mathcal{Z}_3 + \mathcal{Z}_4)}{\mathcal{Z}_2 \mathcal{Z}_3 - \mathcal{Z}_1 \mathcal{Z}_4}, \quad 
\mathcal{B} 
= \mathcal{C} 
= \frac{\mathcal{Z}_1 + \mathcal{Z}_2 + \mathcal{Z}_3 + \mathcal{Z}_4}{\mathcal{Z}_2 \mathcal{Z}_3 - \mathcal{Z}_1 \mathcal{Z}_4}, \quad 
\mathcal{D} 
= \frac{(\mathcal{Z}_1 + \mathcal{Z}_3) (\mathcal{Z}_2 + \mathcal{Z}_4)}{\mathcal{Z}_2 \mathcal{Z}_3 - \mathcal{Z}_1 \mathcal{Z}_4} \tag{37}
$$

* ブリッジ T 型 (並列 T 型)

![](/assets/images/circuits/ac_four_terminal_network_10.png)  

これは、T型と直列素子の並列接続と見ることができます。
並列接続の場合、(18)式のようにアドミタンス行列で考えるのが便利です。
T型素子のアドミタンス行列を $$\boldsymbol{\mathcal{Y}}'$$ とすると、(13), (26)式より

$$
\mathcal{Y}_{11}' 
= \frac{\mathcal{Z}_2}{\mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1} \left( 1 + \frac{\mathcal{Z}_3}{\mathcal{Z}_2}\right) 
= \frac{\mathcal{Z}_2 + \mathcal{Z}_3}{\mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1} \tag{38}
$$

$$
\mathcal{Y}_{12}' 
= \mathcal{Y}_{21}' 
= - \frac{\mathcal{Z}_2}{\mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1} \tag{39}
$$

$$
\mathcal{Y}_{22}' 
= \frac{\mathcal{Z}_2}{\mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1} \left( 1 + \frac{\mathcal{Z}_1}{\mathcal{Z}_2}\right) 
= \frac{\mathcal{Z}_1 + \mathcal{Z}_2}{\mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1} \tag{40}
$$

直列素子のアドミタンス行列を $$\boldsymbol{\mathcal{Y}}''$$ とすると、(13), (21)式より

$$
\mathcal{Y}_{11}''
= \frac{1}{\mathcal{Z}_4}, \quad \mathcal{Y}_{12}'' 
= \mathcal{Y}_{21}'' 
= - \frac{1}{\mathcal{Z}_4}, \quad \mathcal{Y}_{22}'' 
= \frac{1}{\mathcal{Z}_4} \tag{41}
$$

これらを用い、$$\boldsymbol{\mathcal{Y}} = \boldsymbol{\mathcal{Y}}' + \boldsymbol{\mathcal{Y}}''$$ を計算しましょう。

$$
\begin{align}
\mathcal{Y}_{11} 
&= \mathcal{Y}_{11}' + \mathcal{Y}_{11}'' 
= \frac{\mathcal{Z}_2 + \mathcal{Z}_3}{\mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1} + \frac{1}{\mathcal{Z}_4} \notag \\
&= \frac{\mathcal{Z}_2 \mathcal{Z}_4 + \mathcal{Z}_3 \mathcal{Z}_4 + \mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1}{(\mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1) \mathcal{Z}_4} \tag{42}
\end{align}
$$

ここで $$\alpha \equiv \mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1 + \mathcal{Z}_2 \mathcal{Z}_4$$ のようにおくと

$$
\mathcal{Y}_{11} 
= \frac{\alpha + \mathcal{Z}_3 \mathcal{Z}_4}{(\alpha - \mathcal{Z}_2 \mathcal{Z}_4) \mathcal{Z}_4} \tag{43}
$$

となります。
同様に計算を進めましょう。

$$
\begin{align}
\mathcal{Y}_{12} 
&= \mathcal{Y}_{12}' + \mathcal{Y}_{12}'' 
= - \frac{\mathcal{Z}_2}{\mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1} - \frac{1}{\mathcal{Z}_4} \notag \\
&= - \frac{\mathcal{Z}_2 \mathcal{Z}_4 + \mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1}{(\mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1) \mathcal{Z}_4} 
= - \frac{\alpha}{(\alpha - \mathcal{Z}_2 \mathcal{Z}_4) \mathcal{Z}_4} \tag{44}
\end{align}
$$

$$
\begin{align}
\mathcal{Y}_{22} 
&= \mathcal{Y}_{22}' + \mathcal{Y}_{22}'' 
= \frac{\mathcal{Z}_1 + \mathcal{Z}_2}{\mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1} + \frac{1}{\mathcal{Z}_4} \notag \\
&= \frac{\mathcal{Z}_1 \mathcal{Z}_4 + \mathcal{Z}_2 \mathcal{Z}_4 + \mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1}{(\mathcal{Z}_1 \mathcal{Z}_2 + \mathcal{Z}_2 \mathcal{Z}_3 + \mathcal{Z}_3 \mathcal{Z}_1) \mathcal{Z}_4} 
= \frac{\alpha + \mathcal{Z}_1 \mathcal{Z}_4}{(\alpha - \mathcal{Z}_2 \mathcal{Z}_4) \mathcal{Z}_4} \tag{45}
\end{align}
$$

最後に、(13)式を用いて四端子行列を求めましょう。

$$
\mathcal{B} 
= - \frac{1}{\mathcal{Y}_{12}} 
= \frac{(\alpha - \mathcal{Z}_2 \mathcal{Z}_4) \mathcal{Z}_4}{\alpha} \tag{46}
$$

$$
\mathcal{A} 
= \mathcal{B} \mathcal{Y}_{22} 
= \frac{(\alpha - \mathcal{Z}_2 \mathcal{Z}_4) \mathcal{Z}_4}{\alpha} \frac{\alpha + \mathcal{Z}_1 \mathcal{Z}_4}{(\alpha - \mathcal{Z}_2 \mathcal{Z}_4) \mathcal{Z}_4} 
= 1 + \frac{\mathcal{Z}_1 \mathcal{Z}_4}{\alpha} \tag{47}
$$

$$
\mathcal{D} 
= \mathcal{B} \mathcal{Y}_{11} 
= \frac{(\alpha - \mathcal{Z}_2 \mathcal{Z}_4) \mathcal{Z}_4}{\alpha} \frac{\alpha + \mathcal{Z}_3 \mathcal{Z}_4}{(\alpha - \mathcal{Z}_2 \mathcal{Z}_4) \mathcal{Z}_4} 
= 1 + \frac{\mathcal{Z}_3 \mathcal{Z}_4}{\alpha} \tag{48}
$$

相反定理(11)式より

$$
\begin{align}
\mathcal{C} 
&= \frac{\mathcal{A} \mathcal{D} -1}{\mathcal{B}} 
= \frac{\alpha}{(\alpha - \mathcal{Z}_2 \mathcal{Z}_4)\mathcal{Z}_4} \left\{ \left( 1 + \frac{\mathcal{Z}_1 \mathcal{Z}_4}{\alpha}\right) \left( 1 + \frac{\mathcal{Z}_3 \mathcal{Z}_4}{\alpha}\right) -1 \right\} \notag \\
&= \frac{\alpha}{(\alpha - \mathcal{Z}_2 \mathcal{Z}_4)\mathcal{Z}_4} \frac{\alpha^2 + (\mathcal{Z}_1 \mathcal{Z}_4 + \mathcal{Z}_3 \mathcal{Z}_4) \alpha + \mathcal{Z}_1 \mathcal{Z}_3 \mathcal{Z}_4^2 - \alpha^2}{\alpha^2} \notag \\
&= \frac{(\mathcal{Z}_1 \mathcal{Z}_4 + \mathcal{Z}_3 \mathcal{Z}_4) \alpha + \mathcal{Z}_1 \mathcal{Z}_3 \mathcal{Z}_4^2}{\alpha (\alpha - \mathcal{Z}_2 \mathcal{Z}_4)\mathcal{Z}_4} 
= \frac{(\mathcal{Z}_1 + \mathcal{Z}_3) \alpha + \mathcal{Z}_1 \mathcal{Z}_3 \mathcal{Z}_4}{\alpha (\alpha - \mathcal{Z}_2 \mathcal{Z}_4)} \tag{49}
\end{align}
$$

ここでさらに

$$
\begin{aligned}
(\alpha - \mathcal{Z}_2 \mathcal{Z}_4) (\mathcal{Z}_1 + \mathcal{Z}_3 + \mathcal{Z}_4) 
&= (\mathcal{Z}_1 + \mathcal{Z}_3) \alpha + \mathcal{Z}_4 \alpha - (\mathcal{Z}_1 + \mathcal{Z}_3 + \mathcal{Z}_4) \mathcal{Z}_2 \mathcal{Z}_4 \\
&= (\mathcal{Z}_1 + \mathcal{Z}_3) \alpha + \mathcal{Z}_1 \mathcal{Z}_2 \mathcal{Z}_4 + \mathcal{Z}_2 \mathcal{Z}_3 \mathcal{Z}_4 + \mathcal{Z}_3 \mathcal{Z}_1 \mathcal{Z}_4 + \mathcal{Z}_2 \mathcal{Z}_4^2 - \mathcal{Z}_1 \mathcal{Z}_2 \mathcal{Z}_4 - \mathcal{Z}_2 \mathcal{Z}_3 \mathcal{Z}_4 - \mathcal{Z}_2 \mathcal{Z}_4^2 \\
&= (\mathcal{Z}_1 + \mathcal{Z}_3) \alpha + \mathcal{Z}_1 \mathcal{Z}_3 \mathcal{Z}_4 
\end{aligned}
$$

のように整理できるので、最終的に

$$
\mathcal{C} 
= \frac{\mathcal{Z}_1 + \mathcal{Z}_3 + \mathcal{Z}_4}{\alpha} \tag{50}
$$

と求まります。

* 理想的な変成器

![](/assets/images/circuits/ac_four_terminal_network_11.png)  

このとき、電圧と電流は次の方程式を満たします。

$$
\left\{ \begin{array}{l}
n \mathcal{V}_1 
= \mathcal{V}_2 \\
\mathcal{I}_1 
= n \mathcal{I}_2
\end{array} \right. \ \Longrightarrow \mathcal{A} = \frac{1}{n}, \quad 
\mathcal{B} = \mathcal{C} = 0, \quad 
\mathcal{D} = n \tag{51}
$$

## 参考文献

[1] [高橋秀俊, "電磁気学"](https://amzn.to/43fQKxC)  
[2] [霜田光一, 桜井 捷海, "エレクトロニクスの基礎"](https://amzn.to/4wAOuib)  
[3] [後藤憲一, 山崎修一郎, "詳解電磁気学演習"](https://amzn.to/3RvAkyD)  
[4] [出口博之, "電波伝送回路の基礎理論と設計"](https://www1.doshisha.ac.jp/~hdeguchi/RTC-3.pdf)  

{% include adsense.html %}