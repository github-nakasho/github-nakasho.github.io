---
layout: default
title: 自由電子散乱による輝線プロファイルの変化
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/line_emission_scattering
nav_order: 116
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

# 自由電子散乱による輝線プロファイルの変化

[LRDs (Little Red Dots)](/compact/little_red_dots) では、$$\mathrm{H} \alpha$$ 輝線のプロファイルが指数関数型になることが知られています。
これは自由電子による、多数回の[トムソン散乱](/astroelec/thomson)を経たことによるものです。
ここでは、なぜ輝線の多数回の散乱が指数関数プロファイルになるのかを説明してみましょう。
ここでは [LRDs](/compact/little_red_dots) の起源として考えられているブラックホール星 (BH*) や 準恒星と同様の状況を考えるとします。
すなわち、中心に BH があるようなガス球を考え、その中心から輝線光子が出ているとします。
輝線光子は複数回の散乱を経験したのち、擬似光球面に到達します。
その外側では散乱を受けることなく、無限遠方にいる観測者に届きます。

![](/assets/images/astroelec/line_emission_scattering_01.png)  

## [トムソン散乱](/astroelec/thomson)による周波数シフト

静止している電子による[トムソン散乱](/astroelec/thomson)の場合、入射電磁波の周波数は変化することなく、散乱されます (弾性散乱)。
しかし、電子が熱運動などにより運動している場合、ドップラー効果により周波数が変化します。
実験室系 (観測者静止系) での入射光子の周波数を $$\nu$$、そして入射光子の進行方向の単位ベクトルを $$\mathbf{n}_\mathrm{in}$$ としましょう。
そして、実験室系での電子の速度を $$\mathbf{v}$$ とすると、電子静止系でみたときの周波数は

$$
\nu' 
= \nu \left( 1 - \frac{\mathbf{n}_\mathrm{in} \cdot \mathbf{v}}{c}\right) \tag{1}
$$

