---
layout: default
title: ファラデートモグラフィ
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/faraday_tomography
nav_order: 108
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

# ファラデートモグラフィ

ここでは近年の電波観測の発展に伴って注目されつつある、新しい宇宙物理解析手法のファラデートモグラフィ (Faraday tomography)についてご紹介します。

## トモグラフィとは

トモグラフィとは様々な方向からの多数の投影データを用いて、対象とする物体の立体構造を把握するような技術のことです。
X線CTや地震波トモグラフィなどが有名な応用例として知られています。
例えばX線CTでは、発生器から放射されるX線を様々な角度から人体に照射します。
その反対側にX線検出器を置き、X線がどの程度吸収されたか、あるいは吸収されずに透過してきたかを観測します。
検出器が受け取る信号の情報は一次元に圧縮されたものです。
例えば、下図のように、半分のX線強度が観測されたとしましょう。
すると半分のX線は吸収されたと考えられるわけですが、それには下図のようにいくつもの組合せが考えられます。

![](/assets/images/astroelec/faraday_tomography_01.png)

この中から一意に構造を決定するために、様々な方向からX線を照射し、これを2次元データにします。
それをフーリエ変換による一連の技術により、元の構造を復元するのがX線CTの原理です。

## ファラデートモグラフィ (Faraday tomography)

ではファラデートモグラフィとはどのようなものでしょうか。
磁場を伴うプラズマ中を直線偏光電磁波が通過すると、[ファラデー回転](/plasma/faraday_rotation)によりその偏光方向が変化します。
このとき、[ファラデー回転](/plasma/faraday_rotation)による偏光方向の変化$$\Delta \theta$$は

$$
\Delta \theta 
= \mathrm{RM} \lambda^2 \quad 
\left( \mathrm{RM} = 0.81 \int_\mathrm{source}^\mathrm{observer} n_e B_\parallel ds \ [\mathrm{rad \cdot m}^{-2}]\right) \tag{1}
$$

のように書かれるのでした。
ここでRM (Rotation Measure: 回転量度)は、電子数密度$$n_e$$は$$\mathrm{cm}^{-3}$$、観測者の視線方向に沿った磁場の成分$$B_\parallel$$は$$\mu \mathrm{G}$$、そして$$ds$$はpcの単位で計算されるものとします。
ここから、[ファラデー回転](/plasma/faraday_rotation)を受ける前の初期偏光角を$$\chi_0$$、そして観測者が観測する偏光角を$$\chi$$とすると

$$
\chi = \chi_0 + \mathrm{RM} \lambda^2 \tag{2}
$$

のようになります。
縦軸に偏光角$$\chi$$、横軸に$$\lambda^2$$の図を描けば、RMを傾きとする直線になることがわかります。
しかし(1)式を見ると、RMは視線方向に$$n_e B_\parallel$$を積分したものになっています。
よって複雑に$$n_e, B_\parallel$$が変化する乱流のような場合や、複数の天体が視線方向に存在するような場合には、このような直線の推定は困難となります。
このような複雑な構造の場合にも、磁場の構造や電子数密度の情報を正確に求めるために開発された技術が、ファラデートモグラフィです。

## ファラデートモグラフィの原理

ここまでRMを用いてきましたが、以降ではこれを$$\phi$$のように表記し、これをファラデー深度(Faraday depth)と呼ぶことにしましょう。
深度と言っていますが、これは正負どちらもとることが出来る量です。
ファラデー深度が正の場合、磁場は観測者に向かう方向を持ち、負ならば遠ざかる方向の磁場を意味します。
またここからFaraday thin, Faraday thickなどの概念も考えることができます。
Faraday thinである、とは(2)式において$$\lambda^2 \Delta \phi \ll 1$$のように、[ファラデー回転](/plasma/faraday_rotation)による偏光角の変化が無視できるような場合を意味します。
ここで$$\Delta \phi$$は$$\phi$$空間において天体の広がりを表しています。
もしFaraday thinならば、下図のようにデルタ関数的に近似することができるでしょう。
逆にFaraday thickとは$$\lambda^2 \Delta \phi \gg 1$$であり、これは$$\phi$$空間において広がりのある天体を意味します。  
直線偏光の偏光角を考えるため、以下では円偏光は考えないものとします。
すなわち、[ストークスパラメータ](/astroelec/stokes)において$$V = 0$$とします。
すると[複素偏光強度](/astroelec/stokes#複素偏光強度)から、この直線偏光を

$$
P (\lambda^2)
= p (\lambda^2) I(\lambda^2) 
= Q (\lambda^2) + i U (\lambda^2) \tag{3}
$$

のように特徴づけることができます。
ここで$$p$$は部分偏光を表す変数で、完全偏光の場合には$$p=1$$となるようなものです。
またこれらは観測波長$$\lambda$$に依存しますが、(2)式と合わせるため、そして波長は常に正の値しか取らないことから、$$\lambda^2$$の関数であるとしています。

### Faraday Dispersion Function (FDF: ファラデー分散関数)

(3)式をフーリエ積分表示したものを考えます。

$$
P(\lambda^2) 
= \int_{-\infty}^\infty F(\phi) e^{2i\phi \lambda^2} d\phi \tag{4}
$$

ここで出てきた$$F(\phi)$$をファラデー分散関数と呼びます。
これは$$\phi$$空間における複素偏光強度の分布を表しています。









{% include adsense.html %}
