---
layout: default
title: 理論的大気モデル計算法の概要
parent: 恒星大気の物理学
math: mathjax3
permalink: /atmos/temperature_compensation
nav_order: 22
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

# 4.3 理論的大気モデル計算法の概要

恒星の理論的な大気モデルは、静水圧平衡と放射平衡の関係を吸収散乱係数の温度密度波長依存性・ガスの状態方程式などを使って解くことによって得られます。ある$$T_{\rm{eff}}$$と$$g$$の組み合わせに対する恒星大気モデルを計算する際、最初にEddington近似によって温度分布を与えます。その温度分布に対して、静水圧平衡の式が解かれ、次に吸収係数などが計算されます。それらを使ってRadiative transferの式が解かれます。このようにして得られた放射場は必ずしも放射平衡の条件(4.12)式を満たしていません。そのため、放射平衡を満たすように温度分布に補正を加えて、新たに決めた温度分布に対して再び上述の計算を繰り返すIterationによって、静水圧平衡と放射平衡の大気モデルを得ます。  
効率の良い計算を行うためには、Radiative transferの式に効率よく正確な解放を用いることと、より適切な温度分布補正を与えることが重要です。そのために、これまで種々の方法が考案されてきました。ここでは最も簡単な(必ずしも有効ではない)温度分布補正の方法について概説するに留めます。

## 4.3.1 温度補正

仮定した温度分布$$T_0 (m)$$に対してRadiative transferの式を解いて放射場を求めたとき、Radiative equilibriumの条件(4.12)式を満たしていなかったので、温度分布に$$\Delta T(m)$$という補正を加えて(4.12)式を満たすようにすることを考えます。その$$\Delta T(m)$$は以下のような、Lambda-iteration procedureを用いて求めることができます。  
$$T(m) = T_0 (m) + \Delta T(m)$$としたときに、(4.12)式が満たされるようにしたいので

$$
\int_0^\infty \kappa_\nu J_\nu d\nu 
= \int_0^\infty \kappa_\nu B_\nu (T + \Delta T) d\nu 
\simeq \int_0^\infty \kappa_\nu B_\nu (T_0) d\nu + \Delta T \int_0^\infty \kappa_\nu \frac{\partial B_\nu}{\partial T} d\nu \tag{4.24} 
$$

これを満たすように$$\Delta T(m)$$を決めれば良いでしょう。これを$$\Delta T(m)$$について解くと

$$
\Delta T 
\simeq \frac{\int_0^\infty \kappa_\nu \{ J_\nu - B_\nu (T_0)\} d\nu}{\int_0^\infty \kappa_\nu \frac{\partial B_\nu}{\partial T}_{T_0}} \tag{4.25}
$$

が得られます。(4.25)式の分子に出現する$$J_\nu$$は$$\Lambda_{\tau_\nu} [B_\nu (T_0)]$$ (in LTE)で得られている既知のMean intensityなので、この式から$$\Delta T(m)$$が求まります。しかし、この条件式は$$T$$に対して非線形の関係のために、Iterationが必要となります。  
この方法は簡単ですが、種々の弱点を持っています。その1つに、大気の深いところでは温度分布の正確さに関わらず$$J_\nu \rightarrow B_\nu$$となることです。このためSelf-consistentな放射場であるかどうかに関わらず$$\Delta T \rightarrow 0$$となります。またある場所の$$J_\nu$$は$$\Lambda_{\tau_\nu} [B_\nu (T_0)]$$で与えられ、他の場所の温度の影響も受けています。しかし、(4.25)式ではRadiative equilibriumからのズレを全てその場所の温度補正に押し付けています。このため、正確な$$\Delta T(m)$$が求められないという問題があります。これらから、実際の研究ではより込み入った補正の方法が採用されます。

{% include adsense.html %}
