---
layout: default
title: Synchrotron Self-Comption
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/ssc
nav_order: 31
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

# シンクロトロン自己逆コンプトン (Synchrotron Self-Compton; SSC)

これはシンクロトロン放射で明るく輝く星雲が、自身の持つ高エネルギー電子によって逆コンプトン散乱を受けることでシンクロトロン放射光子のエネルギーが変化するという現象です。  

## スペクトル導出

逆コンプトン散乱によって、光子のエネルギーが$$h \nu' \rightarrow h\nu$$に遷移したと考えます。放射強度$$P_\mathrm{ssc}$$はシンクロトロン放射強度$$P_\mathrm{sync}$$、そして光子数保存を用いて

$$
\frac{P_\mathrm{ssc}}{h\nu} 
= \int d\nu' \frac{P_\mathrm{sync}}{h\nu'} \int d\gamma \ \gamma^{-p} \delta(\nu - 4\gamma^2 \nu')
$$

ここで電子のエネルギー分布が$$\gamma^{-p}$$のようなべき乗分布をしていることと、逆コンプトン散乱による光子のエネルギー変化が$$\epsilon \simeq 4\gamma^2 \epsilon'$$であることを用いました。$$P_\mathrm{sync} \propto \nu^{-(p-1)/2}$$より

$$
P_\mathrm{ssc} 
\propto \nu \int d\nu' \frac{\nu'^{-(p-1)/2}}{\nu'} \int d\gamma \frac{\gamma^{-p}}{4\gamma^2} \delta \left(\nu' - \frac{\nu}{4\gamma^2} \right) 
\propto \nu \nu^{-(p+1)/2} 
\propto \nu^{-(p-1)/2}
$$

よって、元のシンクロトロン放射スペクトルとべきの形が変形していないことがわかります。まるで平行移動させたかのように、高エネルギー側にSSC光子が分布します。

![通常のシンクトロン放射とシンクロトロン自己吸収、そしてシンクロトロン逆コンプトンによるスペクトル](/assets/images/astroelec/ssc.png)

# 参考文献

* [1] Rybicki & Lightman, "Radiative Processes in Astrophysics"
* [2] Longair, "High Energy Astrophysics"

{% include adsense.html %}