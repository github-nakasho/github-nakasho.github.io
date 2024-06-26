---
layout: default
title: KAGRA
parent: 一般相対性理論
math: mathjax3
permalink: /gr/kagra
nav_order: 19
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

# KAGRAについて

## KAGRAが観測を開始

2020年2月25日、以下のようなニュースが飛び込んできました。

[【プレスリリース】大型低温重力波望遠鏡KAGRA 観測開始](https://gwcenter.icrr.u-tokyo.ac.jp/archives/3321)

このKAGRA望遠鏡により重力波天文学・マルチメッセンジャー天文学がさらに進展することが予想されます。ではこのKAGRA、一体どれほどのインパクトがあるのでしょうか。

## 世界の重力波望遠鏡

忘れてはならない2つの重力波望遠鏡を(お名前だけ)ご紹介しましょう。

[(米国) LIGO](https://www.ligo.caltech.edu/)  
[(欧州) Virgo](http://www.virgo-gw.eu/)  

これらは重力波望遠鏡としてすでに多大な成果を挙げています。

## 感度比較

では今回、観測を開始したKAGRAの感度は上述の2つのそれに比べて、どれほど良くなっているのでしょうか。その感度に関しては[KAGRAの公式ウェブサイトにて公開](https://gwcenter.icrr.u-tokyo.ac.jp/researcher/parameters)されています。また、この3つを比較したレヴュー論文なども出版されています。  

![横軸: 周波数、縦軸: 重力波望遠鏡の感度](/assets/images/gr/kagra_amp.png)

図のライトグリーンの曲線(LCGT)がKAGRAの感度をプロットしたものです。このように見ると、感度それ自体はLIGO, Virgoとそれほど変わらない印象を持ってしまいそうですね。  

(参考リンク: [Gravitational Wave Detection by Interferometry (Ground and Space)](https://arxiv.org/abs/1102.3355))

## KAGRAの意義

ここからが本題です。それではKAGRA建設の意義とはどのようなものなのでしょうか。それを以下にまとめました。

### 重力波源の方向の決定

重力波望遠鏡はその装置の原理上、一台では方向を特定することができません。複数台が同時に観測を行うことで初めて重力波の到来方向を特定することができます。以下の図はLIGOとVirgoのみを使って重力波観測を行なった場合の方向特定精度の全天マップです。  

![w/o KAGRA](/assets/images/gr/wo_kagra.png)

赤いx印は地球上に望遠鏡が固定されていることに起因する「この方向からの重力波はどう頑張っても特定できないよ」方向です。
続いて、LIGO & Virgo + KAGRAによる方向特定精度のマップです。  

![with KAGRA](/assets/images/gr/w_kagra.png)

赤いx印が消え、全天マップ上での方向特定制度が向上していることがわかります。

(参考リンク: [Source localization with an advanced gravitational wave detector network](https://arxiv.org/abs/1010.6192))

### 方向がわかるとどう嬉しい？

#### 標準音源としての重力波

重力波を観測することによって宇宙論の光度距離(Luminosity Distance)を調べることができます。それと同時に、重力波の元となる天体が所属する母銀河を同定します。その母銀河を重力波以外の電磁波を観測する望遠鏡で観測することにより、重力波源の赤方偏移$z$を決定することができます。  
この二つの関係を調べることは、光度距離と赤方偏移にどのような関係があるのかを特定することになります。これは言うなれば宇宙膨張の様子を直接観測することになるのです。

#### 重力波・電磁波・ニュートリノ観測の融合

すでに上に述べたように、重力波の飛来方向を詳細に電磁波・ニュートリノ観測することができるようになります。これにより

* 超新星爆発の駆動原理の解明
* ガンマ線バーストの起源解明
* 中性子星連星合体の初観測およびそこから示唆される中性子星状態方程式の理論への制限

などが期待されます。

### 重力理論の解明

重力波は一般相対性理論の予言通り「横波」なのか、その偏極モードを調べるには3台以上の重力波観測が必要です。下図は左から順にテンソルモード/スカラーモード/ベクトルモードを図示したものです。  

![重力波の偏極モード](/assets/images/gr/polarization.png)


(参考リンク: [Probing non-tensorial polarizations of stochastic gravitational-wave backgrounds with ground-based laser interferometers](https://arxiv.org/abs/0903.0528))

## 結言

重力波を観測することは、それ自身大きな成果です。しかしその観測結果から得られる物理やシナジーはさらに大きな知的探究心をもたらすことでしょう。

頑張れKAGRA。

{% include adsense.html %}