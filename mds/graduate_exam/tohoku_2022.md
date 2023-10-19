---
layout: default
title: 解析力学を用いた惑星軌道論
parent: 大学院入試問題
math: mathjax3
permalink: /graduate_exam/tohoku_astr_2022
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

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4130626183&linkId=9b7db8f4021e4efe1deffccaea30634d"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B07MJ9D486&linkId=bf125858b1296359a270d4f5025cf871"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4535607273&linkId=8f115c2076820a80f01be51e51690c7c"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254131178&linkId=9ac266c069a399ce4585f2b3581a5c6d"></iframe>　

# 解析力学を用いた惑星軌道論

以下の問題は、[2022年に行われた東北大学大学院理学研究科天文学専攻の大学院入試問題](https://www.astr.tohoku.ac.jp/examinee/pdf/exam05.pdf)です。
銀河の動力学解析などでは、解析力学を用いた研究が盛んに行われています。
ここでは解析力学の基本的な事項、ポアソン括弧やラグランジアン、ハミルトニアンなどが出題されています。
最後には断熱不変量を用いて、太陽が質量放出をしたときの軌道半径の変化を求めています。
宇宙物理学としても非常に興味深い題材です。

## 問題

### 問1

任意の物理量$$f, g$$について、ポアソン括弧は次のように定義されます。

$$
\{f, g\} 
\equiv \sum_{i=1}^N \left( \frac{\partial f}{\partial q_i} \frac{\partial g}{\partial p_i} - \frac{\partial f}{\partial p_i} \frac{\partial g}{\partial q_i}\right) \tag{1}
$$

ただし、$$N$$は系の独立な座標の数で、$$q_i, p_i$$はそれぞれ$$i$$番目の一般化座標とそれに共役な運動量です。
ポアソン括弧についてのライプニッツ則$$\{f_1f_2, g\} = f_1 \{f_2, g\} + \{f_1, g\} f_2$$、そしてヤコビの恒等式$$\{f, \{g, h\}\} + \{g, \{h, f\}\} + \{h, \{f, g\}\} = 0$$が成立することは既知であるとして、以下の問題に答えなさい。

#### (a)

系のハミルトニアンを$$H$$とします。
このとき、物理量$$f$$の時間全微分が

$$
\frac{df}{dt} 
= \frac{\partial f}{\partial t} + \{f, H\} \tag{2}
$$

と書けることを示しなさい。

#### (b)

ある物理量$$f$$が保存する条件を、ポアソン括弧を用いて説明しなさい。

#### (c)

粒子の角運動量$$\mathbf{L} = \mathbf{r} \times \mathbf{p}$$について、3次元デカルト座標で以下のポアソン括弧を計算しなさい。

(i). $$\{x, L_y\}$$, (ii). $$\{p_x, L_y\}$$, (iii). $$\{L_x, L_y\}$$, (iv). $$\{L_x, L_z\}$$

#### (d)

角運動量の成分$$L_x$$と$$L_y$$が保存するとき、$$L_z$$も保存することをポアソン括弧を用いて示しなさい。

### 問2

太陽の周りを運動する惑星の運動を考えましょう。
太陽質量を$$M$$、惑星の質量を$$m$$とし、以下では惑星に比べて太陽の質量は十分大きい$$(M \gg m)$$とします。
よって惑星が太陽に及ぼす力は無視できるため、太陽は動かないとして太陽を原点とした座標系で計算を行います。
太陽と惑星の間の距離を$$r$$とすると、重力ポテンシャルは$$U = \frac{GMm}{r}$$と書けます。
ただし$$G$$は万有引力定数です。
また太陽系には複数の惑星存在しますが、惑星間の相互作用は無視できるとします。
まずは、太陽の質量が一定の場合について考察していきましょう。

#### (a)

3次元球座標$$(r, \theta \varphi)$$での、この系のラグランジアンを記述しなさい。

#### (b)

各座標に共役な運動量$$(p_r, p_\theta, p_\varphi)$$と、この系のハミルトニアンを求めなさい。

#### (c)

正準方程式(ハミルトン形式の運動方程式)を示しなさい。

#### (d)

このような系では、惑星の運動は常に同一平面内に存在します。
その理由を説明しなさい。  

以下では$$\theta = \pi / 2$$の平面内に運動を限定し、$$(r, \varphi)$$空間での2次元的な運動を考えましょう。
また全エネルギー$$E$$が負であるような束縛された運動に限定します。
ここで、惑星の運動エネルギーを$$K$$とすると

$$
E = K + U < 0 \tag{3}
$$

#### (e)

この系の全エネルギー$$E$$と、惑星の運動平面に垂直な軸周りの角運動量$$L_z$$が保存することを示しなさい。

#### (f)

$$E$$と$$L_z$$が与えられたとき、惑星の近日点と遠日点(惑星が太陽に最も近づく点と最も離れる点)のそれぞれの太陽からの距離を求めなさい。  

系が準周期的な運動をするとき、その一周期について積分した量

$$
J_i 
\equiv \frac{1}{2\pi} \oint p_i dq_i \tag{3}
$$

を作用変数と呼びます。
作用変数は系を特徴づけるパラメータ(今の場合は太陽の質量)が軌道周期に比べて十分ゆっくり変化するときには、不変に留まります。
このような量を断熱不変量と呼びます。
以下では簡単のため、**惑星の軌道は常に円軌道であるとします。**

#### (g)

$$\varphi$$に関する作用変数$$J_\varphi$$を計算し、これがどのような物理量に対応するか説明しなさい。  

太陽の進化が進み巨星段階に入ると、太陽の半径が大きく膨張するとともに、表面からの質量放出で太陽の質量は減少していきます。
このときの惑星軌道の進化を考えましょう。
ただし、質量放出の効果は太陽質量の減少のみであるとします。

#### (h)

太陽の質量放出は非常にゆっくりで、太陽質量が変化しても惑星は常に重力と遠心力の釣り合った円軌道を保ちます。
太陽の質量が初期質量$$M_0$$から$$M_1$$まで減少したとき、惑星の軌道半径が$$r_0$$から$$r_1$$に変化しました。
$$J_\varphi$$が断熱不変量であることを用いて、$$r_1$$は$$r_0, M_0, M_1$$を用いて表しなさい。

#### (i)

巨星段階では太陽は質量放出によりおよそ半分の質量を失い、太陽の半径は元の約200倍にまで膨張します。
このとき、太陽系の惑星の一部は膨張した太陽に飲み込まれてしまうでしょう。
以下の太陽系の惑星のうち、太陽に飲み込まれてしまうと考えられるものを全て列挙しなさい。
計算は必要と思われる精度で近似しても構いませんが、判断の根拠となる計算は示すこととします。
必要なら、以下の数値を用いても良いでしょう。

$$
\begin{align}
&G 
= 6.7 \times 10^{-11} \ [\mathrm{m^3 kg^{-1} s^{-2}}], \quad
M_0 
= M_\odot 
= 2.0 \times 10^{30} \ [\mathrm{kg}], \notag \\
&R_\odot 
= 7.0 \times 10^8 \ [\mathrm{m}], \quad 
1 \ [\mathrm{au}] 
= 1.5 \times 10^{11} \ [\mathrm{m}] \notag 
\end{align} \tag{4}
$$

{% include adsense.html %} 

## 解答例

### 問1

#### (a)

物理量$$f(q, p, t)$$に対し、全微分を計算しましょう。

$$
\frac{df}{dt} 
= \frac{\partial f}{\partial t} + \sum_i \frac{\partial f}{\partial q_i} \frac{\partial q_i}{\partial t}+ \sum_i \frac{\partial f}{\partial p_i} \frac{\partial p_i}{\partial t} \tag{1-a-1}
$$

ここで、一般化座標$$q_i$$とそれに共役な運動量$$p_i$$は時間にしか依存しない、すなわち$$q_i(t), p_i (t)$$のように書けるため、(1-a-1)式の時間偏微分はそのまま時間微分となります。
よって

$$
\frac{df}{dt} 
= \frac{\partial f}{\partial t} + \sum_i \frac{\partial f}{\partial q_i} \dot{q}_i+ \sum_i \frac{\partial f}{\partial p_i} \dot{p}_i \tag{1-a-2}
$$

そしてハミルトンの正準方程式

$$
\dot{q}_i 
= \frac{\partial H}{\partial p_i}, \qquad 
\dot{p}_i 
= - \frac{\partial H}{\partial q_i} \tag{1-a-3}
$$

を用いれば

$$
\frac{df}{dt} 
= \frac{\partial f}{\partial t} + \sum_i \left( \frac{\partial f}{\partial q_i} \frac{\partial H}{\partial p_i} - \frac{\partial f}{\partial p_i} \frac{\partial H}{\partial q_i} \right) 
= \frac{\partial f}{\partial t} + \{ f, H\} \tag{1-a-4}
$$

のように書けることが示せます。

#### (b)

物理量$$f$$が保存する、ということは$$f$$が時間に依存せず一定であること意味します。
すると(1-a-4)式より

$$
\frac{df}{dt} 
= \frac{\partial f}{\partial t} + \{ f, H\} 
= 0 \ \Longrightarrow \ 
\{f, H\} 
= -\frac{\partial f}{\partial t} \tag{1-b-1}
$$

となることが、$$f$$が保存する条件となります。
もし$$f$$が時間に陽に依存しない、すなわち$$f(q_i, p_i)$$のように書ける系ならば、$$\{f, H\} = 0$$のように書かれます。

#### (c)

この問題の計算を進める前に、以下の計算を確認しておきましょう。

$$
\{q_i, p_j\} 
= \sum_k \left(\frac{\partial q_i}{\partial q_k} \frac{\partial p_j}{\partial p_k} - \frac{\partial q_i}{\partial p_k} \frac{\partial p_j}{\partial q_k}\right) 
= \sum_k \delta_{ik} \delta_{jk} 
= \delta_{ij} \tag{1-c-1}
$$

$$
\{q_i, q_j\} 
= \sum_k \left(\frac{\partial q_i}{\partial q_k} \frac{\partial q_j}{\partial p_k} - \frac{\partial q_i}{\partial p_k} \frac{\partial q_j}{\partial q_k}\right) 
= 0 \tag{1-c-2}
$$

$$
\{p_i, p_j\} 
= \sum_k \left(\frac{\partial p_i}{\partial q_k} \frac{\partial p_j}{\partial p_k} - \frac{\partial p_i}{\partial p_k} \frac{\partial p_j}{\partial q_k}\right) 
= 0 \tag{1-c-3}
$$

では本題に入りましょう。

* (i)

$$
\begin{align}
\{x, L_x\} 
&= \{x, yp_z - zp_y\} 
= \{x, yp_z\} - \{x, zp_y\} \notag \\
&= y\{x, p_z\} + \{x, y\} p_z - z\{x, p_y\} - \{x, z\} p_y 
= 0 \tag{1-c-4}
\end{align}
$$

* (ii)

$$
\begin{align}
\{p_x, L_y\} 
&= \{p_x, zp_x - xp_z\} 
= \{p_x, zp_x\} - \{p_x, xp_z\} \notag \\
&= z\{p_x, p_x\} + \{p_x, z\}p_x - x \{p_x, p_z\} - \{p_x, x\} p_z 
= p_x \tag{1-c-5}
\end{align}
$$

* (iii)

$$
\begin{align}
\{L_x, L_y\} 
&= \{yp_z - zp_y, zp_x - xp_z\} \notag \\
&= \{yp_z, zp_x\} - \{yp_z, xp_z\} - \{zp_y, zp_x\} + \{zp_y, xp_z\} \notag \\
&= y \{p_z, zp_x\} + \{y, zp_x\} p_z - (y \{p_z, xp_z\} + \{y, zp_z\} p_z) \notag \\
& \qquad - (z \{p_y, zp_x\} + \{z, zp_x\} p_y) + z \{p_y, xp_z\} + \{z, xp_z\}p_y \notag \\
&= y (z\{p_z, p_x\} + \{p_z, z\} p_x) + (z \{y, p_x\} + \{y, z\} p_x) p_z \notag \\
& \qquad - y (x \{p_z, p_z\} + \{p_z, x\}p_z) - (z \{y, p_z\} + \{y, z\} p_z)p_z \notag \\
& \qquad - z(z\{p_y, p_x\} + \{p_y, z\}p_x) - (z \{z, p_x\} + \{z, z\}p_x)p_y \notag \\
& \qquad + z(x\{p_y, p_z\} + \{p_y, x\}p_z) + (x\{z, p_z\} + \{z, x\}p_z) p_y \notag \\
&= -yp_x + x p_y 
= L_z \tag{1-c-6}
\end{align}
$$

* (iv)

$$
\{L_x, L_z\} 
= \{yp_z - zp_y, xp_y - yp_x\} 
= ((\mathrm{iii})と同様に計算 \cdots) 
= - L_y \tag{1-c-7}
$$

#### (d)

(1-c-6)式より

$$
\frac{dL_z}{dt} 
= \frac{d}{dt} \{L_x, L_y\} 
\underbrace{=}_{(1-a-4)} \frac{\partial}{\partial t} \{L_x, L_y\} + \{\{L_x, L_y\}, H\} \tag{1-d-1}
$$

ヤコビの恒等式より

$$
\{L_x, \{L_y, H\}\} + \{L_y, \{H, L_x\}\} 
= - \{H, \{L_x, L_y\}\} 
= \{\{L_x, L_y\}, H\} \tag{1-d-2}
$$

となるので、最終的に

$$
\begin{align}
\frac{dL_z}{dt} 
&= \left\{ \frac{\partial L_x}{\partial t}, L_y\right\} + \left\{L_x, \frac{\partial L_y}{\partial t}\right\} + \{L_x, \{L_y, H\}\} + \underbrace{\{L_y, \{H, L_x\}\}}_{=\{\{L_x, H\}, L_y\}} \notag \\
&= \left\{\frac{\partial L_x}{\partial t} + \{L_x, H\}, L_y\right\} + \left\{ L_x, \frac{\partial L_y}{\partial t} + \{L_y, H\}\right\}
= \left\{ \frac{dL_x}{dt}, L_x\right\} + \left\{ L_x, \frac{dL_y}{dt}\right\} \tag{1-d-3}
\end{align}
$$

のように書き直すことができます。
ここから、もし角運動量の成分$$L_x, L_y$$が保存するならば、(1-d-3)式の最右辺はゼロとなります。
よって$$L_z$$も保存することがわかります。

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4130626183&linkId=9b7db8f4021e4efe1deffccaea30634d"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B07MJ9D486&linkId=bf125858b1296359a270d4f5025cf871"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4535607273&linkId=8f115c2076820a80f01be51e51690c7c"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254131178&linkId=9ac266c069a399ce4585f2b3581a5c6d"></iframe>　

### 問2

#### (a)

ラグランジアンは$$L = K - U$$のように書かれます。
ここで$$K$$は惑星の運動エネルギー、そして$$U$$は重力ポテンシャルエネルギーです。
よって

$$
L 
= \frac{1}{2} m \dot{\mathbf{r}}^2 + \frac{GMr}{r} \tag{2-a-1}
$$

のように書かれます。
3次元曲座標でのラグランジアンを求めるため、第一項の$$\dot{\mathbf{r}}^2$$を計算しましょう。
$$(r, \theta \varphi)$$方向の単位ベクトルをそれぞれ$$\mathbf{e}_r, \mathbf{e}_\theta, \mathbf{e}_\varphi$$のように書きましょう。
すると$$\mathbf{r} = r \mathbf{e}_r$$より

$$
\dot{\mathbf{r}} 
= \dot{r} \mathbf{e}_r + r \dot{\mathbf{e}}_r \tag{2-a-2}
$$

です。
そして

$$
\mathbf{e}_r 
= \left( \begin{array}{c}
\sin \theta \cos \varphi \\
\sin \theta \sin \varphi \\
\cos \theta
\end{array} \right) \ \Longrightarrow \
\dot{\mathbf{e}}_r 
= \left( \begin{array}{c}
\dot{\theta} \cos \theta \cos \varphi - \dot{\varphi} \sin \theta \sin \varphi \\
\dot{\theta} \cos \theta \sin \varphi + \dot{\varphi} \sin \theta \cos \varphi \\
 - \dot{\theta} \sin \theta
\end{array} \right) 
= \dot{\theta} \mathbf{e}_\theta + \dot{\varphi} \sin \theta \mathbf{e}_\varphi \tag{2-a-3}
$$

より

$$
\dot{\mathbf{r}} 
= \dot{r} \mathbf{e}_r + r \dot{\theta} \mathbf{e}_\theta + r \dot{\varphi} \sin \theta \mathbf{e}_\varphi \tag{2-a-4}
$$

のように計算されることから

$$
\dot{\mathbf{r}}^2 
= \dot{r}^2 + r^2 \dot{\theta}^2 + r^2 \dot{\varphi}^2 \sin^2 \theta \tag{2-a-5}
$$

と求まります。
以上を合わせて、この系のラグランジアンは

$$
L 
= \frac{1}{2} m (\dot{r}^2 + r^2 \dot{\theta}^2 + r^2 \dot{\varphi}^2 \sin^2 \theta) + \frac{GMm}{r} \tag{2-a-6}
$$

のようになります。

#### (b)

先程の問題で求めたラグランジアンから、各座標に共役な運動量を計算しましょう。

$$
p_r 
= \frac{\partial L}{\partial \dot{r}} 
= m\dot{r} \tag{2-b-1}
$$

$$
p_\theta 
= \frac{\partial L}{\partial \dot{\theta}}
= mr^2 \dot{\theta} \tag{2-b-2}
$$

$$
p_\varphi 
= \frac{\partial L}{\partial \dot{\varphi}} 
= m r^2 \dot{\varphi} \sin^2 \theta \tag{2-b-3}
$$

また、これらを用いてハミルトニアンは

$$
\begin{align}
H 
&= \sum_i p_i \dot{q}_i - L 
= p_r \dot{r} + p_\theta \dot{\theta} + p_\varphi \dot{\varphi} - L 
= \frac{1}{2} m (\dot{r}^2 + r^2 \dot{\theta}^2 + r^2 \dot{\varphi}^2 \sin^2 \theta) - \frac{GMm}{r} \notag \\
&= \frac{p_r^2}{2m} + \frac{p_\theta^2}{2mr^2} + \frac{p_\varphi^2}{2mr^2 \sin^2 \theta} - \frac{GMm}{r} \tag{2-b-4}
\end{align}
$$

のようになります。
このハミルトニアンは結局、$$H = K + U$$に一致することがわかります。

#### (c)

正準方程式は

$$
\frac{dq_i}{dt} 
= \frac{\partial H}{\partial p_i}, \quad
\frac{dp_i}{dt} 
= - \frac{\partial H}{\partial q_i} \tag{2-c-1}
$$

のように与えられます。
よって

$$
\frac{dr}{dt} 
= \dot{r} 
= \frac{\partial H}{\partial p_r} 
= \frac{p_r}{m} \tag{2-c-2}
$$

$$
\frac{d\theta}{dt} 
= \dot{\theta}
= \frac{\partial H}{\partial p_\theta} 
= \frac{p_\theta}{mr^2} \tag{2-c-3}
$$

$$
\frac{d\varphi}{dt} 
= \dot{\varphi} 
= \frac{\partial H}{\partial p_\varphi}
= \frac{p_\varphi}{mr^2 \sin^2 \theta} \tag{2-c-4}
$$

$$
\frac{dp_r}{dt} 
= - \frac{\partial H}{\partial r} 
= \frac{p_\theta^2}{mr^3} + \frac{p_\varphi^2}{mr^3 \sin^2 \theta} - \frac{GMm}{r^2} \tag{2-c-5}
$$

$$
\frac{dp_\theta}{dt} 
= - \frac{\partial H}{\partial \theta} 
= \frac{p_\varphi^2}{mr^2 \sin^3 \theta} \cos \theta \tag{2-c-6}
$$

$$
\frac{dp_\varphi}{dt} 
= - \frac{\partial H}{\partial \varphi} 
= 0 \tag{2-c-7}
$$

#### (d)

中心力しか働かない系では、角運動量が保存します。
そのため、角運動量ベクトルに垂直な平面内を常に運動することになります。

#### (e)

以下では$$\theta = \pi/2$$の平面内に運動を限定します。
すると$$\dot{\theta} = 0$$より、ハミルトニアンは

$$
H 
= \frac{1}{2} m (\dot{r}^2 + r^2 \dot{\varphi}) - \frac{GMm}{r} \tag{2-e-1}
$$

のように書かれます。
このハミルトニアンの時間全微分は

$$
\frac{dH}{dt} 
= \frac{\partial H}{\partial t} + \{H, H\} 
= 0
$$

となります。
途中、ハミルトニアンが時間に陽に依存しないことから、$$\frac{\partial H}{\partial t} = 0$$を用いました。
また、ハミルトニアンの形は$$H = K + U = E$$であることから、これはエネルギーが時間に依存せず保存することを意味します。  
次に角運動量の$$z$$成分は

$$
L_z \mathbf{e}_z
= r \mathbf{e}_r \times mr \dot{\varphi} \mathbf{e}_\varphi 
= mr^2 \dot{\varphi} \mathbf{e}_z \ \Longrightarrow \ 
L_z 
= mr^2 \dot{\varphi}
$$

のように表されます。
これは$$p_\varphi$$に等しく、(2-c-7)式からこれが保存することがわかります。

#### (f)

惑星が太陽に最も近づく、あるいは最も離れる位置にあるとき、$$\dot{r} = 0$$と考えられることから

$$
E 
= \frac{L_z^2}{2mr^2} - \frac{GMm}{r} \ \Longrightarrow \ 
Er^2 + GMm r - \frac{L_z^2}{2m}
= 0
$$

を解けば良いことがわかります。
よって

$$
r 
= \frac{-GMm \pm \sqrt{G^2M^2m^2 + \frac{2EL_z^2}{m}}}{2E} \tag{2-f-1}
$$

$$+$$符号が遠日点、$$-$$符号が近日点の距離となります。

{% include adsense.html %} 

#### (g)

作用変数の定義から、$$J_\varphi$$を計算しましょう。

$$
J_\varphi 
= \frac{1}{2\pi} \oint p_\varphi d\varphi 
\underbrace{=}_{(2-b-3)} \frac{1}{2\pi} \int_0^{2\pi} mr^2 \dot{\varphi} d\varphi 
= mr^2 \dot{\varphi} \tag{2-g-1} 
$$

途中、$$\theta = \pi/2$$としました。
このことから、$$J_\varphi$$は角運動量の$$z$$成分$$L_z$$に等しいことがわかります。

#### (h)

太陽の質量が$$M_0 \rightarrow M_1$$に変化したとき、惑星の円軌道半径が$$r_0 \rightarrow r_1$$のように変化したと考えましょう。
すると0, 1の添字をもつこれらの量は、重力と遠心力の釣り合いの式から以下の式を満たします。

$$
\frac{GM_0 m}{r_0^2} 
= m r_0 \dot{\varphi}_0^2, \quad 
\frac{GM_1 m}{r_1^2} 
= m r_1 \dot{\varphi}_1^2 \ \Longrightarrow \ 
\frac{M_1 r_0^2}{M_0 r_1^2} 
= \frac{r_1 \dot{\varphi}_1^2}{r_0 \dot{\varphi}_0^2} \tag{2-h-1}
$$

ここで$$\dot{\varphi}_0, \dot{\varphi}_1$$はそれぞれ、太陽の質量が$$M_0, M_1$$のときの惑星の角速度($$\varphi$$の時間微分)です。
そして今の問題では、$$J_\varphi$$が不変であることから

$$
J_\varphi 
= mr_0^2 \dot{\varphi}_0 
= mr_1^2 \dot{\varphi}_1 \ \Longrightarrow \ 
\frac{\dot{\varphi}_1}{\dot{\varphi}_0} 
= \frac{r_0^2}{r_1^2} \tag{2-h-2}
$$

を得ます。
この2式より

$$
\frac{M_1 r_0^3}{M_0 r_1^3} 
= \frac{\dot{\varphi}_1^2}{\dot{\varphi}_0^2} 
= \frac{r_0^4}{r_1^4} \ \Longrightarrow \ 
r_1 
= \frac{M_0}{M_1} r_0 \tag{2-h-3} 
$$

と求まります。
太陽が巨星段階に質量放出を行い、$$M_1 < M_0$$のようにその質量を変化させた場合、軌道半径は大きくなることがわかります。
これは中心星の質量が軽くなることで重力が弱まり、より外側に行くことができるという直感に一致します。

#### (i)

太陽は質量放出により半分の質量を失うと予想されるため、$$M_1 = 0.5 M_0$$と書くことができます。
すると(2-h-3)式より、進化後の惑星軌道半径は$$r_1 = 2r_0$$、すなわち質量を失う前の2倍となることがわかります。
すると各惑星の軌道半径は、以下のように求まります。

|惑星|初期軌道半径 $$r_0$$ [au]|進化後の軌道半径 $$r_1$$ [au]|
|:--|:--|:--|
|水星|0.39|0.78|
|金星|0.72|1.44|
|地球|1.0|2.0|
|火星|1.5|3.0|
|木星|5.2|10.4|
|土星|9.6|19.2|

そして太陽の半径は初期の$$R_\odot$$から$$200R_\odot \sim 1.4 \times 10^{11} [\mathrm{m}] \sim 0.93 [\mathrm{au}]$$に膨張することから、水星は飲み込まれてしまいます。
それより遠くに存在する金星や地球は、この簡単化されたモデル計算では飲み込まれずに生存することがわかります。

## 参考文献

[1] [東北大学大学院理学研究科天文学専攻、令和5年度大学院入学生向け試験](https://www.astr.tohoku.ac.jp/examinee/pdf/exam05.pdf)  
[2] [須藤靖, "解析力学・量子論"](https://amzn.to/3tzJpdT)  
[3] [桜井隆, 小島正宜, 小杉健郎, 柴田一成, "太陽"](https://amzn.to/3QmJFFW)  

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4130626183&linkId=9b7db8f4021e4efe1deffccaea30634d"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B07MJ9D486&linkId=bf125858b1296359a270d4f5025cf871"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4535607273&linkId=8f115c2076820a80f01be51e51690c7c"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254131178&linkId=9ac266c069a399ce4585f2b3581a5c6d"></iframe>　

