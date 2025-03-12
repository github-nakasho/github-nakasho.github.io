---
layout: default
title: 単原子分子理想気体
parent: 恒星物理学
math: mathjax3
permalink: /stellar/monatomic_ideal_gas
nav_order: 12
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

# 単原子分子理想気体 (Monatomic ideal gas)

理想気体に対する分布関数は、フェルミ粒子かボーズ粒子かに関わらず、マクスウェル・ボルツマン分布となります。
これは[状態式の一般論の(3.2.1)式](/stellar/lte#状態式-equation-of-state-の一般論)で$$\eta \ll -1$$とすることに対応します。
この条件のもとでは$$\pm 1$$が無視でき、非相対論的な場合$$\mathcal{E}_p = \frac{p^2}{2m}$$を考えると、分布関数$$f(p)$$は

$$
f(p) 
\simeq \frac{1}{h^3} \sum_j \frac{g_j}{e^{-\eta} e^{\frac{\mathcal{E}_j + \mathcal{E}_p}{k_B T}}} 
= \frac{1}{h^3} \exp \left( \eta - \frac{p^2}{2mk_B T} \right) \sum_j g_j e^{-\frac{\mathcal{E}_j}{k_B T}}
$$

のように書くことができます。
$$\sum_j \cdot$$の部分は内部自由度です。
この部分を式変形していきましょう。
内部基底状態エネルギーを$$\mathcal{E}_0$$と書くと

$$
\sum_j g_j e^{-\frac{\mathcal{E}_j}{k_B T}} 
= e^{-\frac{\mathcal{E}_0}{k_B T}} \underbrace{\sum_j g_j e^{-\frac{\mathcal{E}_j - \mathcal{E}_0}{k_B T}}}_{=分配関数z}
\equiv z e^{-\frac{\mathcal{E}_0}{k_B T}} \tag{3.3.1}
$$

のように変形することができます。
よって

$$
f(p) 
= \frac{z}{h^2} \exp \left( \eta - \frac{\mathcal{E}_0}{k_B T} - \frac{p^2}{2m k_B T}\right) \tag{3.3.2}
$$

となります。
この式を[状態式の一般論の(3.2.3)式](stellar/lte#状態式-equation-of-state-の一般論)に用いると、粒子数密度$$N$$は

$$
N 
= \frac{4\pi z}{h^3} e^\eta e^{-\frac{\mathcal{E}_0}{k_B T}} \int_0^\infty p^2 e^{-\frac{p^2}{2m k_B T}} dp 
= \frac{4\pi z}{h^3} e^\eta e^{-\frac{\mathcal{E}_0}{k_B T}} \frac{\sqrt{pi (2mk_B T)^3}}{4} 
= \frac{z (2\pi m k_B T)^{3/2}}{h^3} e^\eta e^{-\frac{\mathcal{E}_0}{k_B T}}
$$

のように書かれるため、$$\eta$$ (化学ポテンシャルを$$k_B T$$で割ったもの)は

$$
e^\eta 
= \frac{N h^3}{z (2\pi m k_B T)^{3/2}} e^{\frac{\mathcal{E}_0}{k_B T}} \tag{3.3.3}
$$

のように求めることができます。
この式を(3.3.2)式に代入すれば、理想気体に対して運動量$$p$$を持つ粒子の単位位相空間あたりの粒子数$$f(p)$$が

$$
f(p) 
= f_\mathrm{M} (p) 
\equiv \frac{N}{(2\pi mk_B T)^{3/2}} e^{-\frac{p^2}{2mk_B T}} \tag{3.3.4}
$$

のように、マクスウェル・ボルツマン分布となることがわかります。  
圧力は[状態式の一般論(3.2.4)式](/stellar/lte#状態式-equation-of-state-の一般論)に、非相対論的速度$$v \simeq p/m$$より

$$
P 
= \frac{4\pi}{3} \frac{N}{(2\pi mk_B T)^{3/2}} \int_0^\infty e^{-\frac{p^2}{2mk_B T}} \frac{p^4}{m} dp 
= \frac{4\pi}{3m} \frac{N}{(2\pi mk_B T)^{3/2}} \frac{3!!}{2^3} \sqrt{\pi(2m k_B T)^5} 
= Nk_B T \tag{3.3.5}
$$

となり、よく知られた関係を得ることができます。
恒星内部の状態を表すとき、粒子数密度より物質密度$$\rho$$が用いられることが多いため、ガス粒子の平均分子量を$$\mu$$と書き、$$N = \frac{\rho}{\mu} N_A = \frac{\rho}{\mu m_p}$$の関係を用いて

$$
P 
= \frac{k_B}{\mu m_p} \rho T \tag{3.3.5'}
$$

のように、理想気体の圧力を表すことが多くあります。
途中の$$N_A$$はアボガドロ定数です。  
単位体積あたりの内部エネルギーも求めてみましょう。
[状態式の一般論(3.2.6)式](/stellar/lte#状態式-equation-of-state-の一般論)より

$$
E 
= 4\pi \frac{N}{(2\pi mk_B T)^{3/2}} \int_0^\infty e^{-\frac{p^2}{2mk_B T}} \frac{p^4}{2m} dp 
= \frac{3}{2} \underbrace{\frac{4\pi}{3m} \int_0^\infty f(p) p^4 dp}_{Pの途中式と同じ} 
= \frac{3}{2} P 
= \frac{3}{2} N k_B T \tag{3.3.6}
$$

のように表されることがわかります。
この式を圧力の場合と同様に、粒子数密度$$N$$を物質密度で表しましょう。

$$
E 
= \frac{3}{2} \frac{k_B}{\mu m_p} \rho T 
= c_\mathrm{v} \rho T 
= \frac{P}{\gamma - 1} \quad (\gamma = 5/3) \tag{3.3.7}
$$

ここで$$c_\mathrm{v}$$は単位質量あたりの等積比熱 (specific heat at constant volume)です。
さらに単位質量あたりの内部エネルギーを$$e = E / \rho$$のように書き表すと

$$
e 
= \frac{P}{(\gamma - 1) \rho} \tag{3.3.7'}
$$

を得ます。  
(3.3.6)式は、ガス粒子一個あたりの粒子の運動エネルギーが$$\frac{3}{2} k_B T$$であることを表しています。
これが電子の静止エネルギーと等しくなるときの温度を算出してみましょう。
すると

$$
T 
\simeq \frac{2}{3} \frac{m_e c^2}{k_B} 
\sim \frac{2 \times 9 \times 10^{-28} \times (3 \times 10^{10})^2}{3 \times 1.4 \times 10^{-16}}
\sim 4 \times 10^9 \ [\mathrm{K}]
$$

となります。
すなわち、この温度よりも高い温度では、理想気体の状態においても電子に対しては相対論的効果を考慮する必要があることを意味します。

{% include adsense.html %} 