---
layout: default
title: 中性子星の振動
parent: コンパクト天体
math: mathjax3
permalink: /compact/neutron_star_oscillation
nav_order: 20
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

# 中性子星の振動

実際の中性子星は固体クラストや強い磁場、超流動や高速自転などの特徴を持つため、中性子星の振動モードは複雑を極めます。
加えて、中性子星は一般相対論的な効果が重要となる天体であるため、一般相対論の枠組みを用いた振動の扱いが必要となります。
例えば、中性子星の振動により重力波が発生し、それが無限遠に飛び去ることで中性子星振動が減衰する効果などが現れます。
そこでここでは、このような複雑な物理は考えず、中性子星の微小振幅振動を普通の恒星の振動モード解析と同様に見ていきましょう。  
普通の恒星の普通のモードは、一般的に p-, f-, g- の3つのモードに分類されます。
p-modeは流体の圧縮性(すなわち圧力)が復元力となって振動するモードで、その振動周波数は高周波となる傾向にあります。
次に、g-modeは浮力(すなわち重力)が復元力となって振動するモードで、p-modeに比べて低周波となります。
恒星が高速回転している場合、コリオリ力が復元力として働く回転モードと慣性モードが現れます。
さらに固体クラストが存在する場合、音波がクラスト中を伝播する効果も現れます。
そして強磁場がある場合、アルヴェーン波による振動も考慮する必要があります。

## 回転なし・磁場なしの通常の恒星の通常の振動モード

ここでは簡単のため、振動は断熱とし、粘性は考えないとしましょう。
さらに恒星は高速自転も磁場もないとして、重力もニュートン重力で考えることにします。
すると、この系を記述する方程式は、以下で与えられます。

$$
\frac{\partial \rho}{\partial t} + \nabla \cdot (\rho \mathbf{v}) 
= 0 \tag{1}
$$

$$
\rho \frac{d \mathbf{v}}{dt} 
= - \nabla P - \rho \nabla \Phi \tag{2}
$$

$$
\nabla^2 \Phi 
= 4\pi G \rho \tag{3}
$$

$$
\rho T \frac{ds}{dt} 
= \rho \epsilon - \nabla \cdot \mathbf{F} \tag{4}
$$

$$
\mathbf{F}_\mathrm{rad} 
= -\lambda_\mathrm{rad} \nabla T \tag{5}
$$

ここで$$\Phi$$は重力ポテンシャル、$$s$$は単位質量あたりのエントロピー、$$\epsilon$$はエネルギー生成率、$$\mathbf{F}_\mathrm{rad}$$は放射によるエネルギー流束です。
そして$$\mathbf{F} = \mathbf{F}_\mathrm{rad} + \mathbf{F}_\mathrm{conv}$$であり、$$\mathbf{F}_\mathrm{conv}$$は対流によるエネルギー流束を表します。  
断熱な振動を仮定し、さらに重力ポテンシャルの摂動は無視できるとしましょう。
密度・速度・圧力の摂動量をそれぞれ$$\rho', \mathbf{v}', P'$$し、(1), (2), (4)式を線形化していきましょう。




## 参考文献

[] []()  

{% include adsense.html %}