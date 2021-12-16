---
layout: default
title: Synchrotron Self-Absorption
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/ssa
nav_order: 30
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

# シンクロトロン自己吸収

## Einstein係数とEinstein関係式

自発放射(spontaneous emission)による準位$$2 \rightarrow 1$$の遷移確率を$$A_{21}$$、吸収(absorption)による準位$$1 \rightarrow 2$$の遷移確率を表す係数を$$B_{12}$$、そして外部から入射した光子の誘発による放射(stimulated emission)による準位$$2 \rightarrow 1$$の遷移確率を表す係数を$$B_{21}$$とします。Einstein関係式は

$$
g_1 B_{12} 
= g_2 B_{21} \tag{1}
$$

$$
A_{21} 
= \frac{2h\nu^3}{c^2} B_{21} \tag{2}
$$

です。$$g_1, g_2$$はそれぞれの準位における統計的重率(縮退度)です。詳細な導出は以下のリンクをご覧ください。

[恒星大気の物理学、ガスの状態と光の吸収・発光係数](/atmos/state_of_gas)

## シンクロトロン自己吸収 (Synchtotron Self-Absorption)

この現象は文字通り、Synchrotron放射を出すガス自身がSynchrotron放射の光子を吸収することによって放射スペクトルが変形するものです。以下ではその吸収係数及びそのガスの源泉関数(souce function)を求めましょう。ここで電子の放射・吸収は等方的で、磁場の方向もランダムとします。また電子の分布も等方的であるとします。

### 吸収係数

準位1, 2にいる電子数をそれぞれ$$n_1, n_2$$とすると、吸収係数$$\alpha_\nu$$は、(準位1にいる電子が$$h\nu$$の光子を吸収して準位2に遷移する分)-(準位2にいる電子が$$h\nu$$の光子に誘導されて準位1に遷移する分)の電子によって吸収が起こるので

$$
\alpha_\nu 
= \frac{h\nu}{4\pi} n_1 B_{12} \phi (\nu) - \frac{h\nu}{4\pi} n_2 B_{21} \phi(\nu)
= \frac{h\nu}{4\pi} (n_1 B_{12}-n_2 B_{21}) \phi(\nu)
$$

と書けます。ここで$$\phi(\nu)$$はline profile functionです。今、電子はSynchrotron放射を出すような自由電子の集まりを考えているので、電子に束縛されているときのように決まったエネルギー準位があるわけではありません。よって吸収係数は

$$
\alpha_\nu 
= \frac{h\nu}{4\pi} \sum_{E_1} \sum_{E_2} (n(E_1)B_{12}-n(E_2)B_{21}) \phi_{21} (\nu) \tag{3}
$$

のように書くほうが正しいでしょう。ただし、$$h\nu$$の光子の吸収を考えているため

$$
E_1 = E_2 - h\nu \tag{4}
$$

という条件を満たす必要があります。Synchrotron放射を「磁場の周りを運動する、$$E_2$$のエネルギーを持つ電子の自発的放射によるもの」と考えると、その電子による放射は

$$
P_e (\nu, E_2) 
= h\nu \sum_{E_1} A_{21} \phi_{21} (\nu) 
\underbrace{=}_{(2)} \frac{2h^2 \nu^4}{c^2} \sum_{E_1} B_{21} \phi_{21} (\nu) \tag{5}
$$

自由電子を考えているので、統計的重率は2つのエネルギー準位で等しいと考えて良いでしょう($$g_1 = g_2$$)。これより

$$
\begin{aligned}
(\mathrm{first \ term \ of \ (3)}) 
&= \frac{h\nu}{4\pi} \sum_{E_1} \sum_{E_2} n(E_1) B_{12} \phi_{21} (\nu) 
\underbrace{=}_{(1), (4)} \frac{h\nu}{4\pi} \sum_{E_2} n(E_2-h\nu) \sum_{E_1} B_{21} \phi_{21} (\nu) \\
&\underbrace{=}_{(5)} \frac{c^2}{8\pi h\nu^3} \sum_{E_2} n(E_2-h\nu) P_e(\nu, E_2)
\end{aligned}
$$

$$
(\mathrm{second \ term \ of \ (3)}) 
= -\frac{h\nu}{4\pi} \sum_{E_1} \sum_{E_2} n(E_2) B_{21} \phi_{21} (\nu) 
\underbrace{=}_{(5)} - \frac{c^2}{8\pi h\nu^3} \sum_{E_2} n(E_2) P_e(\nu, E_2)  
$$

以上より

