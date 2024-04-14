---
layout: default
title: 重力波のエネルギー放出率
parent: 一般相対性理論
math: mathjax3
permalink: /gr/gw_energy_radiation
nav_order: 40
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

# 重力波のエネルギー放出率

## 重力波振幅のTTゲージ化

重力波の振幅は、以下のように求まるのでした。

$$
\bar{h}_{ij} 
= \frac{2G}{c^4 r} \ddot{D}_{ij} (t-r/c) \tag{1}
$$

ここで、$$r$$は重力波源と観測者との距離、$$D$$は質量分布の四重極モーメントを表します。
これをIsaacsonの式に代入すれば、重量波の応力テンソルが求まります。
しかし、Isaacsonの式はTTゲージであることを用いて得られた式でした。
よって(1)式の重力波の振幅も、TTゲージ化する必要があります。
そこで、以下のようなTT projection (TTゲージへの射影演算子)を考えましょう。

$$
P_{ij} 
\equiv \delta_{ij} - n_i n_j 
\qquad (n_i = x_i /r) \tag{2}
$$

すると

$$
n^\ell P_\ell^{\ \ m}  
= n^m - n^m 
= 0 \tag{3}
$$

のような性質を持つことがわかります。
この$$P_\ell^{\ \ m}$$を添字$$\ell$$のベクトルとみなすと、$$P_\ell^{\ \ m} \perp n^\ell$$と考えることができます。
ここから、2つの演算子を作用させた$$P_i^{\ \ \ell} P_j^{\ \ m} \bar{h}_{\ell m}$$は、$$n^i, n^j$$の両方ともと直交することがわかります。  
次に、この演算子が満たす関係式を示しましょう。

$$
P_j^{\ \ \ell} P^{jm} 
= (\delta_j^{\ell} - n_j n^\ell) (\delta^{jm} - n^j n^m) 
= \delta^{\ell m} - n^\ell n^m - n^m n^\ell + n^\ell n^m 
= \delta^{\ell m} - n^\ell n^m 
= P^{\ell m} \tag{4} 
$$

この関係式を用いると

$$
P_j^{\ \ \ell} P^{jm} \bar{h}_{\ell m} 
= P^{\ell m} \bar{h}_{\ell m} \tag{5}
$$

を得ます。
ここで$$P_i^{\ \ \ell} P_j^{\ \ m} \bar{h}_{\ell m} = A_{ij}$$とおくと、このトレースは

$$
\eta^{ij} A_{ij} 
= A_i^{\ \ i} 
= P_i^{\ \ \ell} P^{im} \bar{h}_{i m} 
= P^{\ell m} \bar{h}_{\ell m} \tag{6}
$$

です。
以上より

$$
\bar{h}_{ij}^\mathrm{TT} 
= \left( P_i^{\ \ k} P_j^{\ \ \ell} - \frac{1}{2} P_{ij} P^{k \ell} \right) \bar{h}_{k\ell} \tag{7}
$$

のようにおけば、$$n^i A_{ij}^\mathrm{TT} = 0$$から

$$
\delta^{ij} A_{ij}^\mathrm{TT} 
= \underbrace{P^{jk} P_j^{\ \ \ell}}_{=P^{k \ell}} A_{k \ell} - \frac{1}{2} \underbrace{P^j_{\ \ j}}_{=2} P^{k \ell} A_{k \ell} 
= 0 \tag{8}
$$

を満たすことがわかります。
最終的に、$$\bar{h}_{ij}$$をTTゲージに変換したものは

$$
\bar{h}_{ij}^\mathrm{TT} 
= \frac{2G}{c^4 r} \left( P_i^{\ \ k} P_j^{\ \ \ell} - \frac{1}{2} P_{ij} P^{k \ell} \right) \ddot{D}_{k \ell} (t-r/c) \tag{9}
$$

のように書けることがわかりました。  
さらに今後の計算を簡略化するため、$$D$$のトレースフリー成分を考えましょう。

$$
\mathscr{D}_{k \ell} 
\equiv D_{k \ell} - \frac{1}{3} \delta_{k \ell} D_m^{ \ \ m} \tag{10}
$$

$$D_{ij}$$と$$\mathscr{D}_{ij}$$は本質的には同じ物理量となります。
この$$\mathscr{D}_{ij}$$は、質量分布の換算四重極モーメントと呼ばれるものです。
(10)式の第二項において

