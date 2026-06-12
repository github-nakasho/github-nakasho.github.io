---
layout: default
title: パラメータ励振
parent: 電気回路
math: mathjax3
permalink: /circuits/parametric_excitation
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

# 電気回路のパラメータ励振

本格的な交流回路応用に入る前に、興味ある話題として電気回路でのパラメータ励振について触れておきましょう。
まずはパラメータ励振の最たる例である、ブランコについて学びます。

## ブランコから学ぶパラメータ励振

ブランコを立ちこぎするとき、ブランコの周期の半分の周期で腰を上下させます。
このようにして支点から重心までの距離を周期的に変化させると、ブランコの振幅を徐々に大きくすることができます。

![](/assets/images/circuits/parametric_excitation_01.png)  
ブランコの模式図。(a)で膝を少し曲げた状態(重心が低い位置)から始まり、(b)で膝を伸ばして立ち上がることで重心を高い位置に上げる。高い位置で重心を維持したままブランコは揺れ(c)、(d)に到達したところで膝を少し曲げて重心を再び下に下げる。
(e)->(f)->(g)->(h)と同様に膝の屈伸運動を行い、再び(a)に戻る。
(a)から始まり再び(a)に戻るまでの振り子の1周期の間に、重心の上下は2回行われる。すなわち、重心の上下運動の周期は振り子の振動周期の半分となっている。

これは単振り子の糸を周期的に伸び縮みさせると、単振り子の振幅を大きくすることができるのと同じ現象です。
これらの場合、重心の上下、あるいは糸の長さの変化を、振動と上手く位相を合わさなければなりません。  
単振り子の糸の長さを変えず、支点を上下させる場合も、同様に振動を励起することができます。
この場合、重力がみかけ上変化していると考えることができます。
振り子の糸の長さを $$\ell$$、重力加速度を $$g$$ とし、振り子の振動数 $$\omega_0 = \sqrt{g/\ell}$$ の2倍で支点を上下させることを考えましょう。

![](/assets/images/circuits/parametric_excitation_02.png)  

さらに質点の質量を $$m$$、支点が上下する振幅を $$\alpha_0$$ とします。
2次元極座標で考えると、この振り子の $$\theta$$ 方向の運動方程式は

$$
m \ell \ddot{\theta} 
= - mg \sin \theta + m \frac{d^2}{dt^2} (\sin 2\omega_0 t) \sin \theta 
\ \Longrightarrow \ 
\ddot{\theta} + (\omega_0^2 - \alpha \sin 2 \omega_0 t) \theta 
= 0 \tag{1}
$$

のようになります。
途中、$$\vert \theta \vert \ll 1$$ として、$$\sin \theta \approx \theta$$ と近似しました。
さらに $$\alpha = \frac{(2\omega_0)^2}{\ell}$$ とし、これが小さなパラメータと考えます。
(1)式を以下のように書き換えましょう。

$$
\ddot{\theta} + \omega_0^2 \theta 
= \alpha \sin 2\omega_0 t \cdot \theta \tag{2}
$$

すると、右辺は振り子にはたらく外力と見ることができます。
振動が近似的に $$\theta = \theta_0 \sin \omega_0 t$$ で表される位相を持っている (すなわち外力がない場合の普通の単振動をしている) とすると、
時間 $$dt$$ の間に加えられる仕事 (角度 $$\theta$$ を変位と見たときの仕事) は

$$
\begin{align}
dW 
&= \alpha \sin 2\omega_0 t \cdot \theta \cdot \frac{d\theta}{dt} dt 
= \alpha \sin 2 \omega_0 t \cdot \theta_0 \sin \omega_0 \cdot \theta_0 \omega_0 \cos \omega_0 t dt \notag \\
&= \frac{\alpha \omega_0}{2} \theta_0^2 \sin^2 2\omega_0 t dt 
\geq 0 \tag{3}
\end{align}
$$

