---
layout: default
title: Planckスケール
parent: 宇宙論
math: mathjax3
permalink: /cosmo/planck_scale
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

# ハッブル長とシュバルツシルト半径

宇宙膨張を記述する[Friedmann方程式](/cosmo/friedmann)から、曲率を$$K=0$$とすると

$$
H^2 
= \frac{8\pi G}{3} \rho \tag{1}
$$

のようにかけるのでした。$$\rho$$は宇宙の平均密度です。このとき、[Hubble長](/cosmo/density)$$\ell_H = c/H$$内の物質の総質量を計算すると

$$
M_H 
= \frac{4\pi}{3} \ell_H^3 \rho 
= \frac{4\pi}{3} \ell_H^3 \frac{3H^2}{8\pi G} 
= \frac{c^2}{2G} \ell_H \tag{2}
$$

のようになります。これをさらに変形すると

$$
\ell_H 
= \frac{2GM_H}{c^2} \tag{3}
$$

と書けます。これはHubble長内の物質によって決まる[Schwarzschild半径](/gr/schwarzschild)に等しいことを意味します。ある半径の領域内の全物質が形成するSchwarzschild半径は、$$M_H \propto \ell_H$$から、半径の3乗に比例して増加します。従って、Hubble長を境に大きなスケールではSchwarzschild半径が領域の半径より大きくなり物理的意味を持つようになります(一般相対論から、Schwarzschild半径が天体の半径よりも小さい場合は物理的意味を持ちません)。この場合、天体の重力場は一般相対論を用いて記述する必要があります。したがってHubble長以上のサイズを持った構造の進化を記述するには、一般相対論を用いる必要があります。言い換えれば、Hubble長は一般相対論的な効果が必要となるかどうかの目安を与えるスケールと考えることができます。

# プランクスケール

宇宙の全静止質量エネルギーは$$M_H c^2$$です。宇宙の質量が意味を持つためには、宇宙のエネルギーの不確定さがたかだか宇宙の全質量エネルギー程度、すなわち$$\Delta E < M_H c^2$$でなければなりません(そうでなければ、宇宙の存在が不確定の中に存在することになります)。Heisenbergの不確定性原理から、宇宙の時間の不確定さは

$$
\Delta t \geq \frac{\hbar}{2 M_H c^2} \tag{4}
$$

で与えられます。宇宙年齢の指標として、Hubble長まで光速度で宇宙が広がるまでにかかる時間尺度である[Hubble時間](/cosmo/density)を考えましょう。先程の議論と同様に宇宙年齢が意味を持つためには、量子力学的な宇宙の時間の不確定さが宇宙年齢以下でなければなりません。HUbble時間を書き換えると

$$
\frac{1}{H} 
= H^2 \underbrace{\left( \frac{c}{H} \right)^3}_{=\ell_H^3} \frac{1}{c^3} 
= \frac{H^2}{c^3} \frac{3 M_H}{4\pi} \frac{1}{\rho} 
\underbrace{=}_{(1)} \frac{2 G M_H }{c^3} 
\geq \frac{\hbar}{2 M_H c^2} \ \Longrightarrow \ 
M_H \geq \frac{1}{2} \sqrt{\frac{\hbar c}{G}} \tag{5}
$$

のようになります。ここで以下のPlanck質量を導入しましょう。

$$
M_\mathrm{pl} 
\equiv \sqrt{\frac{\hbar c}{G}} 
\sim 2.18 \times 10^{-5} [\mathrm{g}] 
\sim \frac{1.22 \times 10^{19} [\mathrm{GeV}]}{c^2} \tag{6}
$$

以上の式変形から、量子力学的な時間の不確定さが宇宙年齢以下であるためには、宇宙の全質量がPlanck質量より大きい必要があります。この条件を宇宙の平均密度に書き換えましょう。(5)式の途中より

$$
\frac{1}{H} 
\geq \frac{\hbar}{2M_H c^2} 
\underbrace{=}_{(3)} \frac{\hbar}{2c^2} \frac{2G}{c^2 \ell_H} \ \Longrightarrow \ 
H^2 \leq \frac{c^5}{\hbar G} 
$$

左辺は(1)式より

$$
\frac{8\pi G}{\rho} 
\leq \frac{c^5}{\hbar G} \ \Longrightarrow \ \rho c^2 
\leq \frac{3}{8\pi (\hbar c)^3} \left( \sqrt{\frac{\hbar c}{G} c^2} \right)^4 
= \frac{3}{8\pi (\hbar c)^3} (M_\mathrm{pl} c^2)^4 \tag{7}
$$

この式の最左辺を[黒体放射のエネルギー密度](/cosmo/eos)

$$
\rho_\gamma c^2 
= \frac{\pi^2}{15 (\hbar c)^3} (k_B T)^4 \tag{8}
$$

としてみましょう。すると宇宙の温度がPlanckエネルギー以下、すなわち$$k_B T < M_\mathrm{pl} c^2$$であると書き換えることができます。逆に宇宙の温度がPlanckエネルギー以上になると、宇宙年齢が量子力学的な不確定さ以下となります。このことは古典的な理論で進化をたどることができる限界が、宇宙の温度がPlanckエネルギーになるまでと考えることができます。  
ちなみにPlanck質量によるSchwarzschild半径をPlanck長と呼び

$$
\ell_\mathrm{pl} 
= \frac{2 G M_\mathrm{pl}}{c^2} 
\sim 10^{-33} [\mathrm{cm}] \tag{9}
$$

のように計算されます。またこれを光速度で割ったものをPlanck時間と呼び

$$
t_\mathrm{pl} 
= \frac{\ell_\mathrm{pl}}{c} 
\sim 10^{-44} [\mathrm{s}] \tag{10}
$$

程度となります。

{% include adsense.html %}