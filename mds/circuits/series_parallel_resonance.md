---
layout: default
title: 直列共振と並列共振
parent: 電気回路
math: mathjax3
permalink: /circuits/series_parallel_resonance
nav_order: 9
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

# 直列共振と並列共振

## 直列共振

$$L, C, R$$ を直列につないだ回路に交流電圧をかけた場合、この回路の複素インピーダンスは次のようになるのでした ([リンク先参照。](/circuits/ac#直列lcr回路とインピーダンス))

$$
\mathcal{Z} 
= R + i \left( \omega L - \frac{1}{\omega C}\right) \ \Longrightarrow \ 
Z 
= \sqrt{R^2 + \left( \omega L - \frac{1}{\omega C}\right)^2} \tag{1}
$$

すると $$\omega = \sqrt{\frac{1}{LC}}$$ のとき、インピーダンスは最小値 $$Z = R$$ となります。
すなわち、電流 $$\mathcal{I} = \mathcal{V} / \mathcal{Z}$$ の大きさは最大となります。
この条件を満たした状態を直列共振 (series resonance) と呼び、先ほどの $$\omega = \sqrt{\frac{1}{LC}}$$ を共振角周波数と呼びます。
一般にもっと複雑な回路でも、ある周波数で $$Z = \vert \mathcal{Z} \vert$$ が特に小さくなることがあります。
このような時に、一般にその周波数を直列共振周波数と呼ぶことがあります。  
この直列共振は、$$\omega$$ を一定にしておき、$$L$$ または $$C$$ を変化させても起こります。
その時も、やはり共振は $$\omega^2 = \frac{1}{LC}$$ という条件を満足する場合に起こります。
このときの $$L, C$$ の値に対して $$Z$$ が最小となり、電流は最大となります。  
共振の様子を詳しくみてみましょう。
電流の大きさの2乗は

$$
\vert \mathcal{I} \vert^2 
= \frac{\vert \mathcal{V} \vert^2}{R^2 + \left( \omega L - \frac{1}{\omega C}\right)^2} \tag{2}
$$

となります。
$$\omega_0^2 = \frac{1}{LC}$$ の関係を用いて、$$C$$ を消去しましょう。
すると

$$
\vert \mathcal{I} \vert^2 
= \frac{\vert \mathcal{V} \vert^2}{R^2 + \omega_0^2 L^2 \left( \frac{\omega}{\omega_0} - \frac{\omega_0}{\omega}\right)^2} \tag{3}
$$

のようになります。
(3)式の概形は次のようになります。

![](/assets/images/circuits/series_parallel_resonance_01.png)  
$$\vert \mathcal{I} \vert^2$$ の角周波数依存性を表したもの。$$\omega_0$$ は共振角周波数、ABは $$2\Delta \omega$$ を表す。
$$\Delta \omega$$ は後述の半値幅。

$$\vert \mathcal{I} \vert^2$$ が最大値を取るのは、分母の第二項が消えて $$R^2$$ のみ残る場合で、その値は

$$
\vert \mathcal{I} \vert^2_\mathrm{max} 
= \frac{\vert \mathcal{V} \vert^2}{R^2} \tag{4}
$$

とわかります。

### 共振の半値幅とQ値

次に、$$\vert I \vert^2$$ の値が最大値の半分になるときの $$\omega$$ を考えてみましょう。
それは、(3)式において分母の第一項と第二項が等しくなった場合であるから

$$
R^2 
= \omega_0^2 L^2 \left( \frac{\omega}{\omega_0} - \frac{\omega_0}{\omega} \right)^2 \ \Longrightarrow \ 
\frac{\omega}{\omega_0} - \frac{\omega_0}{\omega} 
= \pm \frac{R}{\omega_0 L} \tag{5}
$$

を満足するような $$\omega$$ の値であることがわかります。
もちろんこの式を $$\omega$$ について解けばよいのですが、ここでは $$\omega$$ が $$\omega_0$$ に近い領域で考えましょう。
すなわち

$$
\frac{\omega}{\omega_0} 
\approx 1 + \delta \tag{6}
$$

のようにおいて、$$\vert \delta \vert \ll 1$$ として計算を行うと

$$
\frac{\omega}{\omega_0} - \frac{\omega_0}{\omega} 
\approx 1 + \delta - \frac{1}{1+\delta} 
\approx 1 + \delta - (1-\delta) 
= 2\delta \tag{7}
$$

となります。
以上から

$$
\delta 
= \pm \frac{R}{2\omega_0 L} \tag{8}
$$

のように書くことができます。
そして先ほどの図において、$$\vert \mathcal{I} \vert_\mathrm{max}^2$$ の半分の値をとる $$\vert \mathcal{I} \vert^2$$ に対応する2点A, B間の距離を $$2\Delta \omega$$ で表すことにすると

$$
\Delta \omega 
= \vert \omega_0 \delta \vert 
= \frac{R}{2L} \tag{9}
$$

と求まります。
$$R$$ の値が小さいほど $$\Delta \omega$$ の値も小さく、共振を表す曲線の形が鋭いことがわかります。
ここで $$\Delta \omega$$ のことを、共振における半値幅と呼びます。  

{: .note }
半値幅を求めるときは、$$\vert \mathcal{I} \vert$$ ではなく $$\vert \mathcal{I} \vert^2$$ の最大値の半分となることを用いていることに注意しましょう。
これは、一般に交流を測定する場合には2乗特性の計器が多く用いられていることを受けたもので、$$\vert \mathcal{I} \vert^2$$ の方が $$\vert \mathcal{I} \vert$$ よりも直接測定される量であるからです。

また共振の相対的な鋭さは

$$
\frac{\Delta \omega}{\omega_0} 
= \delta \tag{10}
$$

の値により特徴付けられますが、これはしばしば

$$
Q 
= \frac{\omega_0}{2\Delta \omega} 
= \frac{1}{2\delta} 
= \frac{\omega_0 L}{R} \tag{11}
$$

という量で表されます。
これを回路のQ値 (quality-factor, Q-value) と呼びます。

### Q値の別定義

次に、$$\omega$$ を変えずに $$L$$ の値を共振点から少しズラした場合について考えてみましょう。
(2)式で $$\omega = \omega_0 = \sqrt{\frac{1}{LC}}$$、$$L \rightarrow L + \Delta L$$ のようにすると、$$\vert \mathcal{I} \vert^2$$ が最大値の半分になるのは

$$
R 
= \frac{1}{\sqrt{LC}} (L + \Delta L) - \frac{\sqrt{LC}}{C} 
= \sqrt{\frac{L}{C}} \left(1 + \frac{\Delta L}{L} \right) - \sqrt{\frac{L}{C}} \ \Longrightarrow \ 
\frac{L}{\Delta L} 
= \frac{1}{R} \sqrt{\frac{L}{C}} \tag{12}
$$

と求まります。
これは(11)式で具体的に $$\omega_0 = \frac{1}{\sqrt{LC}}$$ としたものに等しくなっていることがわかります。
すなわち、$$L$$ を $$\Delta L$$ だけズラしたとき $$\vert \mathcal{I} \vert^2 = \vert \mathcal{I} \vert_\mathrm{max}^2 / 2$$ になるとすれば、$$Q$$ は

$$
Q = \frac{L}{\Delta L} \tag{13}
$$

のように定義することもできます。
全く同じことをコンデンサーの電気容量 $$C$$ についても行うことで

$$
Q = \frac{C}{\Delta C} \tag{14}
$$

のように定義することも可能です。

### 共振についての種々の話題

電気回路の共振は、ラジオやテレビなど、至るところで応用されています。
様々な情報を持つ信号から特定の周波数の信号を選び出すこと可能なため、受信機の放送局選択に用いられています。
一般に共振回路の $$Q$$ の値は主としてコイルの抵抗により決定されますが、普通のラジオ用コイルでは100程度であり、$$Q$$ 値が高いほど性能が良いコイルといえます。
もしコイルの抵抗 $$R$$ が一定の場合、(11)式から $$C$$ を小さくして $$\omega_0$$ を大きくすることで、$$Q$$ 値は大きくなるはずです。
しかし交流がコイルを流れる場合には誘導作用により渦電流を生じ、また表皮効果などでコイルの高周波に対する抵抗は、直流の場合に比べてずっと大きくなります。
このために、$$Q$$ の値は普通は数百より大きくなりません。
もっとも、マイクロ波における空洞共振器では、$$Q$$ 値が数千から最大10万に達するものまであります。  
一般にこのように回路が共振を起こすと、電流 $$\mathcal{I}$$ が大きくなるため、$$L, C$$ の端子に現れる電圧 $$\omega L \mathcal{I}, \frac{\mathcal{I}}{\omega C}$$ も非常に大きくなります。
これらの値は、電源電圧よりもはるかに大きくなることがありえます。
すなわち、共振が回路に起こった場合には著しく高い電圧が回路に現れることがあるため、絶縁についてはこの場合を考慮しておく必要があるでしょう。  
また実際に回路素子として用いるコイルやコンデンサーは、$$L$$ や $$C$$ が角周波数依存性を持ちます。
しかもこれらのインピーダンスは純虚数ではなく、実数部をも含んでいるのが常です。
しかしそのような場合でも、取り扱う周波数において実際に測定された $$L, C$$ のインピーダンスの値を用いれば、回路計算を直流回路のときと全く同様に行うことができます。

{% include adsense.html %}

## 並列共振

ここまでは $$L, C, R$$ を直列につないだ場合を考えてきましたが、今度はこれら3つが並列につながれたものを考えてみましょう。

![](/assets/images/circuits/series_parallel_resonance_02.png)  

各回路素子のインピーダンス $$i\omega L, R, \frac{1}{i\omega C}$$ を並列につなぐことによる回路全体の[合成アドミタンス](/circuits/ac#アドミタンス)は

$$
\mathcal{Y} 
= \frac{1}{R} + i\omega C + \frac{1}{i\omega L} 
= \frac{1}{R} + i \left( \omega C - \frac{1}{\omega L} \right) \tag{15}
$$

と求まります。
ここから、$$\vert \mathcal{I} \vert$$ の値が

$$
\omega^2 
= \frac{1}{LC} \tag{16}
$$

の場合に最小となり、そのときの値は

$$
\vert \mathcal{I} \vert_\mathrm{min} 
= \frac{\vert \mathcal{V} \vert}{R} \tag{17}
$$

となります。
これは先ほどの共振と反対の現象であると考え、これを反共振 (antiresonance) と呼ぶこともあります。  
この場合、電圧 $$\mathcal{V}$$ の代わりに電流 $$\mathcal{I}$$ が与えられたものと考えると、電圧は

$$
\mathcal{I} 
= \mathcal{Y} \mathcal{V} \ \Longrightarrow \ 
\mathcal{V} 
= \frac{\mathcal{I}}{\mathcal{Y}}
= \mathcal{Z} \mathcal{I} 
= \frac{\mathcal{I}}{\frac{1}{R} + i \left( \omega C - \frac{1}{\omega L} \right)} \tag{18} 
$$

のように表されます。
この電圧は $$\omega^2 = \frac{1}{LC}$$ のときに最大となります。
すなわち、これもやはり1つの共振現象に違いありません。
この現象は $$L, C$$ の並列回路の共振であることから、これを並列共振 (parallel resonance) または電圧共振 (voltage resonance) と呼びます。
一般に $$\vert \mathcal{Z} \vert$$ がある周波数で鋭い最大値 (極大値) を持つとき、これを並列共振周波数とも呼びます。  
直列共振は定電圧電源、並列共振は定電流電源において起こるものであることに注意しましょう。

{: .note }
私たちが用いている多くの電源は交流の配電線 (100ボルト) にしても電池やコンデンサーにしても、定電圧電源に近いものです。
しかし一方で定電流電源というものも考えられ、それを実際に用いることにより便宜を得る場合があります。
このときに注意したいのは、定電圧電源の場合と異なり、定電流電源は短絡しても危険がない代わりに、回路を開くと大きな電圧を生じる危険があります。
定電流電源で多くの装置を運転する時は、全部の装置を直列につないで用い、使用しない時は短絡しておくようにすれば良いでしょう。

### 並列共振のQ円とQ値

先ほどの[合成アドミタンス](/circuits/ac#アドミタンス)は、角周波数が変わっても実部 (コンダクタンス) は一定で、虚部 (サセプタンス) だけが角周波数依存性を持ちます。
$$\omega = \omega_0 = \frac{1}{\sqrt{LC}}$$ のとき、サセプタンスはゼロとなるため、アドミタンスの絶対値が最小となります。
$$\mathcal{Y}$$ は、複素数平面では次図(a)のようになります。

![](/assets/images/circuits/series_parallel_resonance_03.png)  

インピーダンス $$\mathcal{Z}$$ は $$\mathcal{Y}$$ の逆数であるため、$$\omega = \omega_0$$ で最大となります。
$$\mathcal{Z}$$ を複素数平面で表すと、上図の(b)のような円となります。
これを Q-円 (Q-circle) と呼びます。  
この場合のQ値も、先ほどと同様に求めてみましょう。
(18)式より

$$
\vert \mathcal{V} \vert^2 
= \frac{\vert \mathcal{I} \vert^2}{\frac{1}{R^2} + \left( \omega C - \frac{1}{\omega L}\right)^2} 
= \frac{\vert \mathcal{I} \vert^2}{\frac{1}{R^2} + \omega_0^2 C \left( \frac{\omega}{\omega_0} - \frac{\omega_0}{\omega}\right)^2} \tag{19}
$$

のように変形できます。
$$\vert \mathcal{I} \vert^2$$ が半分となるのは、分母の第一項と第二項が等しい大きさになったときです。
よって

$$
\frac{1}{R^2} 
= \omega_0^2 C \left( \frac{\omega}{\omega_0} - \frac{\omega_0}{\omega}\right)^2 \ \Longrightarrow \ 
\frac{\omega}{\omega_0} - \frac{\omega_0}{\omega} 
= \pm \frac{1}{\omega_0 RC} \tag{20}
$$

です。
先ほどと同様に $$\omega / \omega_0 \approx 1 + \delta$$ で求めることにすると、(7)式より

$$
\frac{\omega}{\omega_0} - \frac{\omega_0}{\omega} 
= 2\delta 
= \pm \frac{1}{\omega_0 RC} \ \Longrightarrow \ 
\delta 
= \pm \frac{1}{2\omega_0 RC} \tag{21}
$$

$$\vert \mathcal{I} \vert^2$$ が最大値の半分となる部分の幅を $$2 \Delta \omega$$ とすれば

$$
\Delta \omega 
= \vert \omega_0 \delta \vert 
= \frac{1}{2 RC} \tag{22}
$$

となります。
以上から、共振の鋭さを表すQ値は

$$
Q 
= \frac{\omega_0}{2\Delta \omega} 
= \frac{1}{2\delta} 
= \omega_0 RC 
= \frac{R}{\omega_0 L} \tag{23}
$$

のように求まります。
直列共振のときのQ値(11)式の逆数になっていることがわかります。

{% include adsense.html %}

## その他の例: 抵抗のあるコイルとコンデンサーの並列共振

一般にコイルは抵抗を持ちます。
このような理想的でないコイルとコンデンサーを並列につないだ場合でも、並列共振が起こることを示してみましょう。
抵抗のあるコイルは、抵抗のない理想的なコイルと抵抗器を直列につないだものとして扱います。
すなわち、下図のような回路について調べることにします。

![](/assets/images/circuits/series_parallel_resonance_04.png)  

この回路図における合成インピーダンスは

$$
\begin{align}
&\frac{1}{\mathcal{Z}} 
= \frac{1}{R + i\omega L} + i\omega C
= \frac{1 + i\omega C (R+i\omega L)}{R + i \omega L} \notag \\
&\Longrightarrow \ 
\mathcal{Z} 
= \frac{R + i \omega L}{1 - \omega^2 LC + i\omega CR} 
\underbrace{=}_{\omega_0 = 1/\sqrt{LC}} \frac{R + i \omega L}{1 - \frac{\omega^2}{\omega_0^2} + i\omega CR}\tag{24}
\end{align}
$$

のように求まります。
$$R$$ があまり大きくない場合、先ほどの理想的な $$L, C$$ による並列共振と同じく $$\omega = \omega_0$$ に近いところで $$\mathcal{Z}$$ が最大となります。
この回路でのQ値を求めてみましょう。
インピーダンスの大きさの2乗がその最大値の半分となるのは

$$
1 - \frac{\omega^2}{\omega_0^2} 
= \pm \omega CR \tag{25}
$$

のときです。
$$\omega \approx \omega_0$$ のように考えれば、この回路のQ値は

$$
Q 
\approx \frac{1}{\omega_0 CR} 
= \frac{\omega_0 L}{R} \tag{26}
$$

のようになります。
この回路でQ円を描くと、円から少しズレたような形になることがわかります。

![](/assets/images/circuits/series_parallel_resonance_05.png)  

$$\omega_0 L$$ に比べて $$R$$ が大きいときには、インピーダンスの周波数依存性は理想的なコイルを用いた並列共振とは大きく異なってきます。
(26)式から$$L = CR^2 Q^2$$ のようになることから、$$C, R$$ を一定として $$L$$ を変化させたときのインピーダンスの大きさの周波数依存性を描くことができます。
$$x = \omega CR$$ とおくと

$$
\frac{\mathcal{Z}}{R} 
= \frac{1 + i\omega \frac{L}{R}}{1 - \omega^2 LC + i \omega CR} 
= \frac{1 + i\frac{x}{CR} \frac{L}{R}}{1 - \frac{x^2}{C^2 R^2} LC + ix} 
= \frac{1 + i Q^2 x}{1 - Q^2 x^2 + ix} \tag{27}
$$

のように変形できます。
これを用いて $$\vert \mathcal{Z} \vert / R$$ を図示すると、次のようになります。

![](/assets/images/circuits/series_parallel_resonance_06.png)  

$$Q^2 = 0$$ は $$L = 0$$ の場合、すなわち抵抗とコンデンサーを並列につないだだけの回路に対応します。
$$Q^2$$ の値が小さいときは、共鳴を起こすような角周波数は存在しないことがわかります。

## 参考文献

[1] [高橋秀俊, "電磁気学"](https://amzn.to/43fQKxC)  
[2] [霜田光一, 桜井 捷海, "エレクトロニクスの基礎"](https://amzn.to/4wAOuib)  
[3] [中村哲, 須藤彰三, "電磁気学"](https://amzn.to/4eQ96MY)  
[4] [後藤憲一, 山崎修一郎, "詳解電磁気学演習"](https://amzn.to/3RvAkyD)  

{% include adsense.html %}