$$
P_i^{\ \ k} P_j^{\ \ \ell} \delta_{k\ell} 
= P_i^{\ \ k} P_{jk} 
= P_{ij} \tag{11}
$$

$$
\frac{1}{2} P_{ij} P^{k \ell} \delta_{k \ell} 
= \frac{1}{2} P_{ij} \underbrace{P_k^{\ \ k}}_{=2} 
= P_{ij} \tag{12}
$$

より、このようなものを考えても(9)式は変更を受けず、$$\ddot{D} \rightarrow \ddot{\mathscr{D}}$$とすることができます。
以上から、重力波の振幅が

$$
\bar{h}_{ij}^\mathrm{TT} 
= \frac{2G}{c^4 r} \underbrace{\left( P_i^{\ \ k} P_j^{\ \ \ell} - \frac{1}{2} P_{ij} P^{k \ell} \right)}_{\equiv \Lambda_{ij}^{\ \ \ \ \ k \ell}} \ddot{\mathscr{D}}_{k \ell} (t-r/c) \tag{13}
$$

のように書き換えることができます。

{% include adsense.html %}

## 重力波のエネルギー放出率

これまでの結果を用いて、いよいよ重力波のエネルギー放出率(電磁放射でいうところの光度$$L$$ [erg/s])を計算してみましょう。
そのために、重力波源を取り囲むような十分大きな閉曲面$$S$$で、重力波のエネルギー流束を積分します。

$$
L_\mathrm{GW}
= \iint T_{0k}^\mathrm{GW} dS^k 
= \int_{4\pi} T_{0k}^\mathrm{GW} n^k r^2 d\Omega \tag{14}
$$

途中、閉曲面$$S$$を十分大きい半径$$r$$を持つ球面としました。
また、$$n^k$$は球面に対して外向きの法線ベクトルです。
さらにこの$$T_{0k}$$は、[重力波の応力テンソル](/gr/gw_stress_tensor)より

$$
T_{0k}^\mathrm{GW} n^k
= \frac{c^4}{32\pi G} \langle \bar{h}_{i j, 0} \bar{h}^{ij}_{\ \ \ \ , k} \rangle_\mathrm{TT} n^k \tag{15}
$$

となります。
途中、TTゲージから$$h_{00}, h_{0k} = 0$$としました。
さらに

$$
\frac{d}{dr} \ddot{\mathscr{D}}_{k \ell} (t-r/c) 
= \frac{d(t-r/c)}{dr} \frac{d}{d(t-r/c)} \ddot{\mathscr{D}}_{k \ell} (t-r/c) 
= - \frac{1}{c} \dddot{\mathscr{D}}_{k \ell} (t-r/c) \tag{16}
$$

より

$$
\frac{d\bar{h}_{ij}}{dr} 
= -\frac{2G}{c^4 r^2} \Lambda_{ij}^{\ \ \ \ k \ell} \ddot{\mathscr{D}}_{ij} - \frac{2G}{c^5r} \Lambda_{ij}^{\ \ \ \ k \ell} \dddot{\mathscr{D}}_{ij} 
= -\frac{\dot{\bar{h}}_{ij}}{c} - \frac{\bar{h}_{ij}}{r} \tag{17}
$$

のように計算されることから

$$
T_{0k}^\mathrm{GW} n^k
= - \frac{c^4}{32\pi G} \left\langle \dot{\bar{h}_{ij}} \left( \frac{\dot{\bar{h}}^{ij}}{c} + \frac{\bar{h}^{ij}}{r} \right) \right\rangle \tag{18}
$$

となります。
しかし、そもそも$$\bar{h}_{ij} \propto r^{-1}$$であるため、(14)式の積分を実行したときに(18)式の第一項は$$r$$に依存しない量となりますが、第二項は$$r^{-1}$$で減衰する量となります。
今、$$r \rightarrow \infty$$としているため、第二項を無視すると

$$
T_{0k}^\mathrm{GW} n^k
\approx - \frac{c^3}{32\pi G} \langle \dot{\bar{h}}_{ij} \dot{\bar{h}}^{ij} \rangle_\mathrm{TT} \tag{19}
$$

のように整理されます。
これをさらに式変形していきましょう。
(13)式より

