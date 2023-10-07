---
layout: default
title: 宇宙物理学における確率・統計
parent: 大学院入試問題
math: mathjax3
permalink: /graduate_exam/u_tokyo_astr_2022
nav_order: 1
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

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4130420658&linkId=fb76befa19a295ad129d451aff859b9e"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4130420674&linkId=fd1275a977be60ad0909637239fa2d79"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B078WTGJK2&linkId=ea1bb0f64884d79a0ce89bcd336d3cf6"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=0072472278&linkId=73807118f9d178cb5a54f5467c82b0a4"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B00FC3DTB2&linkId=eaf51875d76c8d67cae58ca37905eaa2"></iframe> 

# 宇宙物理学における確率・統計に関する問題

以下の問題は、[2022年に行われた東京大学大学院理学研究科天文学専攻の大学院入試問題](http://www.astron.s.u-tokyo.ac.jp/tenmon/wp-content/uploads/2023/01/R5%E4%BF%AE%E5%A3%AB%E3%83%BB%E5%8D%9A%E5%A3%AB%E8%AA%B2%E7%A8%8B%E5%85%A5%E5%AD%A6%E8%A9%A6%E9%A8%93%E5%95%8F%E9%A1%8C_%E5%85%AC%E9%96%8B.pdf)です。
宇宙物理学・天文学では、観測による天体現象の解明が行われます。
得られた観測データの解析処理には、統計技術を駆使する必要があることから、入試問題でも観測に用いられる統計学の素養が問われています。
ぜひ皆さんもチャレンジしてみてください。

## 問題

### 問1

光子一つ一つを検出できる単一光子検出器を用いて、天体から定常的に放射されている光子の検出器への入射イベント(光子イベント)を測定することを考えましょう。
天体からの放射は相互に独立に起こる事象であり、ある測定時間内に検出される光子イベント数$$x$$は確率変数となります。
そして、その確率分布は以下のようなポアソン分布に従います。

$$
f(x) 
= \frac{\lambda^x}{x!} e^{-\lambda} \tag{1}
$$

ここで$$x$$は0以上の整数、そして$$\lambda$$は$$x$$の期待値です。  
以下では、天体から1秒間に平均で$$n$$個の光子イベントが検出される場合を考えましょう。

#### (a)

$$t'$$秒間に検出される光子イベント数が0個である確率$$p(t')$$を求めなさい。  

#### (b)

