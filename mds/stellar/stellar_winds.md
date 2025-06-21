---
layout: default
title: 恒星風による質量放出と大質量星の進化
parent: 恒星物理学
math: mathjax3
permalink: /stellar/stellar_winds
nav_order: 42
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

# 恒星風による質量放出と大質量星の進化

## 概要

恒星風は、恒星表面からガスが加速されて流出していく現象です。
恒星風による質量放出は、恒星の進化に非常に重要な影響を及ぼします。
恒星風による質量放出率は、大まかには光度が大きく半径が大きい、または表面温度が非常に高い星で大きくなります。
恒星風は多くの場合、光球の外側 (光学的に薄い領域) で加速が起こり、速度分布は $$\beta$$-lawと呼ばれる

$$
v(r) 
\simeq v_\infty \left( 1 - \frac{R_\ast}{r}\right)^\beta
$$

の形で近似されることが多くあります。
ここで$$R_\ast$$は恒星の光球の半径を表し、$$v_\infty$$は終端速度と言われ、星から十分遠方での速度を表します。
$$\beta$$はこの速度則の急峻さ (steepness)を表し、$$\beta$$の値が小さいほど急激に終端速度に近づきます。
高温の星の恒星風では$$\beta \sim 0.8$$であり、冷たい恒星の恒星風では$$\beta$$が大きくよりゆっくり加速が起こります。

![](/assets/images/stellar/stellar_winds_01.png)

球対称かつ定常な恒星風では、恒星中心を中心とする球面を単位時間に通過する質量は、中心からの距離によらず一定 ($$=質量放出率 \dot{M}$$)となります。
そしてこれと密度分布$$\rho (r)$$と速度分布$$v(r)$$との間には

$$
\dot{M} 
= 4\pi r^2 \rho (r) v(r) 
$$

の関係が成り立ちます。
加速領域の外側では速度が一定$$(v(r) \longrightarrow v_\infty)$$となり、密度分布は$$\rho \propto 1/r^2$$となります。  
恒星風には、その加速機構の違いによって2, 3のタイプがあります。
太陽風に代表されるコロナ風 (coronal winds)、ガスが受ける輻射の力による高温星風 (hot-star winds)、ダストが受ける輻射の力によるダスト駆動風 (dust driven winds)などです。
コロナ風は、太陽のような後期型の矮星 (late-type dwarfs)の周りにある高温のコロナが静水圧平衡を保てず、ガス圧勾配の効果でガスが流れ出す現象です。
これは質量放出率は小さいですが、高速流となります。
太陽風では、質量放出率は$$\dot{M} \sim 2 \times 10^{-14} M_\odot /\mathrm{yr}$$で、流れの速度は$$\sim 300 \mathrm{km/s}$$程度です。
高温星風の温度は恒星の表面温度と同程度で、速度は数千km/sと高速です。
質量放出率は光度の大きい星ほど大きく、O型主系列星では$$10^{-5} M_\odot / \mathrm{yr}$$以上にもなります。
またAGB星のダスト駆動風による質量放出率は$$10^{-5} - 10^{-4} M_\odot / \mathrm{yr}$$にも達しますが、その流れの速度は小さく$$10 - 30 \mathrm{km/s}$$です。  
HR図上では、一般に光度が大きいほど、また表面温度が低い星で質量放出率が大きくなります。
そして恒星風の速度は、高温の星で速くなります。
また同程度の光度でも、Wolf-Rayet星 (輝線が卓越したスペクトルを持ち、主にヘリウムからなる外層をもつ)で質量放出率が大きくなります。
次の図は、HR図上の各点でどの程度の質量放出率となるかを表したものです。
各線に付けられた数字は$$-\log \dot{M} (M_\odot / \mathrm{yr})$$を表し、数字が小さいほど大きな質量放出率に対応します。

![](/assets/images/stellar/stellar_winds_02.png)  
[de Jager et al. (1988)](https://ui.adsabs.harvard.edu/abs/1988A%26AS...72..259D/abstract)より

## 恒星風の観測的特徴

詳しくは[P-Cygni profile](/atmos/rotation_and_stellar_wind#恒星風の影響-p-cygni-profile)をご覧ください。

# 参考文献

[1] [de Jager et al., 1988, "Mass loss rates in the Hertzsprung-Russell diagram"](https://ui.adsabs.harvard.edu/abs/1988A%26AS...72..259D/abstract)  
[2] [Lamers & Cassinelli, "Introduction to Stellar Winds"](https://amzn.to/3ZrHDbV)  
[3] [Kippenhahn, Weigert & Weiss, "Stellar Structure and Evolution"](https://amzn.to/43pXiva)  
[4] [野本憲一, 定金晃三, 佐藤勝彦, "恒星"](https://amzn.to/4kHBvFv)  

{% include adsense.html %}