$$
T_{0k}^\mathrm{GW} n^k 
= - \frac{G}{8 \pi c^5 r^2} \Lambda_{ij}^{\ \ \ \ k \ell} \dddot{\mathscr{D}}_{k \ell} \Lambda^{ij}_{\ \ \ \ mn} \dddot{\mathscr{D}}^{mn} \tag{20}
$$

のようになります。
まずは$$\Lambda_{ij}^{\ \ \ \ k \ell} \Lambda^{ij}_{\ \ \ \ mn}$$について計算しましょう。 

$$
P_i^{\ \ k} P^i_{\ \ m} 
= (\delta_i^k - n_i n^k) (\delta_m^i - n^i n_m) 
\underbrace{=}_{n_in^i = 1} \delta_m^k - n^k n_m \tag{21}
$$

$$
P_j^{\ \ \ell} P^j_{\ \ n} 
= \delta_n^\ell - n^\ell n_n \tag{22}
$$

$$
P_i^{\ \ k} P^{ij} 
= \delta^{k j} - n^k n^j \tag{23}
$$

$$
P_i^{\ \ k} P_j^{\ \ \ell} P^{ij} 
\underbrace{=}_{(23)} P_j^{\ \ \ell} (\delta^{kj} - n^k n^j) 
= P^{k \ell} - \underbrace{P_j^{\ \ \ell} n^j}_{(3)} n^k 
= P^{k \ell} \tag{24}
$$

$$
\underbrace{P_{ij} P^i_{\ \ m}}_{(23)} P^j_{\ \ n}
= (\delta_{jm} - n_j n_m) P^j_{\ \ n} 
= P_{mn} - n_m \underbrace{n_j P^j_{\ \ n}}_{(3)} 
= P_{mn} \tag{25} 
$$

$$
P_{ij} P^{ij} 
= (\delta_{ij} - n_i n_j) (\delta^{ij} - n^i n^j) 
= \underbrace{\delta_j^j}_{=3} - n_j n^j - n^j n_j + n_i n_j n^i n^j 
= 2 \tag{26}
$$

などより

$$
\begin{align}
\Lambda_{ij}^{\ \ \ \ k \ell} \Lambda^{ij}_{\ \ \ \ mn} 
&= P_i^{\ \ k} P_j^{\ \ \ell} P^i_{\ \ m} P^j_{\ \ n} - \frac{1}{2} P_i^{\ \ k} P_j^{\ \ \ell} P^{ij} P_{mn} - \frac{1}{2} P_{ij} P^{k \ell} P^i_{\ \ m} P^j_{\ \ n} + \frac{1}{4} P_{ij} P^{k \ell} P^{ij} P_{mn} \notag \\
&= (\delta^k_m - n_k n_m) (\delta^\ell_n - n^\ell n_n) - \frac{1}{2} P^{k \ell} P_{mn} - \frac{1}{2} P^{k \ell} P_{mn} + \frac{1}{2} P^{k\ell} P_{mn} \notag \\
&= \delta^k_m \delta^\ell_n - \delta^k_m n^\ell n_n - \delta^\ell_n n^k n_m + n^k n^\ell n_m n_n - \frac{1}{2} (\delta^{k \ell} - n^k n^\ell) (\delta_{mn} - n_m n_n) \notag \\
&= \delta^k_m \delta^\ell_n - \delta^k_m n^\ell n_n - \delta^\ell_n n^k n_m + n^k n^\ell n_m n_n - \frac{1}{2} \delta^{k \ell} \delta_{mn} + \frac{1}{2} \delta^{k \ell} n_m n_n + \frac{1}{2} \delta_{mn} n^k n^\ell - \frac{1}{2} n^k n^\ell n_m n_n \tag{27}
\end{align}
$$

となります。
ここでもとの(20)式に立ち返ると、$$\mathscr{D}_{k \ell}, \mathscr{D}^{mn}$$はトレースフリーな量でした。
すると$$\delta^{k \ell}, \delta_{mn}$$の項はゼロとなります。
よって

$$
L_\mathrm{GW} 
= - \frac{G}{8\pi c^5} \int_{4\pi} d\Omega \left( \delta^k_m \delta^\ell_n - \delta^k_m n^\ell n_n - \delta^\ell_n n^k n_m + \frac{1}{2} n^k n^\ell n_m n_n \right) \dddot{\mathscr{D}}_{k\ell} \dddot{\mathscr{D}}^{mn} \tag{28}
$$

