---
layout: default
title: 交流回路の例題
parent: 電気回路
math: mathjax3
permalink: /circuits/ac_circuit_eg
nav_order: 11
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

# 交流回路の例題

ここでは、交流電流が流れている様々な回路についてまとめています。
具体的な演習を通して、計算に慣れていきましょう。

## 合成インピーダンスの計算

### 問題

抵抗 $$R$$・自己インダクタンス $$L$$ のコイル・静電容量 $$C$$ を次図のように接続したときの、合成インピーダンスを求めましょう。
ただし、最終的な答えは、実部と虚部をそれぞれ1つの項にまとめた形に整理します。

![](/assets/images/circuits/ac_circuit_eg_01.png)  

### 解答例

$$
\begin{align}
\mathcal{Z} 
&= \frac{1}{\frac{1}{R} + \frac{1}{i\omega L}} + \frac{1}{i\omega C} 
= \frac{i\omega LR}{i\omega L + R} + \frac{1}{i\omega C} 
= \frac{- \omega^2 LRC + i\omega L + R}{(i\omega L + R) i\omega C} \notag \\
&= \frac{- \omega^2 LRC + i\omega L + R}{-\omega^2 L C + i\omega RC}
= \frac{(- \omega^2 LRC + i\omega L + R) (-\omega^2 L C - i\omega RC)}{(-\omega^2 L C + i\omega RC)(-\omega^2 L C - i\omega RC)} \notag \\
&= \frac{\omega^4 L^2 R C^2 + i \omega^3 LR^2 C^2 - i \omega^3 L^2 C + \omega^2 LRC - \omega^2 LRC - i\omega R^2 C}{\omega^4 L^2 C^2 + \omega^2 R^2 C^2} \notag \\
&= \frac{\omega^3 L^2 R C + i \omega^2 LR^2 C - i \omega^2 L^2 - i R^2 }{\omega^3 L^2 C + \omega R^2 C} 
= \frac{\omega^3 L^2 R C + i \omega^2 LR^2 C - i \omega^2 L^2 - i R^2 }{\omega C (\omega^2 L^2 + R^2)} \notag \\
&= \frac{\omega^3 L^2 R C - i \{ R^2 (1 - \omega^2 L C) + \omega^2 L^2 \} }{\omega C (\omega^2 L^2 + R^2)} \tag{1}
\end{align}
$$

## 無限に長いはしご回路

### 問題

$$L, R, C$$ を次のようにつなぎ、無限に長いはしごを作りました。
このとき、左端から見たインピーダンスはどうなるでしょうか。

![](/assets/images/circuits/ac_circuit_eg_02.png)  

### 解答例

このように無限に長く繰り返して接続したものに対し、合成インピーダンスの極限値が存在するとしましょう。
その値を $$\mathcal{Z}$$ とします。
AA'から見たときのインピーダンスは $$\mathcal{Z}$$ ですが、BB'から見たときのインピーダンスも $$\mathcal{Z}$$ です。
よって左端にはしご一単位を接続してもインピーダンスは再び $$\mathcal{Z}$$ になるはずなので

$$
\begin{align}
&\mathcal{Z} 
= R + i \omega L + \frac{1}{i\omega C + \frac{1}{\mathcal{Z}}} 
= R + i \omega L + \frac{\mathcal{Z}}{1 + i\omega C \mathcal{Z}} \notag \\
&\Longrightarrow \ 
\mathcal{Z} (1 + i \omega C \mathcal{Z}) 
= (R + i \omega L) (1 + i\omega C \mathcal{Z}) + \mathcal{Z} \notag \\
&\Longrightarrow \ 
\mathcal{Z}^2 - (R + i\omega L) \mathcal{Z} - \frac{R + i\omega L}{i\omega C} 
= 0 \tag{2}
\end{align}
$$

のように、方程式を立てることができます。
この解は

$$
\begin{align}
\mathcal{Z} 
&= \frac{R + i\omega L \pm \sqrt{(R + i\omega L)^2 + 4 \frac{R + i\omega L}{i\omega C}}}{2} \notag \\
&= \frac{R + i\omega L}{2} \pm \sqrt{\left( \frac{R + i\omega L}{2}\right)^2 + \frac{R + i\omega L}{i\omega C}} \tag{3}
\end{align}
$$

