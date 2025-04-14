---
layout: default
title: ニュートリノ放射
parent: 恒星物理学
math: mathjax3
permalink: /stellar/neutrino_emission
nav_order: 27
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

# ニュートリノ放射

ニュートリノの散乱断面積$$\sigma_\nu$$はおよそ$$10^{-44} \mathrm{cm^2}$$と非常に小さいため、その平均自由行程は非常に長くなります。
粒子数密度を$$n$$とすると

$$
\ell_\nu 
= \frac{1}{n \sigma_\nu} 
= \frac{\mu m_p}{\rho \sigma_\nu}
\simeq \frac{1}{6 \times 10^{23} \sigma_\nu \rho} 
\simeq \frac{2 \times 10^{20} \ \mathrm{cm}}{\rho}
$$

のように表されます。
密度$$\rho$$に太陽中心付近の値$$10^2 \mathrm{g/cm^3}$$を入れても、平均自由行程は太陽半径$$R_\odot \sim 6.96 \times 10^{10} \mathrm{cm}$$の数千万倍にもなります。
したがって、ニュートリノは発生すると周囲の物質全く相互作用することなく、光速度に近い速度で恒星外に脱出します。
そのため、ニュートリノの発生は恒星の物質にとってエネルギーの損失となります。
(ただし超新星爆発時の状態は例外です。このときには$$\rho \sim 10^{14} \mathrm{g/cm^3}$$にも達するため、$$\ell_\nu \sim 20 \mathrm{km}$$程度となり、ニュートリノ輸送の正確な取り扱いが必要となります。)
ニュートリノは水素からヘリウムができる核融合反応などの中で発生する、ベータ崩壊の際にも放出されますが、その効果は$$\epsilon_\mathrm{n}$$の中に含めて考えます。  
それとは別に、$$\epsilon_\nu$$として核融合反応に付随しないニュートリノの発生が考慮されます。
それらには対消滅ニュートリノ・光ニュートリノ・制動放射ニュートリノ・プラズマニュートリノなどの過程があります。

## 対消滅 (pair annihilation) ニュートリノ

高温$$T>10^9 \mathrm{K}$$の状態では、光子同士の衝突による電子・陽電子対生成とその逆反応が起こります。
しかし後者の反応が起こる代わりにわずかな確率 ($$1:10^{-19}$$)で、ニュートリノ・反ニュートリノ対生成が起こります。

$$
\gamma + \gamma \longleftrightarrow e^- + e^+ \longrightarrow \nu_e + \bar{\nu}_e 
$$

## 光 (photo) ニュートリノ

光子が電子に衝突することで散乱される[コンプトン散乱過程](/astroelec/compton)において、光が散乱される代わりに、ニュートリノ・反ニュートリノ対生成が起こります。

$$
e^- + \gamma \longrightarrow 
e^- + \nu_e + \bar{\nu}_e
$$

## 制動放射 (bremsstrahlung) ニュートリノ

電子がイオンの作る電場中で加速度運動をすることで起こる[制動放射 (自由-自由放射)](/astroelec/thermal_brems)において、光子の代わりにニュートリノ・反ニュートリノ対生成が起こります。

## プラズマ・ニュートリノ

[プラズマ中を伝搬する電磁波 (角振動数$$\omega$$, 波数$$k$$)に対する分散関係式](/plasma/propagation_cold)は

$$
\omega^2 
= c^2 k^2 + \omega_p^2 \quad (\omega_p^2 = 4\pi e^2 N_e / m_e)
$$

のように表されます。
この式と、相対論的エネルギーの関係式 $$E^2 = c^2 p^2 + m^2 c^4$$を比較すると、このような電磁波は$$\hbar \omega_p /c^2$$を静止質量とする粒子とみなすことができます。
これをプラズモンと呼びます。
このプラズモンが崩壊することで、ニュートリノ・反ニュートリノ対生成が起こります。  

ここで示したこれらの過程が、温度と密度のどの領域で重要となるかを示したものが下図です。
ここで$$\mu_e$$は電子の平均分子量であり、1グラム中の電子数は$$(アボガドロ数) / \mu_e$$で与えられます。
いずれの過程も、主系列星の中の状態よりもはるかに高温・高密度状態でのみ、恒星の構造に影響を与えます。

![](/assets/images/stellar/neutrino_emission_01.png)

この図から、対消滅ニュートリノは非常に高温の状態で重要となり、プラズマニュートリノと制動放射ニュートリノは高密度領域で重要となります。
例えば白色矮星内部は多くの場合、$$T \sim 10^7 - 10^8 \mathrm{K}, \rho \sim 10^5 - 10^6 \mathrm{g/cm^3}$$であるため、プラズマニュートリノによる冷却効果が重要となります。

## シンクロトロン・ニュートリノ

これは強磁場が存在する場合のみ起こるものです。
[電子が強磁場中を運動することで光子を放出する通常のシンクロトロン放射](/astroelec/sync_spectrum)と異なり、ニュートリノ・反ニュートリノ対を放出する過程です。

## ウルカ過程 (Urca process)

上述の過程のほかに、進化の進んだ段階で重要となるニュートリノ放出について触れておきましょう。
これは原子核の電子捕獲に続いてベータ崩壊が起こることで、元の原子核に戻るサイクル過程、これをウルカ過程と呼びます。
電子捕獲に伴い電子ニュートリノが放出され、さらにベータ崩壊の際に反電子ニュートリノと電子が放出されます。

$$
e^- + (Z, A) \longrightarrow (Z-1, A) + \nu; \quad
(Z-1, A) \longrightarrow (Z, A) + e^- + \bar{\nu}
$$

この過程では原子核に変化はありませんが、ニュートリノと反ニュートリノが放出されることで、物質はエネルギーを損失します。

## 参考文献

[1] [Itoh et al., 1989, "Neutrino Energy Loss in Stellar Interiors. III. Pair, Photo-, Plasma, and Bremsstrahlung Processes"](1989ApJ...339..354I)  
[2] [Haft et al., 1994, "Standard and Nonstandard Plasma Neutrino Emission Revisited"](1994ApJ...425..222H)  
[3] [Kippenhahn, Weigert & Weiss, "Stellar Structure and Evolution"](https://amzn.to/43pXiva)  
[4] [高原文郎, "宇宙物理学"](https://amzn.to/4bXfKgP)  
[5] [野本憲一, 定金晃三, 佐藤勝彦, "恒星"](https://amzn.to/4kHBvFv)  

{% include adsense.html %} 