$$
\alpha_\nu 
= \frac{c^2}{8\pi h\nu^3} \sum_{E_2}(n(E_2-h\nu)-n(E_2)) P_e(\nu, E_2)
$$

同じエネルギー$$E_2$$を持つ電子であっても、運動量の向きが違うこともあります。よってこの和は運動量で行うことが正しいでしょう。運動量空間での電子の分布関数を$$f(\mathbf{p}_2)$$とおくと

$$
\alpha_\nu 
= \frac{c^2}{8\pi h\nu^3} \sum_{\mathbf{p}_2}(n(\mathbf{p}_2^\ast)-n(\mathbf{p}_2)) P_e(\nu, \mathbf{p}_2)
$$

$$\mathbf{p}_2^\ast$$は$$E_2-h\nu$$に対応する運動量ベクトルです。Synchrotron放射を出す電子が超相対論的であるとすると

$$
E_2 
= \sqrt{m_e^2 c^4 + p_2^2c^2} 
\simeq p_2 c \ \Longrightarrow \ 
dE_2
= cdp_2 \tag{6}
$$

電子の分布は等方的との仮定から

$$
f(\mathbf{p}_2) d^3 \mathbf{p}_2 
= 4\pi p_2^2 f(p_2) dp_2 
= n(E_2) dE_2 \ \Longrightarrow \ 
f(p_2) 
= \frac{n(E_2)}{4\pi p_2^2} \frac{dE_2}{dp_2} 
\underbrace{=}_{(6)} \frac{c^3}{4 \pi} \frac{n(E_2)}{E_2^2} 
$$

として、運動量の和を積分に書き直しましょう。

$$
\begin{aligned}
\alpha_\nu 
&= \frac{c^2}{8\pi h\nu^3} \int_0^\infty \frac{c^3}{4\pi} \left( \frac{n(E_2-h\nu)}{(E_2-h\nu)^2}-\frac{n(E_2)}{E_2^2}\right) P_e (\nu, E_2) 4\pi pi_2^2 dp_2 \\
&\underbrace{=}_{(6)} \frac{c^2}{8\pi h\nu^3} \int_0^\infty \left( \frac{n(E_2-h\nu)}{(E_2-h\nu)^2}-\frac{n(E_2)}{E_2^2}\right) P_e (\nu, E_2) dE_2
\end{aligned}
$$

超相対論的なので$$E_2 \gg h\nu$$として、被積分関数の第一項を$$h\nu$$の1次までTaylor展開すると

$$
\begin{aligned}
\alpha_\nu 
&= \frac{c^2}{8\pi h\nu^3} \int_0^\infty \left\{ \frac{n(E_2)}{E_2^2}+(-h\nu) \frac{d}{dE_2} \left( \frac{n(E_2)}{E_2^2}\right) - \frac{n(E_2)}{E_2^2} \right\} P_e(\nu, E_2) dE_2 \\
&= -\frac{c^2}{8\pi \nu^2} \int_0^\infty \frac{d}{dE_2} \left( \frac{n(E_2)}{E_2^2} \right) P_e(\nu, E_2) dE_2
\end{aligned}
$$

電子のエネルギー分布として、$$n(E_2)dE_2 = N_0 E_2^{-p} dE_2$$のようなべき乗分布を仮定すると

$$
\frac{d}{dE_2} \left( \frac{n(E_2)}{E_2^2} \right) 
= \frac{d}{dE_2} (N_0 E_2^{-(p+2)}) 
= -(p+2) N_0 E_2^{-(p+2)} E_2^{-1} 
= -(p+2) \frac{n(E_2)}{E_2}
$$

よって

$$
\alpha_\nu 
= \frac{c^2}{8\pi \nu^2} (p+2) \int_0^\infty \frac{n(E_2)}{E_2} P_e(\nu, E_2) dE_2
$$

ここで、1個の電子からのSynchrotron放射のスペクトル式は

$$
P_e(\nu) d\nu 
= P_e(\omega) d\omega 
= 2 \pi P_e(\omega) d\nu \ \Longrightarrow \ 
P_e(\nu) 
= \frac{\sqrt{3}e^3 B}{m_e c^2} F(\chi_0) \quad
\left(\chi_0 \equiv \frac{2m_e c \omega}{3eB} \gamma^{-2} 
= \frac{4\pi m_e c\nu}{3eB} \gamma^{-2} \right)
$$

と書かれるのでした。また

