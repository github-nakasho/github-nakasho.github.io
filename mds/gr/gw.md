---
layout: default
title: 重力波
parent: 一般相対性理論
math: mathjax3
permalink: /gr/gw
nav_order: 17
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

# 重力波

アインシュタイン方程式から予言されるものです。最終的に、ある方向に光速$$c$$で伝搬する波動方程式を求めます。

## 計量テンソル

時空に摂動が加わり、計量テンソルが

$$
(g_{\mu \nu}) = \left( \begin{array}{cccc}
-1 && && && {\bf 0} \\
&& 1+E_+ && && \\
&& && 1-E+ && \\
{\bf 0} && && && 1
\end{array} \right) , \ 
(g^{\mu \nu}) = \left( \begin{array}{cccc}
-1 && && && {\bf 0} \\
&& 1 && && \\
&& && 1 && \\
{\bf 0} && && && 1
\end{array} \right)
$$

のように変化したとしましょう。ここで摂動は$$E_+ = \hat{E}_+ e^{i(\omega t -kz)}$$のように$$z$$方向に伝わる波動の形をしているとします。

## クリストッフェル記号の計算

$$
\Gamma^\mu_{\alpha \beta} 
= \frac{1}{2} g^{\mu \gamma} (g_{\gamma \alpha, \beta}+ g_{\gamma \beta, \alpha}- g_{\alpha \beta, \gamma})
$$

より

$$
\Gamma^0_{0 \beta} 
= \frac{1}{2} g^{00} (g_{00, \beta}+ g_{0 \beta, 0}- g_{0 \beta, 0}) 
= 0
$$

$$
\Gamma^0_{1 1} 
= \frac{1}{2} g^{00} (g_{01,1}+ g_{0 1, 1}- g_{11, 0}) 
= -\frac{1}{2} g^{00} g_{11, 0} 
= \frac{1}{2} E_{+, 0}
$$

$$
\Gamma^0_{11} 
= - \frac{1}{2} g^{00} g_{22, 0} 
= - \frac{1}{2} E_{+, 0}
$$

$$
\Gamma^0_{33} = 0
$$

$$
\Gamma^0_{ij} = 0 \ (i \neq j)
$$

$$
\Gamma^1_{0 0} 
= \frac{1}{2} g^{11} (g_{10, 0}+ g_{10, 0}- g_{00, 1}) 
= 0
$$

$$
\Gamma^1_{1 0} 
= \frac{1}{2} g^{11} (g_{11, 0}+ g_{10, 1}- g_{10, 1}) 
= \frac{1}{2}g^{11} g_{11, 0} 
= \frac{1}{2} E_{+, 0}
$$

$$
\Gamma^1_{11} = \Gamma^1_{12} = 0
$$

$$
\Gamma^1_{13} = \frac{1}{2} g^{11} g_{11,3} 
= \frac{1}{2} E_{+, 3}
$$

$$
\Gamma^1_{20} 
= \Gamma^1_{22} 
= \Gamma^1_{23} 
= 0
$$

$$
\Gamma^1_{30} = \Gamma^1_{33} = 0
$$

$$
\Gamma^2_{00} = \Gamma^2_{10} = \Gamma^2_{30} 
= \Gamma^2_{11} = \Gamma^2_{12} = \Gamma^2_{13} = 0
$$

$$
\Gamma^2_{20} 
= \frac{1}{2} g^{22}g_{22,0} 
= -\frac{1}{2} E_{+, 0}
$$

$$
\Gamma^2_{22} = 0
$$

$$
\Gamma^2_{23} = \frac{1}{2} g^{22} g_{22, 3} = - \frac{1}{2} E_{+, 3}
$$

$$
\Gamma^3_{00} = \Gamma^3_{10} = \Gamma^3_{20} 
= \Gamma^3_{30} = \Gamma^3_{3i} = 0
$$

$$
\Gamma^3_{11} = - \frac{1}{2} g^{33} g_{11, 3} 
= -\frac{1}{2} E_{+, 3}
$$

$$
\Gamma^3_{12} = \Gamma^3_{13} = 0 
$$

$$
\Gamma^3_{22} = -\frac{1}{2} g^{33} g_{22, 3} 
= \frac{1}{2} E_{+, 3}
$$

$$
\Gamma^3_{23} = \Gamma^3_{33} = 0  
$$

## リッチテンソルの計算

以上より

$$
R_{00} = \Gamma^\mu_{00, \mu} - \Gamma^\mu_{0\mu, 0} 
= -\frac{1}{2} E_{+,00} + \frac{1}{2} E_{+, 00}
= 0
$$

$$
R_{11} = \Gamma^\mu_{11, \mu} - \Gamma^\mu_{1\mu, 1} 
= \frac{1}{2} E_{+, 00} - \frac{1}{2} E_{+, 33}  
$$

$$
R_{22} = \Gamma^\mu_{22, \mu} - \Gamma^\mu_{2\mu, 2} 
= -\frac{1}{2} E_{+, 00} + \frac{1}{2} E_{+, 33}  
$$

$$
R_{33} = \Gamma^\mu_{33, \mu} - \Gamma^\mu_{3\mu, 3} 
= - \frac{1}{2} E_{+, 33} + \frac{1}{2} E_{+, 33} = 0  
$$

$$
R = g^{\mu \nu} R_{\mu \nu} = R^\mu_{\ \mu} = 0
$$

## アインシュタイン方程式から波動方程式の導出

これらより、アインシュタインテンソルは

$$
G_{11} = R_{11} - \frac{1}{2} g_{11} R = \frac{1}{2} E_{+, 00} - \frac{1}{2} E_{+, 33}
$$

今、物質は存在しない真空中を考えると、$$T^{\mu \nu} = 0$$よりアインシュタイン方程式は

$$
\left( \frac{1}{c^2} \frac{\partial^2}{\partial t^2} -\frac{\partial^2}{\partial z^2} \right) E_{+} 
= 0
$$

これは光速度$$c$$で真空中を伝播する波を表す波動方程式です。真空中を光速度$$c$$で伝搬する時空の摂動を**重力波**と呼びます。

## 考察

重力波ではリッチスカラーは$$R=0$$となります。すなわち、重力波はスカラー曲率を伴わない、**ベクトル揺らぎかテンソル揺らぎ**であることを示唆しています。

{% include adsense.html %}
