---
layout: default
title: Luminosity class
parent: 恒星大気の物理学
math: mathjax3
permalink: /atmos/luminosity_class
nav_order: 4
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

# 1.4 Luminosity class

## Pressure broadening

吸収線の幅は(恒星の自転による効果を無視すると)恒星大気の密度が大きいほど大きくなります。これはエネルギーレベルが他の粒子の衝突(近接遭遇)によって擾乱を受けて広がるためです。これはPressure broadening or Collisional broadeningと呼ばれます。同じ有効温度に対して、明るい星ほど半径が大きい($$L = 4\pi R^2 \sigma T_{\rm eff}$$)ため、大気の密度が小さくなります。下の写真はA型の太陽・白色矮星・青色巨星のスペクトルを並べたものです。半径が小さく、表面重力の大きい白色矮星ほど吸収線が広がっていることが見て取れます。

![各恒星の吸収線の広がり。](/assets/images/atmos/pressure_broadening.png)

Pressure broadeningを定性的に証明してみましょう。圧力$$P$$は状態方程式より

$$
P \propto T \rho
$$

と書けます。$$T, \rho$$はそれぞれ温度とガス密度です。恒星質量が$$M$$のとき、恒星表面$$R$$での重力は

$$
F_g = \frac{GM}{R^2}
$$

となります。これらの式から次のことが言えます。$$R$$が小さいと重力$$F_g$$が大きくなります。重力でつぶれないためには圧力が大きくなければなりません。恒星内部が一定一様温度とすると、$$\rho$$が大きい必要があります。密度が大きいほど恒星大気を構成する物質の衝突頻度が多くなり、吸収線のエネルギーゆらぎが大きくなります。このような理由から、pressure broadeningは半径が小さい恒星ほど広がります。

## Luminosity class

この吸収線の幅の違いに基づいて、Luminosity classが決定されています。
Luminosity classはIa-0, Ia, Ib, II, III, IV, V, Vi, Dに分けられます。

* Ia-0: 非常に明るい超巨星
* Ia: 明るい超巨星
* Ib: 超巨星
* II: 明るい巨星
* III: 巨星
* IV: 準巨星
* V: 主系列星
* VI: 準矮星(subdwarf)
* D: 白色矮星

Luminosity typeも含めたスペクトル分類はM-K分類(classification)と言われます。例えばA5V(A5が温度、Vがluminosity)のように記述します。  

白色矮星の場合はスペクトルが特殊なため、Luminosity classも特別になります。Hの吸収線のみが現れている場合はA, Heの吸収線のみが存在している場合はBのようにアルファベットが付与され、DA, DB, DC, DQ, ...のように表現します。 白色矮星は重力が強いため、重たいものは星の深部に移動します。そのため、その内部構造は層状になっていると考えられています。少しでもHが存在するとDAに分類されますが、このような層構造において表面のH層を恒星風などにより全て吹き飛ばすとDBとなります。

![HR図上に分布させたLuminosity class。](/assets/images/atmos/luminosity_class.png)

# 参考文献

* [Hubble site, Signature of a White Dwarf](https://hubblesite.org/image/3052/news/115-spectra)
* [Prof. Dale E. Gary's website, Hertzsprung-Russell Diagrams and Structure of Spectral Lines](https://web.njit.edu/~gary/321/Lecture6.html)