のようになります。
ここで、立体角積分に対する公式

$$
\int_{4\pi} d\Omega n^i n^j 
= \frac{4\pi}{3} \delta^{ij}, \quad
\int_{4\pi} d\Omega n^i n^j n^k n^\ell 
= \frac{4 \pi}{15} (\delta^{ij} \delta^{k \ell} + \delta^{ik} \delta^{j \ell} + \delta^{i \ell} \delta^{jk}) \tag{29}
$$

を用いれば、最終的に

$$
\begin{align}
L_\mathrm{GW} 
&= - \frac{G}{2 c^5} \left\{ \delta^k_m \delta^\ell_n - \delta^k_m \frac{1}{3} \delta^\ell_n - \delta^\ell_n \frac{1}{3} \delta^k_m + \frac{1}{30} (\delta^{k\ell} \delta_{mn} + \delta^k_m \delta^\ell_n + \delta^k_n \delta^\ell_m) \right\} \dddot{\mathscr{D}}_{k\ell} \dddot{\mathscr{D}}^{mn} \notag \\
&= - \frac{G}{5 c^5} \dddot{\mathscr{D}}_{k \ell} \dddot{\mathscr{D}}^{k \ell} \tag{30}
\end{align}
$$

のように整理されます。
途中、四重極モーメントの定義から、$$\mathscr{D}_{k \ell} = \mathscr{D}_{\ell k}$$であることを用いました。  
この式からわかるように、重力波の放射エネルギー光度は四重極モーメントの3階時間微分に依存します。
よって時間変動の激しい運動の場合に、重力波が効率よく放射されることがわかります。
具体的には、ブラックホールや中性子星が連星系を形成している場合です。
さらには超新星爆発の後にできたコンパクト天体が球対称でない場合には、コンパクト天体が振動し、重力波を放出しながら球形になっていくとされています。  
また、ときには重力波自身ではなく、重力波放射に伴う重力波源のエネルギー変化に着目したい場合があります。
そのようなときには

$$
\frac{dE}{dt} 
= - L_\mathrm{GW} 
= \frac{G}{5 c^5} \dddot{\mathscr{D}}_{k \ell} \dddot{\mathscr{D}}^{k \ell} \tag{31}
$$

を用いれば良いでしょう。

{% include adsense.html %}

## 重力波放射のエネルギー評価

重力波の放射エネルギーがどれくらいなのか、その大きさを大雑把に評価してみましょう。
重力波を放射する系の質量を$$M$$、系の大きさを$$R$$、系の典型的な変動時間スケールを$$T$$とすると

$$
\dddot{\mathscr{D}} 
\approx \frac{MR^2}{T^3} 
\underbrace{\approx}_{V \approx R/T} \frac{M V^3}{R} \tag{32}
$$

のように考えることができるので、(31)式より

$$
\frac{dE}{dt} 
\approx \frac{G}{c^5} \left( \frac{M}{R} \right)^2 V^6 
\approx \frac{c^5}{G} \left(\frac{r_g}{R} \right)^2 \left( \frac{V}{c} \right)^6 \tag{33}
$$

と計算されます。
ここで$$r_g = \frac{2GM}{c^2}$$です。
以降ではさらに、この重力波源が重力束縛系であるとしましょう。
すると遠心力と重力の釣り合いから

$$
\frac{V^2}{R} 
\approx \frac{GM}{R^2} \ \Longrightarrow \ 
\left( \frac{V}{c}\right)^2 
\approx \frac{r_g}{R} \tag{34}
$$

の関係が得られるので

$$
\frac{dE}{dt} 
\approx L_g \left( \frac{r_g}{R}\right)^5
\approx L_g \left( \frac{V}{c} \right)^{10} \tag{35}
$$

のように整理されます。
ここで、$$L_g \equiv c^5 / G \sim 3.6 \times 10^{59} [\mathrm{erg / s}]$$です。
例えば、系の典型的速度が$$V \sim 10^{-3} c$$の高速運動をしていたとしても、その大きさはおよそ$$10^{29} [\mathrm{erg/s}]$$となります。
これは、例えば太陽の電磁波での放射光度$$L_\odot \sim 4 \times 10^{33} [\mathrm{erg/s}]$$より小さいことがわかります。
一般には重力波放射によるエネルギー損失は小さいものとされています。
しかし、重力波は電磁放射では観測できない超高温・超高密度・超相対論的な天体現象の情報を持ってくるため、非常に重要です。
重力波や電磁波そしてニュートリノなど、様々な観測を駆使して行われる宇宙物理研究分野を、特にマルチメッセンジャー天文学と呼びます。