$$p(t')$$は、ある光子イベント次の光子イベントの検出時刻の間隔(待ち時間)が$$t'$$より長くなる確率、と解釈することもできます。光子イベントの待ち時間を確率変数$$t$$とし、その確率密度関数を$$g(t)$$とすると

$$
p(t') 
= \int_{t'}^\infty g(t) dt \tag{2}
$$

の関係が成り立ちます。
このことから

$$
g(t) 
= n e^{-nt} \tag{3}
$$

となることを示しなさい。  

#### (c)

光子イベントの待ち時間$$t$$の期待値を求めなさい。

### 問2

光子イベントの待ち時間に見られる性質は、相互に独立に発生する天体現象の一つである、超新星イベントにおいても期待されます。
以下では、ある観測時間内に発生する超新星イベントの数は確率変数で、その確率分布はポアソン分布に従うとします。
私たちの銀河系の中、およびその近傍宇宙では、西暦1987年に出現したSN1987Aが最後に観測された超新星イベントです。  
地球から観測できる近傍宇宙での超新星イベントの頻度を50年に1回とし、SN1987Aの次の超新星イベントが西暦$$Y$$年に発生するとしましょう。
西暦1987年から$$Y$$年の間に超新星イベントが発生する確率が0.5となるような$$Y$$年を、整数で答えなさい。
ただし、計算において自然対数$$\ln (2) = 0.693$$の近似値を用いて良いものとします。

### 問3

光電効果により生成される電子を蓄積する検出器を用いて、天体から定常的に放射される光子を関するすることを考えましょう。
$$t$$秒間の露光で検出器ないに蓄積される電子数を$$X_s$$とします。
$$X_s$$は確率変数であり、その確率分布はポアソン分布に従うとします。
式(1)のポアソン分布は、期待値$$\lambda$$が十分に大きい場合、正規分布$$N(\lambda, \lambda)$$で近似できることが知られています。
以下では、$$X_s$$はその期待値が十分に大きいために、正規分布に従うものとします。
また$$t$$秒間の露光終了後、蓄積された電子の総数の測定値$$X_m$$おw得る際に、測定誤差$$X_r$$が生じるとします。
すなわち$$X_m = X_s + X_r$$です。
この$$X_r$$も確率変数であり、$$N(0, \sigma_r^2)$$の正規分布に従うものとします。
ここで$$\sigma_r^2$$は$$X_r$$の分散です。
なお、正規分布は以下のような特徴を持つことが知られています。

* (定義) 正規分布に従う確率変数$$x$$の確率密度関数は

$$
N(\mu, \sigma^2) 
= \frac{1}{\sqrt{2\pi \sigma}} \exp \left\{ - \frac{(x-\mu)^2}{2\sigma^2}\right\} \tag{4}
$$

のように表されます。ここで$$\mu, \sigma$$はそれぞれ$$x$$の期待値と分散です。

* (正規分布の再生性) $$X, Y$$がそれぞれの正規分布$$N(\mu_1, \sigma_1^2), N(\mu_2, \sigma_2^2)$$に従う独立な確率変数とします。
このとき、$$X+Y$$の確率分布は$$N(\mu_1 + \mu_2, \sigma_1^2 + \sigma_2^2)$$に従います。

* (標準正規分布の線形変換) 確率変数$$X$$の確率分布が標準正規分布$$N(0, 1)$$に従う場合、確率変数$$Y = a X + b$$の確率分布は$$N(b, a^2)$$に従います。
ここで$$a, b$$は実数です。

* (中心極限定理) 期待値$$\mu$$、分散$$\sigma^2$$を持つ任意の確率分布に従う$$n$$個の値を$$s_1, s_2, \dots, s_n$$とした場合、

$$
z 
= \frac{1}{\sigma \sqrt{n}} \left( \sum_{i=1}^n s_i - n \mu \right) \tag{5}
$$

の確率分布は、$$n$$が十分に大きいときに標準正規分布$$N(0, 1)$$に従います。  

天体から1秒間に平均で$$m$$個の光子が検出器に入射している場合に、以下の問に答えなさい。
ただし検出器に入社した各光子は、1つの電子に変換される(量子効率が1である)とします。  

(a) $$X_m$$が従う確率密度関数$$h(X_m)$$を、$$X_m, t, m, \sigma_r$$の関数として求めなさい。  
(b) 測定値の信頼度を示す指標として、信号ノイズ比 (S/N比)を定義します。
これは測定値が、測定値の標準偏差の何倍であるかで定義される値です。
$$m=40, \sigma_r = 20$$のとき、S/N比の期待値が30となる露光時間を求めなさい。  

### 問4

計算機上で擬似観測データを生成する方法を考えましょう。
区間(0, 1)上に一様分布するように生成した$$j \ (\gg 1)$$個の乱数$$q_1, q_2, \dots, q_j$$を$$k \ (\gg 1)$$セット準備します。
これらと中心極限定理を用いて、問3 (a)の$$h(X_m)$$の確率分布に従う$$k$$個の数値データ$$w_1, w_2, \dots, w_k$$を生成する方法を説明しなさい。
なお、区間(0, 1)の一様分布の期待値と分散は、それぞれ1/2と1/12であることが知られています。

{% include adsense.html %} 

## 解答例

### 問1

#### (a)

$$t'$$秒間に検出される光子数は、平均で$$nt'$$です。
よって$$t'$$秒間内に検出される光子イベント数$$x$$が従う確率分布は

$$
f(x) 
= \frac{(nt')^x}{x!} e^{-nt'} \tag{1-a-1}
$$

となります。
よって、その光子イベント数が$$x = 0$$となる確率は

$$
p(t') 
= e^{-nt'} \tag{1-a-2}
$$

のように書かれます。

#### (b)

光子イベントの待ち時間が$$t'$$より長くなる確率$$p(t')$$と確率密度関数$$g(t)$$の間に

$$
p(t') 
= \int_{t'}^\infty g(t) dt 
= - \int_\infty^{t'} g(t) dt \tag{1-b-1}
$$

の関係が成り立つことから、両辺を$$t'$$で微分すると

$$
g(t') 
= - \frac{dp}{dt'} 
= n e^{-nt'} \tag{1-b-2}
$$

を得ます。

#### (c)

(b)で求めた確率密度関数より、待ち時間$$t$$の期待値は

$$
\begin{align}
\langle t \rangle 
&= \int_0^\infty t g(t) dt 
= n \int_0^\infty t e^{-nt} dt 
= n \left( \left[ \frac{t}{-n} e^{-nt} \right]_0^\infty - \int_0^\infty \frac{1}{-n} e^{-nt} dt \right) \notag \\
&= \int_0^\infty e^{-nt} dt 
= \left[ \frac{1}{-n} e^{-nt} \right]_0^\infty 
= \frac{1}{n} \tag{1-c-1}
\end{align}
$$

のようになります。
1秒間に検出する平均光子数$$n$$が大きくなるほど、待ち時間の期待値$$\langle t \rangle$$は小さくなり、頻繁に光子が検出されるという直感に一致します。

### 問2

$$T = Y - 1987 \ [\mathrm{yr}]$$とすると、$$T$$よりも次の超新星イベントが発生するまでの時間が長くなる確率は、問1の議論から

$$
p(T) 
= \int_T^\infty n e^{-nt} dt 
= n \left[ \frac{1}{-n} e^{-nt} \right]_T^\infty 
= e^{-nT} \tag{2-1}
$$

で与えられます。
1987年から$$Y$$年の間に超新星イベントが発生する確率が0.5ということは、待ち時間が$$T$$よりも長くなる確率は$$1-0.5 = 0.5$$を意味します。
そして超新星イベント発生頻度が50年に1回ということから、$$n = 1/50$$とすると

$$
e^{-T/50} 
= 0.5 \ \Longrightarrow \ 
-\frac{T}{50} 
= \log \frac{1}{2} 
\sim - 0.693 \ \Longrightarrow \ 
T \sim 34.65 \ [\mathrm{yr}]
$$

よって、$$Y = 2021.65$$と求まります。
整数で答えなさいとあるので、およそ2022年、すなわちこの大学院入試試験が行われた年に一致します。

### 問3

#### (a)

実際に測定される値は$$X_m = X_s + X_r$$のように書かれることと、正規分布の再生性を用います。
$$X_s$$は$$N (\lambda, \lambda)$$、そして$$X_r$$は$$N (0, \sigma_r^2)$$の正規分布に従うことから

$$
h(X_m) 
= N (\lambda, \lambda + \sigma_r^2) \tag{3-a-1}
$$

今、天体から1秒間に平均で$$m$$個の光子が検出器に入射している状況から、$$t$$秒間の露光では$$mt$$個の光子が入射することになります。
そして、検出器の量子効率が1であるため、これがそのまま検出器内に蓄積される電子数の平均であるとすると、$$\lambda = mt$$となります。
よって

$$
h(X_m) 
= N (mt, mt + \sigma_r^2) 
= \frac{1}{\sqrt{2\pi (mt + \sigma_r^2)}} \exp \left\{ - \frac{(X_m-mt)^2}{2(mt + \sigma_r^2)}\right\} \tag{3-a-2}
$$

#### (b)

(3-a-2)式より、S/N比の期待値は

$$
\langle S / N \rangle 
= \frac{mt}{\sqrt{mt + \sigma_r^2}} \tag{3-b-1}
$$

となります。
これを変形すると

$$
\begin{align}
& \langle S/N \rangle^2 
= \frac{m^2 t^2}{mt + \sigma_r^2} \ \Longrightarrow \ 
m^2 t^2 - \langle S/N \rangle^2 m t - \langle S/N \rangle^2 \sigma_r^2 
= 0 \notag \\
& \Longrightarrow \ 
t 
= \frac{\langle S/N \rangle^2 \pm \langle S/N\rangle \sqrt{\langle S/N\rangle^2 + 4 \sigma_r^2}}{2m} \tag{3-b-2}
\end{align}
$$

を得ます。
ここに$$m = 40, \sigma_r = 20, \langle S/N \rangle = 30$$を代入すると、$$t = 30$$と求まります。

### 問4

区間$$(0, 1)$$上に一様分布するように生成された$$j$$個の乱数$$q_{1}, q_{2}, \dots, q_{j}$$と中心極限定理を用いると

$$
z
= \frac{1}{\sigma \sqrt{j}} \left( \sum_{i=1}^j q_i - j \mu \right) \tag{4-1}
$$

という、新たな確率分布を考えることができます。
ここで$$\mu, \sigma$$はそれぞれ一様分布乱数の期待値と標準偏差であり、これらは$$1/2, 1/\sqrt{12}$$であることが知られています。
$$\mu, \sigma$$の値に関係なく、中心極限定理から$$z$$は標準正規分布$$N(0, 1)$$に従います。
この標準正規分布に従う変数$$z$$に対し、以下のような線形変換を施します。

$$
w 
= \sqrt{mt + \sigma_r^2} z + mt \tag{4-2}
$$

するとこの変数$$w$$の確率分布は$$N(mt, mt + \sigma_r^2)$$に従います。
この$$w$$を$$k$$個用意すれば、$$h(X_m)$$と同じ確率分布に従う$$k$$個の数値データの生成が可能です。

## 参考文献

[1] [Bevington & Robinson, "Data Reduction and Error Analysis for the Physical Science"](https://amzn.to/3t9pUsn)  
[2] [PHY241: Observational Astronomy, Signal-to-Noise ratios](https://slittlefair.staff.shef.ac.uk/teaching/phy241/lectures/l09/)  
[3] [東京大学大学院理学研究科天文学専攻、令和5年度修士・博士課程入学試験問題](http://www.astron.s.u-tokyo.ac.jp/tenmon/wp-content/uploads/2023/01/R5%E4%BF%AE%E5%A3%AB%E3%83%BB%E5%8D%9A%E5%A3%AB%E8%AA%B2%E7%A8%8B%E5%85%A5%E5%AD%A6%E8%A9%A6%E9%A8%93%E5%95%8F%E9%A1%8C_%E5%85%AC%E9%96%8B.pdf)

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4130420658&linkId=fb76befa19a295ad129d451aff859b9e"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4130420674&linkId=fd1275a977be60ad0909637239fa2d79"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B078WTGJK2&linkId=ea1bb0f64884d79a0ce89bcd336d3cf6"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=0072472278&linkId=73807118f9d178cb5a54f5467c82b0a4"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B00FC3DTB2&linkId=eaf51875d76c8d67cae58ca37905eaa2"></iframe> 