$$
E_2 
= \sqrt{m_e^2 c^4 + p_2^2 c^2} 
= \sqrt{m_e^2 c^4 + m_e^2 \gamma^2 v_2^2 c^2} 
\underbrace{=}_{\beta=v_2/c} m_e c^2 \sqrt{1+\gamma^2 \beta^2}
=m_e \gamma c^2 \ \Longrightarrow \ dE_2 
= m_e c^2 d\gamma
$$

より

$$
\alpha_\nu 
= \frac{c^2}{8\pi \nu^2} (p+2) \int_0^\infty N_0(m_e c^2 \gamma)^{-(p+1)} \frac{\sqrt{3}e^3 B}{m_e c^2} F(\chi_0) m_e c^2 d\gamma 
= \frac{\sqrt{3} N_0 c^2 e^3 B(p+2)}{8\pi \nu^2 (m_e c^2)^{p+1}} \int_0^\infty \gamma^{-(p+1)}F(\chi_0) d\gamma 
$$

$$\chi_0$$の定義より

$$
\gamma 
= \left( \frac{4\pi m_e c\nu}{3eB} \right)^{1/2} \chi_0^{-1/2} \ \Longrightarrow \ 
d\gamma 
= -\frac{1}{2} \left( \frac{4\pi m_e c\nu}{3eB} \right)^{1/2} \chi_0^{-3/2} d\chi_0
$$

よって$$\alpha_\nu$$は

$$
\begin{aligned}
\alpha_\nu 
&= \frac{\sqrt{3}N_0 c^2 e^3 B(p+2)}{8\pi (m_ec^2)^{p+1}\nu^2} \left( \frac{4\pi m_e c\nu}{3eB}\right)^{-\frac{p+1}{2}} \left( \frac{4\pi m_e c\nu}{3eB}\right)^{-1/2} \left( -\frac{1}{2}\right) \int_\infty^0 \chi_0^{\frac{p+1}{2}} F(\chi_0) \chi_0^{-3/2} d\chi_0 \\
&= \frac{\sqrt{3}N_0 c^2 e^3 B(p+2)}{16\pi (m_ec^2)^{p+1}\nu^2} \left( \frac{4\pi m_e c\nu}{3eB}\right)^{-p/2} \underbrace{\int_0^\infty \chi_0^{\frac{p}{2}-1} F(\chi_0) d\chi_0}_{\mathrm{formula}} \\
&= \frac{\sqrt{3}N_0 c^2 e^3 B(p+2)}{16\pi (m_ec^2)^{p+1}\nu^2} \left( \frac{4\pi m_e c\nu}{3eB}\right)^{-p/2} \frac{2^{\frac{p}{2}-1+1}}{\frac{p}{2}-1+2} \Gamma \left( \frac{\frac{p}{2}-1}{2} + \frac{7}{3}\right) \Gamma \left( \frac{\frac{p}{2}-1}{2} + \frac{2}{3}\right) \\
&= \frac{\sqrt{3}N_0 e^3}{8\pi m_e} \left( \frac{3e}{2\pi m_e^3 c^5}\right)^{p/2} B^{\frac{p}{2}+1} \nu^{-\frac{p+4}{2}} \Gamma \left( \frac{3p+22}{12}\right)\Gamma \left( \frac{3p+2}{12}\right)
\end{aligned}
$$

### 源泉関数

よって、べき乗分布のときのSynchtotron放射スペクトル

$$
P_\mathrm{tot} 
= \frac{\sqrt{3}e^3 N_0 B \gamma_0^{p-1}}{8\pi^2 m_e c^2 (p+1)} \left( \frac{m_e c\omega}{3eB}\right)^{-\frac{p-1}{2}} \Gamma\left( \frac{p}{4} + \frac{19}{12}\right)\Gamma\left( \frac{p}{4} -\frac{1}{12}\right)
$$

と合わせて、源泉関数は

$$
S_\nu 
= \frac{j_\nu}{\alpha_\nu} 
= \frac{P_\mathrm{tot}}{4\pi \alpha_\nu} 
\propto \frac{\nu^{-\frac{p-1}{2} B^{\frac{p+1}{2}}}}{B^{\frac{p+1}{2}} \nu^{-\frac{p+4}{2}}} 
\propto B^{-1/2} \nu^{5/2} \tag{7}
$$

となります。よって、Synchrotron放射を出している領域が光学的に厚い(optically thick)の場合には、スペクトルが$$\nu^{5/2}$$に比例する形になります。

# 参考文献

* [1] Rybicki & Lightman, "Radiative Processes in Astrophysics"
* [2] Longair, "High Energy Astrophysics"

{% include adsense.html %}
