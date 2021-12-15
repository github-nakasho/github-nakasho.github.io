---
layout: default
title: 連続スペクトル
parent: 恒星大気の物理学
math: mathjax3
permalink: /atmos/continuous_spectrum
nav_order: 24
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

# 4.5 連続スペクトル

恒星のスペクトルは、恒星からのFlux $$F_\lambda$$または$$F_\nu$$を光の波長または振動数に対して描画した図です。横軸を波長にするか振動数にするか、また縦軸にFluxそのものをとるかその対数をとるかによって同じ恒星のスペクトルでも形が違って見えるので注意が必要です。  
可視領域の連続スペクトルの傾きは、恒星のスペクトル型によって変化します。表面温度の高い(Early type)のスペクトル型の恒星ほど、波長の短い光の割合が大きくなります。次の図は、種々のスペクトル型の恒星スペクトルをある波長で規格化して示したものです。

![](/images/atmos/)

## 4.5.1 Balmer jump

Eddington-Barbier relationから、恒星の表面でのFlux $$F_\nu$$は近似的に$$\tau=2/3$$でのPlanck関数$$B_\nu (T(\tau_\nu = 2/3))$$を反映しているのでした。Bound-free吸収のlimitの短波長側で吸収係数が不連続的に大きくなっているため、短波長側では長波長に比べて温度の低い外側からの光がきていることになります。これにより連続スペクトルに急激に光の強さが変化するJumpが形成されます。水素原子のBound-free吸収端によって紫外域に$$n=1$$からの電離に対応するLyman jump ($$\lambda = 912$$Å)、可視光領域に$$n=2$$からの電離によりBalmer jump ($$\lambda = 3647$$Å)、そして$$n=3$$からの電離によるPaschen jump ($$\lambda = 8205$$Å)などが形成されます。  
Balmer jumpの大きさ

$$
D_{\rm{B}} 
= 2.5 \log\left( \frac{F_\nu (\lambda 3650^+)}{F_\nu (\lambda 3650^-)}\right) \tag{4.26}
$$

は恒星の有効温度によって系統的に変化します。逆に$$D_{\rm{B}}$$の観測値から、恒星の有効温度を決定するのに有用です。  
F型星・G型星の場合には、特に長波長側で$$\rm{H}^-$$イオンの吸収が大きいため、Balmer jumpの大きさは長波長側の$$\rm{H}^-$$イオンの吸収係数と、短波長側の$$n=2$$からのBound-free吸収端の吸収係数との比

$$
\frac{\kappa (3647^+)}{\kappa (3647^-)} 
\simeq \frac{\alpha (\rm{H}^-) N_{\rm{H}^-}}{\alpha_{3647^-}(n=2, k) N_{\rm{H}}(n=2)} \tag{4.27}
$$

によって決まります。ここで$$\alpha$$はイオンまたは原子1個あたりの吸収係数を表します。Negative hydrogenの数と中性水素原子の数の比はSahaの式によって決まりますが、この比は温度だけでなく電子数密度の関数でもあります。そのため、F・G型星のような低温の恒星に対してはBalmer jumpの大きさからだけでは温度を一意に決めることはできません。

![](/images/atmos/)

有効温度が9000Kよりも高い恒星では、$$\rm{H}^-$$イオンの吸収は無視できるほど小さくなります。よってBalmer jumpの大きさは、長波長側の水素原子の$$n=3$$からのBound-free吸収(Paschen continuum)と、短波長側の水素原子の$$n=2$$からのBound-free吸収端の吸収係数の比

$$
\frac{\kappa (3647^+)}{\kappa (3647^-)}
\simeq \frac{\alpha_{3647^+} (n=3, k) N_{\rm{H}}(n=3)}{\alpha_{3647^-} (n=2, k') N_{\rm{H}}(n=2)} \tag{4.28}
$$

によって決まります。$$N_{\rm{H}} (n=3)/ N_{\rm{H}}(n=2)$$は、温度を与えればBoltzmannの関係式から求まります。したがって、(4.28)式の吸収係数の比は温度だけの関数であり、Balmer jumpの観測から温度が求まることがわかります。  
Eddington-Barbier relationは、恒星の表面から出てくるFluxが$$\tau_\nu = 2/3$$の場所のPlanck関数に比例することを表しています。恒星の大気がGrayであったとしたら、恒星の連続スペクトルは$$\tau=2/3$$での温度、すなわち有効温度に対する黒体放射のスペクトルであるはずです。しかし、実際には連続吸収係数も光の波長に対して大きく変化するので、黒体放射からズレています。特に、B・A・F型星では、Balmer jumpのために紫外領域で低い温度のPlanck関数の大きさを反映して暗くなっています。このため、下図に示されている2色図で黒体放射の関係から大きくズレています。Balmer jump ($$\lambda = 3647$$Å)よりも波長の短い領域でエネルギーの放出が妨げられ、$$U$$バンドで暗くなります。このことから
$$U-B$$が赤くなります。$$U$$バンドで、エネルギーの流れが妨げられたぶん、$$B$$バンド領域でのエネルギー放出が大きくなるため、$$B-V$$の色は少し青くなります。

{% include adsense.html %}
