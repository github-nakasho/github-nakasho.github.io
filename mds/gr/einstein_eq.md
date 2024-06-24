---
layout: default
title: Einstein方程式
parent: 一般相対性理論
math: mathjax3
permalink: /gr/einstein_eq
nav_order: 14
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

# アインシュタイン方程式

導出の途中で出てくる

$$
h_{00} = \frac{2\Phi}{c^2}
$$

は弱重力場でのニュートン方程式の導出(後日更新)でわかります。

## アインシュタインテンソルとエネルギー運動量テンソル

アインシュタインテンソルは$$\nabla_\alpha G^{\alpha \beta} = 0$$を満たします。また完全流体のエネルギー運動量テンソルも同様に$$\nabla_\alpha T^{\alpha \beta} = 0$$を満たすので、定数$$\kappa$$を用いて

$$
G^{\alpha \beta} = \kappa T^{\alpha \beta}
$$

と書くことがきます。これは物質が存在する(右辺)ことにより、空間の曲率が変化する(左辺)ことを意味するものです。

## 定数の決定

定数$$\kappa$$を求めるために、重力が弱い極限でのポアソン方程式

$$
\Delta \Phi = 4\pi G \rho
$$

と一致することを用います。弱い重力場において、メトリックが

$$
(g_{\mu \nu}) = \left( \begin{array}{cccc}
-(1+h_{00}) && && && {\bf 0} \\
&& 1+h && && \\
&& && 1+h && \\
{\bf 0} && && && 1+h
\end{array} \right)
$$

のようにミンコフスキーメトリックからの微小なズレとして表現されるとします。ここで$$\|h_{00} \| \ll 1, \| h \| \ll 1$$かつ$$\dot{h_{00}} = \dot{h} = 0$$です。  

クリストッフェル記号を計算するために、この逆行列を準備する必要があります。しかし

$$
\Gamma^\mu_{\alpha \beta} 
= \frac{1}{2} g^{\mu \sigma} (g_{\sigma \alpha, \beta} + g_{\sigma \beta, \alpha} - g_{\alpha \beta, \sigma})
$$

より、逆行列を詳細に求めたところで、結局$$h_{00}, h$$の高次の項が出現するだけです。よって必要な部分だけ計算を行うことにしましょう。

$$
g^{00} 
= \frac{1}{g_{00}} 
= - \frac{1}{1+h_{00}} 
\simeq - 1+h_{00}
$$

$$
\delta^j_i g^{ij} \simeq 1
$$

です。すると$$\Gamma \simeq O (h)$$より

$$
R^\alpha_{\gamma \mu \nu} 
= \partial_\mu \Gamma^\alpha_{\nu \gamma} - \partial_\nu \Gamma^\alpha_{\mu \gamma} + \underbrace{\Gamma^\alpha_{\mu \sigma} \Gamma^\sigma_{\gamma \nu}}_{O(h^2)} - \underbrace{\Gamma^\alpha_{\nu \sigma} \Gamma^\sigma_{\mu \gamma}}_{O(h^2)}
\simeq \partial_\mu \Gamma^\alpha_{\nu \gamma} - \partial_\nu \Gamma^\alpha_{\mu \gamma}
$$

$$
\Gamma^0_{00} = 0, \Gamma^0_{0i} = \frac{1}{2} g^{00} g_{00, i} = \frac{1}{2} h_{00, i}, \Gamma^i_{00} = \frac{1}{2} g^{ij} (-g_{00, j}) = \frac{1}{2} h_{00, i}
$$

より

$$
R^{0}_{i0j} 
= \partial_0 \Gamma^0_{ji} - \partial_j \Gamma^0_{0i} 
= - \frac{1}{2} h_{00, ij}
$$

$$
R^0_{ij0} = - R^0_{i0j} = \frac{1}{2} h_{00, ij}
$$

$$
R^i_{00j} = - \partial_j \Gamma^i_{00} = - \frac{1}{2} h_{00, ij}
$$

$$
R^0_{000} = 0
$$

$$
\begin{aligned}
R^{i}_{k \ell j} 
&= \partial_\ell \Gamma^i_{jk} -\partial_j \Gamma^i_{\ell k} 
= \partial_\ell \left\{ \frac{1}{2} \delta^{im} (\delta_{mj} h_{,k} + \delta_{mk} h_{,j} - \delta_{jk} h_{,m} )\right\} - \partial_j \left\{ \frac{1}{2} \delta^{im} (\delta_{m\ell} h_{,k} + \delta_{mk} h_{,\ell} - \delta_{\ell k} h_{,m} )\right\} \\
&= \frac{1}{2} (\delta^i_j h_{, k\ell} - \delta^{jk} \delta^{im} h_{, m\ell} -\delta^i_\ell h_{, kj}  + \delta^{\ell k} \delta^{im} h_{, mj})
\end{aligned}
$$

