---
layout: default
title: 曲率放射
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/curvature_radiation
nav_order: 112
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

# 曲率放射 (curvature radiation)

ここではパルサーの極域からの放射で重要とされる、曲率放射についてメモします。

## 原理

荷電粒子は、磁力線を横切ることができず、磁力線の回りを螺旋運動をします。
その加速度運動により、荷電粒子は放射を出します。
その一つに、[磁場によるラーモア運動から生じるシンクロトロン放射](/astroelec/uniform_mag_rel)があります。
[シンクロトロン放射](/astroelec/uniform_mag_rel)によって荷電粒子はエネルギーを失い、磁場に垂直な方向の運動量はすぐに放射として損失します。
すると荷電粒子は磁力線に沿った方向に運動するようになります。
磁力線が曲がっていると、そこから働く向心力により放射を出すようになります。
これを曲率放射と呼びます。

![](/assets/images/astroelec/curvature_radiation_01.png)

[シンクロトロン放射](/astroelec/uniform_mag_rel)とのアナロジーから、[シンクロトロン放射のラーモア半径](/astroelec/uniform_mag_rel)を磁力線の曲率半径に置き換えることで、曲率放射の式を得ることができます。

## 曲率放射スペクトル

単一の荷電粒子からの[シンクロトロン放射のスペクトル](/astroelec/sync_spectrum)は

$$
\frac{dW}{d\omega dt} 
= \frac{\sqrt{3} e^3 B}{2 \pi m c^2} F(x) 
= \frac{\sqrt{3}e^2}{2\pi c} \frac{\gamma v}{r_L} F(x) \quad \left( F(x) 
\equiv x \int_x^\infty K_{5/3} (\chi) d\chi \right)\tag{1}
$$

でした。
ここで[$$K_n$$は修正ベッセル関数](/math/modified_bessel_airy)です。
この式において[$$r_L = \frac{mc \gamma v}{e B}$$](/astroelec/uniform_mag_rel)を磁力線の曲率半径$$R_c$$に置き換えれば、単一粒子からの曲率放射スペクトルとなります。

$$
\frac{dW}{d\omega dt} 
= \frac{\sqrt{3} e^2}{2\pi} \frac{\gamma}{R_c} F(x) \tag{2} 
$$

途中、粒子の運動が超相対論的として$$v \sim c$$としました。

## 全放射強度

