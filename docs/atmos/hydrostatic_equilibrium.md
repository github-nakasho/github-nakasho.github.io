---
layout: default
title: 静水圧平衡
parent: 恒星大気の物理学
math: mathjax3
permalink: /atmos/hydrostatic_equilibrium
nav_order: 19
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

# 4. 恒星大気モデル (Model Atmosphere)

恒星大気モデルとは、大気内部の密度・圧力・温度などの物理量の分布と、表面から出てくる放射スペクトルを与えるものです。ここでは、最も簡単なPlane-parallelで静水圧平衡かつ放射平衡にあるLTEの大気モデルの計算方法と、結果について議論しましょう。

## 4.1 基本方程式

### 4.1.1 静水圧平衡

![静水圧平衡の式の導出。](/assets/images/atmos/hydrostatic.png)

Plane-parallelの構造では、静水圧平衡の式は上図より

$$
P + \frac{dP}{dz} dz + g \rho dz 
= P \ \Longrightarrow \ 
\frac{dP}{dz} 
= -g \rho \tag{4.1}
$$

で表されます。ここで$$g$$は重力加速度で、大気内部では場所に依存せず一定であると仮定します。この仮定は、大気の厚さが星の半径に比べて小さいときに使えるPlane-parallelの仮定と整合性を持ちます。  
Optical depth $$\tau_\nu$$の定義より

$$
d\tau_\nu 
= - (\kappa_\nu + \sigma_\nu) \rho dz \tag{4.2}
$$

これを独立変数にすると、(4.1)式は

$$
\frac{dP}{d\tau_\nu} 
= \frac{g}{\kappa_\nu + \sigma_\nu} \tag{4.3}
$$

の様に書けます。$$\kappa_\nu, \sigma_\nu$$が場所の関数なので、この式は解析的には解くことができません。しかし、表面からその層までに含まれる質量を$$m$$を独立変数とすることでこの問題は解消されます。

$$
dm 
= -\rho dz 
= \frac{d \tau_\nu}{\kappa_\nu + \sigma_\nu} \tag{4.4}
$$

より、静水圧平衡の式は

$$
\frac{dP}{dm} 
= g \ \Longrightarrow \ 
P(m) = gm \tag{4.5}
$$

の様に積分でき、圧力$$P$$が$$m$$に比例することがわかります。途中で出てくる積分定数は、$$z \rightarrow \infty$$で$$P, g \rightarrow 0$$から0としました。  
放射圧は$$K_\nu$$と$$P_{\rm{rad}, \nu} = \frac{4\pi}{c} K_\nu$$の関係があります。Radiative transferの式に$$\cos \theta$$をかけて全立体角で積分した式(2.29)で、独立変数を$$\tau_\nu$$から$$m$$に変えます。

$$
\begin{align}
4\pi \frac{dK_\nu}{dz} 
= - (\kappa_\nu + \sigma_\nu) \rho F_\nu 
&\Longrightarrow \ 
\frac{dP_{\rm{rad}, \nu}}{dz} 
= - \frac{\kappa_\nu + \sigma_\nu}{c} \rho F_\nu \notag \\
&\Longrightarrow \ 
\frac{dP_{\rm{rad}}}{dm} 
= \frac{1}{c} \int_0^\infty (\kappa_\nu + \sigma_\nu) F_\nu d\nu \tag{4.6}
\end{align}
$$

が得られます。(4.5)式で、圧力をガス圧$$P_{\rm{gas}}$$と放射圧$$P_{\rm{rad}}$$に分けて、$$P = P_{\rm{gas}} + P_{\rm{rad}}$$と書くと

$$
\frac{dP_{\rm{gas}}}{dm} 
= \frac{dP}{dm} - \frac{dP_{\rm{rad}}}{dm} 
= g - \frac{1}{c} \int_0^\infty (\kappa_\nu + \sigma_\nu) F_\nu d\nu \tag{4.7}
$$

と表すことができます。この式は放射圧勾配が重力を弱める働きをすることを示しています。放射圧勾配(=放射力)が重力より大きくなると、ガス(大気)を吹き飛ばす恒星風(Stellar wind)を表す式にもなります。  

静水圧平衡の式にある基準の波長に対するOptical depth $$\tau_0$$の関数として解いて大気構造を得るためには、温度分布を与えるか温度分布を決める式を静水圧平衡の式と同時に解く必要があります。太陽の場合は、周縁減光(Limb-darkening)の種々の波長での観測値と(2.21)式

$$
I_\nu^+ (0, \mu) 
= \int_0^\infty S_\nu (t) e^{-\frac{t}{\mu}} \frac{dt}{\mu} 
= S_\nu (\tau_\nu = \mu) \ (0 \leq \mu \leq 1)
$$

を組み合わせることによって得られます。$$\tau_\nu = \int_z^\infty \rho \kappa_\nu dz$$より、吸収係数が大きい波長の観測を使うと、より外側の温度分布がわかります。逆に吸収係数の小さい波長を使うと、より深い場所の温度分布を決定することができます。  
点光源としてしか観測できない他の恒星の場合は、周縁減光が観測できません。そのため、上述の方法で温度分布を決めることができないので、次のページで議論する放射平衡の式を用いて理論的に温度分布を計算する必要があります。ただし、精密さを要求されない場合(例えば恒星内部の構造に対する境界条件として使用する場合)には、近似的な方法として太陽の$$T-\tau$$関係をスケールさせて

$$
T(\tau) 
= \frac{T_{\rm{eff}}}{T_{\rm{eff} \odot}} T_\odot (\tau)
$$

として得られる温度分布を用いることもできます。

{% include adsense.html %}