よって

$$
R_{k\ell} 
= R^\alpha_{k\alpha \ell} 
= R^0_{k0\ell} + R^{i}_{ki\ell} 
= -\frac{1}{2} h_{00, k\ell} - \frac{3}{2} h_{, k\ell} + \frac{1}{2} h_{,k\ell} + \frac{1}{2} h_{, k\ell} - \frac{1}{2} \delta^{k\ell} \Delta h 
= - \frac{1}{2} h_{00, k\ell} - \frac{1}{2} h_{, k\ell} - \frac{1}{2} \delta^{k\ell} \Delta h
$$

$$
R = g^{\mu \nu} R^\alpha_{\mu \alpha \nu} 
= g^{00} R^\alpha_{0\alpha 0} + g^{k\ell} R^0_{k0\ell} + g^{k\ell} R^i_{ki\ell} 
= -\frac{1}{2} \Delta h_{00} - \frac{1}{2} \Delta h_00 - 2 \Delta h 
= -\Delta h_{00} -2 \Delta h
$$

$$
R_{00} = R^0_{000} + R^i_{0i0} = \frac{1}{2} \Delta h_{00}
$$

$$i \neq j$$に対して

$$
G_{ij} 
= R_{ij} - \frac{1}{2} g_{ij} R 
= -\frac{1}{2}h_{00, ij} - \frac{1}{2} h_{, ij} = \kappa T_{ij}
$$

ここで$$u^\alpha = 0$$のように完全流体が静止しているとすると

$$
-\frac{1}{2} h_{00, ij} - \frac{1}{2} h_{, ij} 
= \kappa T_{ij} 
= 0 \ \Longrightarrow \ 
h_{00} = -h = \frac{2\Phi}{c^2}
$$

$$
\begin{aligned}
&\therefore \ G_{00} 
= R_{00} - \frac{1}{2} g_{00} R 
= \frac{1}{2} \Delta h_{00} + \frac{1}{2} (-\Delta h_{00} - 2\Delta h) 
= -\Delta h 
= \frac{2}{c^2} \Delta \Phi 
= \frac{8\pi G}{c^2} \rho 
= \kappa T^{00} = \kappa \rho c^2 \\
&\Longrightarrow \
\kappa = \frac{8\pi G}{c^4}
\end{aligned}
$$

{% include adsense.html %}

## アインシュタイン方程式

定数が求まったので、最終的な形は

$$
G^{\alpha \beta} 
= R^{\alpha \beta} - \frac{1}{2} Rg^{\alpha \beta} 
= \frac{8\pi G}{c^4} T^{\alpha \beta} \tag{1}
$$

となります。

## (コラム的な？): この宇宙は何次元？

アインシュタイン方程式(1)によると、物質が何もない真空中では常に

$$
G_{\mu \nu} 
= R_{\mu \nu} - \frac{1}{2} R g_{\mu \nu} 
= 0 \tag{2}
$$

となります。
この両辺に$$g^{\mu \nu}$$をかけて$$\mu, \nu$$で縮約をとると

$$
\underbrace{g^{\mu \nu} R_{\mu \nu}}_{=R} - \frac{1}{2} R g^{\mu \nu} g_{\mu \nu} 
= R \left( 1- \frac{1}{2} \delta_\mu^\mu \right)
= 0 \tag{3}
$$

もしこの宇宙が$$n$$次元の場合、添字は$$\mu = 1, 2, \dots, n$$をとるため、$$\delta_\mu^\mu = n$$となります。
すると$$n=4$$の場合には、時空の歪みを表す$$R$$は任意の値を取ることができます。
しかし$$n \neq 4$$では、常に$$R = 0$$でなければなりません。
これでは時空のさざなみと呼ばれる重力波や、ブラックホール周囲の時空の歪みが、この宇宙には存在しないことになります。
この議論から「この宇宙は4次元時空である」ということが見えてくるのです。  
ただしこの議論は一般相対論が適用できる範囲に限られます。
一般相対論でモデル化することができないような極限的な場合では、時空がより大きな次元になることもあるかもしれません。

{% include adsense.html %}