## 補遺: 立体角積分の公式の簡略な証明

まずは以下の公式を証明しましょう。

$$
\int_{4\pi} d\Omega n_i n_j 
= \frac{4\pi}{3} \delta_{ij} \tag{36}
$$

ここで、$$n_i = \mathbf{r}/ r$$で、$$n_1^2 + n_2^2 + n_3^2 = 1$$を満たします。
(36)式の左辺では積分を行っています。
するとその結果は$$\mathbf{r}$$には依存しないものとなるはずです。
しかし$$n_i, n_j$$のように、左辺には添字$$i, j$$の依存性も存在します。
これらを踏まえた上で、以下のような形で計算結果を求めてみましょう。

$$
\int_{4\pi} d \Omega n_i n_j 
= a \delta_{ij} \tag{37}
$$

ここで$$a$$は定数です。
$$a$$を求めるために、両辺に$$\delta^{ij}$$をかけて縮約をとると

$$
(左辺) 
= \int_{4\pi} d\Omega \underbrace{\delta^{ij} n_i n_j}_{=1} 
= 4\pi \tag{38}
$$

$$
(右辺) 
= a \delta^{ij} \delta_{ij} 
= 3a \tag{39}
$$

となることから、最終的に$$a = \frac{4\pi}{3}$$と求まります。  
続いて$$n_i n_j n_k n_\ell$$の立体角積分についての公式です。
先程と同様の考え方から、以下のような形で計算結果を求めてみましょう。

$$
\int_{4\pi} d\Omega n_i n_j n_k n_\ell 
= a \delta_{ij} \delta_{k \ell} + b \delta_{ik} \delta_{j \ell} + c \delta_{i\ell} \delta_{j k} \tag{40}
$$

先程と同様に$$\delta^{ij}$$をかけて縮約をとると

$$
\int_{4\pi} d\Omega n_k n_\ell 
= (3a + b + c) \delta_{k \ell} \tag{41}
$$

となります。
今度はもう一度両辺に$$\delta^{k \ell}$$をかけて縮約をとることで

$$
\frac{4\pi}{3} 
= 3a + b + c \tag{42}
$$

を得ます。
同様に、最初に$$\delta^{ik}$$で縮約をとった場合と、$$\delta^{i\ell}$$で縮約をとった場合から

$$
\frac{4\pi}{3} 
= a + 3b + c \tag{43}
$$

$$
\frac{4\pi}{3} 
= a + b + 3c \tag{44}
$$

も得られます。
(42)-(43)より$$a = b$$、(43)-(44)より$$b=c$$となることから、最終的に

$$
a = b = c = \frac{4\pi}{15} \tag{45}
$$

のように計算されます。
以上で、立体角積分の公式を示すことができました。

```
もちろん、一つ一つ成分を計算することで、この結果を求めても構いません。
ぜひ違う証明方法を探してみてください。
```

{% include adsense.html %}

## 参考文献

[1] [須藤靖, "もうひとつの一般相対論入門"](https://amzn.to/4blItLJ)  
[2] [田中貴浩, "基幹講座 物理学 相対論"](https://amzn.to/4ar7e7W)  
[3] [ランダウ & リフシッツ, "場の古典論"](https://amzn.to/4a6BSUd)  
[4] [柴田大, "数値相対論と中性子星の合体"](https://amzn.to/4cPSi5j)  
[5] [Maggiore, "Gravitational Waves"](https://amzn.to/491W20k)  
[6] [Misner, Thorne & Wheeler, "Gravitation"](https://amzn.to/3x7JF5B)  
[7] ["Evaluation of some integrals over solid angles"](https://scipp.ucsc.edu/~haber/ph214/Angular_Integrals.pdf)  
[8] [平松尚志, "宇宙論的起源の背景重力波による余剰次元の探求"](https://www2.yukawa.kyoto-u.ac.jp/~takashi.hiramatsu/files/thesisMR.pdf)  

{% include adsense.html %}