のようになります。
ここで、電子静止系での物理量にはプライム ( $$'$$ ) をつけています。
電子静止系では弾性散乱と考えられるため、散乱後の周波数は $$\nu_\mathrm{out}' = \nu'$$ です。
これを再び実験室系に戻すことで、[トムソン散乱](/astroelec/thomson)後の周波数 $$\nu_\mathrm{out}$$ が

$$
\begin{align}
\nu_\mathrm{out} 
&= \nu_\mathrm{out}' \left( 1 + \frac{\mathbf{n}_\mathrm{out} \cdot \mathbf{v} }{c}\right) 
= \nu \left( 1 - \frac{\mathbf{n}_\mathrm{in} \cdot \mathbf{v}}{c}\right) \left( 1 + \frac{\mathbf{n}_\mathrm{out} \cdot \mathbf{v} }{c}\right) \notag \\
&= \nu \left( 1 + \frac{\mathbf{n}_\mathrm{out} - \mathbf{n}_\mathrm{in}}{c} \cdot \mathbf{v} + \mathcal{O} (v^2 / c^2) \right) \tag{2}
\end{align}
$$

のように求まります。
$$\mathcal{O} (v^2 /c^2)$$ の項を無視すると、1 回の散乱による周波数のシフト $$\Delta \nu = \nu_\mathrm{out} - \nu $$ は

$$
\frac{\Delta \nu}{\nu} 
= \frac{\mathbf{n}_\mathrm{out} - \mathbf{n}_\mathrm{in}}{c} \cdot \mathbf{v} \tag{3}
$$

となります。
$$(\mathbf{n}_\mathrm{out} - \mathbf{n}_\mathrm{in}) \cdot \mathbf{v}$$ の平均や分散を計算することで、この系の中で起こる散乱一回での周波数シフトを求めることができます。
以下ではその詳細な計算には触れず、この周波数シフト $$\Delta \nu$$ を用いて、光球から脱出した光子のスペクトルについて議論していきましょう。

## 有限回で脱出することによる効果

実際には、光子は電子と正面衝突する場合や、電子に追突する場合などが考えられるため、周波数は増加 (青方偏移) と減少 (赤方偏移) をランダムに繰り返します。
よって素直に考えると、横軸 $$\nu$$ の一次元空間で考えたとき、これは一回のステップで $$\Delta \nu = \pm \vert \Delta \nu \vert $$ だけ周波数が変化するようなランダムウォークに見えるかもしれません。

![](/assets/images/astroelec/line_emission_scattering_02.png)  

全ての光子が同じステップ数だけランダムウォークを行った場合、最終的に得られる分布はガウシアンとなります。
しかし今の場合、少ない散乱回数で光球面に到達するような光子も考えられます。
つまり、散乱回数は全ての光子で同じわけではなく、少ない散乱回数の光子もあれば、多くの散乱を経験する光子もあるということです。
そこで、1 回の散乱ごとに光子は確率 $$P$$ で 系から脱出するとしましょう。
するとある光子が 1 回散乱されても系から脱出しないで生き残る確率は $$1-P$$であり、2 回の場合には $$(1-P)^2$$ です。
このように考えると、$$N$$ 回の散乱後に光子が系にとどまっている確率は $$(1-P)^N$$ です。
この値を $$x$$ とすると

$$
\begin{align}
x 
= (1-P)^N 
&\Longrightarrow \ 
\ln x 
= \ln (1-P)^N 
= N \ln (1-P) \notag \\
&\Longrightarrow \ x 
= e^{N \ln (1-P)} 
= e^{-N / N_0} \quad \left( N_0 \equiv - \frac{1}{\ln (1-P)} \right) \tag{4}
\end{align}
$$

のように計算することができます。
$$N$$ 回の散乱で辿り着ける最大のスペクトルは $$\nu = N \Delta \nu$$ です。
よって輝線の周波数 $$\nu_0$$ から $$\nu$$ に到達するには、最低でも $$N \approx (\nu - \nu_0) / \Delta \nu$$ の散乱回数後も、系内にとどまっている必要があります。
以上から、この系での光子数の分布 $$n(\nu)$$ が

$$
n (\nu) 
\propto e^{-\frac{\nu - \nu_0}{N_0 \Delta \nu}} \tag{5}
$$

のように、指数関数型になることがわかります。

{: .note}
もし普通のランダムウォークであれば、到達距離は $$\sqrt{N}$$ に比例する形となり、(5)式の指数の肩が $$\nu^2$$ のガウシアンとなります。

大雑把に定性的な議論を行いましたが、定量的に考えても、同じように指数関数型を得ることができます。
例えば電子の熱運動をまじめに取り扱う場合、(3)式の $$(\mathbf{n}_\mathrm{out} - \mathbf{n}_\mathrm{in}) \cdot \mathbf{v}$$ の部分を、マクスウェル・ボルツマン分布から平均・分散を計算することで、系の平均的な振る舞いを調べることができます。
この場合の周波数シフトの大きさの分散は、およそ電子の熱運動 $$v_\mathrm{th} = \sqrt{2k_B T / m_e}$$ 程度になり、以降は同じ議論を用いることができます。
実際の [LRDs](/compact/little_red_dots) の観測では、輝線のコア部分と指数関数的なすそ部分とからなることがわかっています。
コア部分は少ない散乱回数で系外に脱出した成分で、中心にいる BH の情報を反映したものです。
そして指数関数型のすそ部分は多数回の散乱を経験した部分で、これは BH の周囲を取り囲むガスの情報を持っていると考えることができます。

## 参考文献

[1] [Rybicki & Lightman, "Radiative Processes in Astrophysics"](https://amzn.to/453u5pE)  
[2] [Longair, "High Energy Astrophysics"](https://link.amazon/B05G6Rh1s)  

{% include adsense.html %} 