---
layout: default
title: 分散度量
parent: プラズマ物理学
math: mathjax3
permalink: /plasma/dispersion_measure
nav_order: 5
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

# 分散量度 (Dispersion Measure: DM)

冷たい等方プラズマ中の電磁波による情報伝搬について議論していきましょう。
情報伝搬の速度は[群速度](/mhd/sound_wave)で与えられます。
すると[冷たい等方プラズマ中の電磁波の伝播ページの(19)式](/plasma/propagation_cold)より

$$
v_g 
= \frac{d\omega}{dk} 
= c \sqrt{1 - \frac{\omega_\mathrm{pe}^2}{\omega^2}} 
\underbrace{\simeq}_{\omega \gg \omega_\mathrm{pe}} c \left( 1- \frac{\omega_\mathrm{pe}^2}{2 \omega^2}\right) < c \tag{1}
$$

を得ます。
ここから、天体から放射されたパルスが観測者に到達するまでにかかる時間$$t_p$$を計算しましょう。
天体から観測者までの距離を$$d$$とすると

$$
t_p 
= \int_0^d \frac{ds}{v_p} 
\simeq \frac{d}{c} + \frac{1}{2c\omega^2} \int_0^d \omega_\mathrm{pe}^2 ds 
= \frac{d}{c} + \frac{2\pi e^2}{m_e c\omega^2} \int_0^d n_e ds \tag{2}
$$

のように計算されます。
第一項の$$d/c$$は距離$$d$$を光の速度で伝搬した場合にかかる時間です。
第二項は電子密度$$n_e$$のプラズマが存在することによるパルスの到達の遅れを表します。
そこで、この部分を以下のように表記しましょう。

$$
\Delta t_p 
= \frac{2\pi e^2}{m_e c \omega^2} \mathrm{DM}
\quad \left( \mathrm{DM} 
\equiv \int_0^d n_e ds \right) \tag{3}
$$

このDMは、宇宙物理研究では通常$$\mathrm{pc} \ \mathrm{cm}^{-3}$$という単位で表され、これを分散量度 (Dispersion Measure: DM)と呼びます。
これは$$1 \mathrm{cm}^{-3}$$のプラズマ中をDM pcだけ伝搬してきたことを表す量です。
プラズマの電子数密度が既知である場合、時間の遅れを測定することでDMを求め、天体までの距離$$d$$の測定を行うことができます。
(24)式から、時間の遅れは電磁波の周波数の2乗に逆比例しています。
これを利用し、複数の周波数でパルス放射の到達時間を測定すれば、DMを測定することが可能です。  
最近、高速電波バースト(Fast Radio Burst: FRB)が多数報告されるようになりました。
この現象の発生原因は未だ解明されていませんが、この電波パルスを用いてDMを測定することで、FRBが発生した周囲のプラズマの情報を得る研究がされています。
FRBが生まれる天体はどのような姿をしているのか、その発生源を探るためにも、その周囲の環境について精査することは非常に重要な研究と位置付けられています。

## 実際にパルサーまでの距離を求めてみよう

以下では、パルサーの電波観測結果をもとに、実際にパルサーまでの距離を推定してみましょう。

## 参考文献

[1] [Zhang et al., 2022, "Distribution of fast radio burst dispersion measures in CHIME/FRB Catalog 1: implications on the origin of FRBs
"](https://arxiv.org/abs/2212.13148)  

{% include adsense.html %} 
