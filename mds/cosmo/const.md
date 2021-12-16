---
layout: default
title: 宇宙項
parent: 宇宙論
math: mathjax3
permalink: /cosmo/const
nav_order: 6
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

# 宇宙項

フリードマン方程式にしたがって宇宙が進化すると、宇宙は減速しながら膨張し続けるか自重で潰れてしまいます。よって宇宙の始まりや終わりを仮定しなければならず、アインシュタインはこの考え方を受け入れることができませんでした。そこで物質の重力とちょうどバランスするような量の斥力が働くような項を導入し、宇宙の進化を食い止めようとしました。

## アインシュタイン方程式への追加

$$\nabla^\mu g_{\mu \nu} = 0$$より、定数$$\Lambda$$を用いて[アインシュタイン方程式](/gr/einstein_eq)を

$$
R_{\mu \nu} - \frac{1}{2} R + \Lambda g_{\mu \nu} 
= \frac{8\pi G}{c^4} T_{\mu \nu}
$$

のように変形しても、完全流体の条件式$$\nabla^\mu T_{\mu \nu} = 0$$が成り立ちます。$$\Lambda$$の項を**宇宙項**と呼びます。  
$$R$$は空間の曲率などを表現するものなので左辺に異物があるのは不自然です。よってこの項を右辺に持っていき、整理を行います。

$$
R_{\mu \nu} - \frac{1}{2} R
= \frac{8\pi G}{c^4} \left( T_{\mu \nu} - \frac{c^4 \Lambda}{8\pi G} g_{\mu \nu} \right) \equiv \tilde{T}_{\mu \nu}
$$

ここで

$$
\tilde{T}_{\mu \nu} 
= \left( \begin{array}{cc}
\rho c^2 + \frac{c^4 \Lambda }{8\pi G} & {\bf 0} \\
{\bf 0} & (p_m - \frac{c^4 \Lambda }{8\pi G}) g_{ij}
\end{array}
\right)
$$

このように、$$\Lambda$$項によって新しい物質が導入されたと考えます。そしてその物質はエネルギー密度

$$
\rho_\Lambda c^2 = \frac{c^4 \Lambda }{8\pi G}
$$

と負の圧力

$$
p_\Lambda = - \frac{c^4 \Lambda }{8\pi G} = - \rho_\Lambda c^2
$$

を持つような物質と見なします。

## フリードマン方程式の修正

これにより、フリードマン方程式は

$$
\frac{\ddot{a}}{a} = -\frac{4\pi G}{3} \left(\rho + \frac{3p}{c^2} \right) 
= -\frac{4\pi G}{3} \left(\rho_m + \rho_\Lambda + \frac{3(p_m + p_\Lambda )}{c^2} \right) 
$$

と修正されます。

{% include adsense.html %}
