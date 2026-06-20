---
layout: default
title: 定常電流回路の例題
parent: 電気回路
math: mathjax3
permalink: /circuits/steady_circuit_eg
nav_order: 3
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

# 定常電流回路の例題

ここでは、定常電流が流れている様々な回路についてまとめています。
具体的な演習を行うことで、その扱い方を見ていきましょう。

## 検流計用分流器

### 問題設定

検流計の感度を色々と変えて使うため、検流計に次図のように抵抗を組合せ、測定しようとする電流の一部分だけが検流計を通るようにします。
これを分流器 (galvanometer shunt) と呼びます。

![](/assets/images/circuits/steady_circuit_eg_01.png)  

このとき、検流計に全体の $$k \ (<1)$$ 倍の電流が流れるようにするには、$$R_1, R_2$$ がどのようであれば良いでしょうか。
すなわち $$I_g = k I_0$$ となるような条件を求めてみましょう。
ここで、検流計の内部抵抗は $$R_g$$ とします。

### 解答例

抵抗 $$R_1, R_2$$ を次のように分けた回路図を考えましょう。

![](/assets/images/circuits/steady_circuit_eg_02.png)  

接続点A, Bでの電位を $$V_A, V_B$$ とすると、AB間の電位差は

$$
V 
= V_A - V_B \tag{1}
$$