のようになります。
実部 (抵抗に該当する部分) が正でなければならないため、プラス符号が答えとなります。

## インピーダンスブリッジ回路

### 問題

次図のような[ホイートストンブリッジ回路](/circuits/steady_circuit_eg#ホイートストンブリッジ回路)に、交流電源をつなぎました。

![](/assets/images/circuits/ac_circuit_eg_03.png)  

このとき $$\mathcal{I}_5=0$$ となるつりあい条件を、$$\mathcal{Z}_1, \mathcal{Z}_2, \mathcal{Z}_3, \mathcal{Z}_4$$ を用いて書き表しましょう。

### 解答例

交流の場合でも、[ホイートストンブリッジ回路](/circuits/steady_circuit_eg#ホイートストンブリッジ回路)のときと同様に考えることができます。
直流の場合の[ホイートストンブリッジ回路](/circuits/steady_circuit_eg#ホイートストンブリッジ回路)における抵抗 $$R_1, R_2, R_3, R_4$$ を、[複素インピーダンス](/circuits/ac#直列lcr回路とインピーダンス) $$\mathcal{Z}_1, \mathcal{Z}_2, \mathcal{Z}_3, \mathcal{Z}_4$$ に置き換えれば良いので、この回路における釣り合い条件は

$$
\mathcal{Z}_1 \mathcal{Z}_4 
= \mathcal{Z}_2 \mathcal{Z}_3 \tag{4}
$$

となります。
ここで $$\mathcal{Z}_1, \mathcal{Z}_2, \mathcal{Z}_3, \mathcal{Z}_4$$ は全て一般には複素数です。
よって(4)式は実は2つの式、すなわち実部と虚部がそれぞれ等しいという関係を表していることに注意が必要です。
そのため、この交流ブリッジ回路を釣り合わせるためには、一般には2つの量を可変にしなければなりません。

{% include adsense.html %}

## ウィーンブリッジ回路

### 問題

次図のようなブリッジ回路を考えましょう。
これはウィーン (Wine) ブリッジと呼ばれます。

![](/assets/images/circuits/ac_circuit_eg_04.png)  

図中の $$C_x, R_x$$ が未知のコンデンサーの静電容量と抵抗を表します。
すなわち、これはコンデンサーの容量と漏洩とを測定するのに用いることができます。
この回路が釣り合いにあるとき、$$C_s, R_x$$ が満たす条件を求めましょう。

### 解答例

先ほどの[インピーダンスブリッジ回路](/circuits/ac_circuit_eg#インピーダンスブリッジ回路)の釣り合い条件に、具体的に値を入れていきましょう。

$$
\mathcal{Z}_1 
= R_1, \quad \mathcal{Z}_2 
= R_2, \quad \mathcal{Z}_3 
= \frac{1}{\frac{1}{R_x} + i \omega C_x}, \quad \mathcal{Z}_4 
= \frac{1}{\frac{1}{R_s} + i \omega C_s} \tag{5}
$$

より

$$
\frac{R_1}{\frac{1}{R_s} + i\omega C_s} 
= \frac{R_2}{\frac{1}{R_x} + i \omega C_x} \ \Longrightarrow \ 
\frac{R_1}{R_x} + i \omega C_x R_1 
= \frac{R_2}{R_s} + i \omega C_s R_2 \tag{6}
$$

となります。
実部と虚部が等しいためには

$$
\frac{R_1}{R_x} 
= \frac{R_2}{R_s}, \quad 
\frac{R_1}{C_s} 
= \frac{R_2}{C_x} \tag{7}
$$

の両者が満たされる必要があります。
(7)式のようにすれば、全ての $$\omega$$ で釣り合い条件が満たされることになります。
すなわち、測定には $$R_s, C_s$$ の両方を変えて、釣り合いを見つけます。

## シェーリングブリッジ回路

### 問題

次のようなブリッジ回路を考えましょう。
これはシェーリング (Schering) ブリッジと呼ばれます。

![](/assets/images/circuits/ac_circuit_eg_05.png)  

これもまた未知の静電容量と漏洩の測定に用いられるブリッジ回路です。
図中の $$C', R'$$ を適当に変化させることにより、釣り合わせることができます。
釣り合い条件から、$$C_x, R_x$$ の満たす式を求めましょう。

### 解答例

各ブリッジの腕の複素インピーダンスは、次のようになります。

$$
\mathcal{Z}_1 
= \frac{1}{\frac{1}{R_x} + i\omega C_x}, \quad 
\mathcal{Z}_2 
= \frac{1}{i\omega C}, \quad 
\mathcal{Z}_3 
= R, \quad 
\mathcal{Z}_4 
= R' + \frac{1}{i\omega C'} \tag{8}
$$

そして釣り合い条件 $$\mathcal{Z}_1\mathcal{Z}_4 = \mathcal{Z}_2 \mathcal{Z}_3$$ より

$$
\frac{R}{i\omega C} 
= \frac{R' + \frac{1}{i\omega C'}}{\frac{1}{R_x} + i\omega C_x} \ \Longrightarrow \ 
\frac{R}{R_x} + i \omega C_x R 
= \frac{C}{C'} + i\omega C R' \tag{9}
$$

を得ます。
実部と虚部が等しいためには

$$
\frac{R}{R_x} 
= \frac{C}{C'}, \quad C_x R 
= C R' \tag{10}
$$

を満たす必要があります。
[ウィーンブリッジ回路](/circuits/ac_circuit_eg#ウィーンブリッジ回路)と同様に、この式には $$\omega$$ が含まれていないため、$$\omega$$ に無関係に平衡条件を成り立たせることができます。  
このブリッジ回路の利点は、[ウィーンブリッジ回路](/circuits/ac_circuit_eg#ウィーンブリッジ回路)に比べて、標準的な可変素子として高い抵抗を用いる必要がないことです。

## マクスウェルブリッジ回路

### 問題

次のようなブリッジ回路を考えましょう。
これはマクスウェル (Maxwell) ブリッジと呼ばれます。

![](/assets/images/circuits/ac_circuit_eg_06.png)  

これはコイルのインダクタンスと抵抗を測定するのに用いられます。
図中の $$C, R$$ を適当に調整することにより、測定したコイルのインダクタンス $$L_x$$ と抵抗 $$R_x$$ を知ることができます。
釣り合い条件から、これらが満たす式を求めてみましょう。

### 解答例

ブリッジの各腕の複素インピーダンスは、次のようになります。

$$
\mathcal{Z}_1 
= R_x + i \omega L_x, \quad \mathcal{Z}_2 
= R', \quad \mathcal{Z}_3 
= R'', \quad \mathcal{Z}_4 
= \frac{1}{\frac{1}{R} + i\omega C} \tag{11}
$$

これらより、釣り合い条件の式 $$\mathcal{Z}_1 \mathcal{Z}_4 = \mathcal{Z}_2 \mathcal{Z}_3$$ に代入することで

$$
\frac{R_x + i\omega L_x}{\frac{1}{R} + i\omega C} 
= R' R'' \ \Longrightarrow \ 
R_x + i \omega L_x 
= \frac{R' R''}{R} + i\omega C R' R'' \tag{12}
$$

を得ます。
実部と虚部が等しいためには

$$
R_x R 
= R' R'', \quad L_x 
= C R' R'' \ \Longrightarrow \ 
R' R'' 
= R_x R 
= \frac{L_x}{C} \tag{13}
$$

を満たす必要があります。
これもまた $$\omega$$ に無関係に成り立ちます。
通常はまず直流を用いて $$R$$ を調整し釣り合わせ、次に交流を入れて $$C$$ を調整することで、完全な釣り合いを求めます。

{% include adsense.html %}

## アンダーソンブリッジ回路

### 問題

次のようなブリッジ回路を考えましょう。
これはアンダーソン (Anderson) ブリッジと呼ばれます。

![](/assets/images/circuits/ac_circuit_eg_07.png)  

これはマクスウェルブリッジと同じく、コイルのインダクタンスと抵抗を測定するために用いられます。
この回路図において、$$R, R'$$ を適当に変えることで、釣り合い条件から未知の $$L_x, R_x$$ を求めることができます。
この回路に対し、[Y-$$\Delta$$変換](/circuits/steady_circuit_eg#抵抗のdelta接続とy接続との変換)を施しましょう。
変換後の回路が[マクスウェルブリッジ回路](/circuits/ac_circuit_eg#インピーダンスブリッジ回路)と等価であることを示し、その釣り合い条件から、$$L_x, R_x$$ が満たす式を導出しましょう。

### 解答例

次図(a)のように3つの端子間でインピーダンスがY型に結ばれている場合と、(b)のように$$\Delta$$型に結ばれている場合とを考えましょう。

![](/assets/images/circuits/ac_circuit_eg_08.png)  

すると、それぞれのインピーダンス値 $$\mathcal{Z}_a, \mathcal{Z}_b, \mathcal{Z}_c, \mathcal{Z}_A, \mathcal{Z}_B, \mathcal{Z}_C$$ との間に、次のような関係が成り立ちます。

$$
\mathcal{Z}_A 
= \frac{\mathcal{Z}_a \mathcal{Z}_b + \mathcal{Z}_b \mathcal{Z}_c + \mathcal{Z}_c \mathcal{Z}_a}{\mathcal{Z}_a}, \quad \mathcal{Z}_B 
= \frac{\mathcal{Z}_a \mathcal{Z}_b + \mathcal{Z}_b \mathcal{Z}_c + \mathcal{Z}_c \mathcal{Z}_a}{\mathcal{Z}_b}, \quad \mathcal{Z}_C 
= \frac{\mathcal{Z}_a \mathcal{Z}_b + \mathcal{Z}_b \mathcal{Z}_c + \mathcal{Z}_c \mathcal{Z}_a}{\mathcal{Z}_c} \tag{14}
$$

先ほどの回路図の $$R, R', R'''$$ にこの Y-$$\Delta$$ 変換を施すと、次の図のようになります。

![](/assets/images/circuits/ac_circuit_eg_09.png)  

この図の $$R_3$$ は単に電源に並列に入っているだけなので、これはブリッジの外として無視して良いでしょう。
するとブリッジ回路の部分は、[マクスウェルブリッジ回路](/circuits/ac_circuit_eg#マクスウェルブリッジ回路)に他なりません。
そこで先ほどの釣り合い条件を適用すると

$$
R_x 
= \frac{R_1}{R_2} R'', \quad L_x 
= C R'' R_1 \tag{15}
$$

となります。
これに再び[Y-$$\Delta$$変換](/circuits/steady_circuit_eg#抵抗のdelta接続とy接続との変換)を用いれば

$$
R_x 
= \frac{R'''}{R'} R'', \quad 
L_x 
= C R''' \frac{RR' + R R''' + R' R'''}{R'} \tag{16}
$$

を得ます。  
このブリッジでは、はじめに直流で $$R'$$ を調整します。
次に交流にして $$R$$ を調整することで、完全な釣り合いを取ります。
[マクスウェルブリッジ](/circuits/ac_circuit_eg#マクスウェルブリッジ回路)と比べ、可変静電容量を必要としないことが特徴です。

## 周波数ブリッジ

### 問題

インピーダンスブリッジとは対照的に、わざとある特定の周波数に対してのみ平衡を保つようにすることで、周波数を測定することができます。
このような機能を持つブリッジのことを、周波数ブリッジ (frequency bridge) と呼びます。
これは正弦波形に加えて、釣り合う位置 (例えば可変 $$C$$ の読み) から周波数を知ることができます。  
周波数ブリッジの簡単なもののの一つに、次図のようなキャンベル (Campbell) ブリッジがあります。

![](/assets/images/circuits/ac_circuit_eg_10.png)  

2つのコイル $$L_1, L_2$$ の層後インダクタンス $$M$$ が可変となっています。
自己インダクタンス $$M$$ のコイルを用い、先ほどの回路と等価な回路図を描きましょう。
そしてその等価回路をベースに、計器に電流が流れない条件を導出しましょう。

### 解答例

このブリッジ回路の動作を考えるために、相互誘導に対する等価回路を考えましょう。
この変換により、先ほどの回路は次図のように書き換えることができます。

![](/assets/images/circuits/ac_circuit_eg_11.png)  

するとこの回路の真ん中にある $$M, C$$ の部分のインピーダンスは

$$
\mathcal{Z} 
= i\omega M + \frac{1}{i\omega C} 
= i \left( \omega M - \frac{1}{\omega C} \right) \tag{17}
$$

のように求められます。
もし

$$
\omega M - \frac{1}{\omega C} 
= 0 \ \Longrightarrow \ 
\omega 
= \frac{1}{\sqrt{MC}} \tag{18}
$$

という共振条件を満足する時は、$$\mathcal{Z} = 0$$ となります。
すなわち左から入った電流は、真ん中の $$M, C$$ の部分に全て流れ込み、右の計器の方には電流は流れません。
したがって、$$M, C$$ を可変にし、計器に流れる電流がゼロとなる $$M, C$$ の値を決定することで、電源としてつないだ交流の角周波数 $$\omega$$ を求めることができます。

{: .note }
キャンベルブリッジは、結局は [$$LC$$ の直列共振](/circuits/series_parallel_resonance#直列共振)を用いたものです。
それならなぜ単に自己インダクタンスによる $$LC$$ 回路を用いないのでしょうか？
それは第一に、コイルの自己インダクタンスには必ず直列にコイルの抵抗が入ってくるために、共振してもインピーダンスがゼロにならないことが挙げられます。
そして $$L$$ をゼロにまで可変にすることは困難ですが、$$M$$ ならばゼロから始めて幅広い範囲を変えることができる (必要ならば負にもできる) ことも利点として挙げられます。
コイルには抵抗があっても、相互誘導を用いることで、その $$R$$ は $$LC$$ 回路の部分には関係がなくなります。

{% include adsense.html %}

## 補遺A: コンデンサーの損失とウィーンブリッジ回路の欠点について

[ウィーンブリッジ](/circuits/ac_circuit_eg#ウィーンブリッジ回路)や[シェーリングブリッジ](/circuits/ac_circuit_eg#シェーリングブリッジ回路)を用いることで、コンデンサーの静電容量を測定することは述べました。
しかしこのような測定をしても、決してすべての $$\omega$$ に対して同じ $$R_s, C_s$$ の値で釣り合うようにはなりません。
これは、実際のコンデンサーの静電容量が、ほんのわずかに周波数依存性を持つためです。
またインピーダンスの実部は、単なる漏洩以外の原因によっても生じます。
このように、コンデンサーのインピーダンスに実部があるとき、(その原因がなんであれ) これを一括りにコンデンサーの損失 (loss) と呼びます。
すなわち、コンデンサーの複素インピーダンスは一般に

$$
\mathcal{Z} 
= \frac{1}{i\omega C_p + \frac{1}{R_p}} \tag{A.1}
$$

のように書くことができます。
ここで $$C_p, R_p$$ は、一般に $$\omega$$ の関数です。
そして $$R_p$$ を等価並列抵抗と呼びます。
(A.1)式を、次のように書くこともあります。

$$
\mathcal{Z} 
= \frac{1}{i\omega C} e^{i\delta}, \quad 
\tan \delta 
= \frac{1}{\omega C_p R_p} \tag{A.2}
$$

このように書いたとき、$$\tan \delta$$、すなわちインピーダンスの実部を虚部で割ったものを損失の目安とします。
これをタンデルタと呼びます。
通常、$$tan \delta \sim 10^{-4} - 10^{-1}$$ 程度であり、これが小さいほど良いコンデンサーとなります。
$$\tan \delta$$ はコンデンサーの極板間の媒質 (誘電体) により決まります。
損失の原因として、絶縁対中に存在する導電性の不純物や、分子の方向転換の時間的遅れなどがあるとされています。  
(A.1)式は、損失を並列に接続した抵抗としてモデル化したものですが、等価直列抵抗によっても表すことができます。
すなわち

$$
\mathcal{Z} 
= \frac{1}{i\omega C_s} + R_s \tag{A.3}
$$

の形でモデル化します。
この場合

$$
\tan \delta 
= \omega C_s R_s \tag{A.4}
$$

のようになります。
普通は $$\tan \delta \ll 1$$ であるから

$$
C_s 
\approx C_p 
\approx C, \quad R_p 
\approx \frac{1}{\omega C \tan \delta}, \quad R_s 
\approx \frac{\tan \delta}{\omega C} \tag{A.5}
$$

のように書くことができ、$$R_s \ll R_p$$ とわかります。  
(A.2)式からは $$\tan \delta$$ は $$\omega$$ に反比例し、(A.4)式からは $$\tan \delta$$ は $$\omega$$ に比例しますが、実際のコンデンサーの $$\tan \delta$$ は大概どちらでもありません。
そしてあまり $$\omega$$ に依存せずに、ほとんど一定の値であることが知られています。
したがって、ブリッジによる測定では、良い正弦波を用いる必要があります。
[ウィーンブリッジ](/circuits/ac_circuit_eg#ウィーンブリッジ回路)では、測定されるコンデンサーの損失が少ない ($$R_x$$ が大きい) ときは、可変抵抗 $$R_s$$ が極めて大きくなければなりません。
そのようなものを入手するのは困難なため、それが[ウィーンブリッジ](/circuits/ac_circuit_eg#ウィーンブリッジ回路)の欠点となります。

## 補遺B: 相互誘導による結合とその等価回路

交流回路と直流回路の異なる大きな点の1つに、2つの回路が相互誘導により結合されることが挙げられます。
この場合、回路の2つの枝が全く離れているにも関わらず、一方に流れる電流が他方の枝の電圧降下に影響します。  
一般に2つの回路がそれぞれ $$L_1, L_2$$ のインダクタンスを有し、またその間の相互誘導を $$M$$ とします。

![](/assets/images/circuits/ac_circuit_eg_12.png)  

すると

$$
\left\{ \begin{array}{l}
&\mathcal{V}_1 
= \frac{d}{dt} (L_1 \mathcal{I}_1 + M \mathcal{I}_2) \\
&\mathcal{V}_2 
= \frac{d}{dt} (M \mathcal{I}_1 + L_2 \mathcal{I}_2) 
\end{array} \right. \tag{B.1}
$$

ここで $$L_1, L_2, M$$ は時間に依存せず一定とし、電圧電流として $$e^{i\omega t}$$ のような正弦的なものをつなげたとすれば

$$
\left\{ \begin{array}{l}
&\mathcal{V}_1 
= i\omega L_1 \mathcal{I}_1 + i\omega M \mathcal{I}_2 \\
&\mathcal{V}_2 
= i\omega M \mathcal{I}_1 + i\omega L_2 \mathcal{I}_2
\end{array} \right. \tag{B.2}
$$

のような関係になります。
ここでこれら2つのコイルに蓄えられた静電エネルギーの和は

$$
U 
= \frac{1}{2} (L_1 \mathcal{I}_1^2 + L_2 \mathcal{I}_2^2 + M \mathcal{I}_1 \mathcal{I}_2) \tag{B.3}
$$

であることから、これが常に正の値であるためには

$$
L_1 L_2 
\geq M^2 \tag{B.4}
$$

である必要があります。
したがって

$$
k 
\equiv \frac{M}{\sqrt{L_1 L_2}} \tag{B.5}
$$

は、絶対値が1より大きくない実数となります。
この $$k$$ を、2つの回路の結合係数 (coupling factor) と呼びます。  
(B.2)式から $$\mathcal{I}_1$$ を消去しましょう。

$$
\mathcal{V}_2 
= \frac{M}{L_1} \mathcal{V}_1 + i\omega \left( L_2 - \frac{M^2}{L_1}\right) \mathcal{I}_2 
= \frac{M}{L_1} \mathcal{V}_1 + i \omega (1-k^2) L_2 \mathcal{I}_2 \tag{B.6}
$$

この式において $$k$$ が最大値1となったときは

$$
\mathcal{V}_2 
= \frac{M}{L_1} \mathcal{V}_1 \tag{B.7}
$$

のようになり、$$\mathcal{V}_1$$ と $$\mathcal{V}_2$$ とは常に一定の比を持つことになります。
この場合、1次側の端子に定電圧電源をつなぐと、2次側の電圧 $$\mathcal{V}_2$$ は負荷電流 $$\mathcal{I}_2$$ に無関係に一定となります。
つまり2次側の端子からみたインピーダンスが、ゼロとなります。
$$k=1$$ のとき、2つのコイルは完全密結合 (perfect coupling) であると呼びます。  
密結合のコイルは、変圧器 (transformer) に応用されています。
変圧器では、2次の電圧はできるだけ一定であることが望ましい性能です。
密結合の条件は、2つのコイルをできるだけ接近して巻くことにより近似的に実現されます。
特に $$k=1$$ に近づけるためには、2つのコイルをいくつかの層に分けて交互に重ねること (サンドイッチ巻き) が行われます。
通常の変圧器は、インダクタンスを大きくするため鉄心、特に環状の鉄心に巻かれますが、これも $$k$$ を大きくするのに役立ちます。  
$$k$$ が小さいと、(B.6)式でわかるように、2次側からみたインピーダンスが

$$
\mathcal{Z} 
= i\omega L_2(1-k^2) \tag{B.8}
$$

であることから、これが大きくなります。
このような変圧器では、負荷があると電圧が変化します。
これは通常は望ましくないことです。
しかし放電管 (蛍光灯やネオンサインなど) には、むしろ電流の方が一定に近い電源が適します。
よってこれらにはわざと $$k$$ を小さくした変圧器が用いられます。
そのような変圧器を漏洩変圧器 (leakage transformer) と呼びます。
$$k$$ が小さいということは、1次コイルを通る時速が全部2次コイルを貫かず、磁束が漏洩することからこう呼ばれます。
漏洩変圧器では、磁心に分路 (bypass) を設けることで、磁束を漏らしています。

### 相互誘導の等価回路

相互誘導のある回路は、両側にコイルの一端が結ばれているとき、次図の(b)に示したような回路と全く等価であることが示せます。

![](/assets/images/circuits/ac_circuit_eg_13.png)  

(b)の回路図において

$$
\left\{ \begin{array}{l}
\mathcal{V}_1 
= i\omega (L_1 - M) \mathcal{I}_1 + i \omega M (\mathcal{I}_1 + \mathcal{I}_2) \\
\mathcal{V}_2 
= i\omega (L_2 - M) \mathcal{I}_2 + i \omega M (\mathcal{I}_1 + \mathcal{I}_2) \\
\end{array} \right. \tag{B.9}
$$

これは(B.2)式と同じであることがわかります。
回路の問題を扱う場合には、(b)の形の回路に直して考えた方が、考えやすいことがしばしばあります。  
ここで注意したいのは、(b)は単に形式的に描かれた等価回路であり、実際に(b)のような回路が、この形で実現できるとは限らないことです。
一般に $$L_1, L_2$$ は $$M$$ より大きいとは限らないため、$$L_1 - M, L_2 -M$$ のどちらかは負になる可能性もあります。
あるいは $$M$$ が負である場合もあります。
しかしそのような実現不能な場合でも、等価回路を考えることは考えの助けになることが多く、有用です。

## 参考文献

[1] [高橋秀俊, "電磁気学"](https://amzn.to/43fQKxC)  
[2] [霜田光一, 桜井 捷海, "エレクトロニクスの基礎"](https://amzn.to/4wAOuib)  
[3] [後藤憲一, 山崎修一郎, "詳解電磁気学演習"](https://amzn.to/3RvAkyD)  
[4] [駒宮幸男, "入門 現代の電磁気学 -特殊相対論を原点として-"](https://amzn.to/44jDd8N)  

{% include adsense.html %}