[シンクロトロン放射による全放射強度](/astroelec/uniform_mag_rel#全放射強度)は

$$
P_\mathrm{sync} 
= \frac{2e^2}{3c^3} \gamma^4 \omega_\mathrm{se}^2 v^2 \sin^2 \alpha 
= \frac{2e^2}{3c^3} \gamma^4 \frac{e^2 B^2 \sin^2 \alpha}{m^2 e^2 c^2 \gamma^2} v^2\tag{3}
$$

で与えられます。
この式でも[ラーモア半径$$r_L = \frac{m c \gamma v}{e B \sin \alpha}$$](/astroelec/uniform_mag_rel)を磁力線の曲率半径$$R_c$$に置き換えれば、それが曲率放射の全放射強度になります
($$\alpha$$: 荷電粒子のピッチ角。)
よって

$$
P_\mathrm{curv} 
= \frac{2e^2}{3c^3} \gamma^4 \frac{v^4}{R_c^2} 
\underbrace{\approx}_{v \sim c} \frac{2e^2 c}{3} \frac{\gamma^4}{R_c^2} \tag{4}
$$

## 典型的な周波数

またシンクロトロン放射の典型的な周波数は

$$
\nu_c 
= \frac{3}{4\pi} \gamma^2 \frac{eB \sin \alpha}{mc} 
= \frac{3}{4\pi} \gamma^2 \frac{v \gamma}{r_L} \tag{5}
$$

より、曲率放射の典型的な周波数が

$$
\nu_{\mathrm{curv}, c} 
= \frac{3}{4\pi} \gamma^3 \frac{v}{R_c} 
\underbrace{\approx}_{v \sim c} \frac{3c}{4\pi} \frac{\gamma^3}{R_c} \tag{6}
$$

のように求まります。

## 冷却時間

この曲率放射による冷却時間(粒子がエネルギーを失うのにかかる時間)を計算しましょう。
電子の場合

$$
t_\mathrm{cool} 
= \frac{E}{\left \vert \frac{dE}{dt} \right \vert} 
= \frac{m_e c^2 \gamma}{P_\mathrm{curv}} 
= \frac{3 m_e c}{2 e^2} \frac{R_c^2}{\gamma^3} 
\simeq \frac{3 \overbrace{m_e c^2}^{511 \mathrm{keV}}}{2 \underbrace{\frac{e^2}{\hbar c}}_{1/137} \underbrace{\hbar c}_{197\mathrm{MeV \cdot fm}} c} \frac{R_c^2}{\gamma^3}
\simeq 170 \frac{R_c^2}{\gamma^3} \ [\mathrm{s}] \tag{7}
$$

のように計算されます。

## 応用: AGNブラックホール磁気圏からの超高エネルギー放射

ここでは、活動銀河中心核となっている超大質量ブラックホールの磁気圏からの超高エネルギー放射の典型的なエネルギーを、先ほど導出した曲率放射に関する式から求めてみましょう。

![](/assets/images/astroelec/curvature_radiation_02.png)

簡単のため、ブラックホール磁気圏においては電場と磁場が同程度の大きさ($$E \simeq B$$)であるとします。
そして、磁場のエネルギーと放射のエネルギーが等分配程度になっているとすると

$$
\frac{B^2}{8\pi} c \simeq \frac{L_\mathrm{Edd}}{4\pi r_s^2} \ \Longrightarrow \ 
B 
\simeq \sqrt{\frac{2 L_\mathrm{Edd}}{c r_s^2}} \tag{8}
$$

ここで$$L_\mathrm{Edd} = \frac{4\pi c GM m_p}{\sigma_T} = 10^{46} \left( \frac{M}{10^8 M_\odot}\right) \ [\mathrm{efg}/s]$$はエディントン光度、$$r_s$$はシュバルツシルト半径です。
さらに簡単のため、電場がブラックホールから放射状に出ているとしましょう。
単位時間あたりのエネルギー変化量は

$$
\frac{d\epsilon}{dt} 
\simeq \frac{\Delta \epsilon}{\Delta t} 
\simeq \frac{eEr}{\frac{r}{c}} 
= eEc \tag{9}
$$

以上より粒子が加速されるのにかかる典型的な時間は

$$
t_\mathrm{acc} 
= \frac{\epsilon}{\frac{d\epsilon}{dt}} 
\simeq \frac{m_e c^2 \gamma}{eEc} 
\simeq \frac{m_e c \gamma}{eB} \tag{10}
$$

粒子のエネルギーが最大値に達したとき、$$t_\mathrm{acc} \simeq t_\mathrm{cool}$$と考えることができるため

$$
\frac{m_e c \gamma}{eB} 
\simeq \frac{3 m_e c}{2e^2} \frac{R_c^2}{\gamma^3} \ \Longrightarrow \ 
\gamma_\mathrm{max} 
\simeq \left( \frac{3}{2e} \right)^{1/4} R_c^{1/2} B^{1/4} 
\simeq 1.3 \times 10^{10} \left(\frac{R_c}{r_{s, 8}}\right)^{1/2} \left( \frac{B}{10^4 \mathrm{G}}\right)^{1/4}
$$

を得ます。
ここで$$r_{s, 8}$$は、$$10^8 M_\odot$$のときのシュバルツシルト半径($$\sim 3 \times 10^{13}$$ cm)です。
以上から、これを曲率放射の典型的な周波数(4)式に代入すれば

$$
\nu_{\mathrm{max}, c} 
\simeq \frac{3c}{4\pi} \left( \frac{3}{2e}\right)^{3/4} R_c^{1/2} B^{3/4} 
\simeq 5.4 \times 10^{26} \left( \frac{R_c}{r_{s, 8}} \right)^{1/2} \left( \frac{B}{10^4 \mathrm{G}}\right)^{1/4} \ [\mathrm{Hz}]
$$

のようになります。
光子のエネルギー$$h\nu$$として換算すれば、これは大体TeV程度になります。
TeVエネルギースケールのγ線光子と強磁場が存在することで、電子と陽電子の対生成が可能となります。
これにより、強磁場を伴う中性子星やブラックホールの周囲は電子・陽電子プラズマで満たされており、様々な現象を引き起こします。

## シンクロトロン放射と曲率放射の中間を考える

冒頭で議論したように、荷電粒子は磁力線の周りで螺旋運動を行います。
シンクロトロン放射によって磁場に垂直な方向の運動量は失われますが、それには(短いながらも)有限の時間がかかるはずです。
するとシンクロトロン放射が優勢な状態と曲率放射が優勢の状態の、中間状態のようなものが考えられます。
シンクロトロン放射を出しつつ曲率放射も同時に出しているような放射を、[シンクロ-曲率放射 (synchro-curvature radiation)](https://www.sciencedirect.com/science/article/abs/pii/0275106296000331?via%3Dihub)と呼び、いくつかの論文で提唱されています。
さらにパルサーの磁場は$$10^{11]-10^{13}$$Gにもなることから、この場合の[ランダウ準位](compact/landau_level)の運動半径はとても小さいものになります。
よって、このような強磁場では量子的な効果も考慮に入れなければなりません。
先程の[シンクロ-曲率放射を量子版に拡張したもの](https://iopscience.iop.org/article/10.1086/305138)も、論文として研究されています。

## 参考文献

[1] [Ghisellini & Locatelli, 2018, "Coherent Curvature Radiation and Fast Radio Bursts"](https://www.aanda.org/articles/aa/full_html/2018/05/aa31820-17/aa31820-17.html)  
[2] [Levinson, 2000, "TeV Emission by Ultra-High Energy Cosmic Rays in Nearby, Dormant AGNs"](https://arxiv.org/abs/hep-ph/0002020)  
[3] [Inoue et al., 2021, "Gamma-ray and Neutrino Signals from Accretion Disk Coronae of Active Galactic Nuclei"](https://www.mdpi.com/2075-4434/9/2/36)  
[4] [Zhang & Cheng, 1996, "Synchro-curvature radiation -a new and more general radiation in curved magnetic field"](https://www.sciencedirect.com/science/article/abs/pii/0275106296000331?via%3Dihub)  
[5] [Zhang & Yuan, 1998, "The Quantum Radiation Formulae of a New Radiation Mechanism in Curved Magnetic Fields"](https://iopscience.iop.org/article/10.1086/305138)  
[6] [Frank Reiger, "High Energy Astrophysics - Lecture 6"](https://www.mpi-hd.mpg.de/personalhomes/frieger/HEA6.pdf)  
[7] [高原文郎, "宇宙物理学"](https://amzn.to/410X4aY)  

{% include adsense.html %} 