となります。
よって[オームの法則](/circuits/steady_current#オームの法則)と[キルヒホッフの電流則](/circuits/steady_current#定常電流電気回路とキルヒホッフの法則)より

$$
I_0 
= \frac{V}{R_1} + \frac{V}{R_2 + R_g} 
= \frac{R_1 + R_2 + R_g}{R_1 (R_2 + R_g)} V \tag{2}
$$

$$
I_g 
= \frac{V}{R_2 + R_g} \tag{3}
$$

この2式と $$I_g = k I_0$$ とから

$$
k 
= \frac{R_1}{R_1 + R_2 + R_g} \tag{4}
$$

と求まります。
以上から、$$k$$ は検流計を含む閉回路の全抵抗 $$R_1 + R_2 + R_g$$ と $$R_1$$ との比から決定されることがわかります。
ここで $$R_1 + R_2$$ を一定にしておけば、内部抵抗 $$R_g$$ はどのような値であっても、$$k$$ は $$R_1$$ に比例します。
すなわち、感度は $$R_1$$ に比例します。
上図に示したように分流器を作っておき、タップを変えることにより、$$R_1+R_2$$ を一定に保ちながら、$$R_1$$ が例えば $$1:3:10:30: \cdots$$ と変わるようにしておけば、どの検流計をつけても感度を $$R_1$$ と同じ比で変えることができます。
この図の抵抗の回路を、万能分流器 (universal shunt) と呼びます。
正感度の絶対値は $$R_g / (R_1 + R_2)$$ によって変わります。
通常用いられるアンメーター (ammeter)、ミリアンメーター (milli-ammeter) もやはり分流器を用い、電流の一部だけをコイルに流すようにしてあることが多くあります。

## 適当な回路の計算 1

### 問題設定

次図のような回路を考えましょう。

![](/assets/images/circuits/steady_circuit_eg_03.png)  

ここに電圧 $$V$$ を加えたとき、抵抗 $$R$$ の両端の電圧が $$V' = V / n$$ かつ、全体の抵抗が $$R$$ となるような、$$R_1, R_2$$ を求めてみましょう。

### 解答例

まずは、この回路の合成抵抗を計算しましょう。
$$R_2$$ と $$R$$ が直列、そしてそれと並列に $$R$$ が接続されているます。
この合成抵抗が $$R$$ に一致するので

$$
R 
= \frac{1}{\frac{1}{R_1} + \frac{1}{R_2 + R}} 
= \frac{1}{\frac{R_1 + R_2 + R}{R_1 (R_2 + R)}} 
= \frac{R_1 (R_2 + R)}{R_1 + R_2 + R} \tag{5}
$$

です。
続いて、流れる全電流を $$I$$、$$R_2$$ に流れる電流を $$I'$$ とすると

$$
\begin{align}
&V 
= (I-I') R_1, \quad V 
= I' (R_2 + R) \ \Longrightarrow \ 
\frac{I'}{I-I'} 
= \frac{1}{\frac{I}{I'}-1} 
= \frac{R_1}{R_2 + R} \notag \\
&\Longrightarrow \ 
\frac{I}{I'} 
= \frac{R_2 + R}{R_1} + 1 
= \frac{R_1 + R_2 + R}{R_1} \tag{6}
\end{align}
$$

のような関係にあるとわかります。
ここで[オームの法則](/circuits/steady_current#オームの法則)より $$V' = I'R, V = IR$$ から

$$
\frac{V'}{V} 
= \frac{I'}{I} 
= \frac{R_1}{R_1 + R_2 + R} 
= \frac{1}{n} \ \Longrightarrow \ 
(n-1) R_1 
= R_2 + R \tag{7}
$$

これを(5)式に代入すれば

$$
R 
= \frac{(n-1) R_1^2}{R_1 + (n-1) R_1} 
= \frac{n-1}{n} R_1 \ \Longrightarrow \ 
R_1 
= \frac{n}{n-1} R \tag{8}
$$

となります。
これを再び(7)式に代入することで

$$
R_2 
= (n-1) R \tag{9} 
$$

のように、$$R_1, R_2$$ を得ることができました。

{% include adsense.html %}

## 適当な回路の計算 2

### 問題設定

次の回路図で、スイッチSの開閉に関わらず、全電流 $$I$$ が一定であるための条件を、$$R_1, R_2, R_3, R_4$$ を用いて求めましょう。

![](/assets/images/circuits/steady_circuit_eg_04.png)  

### 解答例

Sを開いたとき、この回路は $$R_1 + R_3$$ と $$R_2 + R_4$$ の並列接続なので、この回路の全抵抗 $$R$$ は

$$
R 
= \frac{1}{\frac{1}{R_1 + R_3} + \frac{1}{R_2 + R_4}} 
= \frac{(R_1 + R_3) (R_2 + R_4)}{R_1 + R_2 + R_3 + R_4} \tag{10}
$$

のように計算されます。
先ほどの回路図でスイッチSを閉じたときは、次の図に等しくなります。

![](/assets/images/circuits/steady_circuit_eg_05.png)  

このときの全抵抗は

$$
R 
= \frac{1}{\frac{1}{R_1} + \frac{1}{R_2}} + \frac{1}{\frac{1}{R_3} + \frac{1}{R_4}} 
= \frac{R_1 R_2}{R_1 + R_2} + \frac{R_3 R_4}{R_3 + R_4} \tag{11}
$$

です。
この2つの式を整理していきましょう。
その前に、以下の計算をしておきます。

$$
\frac{R_1 R_2}{R_1 + R_2} 
= \frac{R_1 + R_2 + R_3 + R_4}{R_1 + R_2 + R_3 + R_4} \frac{R_1 R_2}{R_1 + R_2} 
= \frac{1}{R_1 + R_2 + R_3 + R_4} \left( 1 + \frac{R_3 + R_4}{R_1 + R_2}\right) R_1 R_2 \tag{12}
$$

$$
\frac{R_3 R_4}{R_3 + R_4} 
= \frac{R_1 + R_2 + R_3 + R_4}{R_1 + R_2 + R_3 + R_4} \frac{R_3 R_4}{R_3 + R_4} 
= \frac{1}{R_1 + R_2 + R_3 + R_4} \left( 1 + \frac{R_1 + R_2}{R_3 + R_4}\right) R_3 R_4 \tag{13}
$$

これより(11)式は

$$
R 
= \frac{1}{R_1 + R_2 + R_3 + R_4} \left\{ \left( 1 + \frac{R_3 + R_4}{R_1 + R_2}\right) R_1 R_2 + \left( 1 + \frac{R_1 + R_2}{R_3 + R_4}\right) R_3 R_4 \right\} \tag{14}
$$

のように整理できます。
これと(10)式より

$$
\begin{align}
&(R_1 + R_3) (R_2 + R_4) 
= \left( 1 + \frac{R_3 + R_4}{R_1 + R_2}\right) R_1 R_2 + \left( 1 + \frac{R_1 + R_2}{R_3 + R_4}\right) R_3 R_4 \notag \\
&\Longrightarrow \ 
R_1 R_4 + R_2 R_3 
= \frac{R_3 + R_4}{R_1 + R_2} R_1 R_2 + \frac{R_1 + R_2}{R_3 + R_4} R_3 R_4 \notag \\
&\Longrightarrow \ 
(R_1 R_4 + R_2 R_3) (R_1 + R_2) 
= R_1 R_2 ( R_3 + R_4) + \frac{R_3 R_4}{R_3 + R_4} (R_1 + R_2)^2 \notag \\
&\Longrightarrow \ 
R_1^2 R_4 + R_2^2 R_3 
= \frac{R_3 R_4}{R_3 + R_4} (R_1 + R_2)^2 \notag \\
&\Longrightarrow \ 
(R_1^2 R_4 + R_2^2 R_3) (R_3 + R_4) 
= R_3 R_4 (R_1 + R_2)^2 \notag \\
&\Longrightarrow \ 
R_1^2 R_4^2 - 2 R_1 R_2 R_3 R_4 + R_2^2 R_3^2 = (R_1 R_4 - R_2 R_3)^2 
= 0 \tag{15}
\end{align}
$$

となります。
以上から、求めたかった条件は

$$
R_1 R_4 
= R_2 R_3 \tag{16}
$$

となります。

## 適当な回路の計算 3

### 問題設定

AB間の長さ $$\ell$$ の電線の途中の点に、絶縁不良のところが見つかりました。
この絶縁不良の箇所からは電流が外部に漏れ出し、それによって余計な電位が生まれます。
絶縁不良の箇所を探すために、A端とアースとの間に起電力 $$V_1$$ の電池を入れました。
するとB端を絶縁したとき、B端のアースに対する電位が $$V$$ となりました。
逆にA端を絶縁し、そのアースに対する電位を $$V$$ にするには、B端に起電力 $$V_2$$ の電池を入れる必要がありました。
このとき、絶縁不良の点は、A端から距離がいくつの場所でしょうか。
電池の内部抵抗は無視し、さらに電線の単位長さあたりの抵抗は $$\rho$$ とします。
また、この絶縁不良から外部に漏れ出す電流は、次図のように抵抗 $$R$$ によりモデル化できるとします。

![](/assets/images/circuits/steady_circuit_eg_06.png)  

### 解答例

絶縁したときの両端の電位は等しく $$V$$ としているため、電流 $$I$$ は等しいと考えて良いでしょう。
そこで

$$
V 
= IR \tag{17}
$$

が成り立ちます。
絶縁不良を起こしている場所を点Pとし、AP間の長さを $$x$$ とします。
すると

$$
V_1 - I (x\rho + R) 
= V_1 - V - \rho I x
= 0 \tag{18}
$$

$$
V_2 - I \{(\ell -x)\rho + R\}
= V_2 - V - (\ell -x) \rho I
= 0 \tag{19}
$$

この2つの式から、$$I$$ を消去しましょう。
(18)式より

$$
I \rho 
= \frac{V_1 - V}{x} \tag{20}
$$

これを(19)式に代入すれば

$$
\begin{align}
&(\ell - x) \frac{V_1 - V}{x} 
= V_2 - V \ \Longrightarrow \ 
\ell (V_1 - V) - (V_1 - V) x 
= (V_2 - V) x \notag \\
&\Longrightarrow \ 
x 
= \frac{V_1 - V}{V_1 + V_2 - 2V} \ell \tag{21}
\end{align}
$$

を得ます。

{% include adsense.html %}

## 格子回路

### 問題設定

一様な導線で次図のように、9個の同じ大きさの正方形からなる格子回路を作りました。

![](/assets/images/circuits/steady_circuit_eg_07.png)  

このとき、AB間の抵抗を求めてみましょう。
ただし、一辺の抵抗を $$r$$ とします。

### 解答例

AB間の対称性より、各部の電流は先ほどの図のように仮定することができます。
CH間の電位差を、CGHとCDHの2つに沿って表すと

$$
V_\mathrm{CGH} 
= (i_1 - i_2) r + (i_1 - i_2) r, \quad 
V_\mathrm{CDH} 
= i_2 r + (i_2 - i_3) r \tag{22}
$$

のようになります。
これらが等しいことを用いれば

$$
2i_1 - 4 i_2 + i_3 
= 0 \tag{23}
$$

同様に、DK間の電位差について、DEKとDHKの2つに沿って表すことで

$$
V_\mathrm{DEK} 
= i_3 r + i_3 r, \quad 
V_\mathrm{DHK} 
= (i_2 - i_3) r + (i_2 - i_3) r \tag{24}
$$

先程と同じくこれらが等しいため

$$
i_2 - 2 i_3 
= 0 \tag{25}
$$

となります。
さらに対称性から、$$i_2 = I/2$$とわかるので

$$
i_2 = \frac{I}{7}, \quad 
i_3 = \frac{2}{7} I \tag{26}
$$

となります。
AB間の電位差として、ACDEKLBに沿って考えれば

$$
V 
= i_1 r + i_2 r + i_3 r + i_3 r + i_2 r + i_1 r 
= 2 (i_1 + i_2 + i_3) r 
= \frac{13}{7} I r \tag{27}
$$

以上から、AB間の抵抗は

$$
R 
= \frac{V}{I} 
= \frac{13}{7} r \tag{28}
$$

と求まりました。

## はしご回路の抵抗値

### 問題設定

次図(a)のようなはしご型の回路のAB間の抵抗を求めましょう。
また(b)のようにはしごが無限に続く場合についても考えてみましょう。

![](/assets/images/circuits/steady_circuit_eg_08.png)  

### 解答例

一番右にある抵抗 $$r$$ と $$R$$ は直列なので、その合成値は $$R^{(1)} = r + R$$ です。
この $$R^{(1)}$$ と 一つ内側にある $$R$$ との合成値は、並列結合であることから

$$
R^{(2)} 
= \frac{1}{\frac{1}{R^{(1)}} + \frac{1}{R}} 
= \frac{R^{(1)} R}{R^{(1)} + R} 
= \frac{(r+R) R}{r + 2R} \tag{29}
$$

続いて、この $$R^{(2)}$$ と $$r$$ の直列結合した抵抗は

$$
R^{(3)} 
= r + R^{(2)} 
= \frac{r (r + 2R) + (r+R) R}{r + 2R} 
= \frac{r^2 + 3rR + R^2}{r + 2R} \tag{30}
$$

のように求まります。
これと $$R$$ とを並列結合した抵抗は

$$
\begin{align}
R^{(4)} 
&= \frac{1}{\frac{1}{R^{(3)}} + \frac{1}{R}} 
= \frac{R^{(3)} R}{R^{(3)} + R}
= \frac{\frac{R (r^2 + 3rR + R^2)}{r + 2R}}{\frac{r^2 + 3rR + R^2}{r + 2R} + R} \notag \\
&= \frac{R (r^2 + 3rR + R^2)}{r + 2R} \frac{r + 2R}{r^2 + 3rR + R^2 + rR + 2R^2} 
= \frac{R (r^2 + 3rR + R^2)}{r^2 + 4rR + 3R^2} \tag{31}
\end{align}
$$

と求まります。
ここにさらに $$r$$ が直列結合したものは

$$
R^{(5)} = r + R^{(4)} 
= \frac{r (r^2 + 4rR + 3R^2) + R (r^2 + 3rR + R^2)}{r^2 + 4rR + 3R^2} 
= \frac{r^3 + 5r^2 R + 6 r R^2 + R^3}{r^2 + 4rR + 3R^2} \tag{32}
$$

となります。  
続いて、はしごを無限に繋げた場合の抵抗を $$R_\infty$$ としましょう。
次図のように、さらにもう一段繋げたものも $$R_\infty$$ に一致します。

![](/assets/images/circuits/steady_circuit_eg_09.png)  

よって

$$
\begin{align}
&r + \frac{1}{\frac{1}{R_\infty} + \frac{1}{R}} 
= R_\infty \notag \\
&\Longrightarrow \ 
R_\infty - \frac{r (R_\infty + R) + R_\infty R}{R_\infty + R} 
= \frac{R_\infty (R_\infty + R) - r (R_\infty + R) - R_\infty R}{(R_\infty + R)} 
= \frac{R_\infty^2  - r R_\infty -rR }{(R_\infty + R)} 
= 0 \tag{33}
\end{align}
$$

分子は二次関数なので、この解は

$$
R_\infty 
= \frac{r + \sqrt{r^2 + 4rR}}{2} \tag{34}
$$

となります ($$R_\infty > 0$$より、マイナス符号は無視しました。)

{% include adsense.html %}

## はしご回路を流れる電流

### 問題設定

次の図のように、多くの正方形をつなげてできた非常に長いはしご回路について考えましょう。

![](/assets/images/circuits/steady_circuit_eg_10.png)  

各辺の抵抗は等しく $$r$$ であるとします。
電源をA, Bに結び、ここから全電流 $$I$$ を流しました。
このときに各区間に流れる電流を $$I_1, I_2, \dots$$とします。
$$I_n, I_{n+1}, I_{n+2}$$ の間に成り立つ漸化式を求めましょう。
またその漸化式を解き、$$I_n$$ を $$I_1$$ を用いて表し、さらに全電圧 $$V$$ と全抵抗 $$R$$ も計算しましょう。

### 解答例

はしご回路の点 $$\mathrm{A}_n, \mathrm{A}_{n+1}$$ において、[キルヒホッフの電流則](/circuits/steady_current#定常電流電気回路とキルヒホッフの法則)より

$$
I_n 
= I_{n+1} + I_n' \tag{35}
$$

$$
I_{n+1} 
= I_{n+2} + I_{n+1}' \tag{36}
$$

が成り立ちます。
また、[キルヒホッフの電圧則](/circuits/steady_current#定常電流電気回路とキルヒホッフの法則)より、はしご回路の次の部分に着目することで

![](/assets/images/circuits/steady_circuit_eg_11.png)  

$$
r (I_{n+1} + I_{n+1}' + I_{n+1} - I_n') 
= 0 \ \Longrightarrow \ I_{n+1} + I_{n+1}' + I_{n+1} - I_n' 
= 0 \tag{37}
$$

を得ます。
(37)式から(35)式を引くことで

$$
2I_{n+1} + I_{n+1}' - I_n' - I_n 
= -I_{n+1} - I_n' \ \Longrightarrow \ 
3 I_{n+1} + I_{n+1}' - I_n 
= 0 \tag{38}
$$

ここにさらに(36)式を足すと

$$
4 I_{n+1} + I_{n+1}' - I_n 
= I_{n+2} + I_{n+1}' \ \Longrightarrow \ 
I_{n+2} - 4 I_{n+1} + I_n 
= 0 \tag{39}
$$

のような漸化式を得ます。
この漸化式を解くために、$$I_n = k x^n$$ の解の形を仮定してみましょう。
すると

$$
k x^{n+2} - 4k x^{n+1} + k x^n 
= 0 \ \Longrightarrow \ x^2 -4x + 1 
= 0 \tag{40}
$$

となります。
この解は

$$
x 
= \frac{4 \pm \sqrt{16-4}}{2} 
= 2 \pm \sqrt{3} \tag{41}
$$

です。
この2つの解の重ね合わせから、一般解が

$$
I_n 
= k_1(2-\sqrt{3})^n + k_2 (2+\sqrt{3})^n \tag{42}
$$

となります。
しかし、電源からの距離が遠くなればなるほど電流は弱くなり、$$n \rightarrow \infty$$ で $$I_n \rightarrow 0$$ となるはずです。
よって $$k_2 = 0$$ とわかります。
そして $$n=1$$ のときから、定数 $$k_1$$が

$$
I_1 
= k_1 (2-\sqrt{3}) \ \Longrightarrow \ 
k_1 
= I_1 (2-\sqrt{3})^{-1} \tag{43}
$$

と求まります。
以上より

$$
I_n 
= I_1 (2-\sqrt{3})^{n-1} \tag{44}
$$

と求まります。  
AB間の電圧を $$V$$ とすると、[キルヒホッフの電圧則](/circuits/steady_current#定常電流電気回路とキルヒホッフの法則)より

$$
\begin{align}
r I_1 + r I_1' + r I_1 - V 
= 0 
&\underbrace{\Longrightarrow}_{I_1' = I_1 - I_2} \ 
V 
= r (3I_1 - I_2) 
\underbrace{=}_{(43)} \{ 3 - (2-\sqrt{3})\} r I_1 
= (1 + \sqrt{3}) r I_1 \notag \\
&\Longrightarrow \ 
I_1 
= \frac{V}{(1+\sqrt{3}) r} \tag{45} 
\end{align}
$$

となります。
全電流が $$I = I_0 + 2I_1$$ であること、そして全電圧は $$V = r I_0$$ であることを用いれば

$$
R 
= \frac{V}{I} 
= \frac{r I_0}{I_0 + 2 I_1} 
= \frac{r I_0}{I_0 + \frac{2 I_0}{1+\sqrt{3}}} 
= \frac{1 + \sqrt{3}}{3 + \sqrt{3}} r
= \frac{1 + \sqrt{3}}{\sqrt{3} (1 + \sqrt{3})} r 
= \frac{r}{\sqrt{3}} \tag{46}
$$

を得ます。

## 抵抗の$$\Delta$$接続とY接続との変換

### 問題設定

次の図の(a), (b)はそれぞれ、$$\Delta$$ 接続、Y接続と呼ばれています。

![](/assets/images/circuits/steady_circuit_eg_12.png)  

この2つにおいて、A, B, C間の抵抗が等しいとしたとき、この2つの接続の変換則を導出しましょう。

### 解答例

まずAB間においては、[抵抗の並列結合](/circuits/connection#抵抗の直列結合並列結合)より

$$
R_a + R_b 
= \frac{1}{\frac{1}{R_3} + \frac{1}{R_1 + R_2}} 
= \frac{1}{\frac{R_1 + R_2 + R_3}{R_3 (R_1 + R_2)}} 
= \frac{R_3 (R_1 + R_2)}{R_1 + R_2 + R_3} \tag{47}
$$

BC間も同様に

$$
R_b + R_c 
= \frac{R_1 (R_2 + R_3)}{R_1 + R_2 + R_3} \tag{48}
$$

最後にCA間は

$$
R_c + R_a 
= \frac{R_2 (R_3 + R_1)}{R_1 + R_2 + R_3} \tag{49}
$$

のようになります。
これら3つの式を足し合わせると

$$
\begin{align}
&2(R_a + R_b + R_c) 
= \frac{R_3 (R_1 + R_2) + R_1 (R_2 + R_3) + R_2 (R_3 + R_1)}{R_1 + R_2 + R_3} 
= \frac{2 R_1 R_2 + 2 R_2 R_3 + 2 R_3 R_1}{R_1 + R_2 + R_3} \notag \\
&\Longrightarrow \ 
R_a + R_b + R_c 
= \frac{R_1 R_2 + R_2 R_3 + R_3 R_1}{R_1 + R_2 + R_3} \tag{50}
\end{align}
$$

を得ます。
(50)式から、例えば(48)式を引くことで

$$
R_a 
= \frac{R_1 R_2 + R_2 R_3 + R_3 R_1}{R_1 + R_2 + R_3} - \frac{R_1 (R_2 + R_3)}{R_1 + R_2 + R_3} 
= \frac{R_2 R_3}{R_1 + R_2 + R_3} 
= \frac{\Delta}{R_1} \quad \left( \Delta \equiv \frac{R_1 R_2 R_3}{R_1 + R_2 + R_3}\right) \tag{51}
$$

を得ます。
同様に

$$
R_b 
= \frac{\Delta}{R_2}, \quad R_c 
= \frac{\Delta}{R_3} \tag{52}
$$

のように計算ができます。
これにより、$$\Delta$$接続からY接続への変換を得ることができました。  
これの逆変換も求めてみましょう。
(51), (52)式より

$$
R_a R_b + R_b R_c + R_c R_a 
= \frac{\Delta^2}{R_1 R_2} + \frac{\Delta^2}{R_2 R_3} + \frac{\Delta^2}{R_3 R_1} 
= \Delta^2 \frac{R_3 + R_1 + R_2}{R_1 R_2 R_3} 
= \Delta \tag{53}
$$

のように計算されます。
この式と(51)式を用いれば

$$
R_1 
= \frac{\Delta}{R_a} 
= \frac{Y}{R_a} \quad \left( Y = \Delta = R_a R_b + R_b R_c + R_c R_a \right) \tag{54}
$$

のように、$$R_1$$を$$R_a, R_b, R_c$$のみで表現することができました。
同様に

$$
R_2 
= \frac{Y}{R_b}, \quad R_3 
= \frac{Y}{R_c} \tag{55}
$$

も得られます。

{% include adsense.html %}

## ホイートストンブリッジ回路

### 問題設定

次図のような回路を、ホイートストン (Wheatstone) ブリッジ回路と呼びます。

![](/assets/images/circuits/steady_circuit_eg_13.png)  

このとき、検流計Gに流れる電流 $$I_5$$ を求めましょう。
ただし、検流計の内部抵抗を $$R_5$$ とします。

### 解答例

$$R_1, R_2$$ に流れる電流をそれぞれ $$I_1, I_2$$ とすると、$$R_3, R_4$$ に流れる電流はそれぞれ $$I_1 - I_5, I_2 + I_5$$ となります (上図参照。)
この回路図において、ACD, CBD, ADBのループでの[キルヒホッフの電圧則](/circuits/steady_current#定常電流電気回路とキルヒホッフの法則)より

$$
I_1 R_1 + I_5 R_5 - I_2 R_2 
= 0 \tag{56}
$$

$$
(I_1 - I_5) R_3 - (I_2 + I_5) R_4 - I_5 R_5 
= 0 \tag{57}
$$

$$
I_2 R_2 + (I_2 + I_5) R_4 
= E \tag{58}
$$

が成り立ちます。
(56)式より

$$
I_2 
= I_1 \frac{R_1}{R_2} + I_5 \frac{R_5}{R_2} \tag{59}
$$

これを(57)式に用いることで

$$
\begin{align}
&I_1 R_3 - I_5 (R_3 + R_4 + R_5) - I_2 R_4 
= I_1 \left( R_3 - \frac{R_1 R_4}{R_2}\right) - I_5 \left( R_3 + R_4 + R_5 + \frac{R_4 R_5}{R_2}\right) 
= 0 \notag \\
&\Longrightarrow \ 
I_1 
= I_5 \frac{R_3 + R_4 + R_5 + \frac{R_4 R_5}{R_2}}{R_3 - \frac{R_1 R_4}{R_2}} 
= I_5 \frac{R_2 R_3 + R_2 R_4 + R_2 R_5 + R_4 R_5}{R_2 R_3 - R_1 R_4} \tag{60}
\end{align}
$$

を得ます。
これを再び(59)式に代入すれば

$$
\begin{align}
I_2 
&= I_5 \frac{R_2 R_3 + R_2 R_4 + R_2 R_5 + R_4 R_5}{R_2 R_3 - R_1 R_4} \frac{R_1}{R_2} + I_5 \frac{R_5}{R_2} \notag \\
&= I_5 \frac{R_1 (R_2 R_3 + R_2 R_4 + R_2 R_5 + R_4 R_5) + R_5 (R_2 R_3 - R_1 R_4)}{(R_2 R_3 - R_1 R_4) R_2} \notag \\
&= I_5 \frac{R_1 R_3 + R_1 R_4 + R_1 R_5 + R_3 R_5}{R_2 R_3 - R_1 R_4} \tag{61}
\end{align}
$$

となります。
(61)式を(58)式に代入すると

$$
\begin{align}
&I_5 \frac{R_1 R_3 + R_1 R_4 + R_1 R_5 + R_3 R_5}{R_2 R_3 - R_1 R_4} (R_2 + R_4) + I_5 R_4 
= E \notag \\
&\Longrightarrow \ 
\{(R_1 R_3 + R_1 R_4 + R_1 R_5 + R_3 R_5) (R_2 + R_4) + R_4 (R_2 R_3 - R_1 R_4)\} I_5 
= (R_2 R_3 - R_1 R_4) E \tag{62}
\end{align}
$$

となります。
左辺の係数を整理することで、次の式を得ます。

$$
I_5 
= \frac{R_2 R_3 - R_1 R_4}{R_5 (R_1 + R_3) (R_2 + R_4) + R_1 R_3 (R_2 + R_4) + R_2 R_4 (R_1 + R_3)} E \tag{63}
$$

(63)式において

$$
R_1 R_4 
= R_2 R_3 \ \Longrightarrow \ 
R_1 : R_3 
= R_2 : R_4 \tag{64}
$$

ならば、$$I_5 = 0$$ となります。
このとき、このブリッジは釣り合ったと言います。
このブリッジは抵抗の測定に広く用いられています。
$$R_4$$ が未知としましょう。
$$R_1, R_2, R_3$$ が既知かつ可変ならば、$$R_1, R_2, R_3$$ を調整して $$I_5=0$$ とすることで、(64)式から $$R_4$$ を求めることができます。

## ケルビンの二重ブリッジ回路

### 問題設定

次のような回路を、ケルビン (Kelvin) の二重ブリッジ回路と呼びます。
[ホイートストンブリッジ回路](/circuits/steady_circuit_eg#ホイートストンブリッジ回路)で議論したように、この回路での検流計Gに電流が流れないような抵抗 $$R$$ を求めてみましょう。

![](/assets/images/circuits/steady_circuit_eg_14.png)  

### 解答例

$$R_4, R_5, R_6$$ の部分は、[$$\Delta$$ 接続](/circuits/steady_circuit_eg#抵抗のdelta接続とy接続との変換)です。
そのため、これを[等価なY接続に変換](/circuits/steady_circuit_eg#抵抗のdelta接続とy接続との変換)しましょう。
すると、次のような回路図になります。

![](/assets/images/circuits/steady_circuit_eg_15.png)  

このとき

$$
R_a 
= \frac{R_4 R_6}{R_4 + R_5 + R_6}, R_b
= \frac{R_4 R_5}{R_4 + R_5 + R_6}, R_c
= \frac{R_5 R_6}{R_4 + R_5 + R_6} \tag{65}
$$

この回路図は[ホイートストンブリッジ回路](/circuits/steady_circuit_eg#ホイートストンブリッジ回路)であることから、検流計Gに電流が流れないとき

$$
\begin{align}
&R_1 (R_3 + R_c) 
= R_2 (R + R_a) \notag \\
&\Longrightarrow \ 
R 
= \frac{R_1}{R_2} (R_3 + R_c) - R_a 
= \frac{R_1 R_3}{R_2} + \left( \frac{R_1}{R_2} - \frac{R_4}{R_5} \right) \frac{R_5 R_6}{R_4 + R_5 + R_6} \tag{66}
\end{align}
$$

このケルビンの二重ブリッジは、ホイートストンブリッジ回路では測定できないような小さな抵抗を精度良く測定するために用いられます。

## 参考文献

[1] [高橋秀俊, "電磁気学"](https://amzn.to/43fQKxC)  
[2] [後藤憲一, 山崎修一郎, "詳解電磁気学演習"](https://amzn.to/3RvAkyD)  
[3] [霜田光一, 桜井 捷海, "エレクトロニクスの基礎"](https://amzn.to/4wAOuib)  
[4] [松澤昭, "新しい電気回路＜上＞"](https://amzn.to/495eZCl)  

{% include adsense.html %}