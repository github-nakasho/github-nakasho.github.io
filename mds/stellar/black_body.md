---
layout: default
title: 光子ガス
parent: 恒星物理学
math: mathjax3
permalink: /stellar/black_body
nav_order: 13
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

# 光子ガス (黒体放射, blackbody radiation)

## 輻射圧・プランク関数の導出

光子は静止質量がゼロの粒子なので、[(3.2.2)式](/stellar/lte#状態式-equation-of-state-の一般論)より$$\mathcal{E}_p = cp$$となります。
これは光のエネルギーが$$h \nu$$で与えられることと、運動量が$$h\nu /c$$であることと一致します。
光子には内部状態が存在しないため、[(3.2.1)式]((/stellar/lte#状態式-equation-of-state-の一般論))において$$\mathcal{E}_j = 0$$として良いでしょう。
また光には2方向の偏光の自由度が存在するため、統計的重率は$$g_j=2$$となります。
光子の数密度を$$N_\gamma$$、化学ポテンシャルを$$\mu_\gamma$$と書くと、熱平衡状態では$$\mu_\gamma dN_\gamma = 0$$が成り立っている必要があります。
しかし、光子数は必ずしも保存しないため、$$\mu_\gamma = 0$$である必要があります。
これらのことと、光子がボーズ粒子であることを[(3.2.2)式](/stellar/lte#状態式-equation-of-state-の一般論)に用いると、運動量$$p$$での単位位相空間体積あたりの光子数は

$$
f(p) 
= \frac{2}{h^3} \frac{1}{\exp \left\{ pc / (k_B T)\right\} -1} \tag{3.4.1}
$$

のように表現されます。
従って、光子数密度は

$$
\begin{align}
N_\gamma 
&= 4\pi \int_0^\infty f(p) p^2 dp 
= \frac{8\pi}{h^3} \int_0^\infty \frac{p^2 dp}{\exp \{pc / (k_B T)\} -1} \notag \\
&\underbrace{=}_{x \equiv pc / (k_B T)} 8\pi \left( \frac{k_B T}{ch} \right)^3 \int_0^\infty \frac{x^2 dx}{e^x-1} \tag{3.4.2}
\end{align}
$$


となります。
最後の積分部分は[ガンマ関数](/math/gamma)と[ゼータ関数](/math/zeta)を用いて

$$
\int_0^\infty \frac{x^\ell dx}{e^x - 1} 
= \Gamma(\ell+1) \zeta(\ell+1) \tag{3.4.3}
$$

と表現されます。
以上から

$$
N_\gamma 
= 8 \pi \left( \frac{k_B T}{ch}\right)^3 \underbrace{\Gamma(3)}_{2!} \underbrace{\zeta(3)}_{\sim 1.204} 
\simeq  20.28 T^3 \ [\mathrm{cm}^{-3}] \tag{3.4.4}
$$

また、光子による圧力と輻射圧$$P_\mathrm{rad}$$は、[(3.2.4)式](/stellar/lte#状態式-equation-of-state-の一般論)と(3.4.1)式から

$$
\begin{align}
P_\mathrm{rad} 
&= \frac{8\pi c}{3h^3} \int_0^\infty \frac{p^3 dp}{\exp\{pc/ (k_B T)\} -1} 
\underbrace{=}_{x \equiv pc / (k_B T)} \frac{8\pi}{3c^3 h^3} (k_B T)^4 \underbrace{\int_0^\infty \frac{x^3 dx}{e^x -1}}_{=\Gamma(4) \zeta(4)} \notag \\
&= \frac{1}{3} \left( \frac{8\pi^5 k_B^4}{15 c^3 h^3}\right) T^4 
= \frac{1}{3} a T^4 \qquad \left( a \equiv \frac{8\pi^5 k_B^4}{15 c^3 h^3} \sim 7.566 \times 10^{-15} \ [\mathrm{erg \ cm^{-3} \ K^{-4}}]\right) \tag{3.4.5}
\end{align}
$$

と求まります。
ここで$$a$$は輻射定数(radiation constant)と呼ばれます。
また、単位体積あたりの輻射エネルギー(radiation energy density)は、[(3.2.6)式](/stellar/lte#状態式-equation-of-state-の一般論)に$$\mathcal{E}_p = cp$$と(3.4.1)式を代入して

$$
E_\mathrm{rad} 
= \frac{8\pi c}{h^3} \int_0^\infty \frac{p^3 dp}{\exp\{pc/(k_B T)\}-1} 
\underbrace{=}_{(3.4.5)} 3P_\mathrm{rad} 
= aT^4 \tag{3.4.6} 
$$

が得られます。
この関係は

$$
E_\mathrm{rad} 
= \frac{P_\mathrm{rad}}{\gamma_\mathrm{rad}-1} \qquad 
(\gamma_\mathrm{rad} = 4/3)
$$

のように表すこともできます。
また光子に対して$$p = h\nu / c = h/\lambda$$の関係があるため、単位体積・単位周波数あたりのエネルギー密度$$u_\nu$$は、(3.4.6)式の積分部分から

$$
u_\nu d\nu 
= \frac{8\pi h}{c^3} \frac{\nu^3 d\nu}{\exp \{h\nu / (k_B T)\}-1} 
= \frac{4\pi }{c} B_\nu (T) d\nu \tag{3.4.7}
$$

のように書かれます。
これを波長で書き換えた、単位体積・単位波長あたりのエネルギー密度$$u_\lambda$$は

$$
u_\lambda d\lambda 
= \frac{8\pi hc}{\lambda^5} \frac{d\lambda}{\exp \{hc/ (\lambda k_B T)\}-1} 
= \frac{4\pi}{c} B_\lambda (T) d\lambda \tag{3.4.8}
$$

となります。
ここで$$B_\nu(T), B_\lambda (T)$$はプランク関数と呼ばれ

$$
B_\nu (T) 
= \frac{2h \nu^3/c^2}{\exp \{h\nu / (k_B T)\}-1}, \qquad
B_\lambda (T) 
= \frac{2h c^2/\lambda^5}{\exp \{hc / (\lambda k_B T)\}-1} \tag{3.4.9}
$$

のように表されます。
ただし$$B_\nu d\nu = - B_\lambda d\lambda$$であり、さらに$$B_\nu (T) \neq B_\lambda (T)$$であることに注意しましょう。
$$B_\nu$$を周波数で積分したものは

$$
B(T) 
\equiv \int_0^\infty B_\nu (T) d\nu 
= \int_0^\infty B_\lambda (T) d\lambda 
= \frac{ac}{4\pi} T^4 
= \frac{\sigma}{\pi} T^4 \qquad \left( \sigma \equiv \frac{ac}{4}\right) \tag{3.4.10}
$$

となります。
ここで$$\sigma$$はステファン・ボルツマン定数と呼ばれます。  
輻射を扱う際には、放射強度 (intensity) $$I_\nu, I_\lambda$$がよく用いられます。
これはある方向の単位立体角・(進行方向に垂直な)単位面積・単位時間あたりに進む光のエネルギーを表します。
$$I_\nu$$は方向に依存する量ですが、恒星内部では等方的に近いため、その依存性を無視しても良いでしょう。
すると光のエネルギー密度$$u_\nu$$と

$$
\frac{I_\nu d\nu d\Omega}{c} 
= \frac{d\Omega}{4\pi} u_\nu d\nu
$$

の関係があります。
ここで$$\Omega$$は立体角を表し、$$d\Omega / (4\pi)$$は様々な方向に進む光のうち、立体角$$d\Omega$$に入るものの割合を表します。
この関係式と(3.4.7)式から、黒体輻射の放射強度が$$B_\nu (T)$$となっていることがわかります。

## 理想気体と輻射からなるガス

太陽質量よりも重たい主系列星内部でのガスの状態は、輻射を考慮した理想気体でよく近似されます。
この近似の下では、圧力$$P$$はガス圧$$P_\mathrm{gas}$$と輻射圧$$P_\mathrm{rad}$$の和で表現されます。
[(3.3.5')式](/stellar/monatomic_ideal_gas)と(3.4.5)式を用いて

$$
P 
= P_\mathrm{gas} + P_\mathrm{rad} 
= \frac{k_B}{\mu m_p} \rho T + \frac{1}{3} a T^4 \tag{3.4.11}
$$

で与えられます。
ガス圧と全圧との比を$$\beta \equiv P_\mathrm{gas} / P$$を導入することで

$$
P 
= \frac{P_\mathrm{gas}}{\beta} 
= \frac{P_\mathrm{rad}}{1-\beta}, \qquad 
\frac{P_\mathrm{gas}}{P_\mathrm{rad}} 
= \frac{\beta}{1-\beta} \tag{3.4.12}
$$

のように表されることもあります。

{% include adsense.html %} 