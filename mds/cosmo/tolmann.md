---
layout: default
title: Tolman効果
parent: 宇宙論
math: mathjax3
permalink: /cosmo/tolman
nav_order: 17
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

# トールマン効果

[表面輝度(Surface brightness)](/atmos/intensity_flux)に成り立つ赤方偏移依存性を導出しましょう。

## 導出

以下では簡単のため、天体は単色電磁波を放射しているとします。光度$$L [\mathrm{erg/s}]$$の点光源を観測したときのフラックスが$$f [\mathrm{erg/s/cm^2}]$$だったとします。点光源までの[光度距離](/cosmo/luminosity_d)が$$D_L$$のとき、この2つの間には

$$
f 
= \frac{L}{4\pi D_L^2} \tag{1}
$$

の関係が成り立ちます。ここで、このような点光源が個数密度$$n$$で、一辺$$\ell$$の立方体空間に存在するとしましょう。$$\ell \ll D_L$$とすると、この領域から観測される総フラックスは

$$
F 
= \frac{L n \ell^3}{4\pi D_L^2} \tag{2}
$$

観測者はこの立方体領域を微小立体角$$\delta \Omega$$で見込むとすると、表面輝度$$I$$(単位時間,単位面積,単位立体角あたり単位周波数で放射するエネルギー)は

$$
I 
= \frac{F}{\delta \Omega} \tag{3}
$$

です。ここで微小立体角は、[角径距離](/cosmo/angular_d)を用いて$$\delta \Omega = \delta \theta^2 = (\ell / D_A)^2$$と書けるので

$$
I 
= \frac{L}{4\pi} n \ell^3 \left( \frac{D_A}{\ell}\right)^2 \frac{1}{D_L^2} 
= \frac{L n\ell}{4\pi} \left( \frac{D_A}{D_L} \right)^2 
= \frac{L n\ell }{4\pi} (1+z)^{-4} \tag{4}
$$

のようになります。表面輝度が赤方偏移の4乗に反比例して暗くなる、これをTolman効果と呼びます。これは宇宙膨張により一辺$$\ell$$が引き伸ばされて明るさが薄くなる効果で2乗、時間間隔と周波数間隔がそれぞれ引き伸ばされる効果で1乗ずつ、という内訳です。

## 熱的スニヤエフ・ゼルドビッチ効果との組合せ効果

銀河団は[熱的Sunyaev-Zel'dovich効果(TSZ)](/astroelec/sz)により、高周波側で明るく輝きます。これは[逆Compton散乱](/astroelec/inv_compton_intensity)によるものです。逆Compton散乱の原理を考えると、これは背景光子が運動している高エネルギー電子から散乱を受けることでエネルギーを獲得するのでした。すると、その放射エネルギーは背景光子(ここではCMB光子)数に比例する形となることから

$$
L_\mathrm{IC} \propto U_\mathrm{CMB} 
$$

とわかります。[状態方程式](/cosmo/eos)から宇宙論において相対論的物質は$$\rho_\gamma c^2 \propto T^4 \propto (1+z)^4$$の依存性があるとわかります。これとTolman効果から、Sunyaev-Zel'dovich効果により明るく輝く銀河団からの表面輝度$$I_\mathrm{SZ}$$は

$$
I_\mathrm{SZ} 
\propto \frac{L_\mathrm{IC}}{(1+z)^4} 
= (赤方偏移に依存しない形)
$$

となります。このことから、銀河団のTSZ観測の表面輝度は赤方偏移に依存せず、遠方でも明るく輝いて見えることがわかります。

# 参考文献

[1] [北山哲, "銀河団"](https://www.amazon.co.jp/dp/B08HRQYP3N/ref=cm_sw_r_tw_dp_4CAC3C405KX4V34K4YDQ)  
[2] [和田圭一, 栗木久光, 亀野誠二, 谷口義明, 寺島雄一, 長尾透 共訳, "ピーターソン活動銀河核"](https://www.amazon.co.jp/dp/4621082493/ref=cm_sw_r_tw_dp_EJ4FS71QAA0CV9W8P1BN)

{% include adsense.html %}