となります。
これは常に正の値となり、振り子は絶えずエネルギーを増加させていき、その振幅は徐々に大きくなります。  
この場合、振動を決めるのは質量・バネの強さ・糸の長さ・支点の位置 (上下) などのいくつかのパラメータです。
これらのパラメータのあるものを時間的に変化させることで振動を起こす方法を、パラメータ励振と呼びます。  
単振り子でパラメータ励振を起こす場合、振り子の支点を上下させる方法のほかに、次図のように単振り子の糸を周期的に引き上げる方法や、鉄で作られたおもりを周期的に磁石で下に引っ張る方法、さらにバネや物質の剛性を利用するなどで実現できます。

![](/assets/images/circuits/parametric_excitation_03.png)  

{% include adsense.html %} 

## LC回路

ブランコで単振動やパラメータ励振についての基礎を学んだところで、電気回路での応用を見ていきましょう。
コイル $$L$$ とコンデンサー $$C$$ とをつないだ回路は、電気振動を起こします。

### 単振動

コンデンサーに電荷 $$q$$ だけ蓄電し、その状態のコンデンサーをコイルにつなぎます。

![](/assets/images/circuits/parametric_excitation_04.png)  

コイルに流れる電流を $$i$$ とすると、[キルヒホッフの電圧則](/circuits/steady_current#定常電流電気回路とキルヒホッフの法則)より

$$
-L \frac{di}{dt} - \frac{q}{C} 
= 0 \ \underbrace{\Longrightarrow}_{i = \frac{dq}{dt}} \ 
L \frac{d^2 q}{dt^2} + \frac{q}{C} 
= 0 \tag{4}
$$

この方程式は単振動の方程式の形をしており、LC回路内のコンデンサーに蓄えられた電荷 $$q$$ が角振動数 $$\omega_0 = \sqrt{\frac{1}{LC}}$$ で与えられることがわかります。
ここから、この回路の電気回路の単振動の方程式と、質点がバネなどで単振動する場合の運動方程式との間に、次の対応が成り立つことがわかります。

|電気回路|質点の力学|
|:--|:--|
|蓄電量 $$q$$|変位 $$x$$|
|自己インダクタンス $$L$$|質点質量 $$m$$|
|電気容量の逆数 $$1/C$$|バネ定数 $$k$$|
|電気抵抗 $$R$$|抵抗係数 $$\alpha$$|

ここまで電気抵抗 $$R$$ については触れていませんでしたが、これは質点の力学においては摩擦などによる抵抗係数 $$\alpha$$ に対応し、減衰振動を引き起こします。

### パラメータ励振

ここから、LC回路でのパラメータ励振を見ていきましょう。
例として、コンデンサーに適当な周期的変化を与える場合を見てみます。

![](/assets/images/circuits/parametric_excitation_05.png)  

コンデンサーの電気容量を $$C$$ とし、$$1/C$$ を角振動数 $$2\omega$$ で変化させるとします。
このときの $$1/C$$ の平均値を $$1/C_0$$ のように書くことにすると、コンデンサーに蓄えられている電荷 $$q$$ の時間発展を記述する方程式は

$$
L \frac{d^2 q}{dt^2} + \left( \frac{1}{C_0} - \epsilon \sin 2\omega t \right) q 
= 0 \tag{5}
$$

のようになります。
ここで $$\vert \epsilon \vert \ll 1/C_0$$ の小さな定数です。
(5)式は、ブランコのパラメータ励振の式(1)と同じ形であり、徐々に $$q$$ の振動の振幅が大きくなっていくことがわかります。
コンデンサーの電気容量を周期的に変化させる方法として、コンデンサーの極板間の距離を振動させる方法があります。
コンデンサーの極板の面積を $$S$$、極板間の距離を $$\ell = \ell_0 - \ell_1 \sin 2\omega t \ (\ell_1 \ll \ell_0)$$ とすると、コンデンサーの電気容量は次のように書かれます。

$$
C
= \varepsilon_0 \frac{S}{\ell} \tag{6}
$$

そして極板の間にはたらく力は

$$
F 
= - \frac{q^2}{2\varepsilon_0 S} 
= - \frac{q^2}{2 C \ell} 
\approx - \frac{q^2}{2 C_0 \ell}
\tag{7}
$$

のようになります。
途中、$$C, \ell$$ の変化は微小であり、2次の微小量は無視して $$C \ell \approx C_0 \ell$$ のように近似を行いました。
ここでさらに $$q \approx q_0 \cos \omega_0 t$$のように、コンデンサーに蓄えられる電荷は $$\omega_0 = \sqrt{\frac{1}{LC}}$$ の角振動数で振動していると近似しましょう。
すると、この力が1周期の間にする仕事は

$$
\begin{align}
W
&= \int F d\ell 
= \int F d (\ell_0 - \ell_1 \sin 2\omega t) 
= - \int F \cdot 2 \omega \ell_1 \cos 2\omega t dt \notag \\
&\approx \frac{q_0^2 \ell_1 \omega}{C_0 \ell} \int_0^T \cos^2 \omega_0 t \cos 2\omega t dt 
\underbrace{\approx}_{\ell \approx \ell_0} \frac{q_0^2 \ell_1 \omega}{C_0 \ell_0} \int_0^T \frac{1+\cos 2\omega_0 t}{2} \cos 2\omega t dt \notag \\
&= \frac{q_0^2 \ell_1 \omega}{2 C_0 \ell_0} \int_0^T \cos 2 \omega_0 t \cos 2\omega t dt \tag{8}
\end{align}
$$

と求まります。
途中、$$\ell_1$$ が先頭に出てきていることから、分母の $$\ell$$ は $$\ell_0$$ にすることで微小量の2次を無視する操作を行いました。
この式から、$$\omega = \omega_0$$ ならば、常に $$W > 0$$ となることがわかります。
すなわち、静電気的な力に対してコンデンサーの極板を動かす仕事が、電気的なエネルギーに変換されて発振します。

### 応用: パラメトロン

パラメータ励振をするLC回路の重要な応用として、パラメトロンを取り上げましょう。
パラメトロンは、1954年当時、東京大学の高橋秀俊研究室で大学院生だった後藤英一氏が提案・開発したものです。
高橋研ではパラメトロンを用いた計算機 (パラメトロン計算機) を自作し、それを動かすプログラムなども開発していました。
これを受けて、1960年代までの日本ではパラメトロンを用いた多くの計算機が製造されました。
しかしトランジスタの性能向上により動作周波数がパラメトロンを圧倒し、パラメトロン計算機開発は衰退していきました。
しかし最近では、[超伝導回路を用いたパラメトロン素子による量子ビット読み出しの応用](https://www.riken.jp/press/2014/20140725_1/index.html)などが考えられており、パラメータ励振の原理は最先端の物理学で応用されています。  
LC回路でのパラメータ励振は、コンデンサの電気容量 $$C$$ の変化だけでなく、コイルの自己インダクタンス $$L$$ を変えることでも起こすことができます。
パラメトロンではフェライトコアに導線を巻きつけたコイルを用い、フェライトの透磁率を周期的に変化させることで、インダクタンスを周期的に変化させます。
$$L$$ を角周波数 $$2\omega$$ で励振すると、回路には角周波数 $$\omega$$ の電圧・電流が発振することが、パラメータ励振のこれまでの議論からわかります。
[この発振の位相には2つあることが知られており、一方は他方と位相が $$\pi$$ だけ異なる振動となります。]()
これをブランコの例で例えると、パラメータ励振で励起される振動には、次のような2種類のゆれ方があることに対応します。

![](/assets/images/circuits/parametric_excitation_06.png)  
パラメータ励振により発振されたブランコのゆれ方。(a)のブランコが右にゆれるときには、(b)のブランコは左にゆれる。すなわち $$\pi$$ だけ位相がズレている。  

ここから、一方を 0 相、他方を $$\pi$$ 相と呼び、発振がどちらの位相にあるかで1ビットを記憶することができます。
この原理をもとに作られたパラメトロンをいくつか連結することで、データの0-1のバイナリ表現が可能となり、さらに励振の間に論理処理を挟むことで、複雑な計算も可能になるという仕組みです。  
2025年、パラメトロンは [IEEE のマイルストーン](https://ieeemilestones.ethw.org/Milestone-Proposal:Parametron,_1954)に認定されました。
IEEE (Institute of Electrical and Electronics Engineers) はアメリカの電気・電子工学学会です。
そして IEEE マイルストーンは、少なくとも25年以上前に達成された電気・電子分野のイノベーションのうち、世界的または地域的に大きな影響を与え、社会や産業の発展に多大な貢献をした功績を讃えて与えられます。
[パラメトロンのマイルストーン申請書](https://ieeemilestones.ethw.org/Milestone-Proposal:Parametron,_1954)では、パラメトロンの歴史だけでなく、最近のカルチャーに与えた影響として[ Dr.STONE ](https://amzn.to/3QqzIKA)でパラメトロンが登場していることも引用しています。

{% include adsense.html %} 

## 補遺: マシュー関数とその性質

ブランコのパラメータ励振の式は、次のように与えられるのでした。

$$
\ddot{\theta} 
= - (\omega_0^2 - \alpha \sin 2 \omega_0 t) \tag{A.1}
$$

ここで $$\omega_0 t \rightarrow t$$ のように改め、さらにパラメータの変化の角周波数を $$2\omega$$ とします。
すると、自然な角周波数は 1 となり、$$\omega = 1$$ のときに励振が起こると考えられます。
このようにすると、先ほどの方程式は

$$
\ddot{x} 
= -(1 + 4\epsilon \sin 2\omega t) x \tag{A.2}
$$

のようになります。
ここで $$\epsilon$$ は正の値をもつ微小な定数とします。
この方程式をマシュー (Mathieu) 方程式と呼び、この方程式の解をマシュー関数 (Mathieu function) と言います。
この解の性質は古くからよく調べられています。
ここでは、近似的な方法でこの方程式を扱うことにしましょう。
そこで、この方程式の解を

$$
x 
= a(t) \sin \omega t + b(t) \cos \omega t \tag{A.3}
$$

の形で求めることにします。
ただし、未知の関数が多すぎるため、以下のような条件を課すことにします。

$$
\dot{a} \sin \omega t + \dot{b} \cos \omega t 
= 0 \tag{A.4}
$$

これは(A.3)式の両辺の時間微分を考えたとき、振幅 $$a, b$$ の時間変化が十分ゆっくりなことに対応します。
すると

$$
\dot{x} 
= \underbrace{\dot{a} \sin \omega t + \dot{b} \cos \omega t}_{(A.4)} + \omega a \cos \omega t - \omega b \sin \omega t 
= \omega a \cos \omega t - \omega b \sin \omega t \tag{A.5}
$$

$$
\ddot{x} 
= \omega \dot{a} \cos \omega t - \omega \dot{b} \sin \omega t \underbrace{- \omega^2 a \sin \omega t - \omega^2 b \cos \omega t}_{(A.3)} 
= \omega \dot{a} \cos \omega t - \omega \dot{b} \sin \omega t - \omega^2 x \tag{A.6}
$$

(A.6)式を(A.2)式に代入することで

$$
\omega \dot{a} \cos \omega t - \omega \dot{b} \sin \omega t - \omega^2 x 
= -(1 + 4\epsilon \sin 2\omega t) x \tag{A.7}
$$

(A.4)式より

$$
\dot{b} 
= - \dot{a} \frac{\sin \omega t}{\cos \omega t} \tag{A.8}
$$

を用いれば

$$
\begin{align}
&\omega \dot{a} \cos \omega t - \omega \left( - \dot{a} \frac{\sin \omega t}{\cos \omega t} \right) \sin \omega t - \omega^2 x 
= -(1 + 4\epsilon \sin 2\omega t) x \notag \\
&\Longrightarrow \ 
\omega \dot{a} 
= \{ (\omega^2 - 1) - 4\epsilon \sin 2\omega t \} x \cos \omega t \tag{A.9}
\end{align}
$$

同様に、$$(A.4)$$式から $$\dot{a} = - \dot{b} \frac{\cos \omega t}{\sin \omega t}$$ のようにして $$\dot{a}$$ を消去すると

$$
\omega \dot{b} 
= - \{(\omega^2 - 1) - 4\epsilon \sin 2\omega t \} x \sin \omega t \tag{A.10}
$$

(A.4)式で条件を課したように、振幅 $$a, b$$ はゆっくりした変化を考えているのでした。
そこで、(A.9), (A.10)式に現れている $$1/\omega$$ 程度の時間変動は無視し、ゆっくりした変動 (永年変動) のみを抽出するようにしましょう。
そのために、周期 $$T = 2\pi / \omega$$ で時間平均を行うことにします。

$$
\frac{1}{T}\int_0^T \sin \omega t dt 
= \frac{1}{T}\int_0^T \cos \omega t dt 
= 0, \quad \frac{1}{T}\int_0^T \sin^2 \omega t dt 
= \frac{1}{T} \int_0^T \cos^2 \omega t dt 
= \frac{1}{2} \tag{A.11}
$$

(A.9)式と(A.3)式より

$$
\begin{align}
\omega \dot{a} 
&= (\omega^2 - 1) a \underbrace{\sin \omega t \cos \omega t}_{時間平均でゼロ} + (\omega^2 - 1) b \underbrace{\cos^2 \omega t}_{=1/2} - 4\epsilon \sin 2 \omega t (a \sin \omega t \cos \omega t + b \cos^2 \omega t) \notag \\
&= \frac{1}{2} (\omega^2 - 1) b - 4\epsilon \sin 2 \omega t \left( \frac{a}{2} \sin 2\omega t + b \frac{1 + \cos 2\omega t}{2} \right) \notag \\
&= \frac{1}{2} (\omega^2 - 1) b - 2 \epsilon a\underbrace{\sin^2 2 \omega t}_{=1/2} - 2\epsilon b \underbrace{\sin 2 \omega t}_{=0} - 2\epsilon b \underbrace{\sin 2 \omega t \cos 2\omega t}_{=0} 
= \frac{1}{2} (\omega^2 - 1) b - \epsilon a \tag{A.12}
\end{align}
$$

のように計算できます。
同様の計算を(A.10)式についても行うことで

$$
\omega \dot{b} 
= - \frac{1}{2} (\omega^2 - 1) a + \epsilon b \tag{A.13}
$$

を得ます。
これらより

$$
\begin{align}
&\dot{a} \pm \dot{b} 
= \frac{1}{2} (\omega^2 - 1) b \mp \frac{1}{2} (\omega^2 - 1) a - \epsilon a \pm \epsilon b 
= \frac{\omega^2 - 1}{2} (b \mp a) - \epsilon (a \mp b) \notag \\
&\Longrightarrow \  
\dot{a} \pm \dot{b}
= \left\{ \mp \frac{\omega^2 - 1}{2\omega} - \frac{\epsilon}{\omega} \right\} (a \mp b) \tag{A.14}
\end{align}
$$

$$
\begin{align}
\frac{d^2}{dt^2} (a \pm b) 
&= \ddot{a} \pm \ddot{b} 
= \left\{ \mp \frac{\omega^2 - 1}{2\omega} - \frac{\epsilon}{\omega} \right\} (\dot{a} \mp \dot{b}) \notag \\
&= \left\{ \mp \frac{\omega^2 - 1}{2\omega} - \frac{\epsilon}{\omega} \right\} \left\{ \pm \frac{\omega^2 - 1}{2\omega} - \frac{\epsilon}{\omega} \right\} (a \pm b) \notag \\
&= \frac{1}{\omega^2} \left\{ \epsilon^2 - \frac{(\omega^2 - 1)^2}{4} \right\} (a \pm b) \tag{A.15}
\end{align}
$$

となります。
したがって、$$a, b$$ が振動的ではなく指数的に増大あるいは減少する解をもつには

$$
\epsilon^2 
> \frac{(\omega^2 - 1)^2}{4} \ \Longrightarrow \ 
\epsilon > \frac{\vert \omega^2 - 1 \vert}{2} \tag{A.16}
$$

でなければなりません。
今、$$\epsilon$$ は小さな値としているため、$$\omega \sim 1$$ である必要があります。
ちょうど $$\omega = 1$$ の場合、(A.12)式より

$$
\dot{a} 
= - \epsilon a \ \Longrightarrow \ 
a = a_0 e^{-\epsilon t} \tag{A.17}
$$

そして(A.13)式より

$$
\dot{b} 
= \epsilon b \ \Longrightarrow \ 
b = b_0 e^{\epsilon t} \tag{A.18}
$$

と求まります。
したがって、$$t \rightarrow \infty$$ では $$a \rightarrow 0$$ となり

$$
x 
\approx b \cos t 
\approx b_0 e^{\epsilon t} \cos t \tag{A.19}
$$

のようになります。
すなわち、これが $$4\epsilon \sin 2t$$ の励振により励起される運動です。
これは $$t \rightarrow \infty$$ で発散しますが、現実世界では減衰の効果がどこかで効いてきて $$x \approx B \cos t \ (B: 定数)$$ のような振動に落ち着くと考えられるでしょう。
ここから、$$B$$ の符号は $$b_0$$ の符号 (今の場合 $$x$$ の初期条件) によって決まると考えることができます。
言い換えれば、$$b_0$$ の符号により、振動の漸近形の位相が2種類あることになります。
これは励起振動が2倍の振動数をもつことから、ある位相で励起が生じるならば、これと $$\pi$$ だけ位相の違う振動も励起条件に合致する、という直感に一致します。

![](/assets/images/circuits/parametric_excitation_07.png)  

## 参考文献

[1] [戸田盛和, "振動論"](https://amzn.to/4auTGum)  
[2] [寺沢寛一, "自然科学者のための数学概論 応用編"](https://amzn.to/4unjqjn)  
[3] [田中優子, 福本珠巳, "身近な振動と共鳴の数々 ブランコ"](https://www.osaka-kyoiku.ac.jp/~masako/exp/melde/buranko.html)  
[4] [理化学研究所, "超伝導回路を用いてパラメトロンを実現"](https://www.riken.jp/press/2014/20140725_1/index.html)  
[5] [Lin et al., 2014, "Josephson parametric phase-locked oscillator and its application to dispersive readout of superconducting qubits"](https://www.nature.com/articles/ncomms5480)  
[6] [和田英一, "日本独自の技術「パラメトロン」"](https://www.iijlab.net/~ew/pc1/ohm.pdf)  
[7] [和田英一, "パラメトロン計算機 PC-1 -回路設計と方式設計-"](https://www.iijlab.net/~ew/pc1/summer96.pdf)  
[8] [IEEE Milestone Wiki, Milestone-Proposal: Parametron, 1954](https://ieeemilestones.ethw.org/Milestone-Proposal:Parametron,_1954)  
[9] [稲垣理一郎, "Dr.STONE", 24巻](https://amzn.to/3QqzIKA)  

{% include adsense.html %}