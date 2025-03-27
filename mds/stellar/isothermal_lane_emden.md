---
layout: default
title: 等温度球に対するレーン・エムデン方程式
parent: 恒星物理学
math: mathjax3
permalink: /stellar/isothermal_lane_emden
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

# 等温度球に対するレーン・エムデン方程式

理想気体での等温度球の構造について考えましょう。
理想気体の状態方程式$$P = \frac{\rho}{\mu m_p} k_B T$$とポリトロープ関係$$P = K \rho^{1+\frac{1}{n}}$$を見比べてみると、これは$$n \rightarrow \infty$$に対応していることがわかります。
等温の理想気体の圧力は

$$
P 
= (\gamma - 1) C_v T \rho 
\equiv K' \rho \tag{4.3.1}
$$

のように表せます。
これを静水圧平衡の式に使いましょう。

$$
\frac{dP}{dr} 
= - \frac{d\psi}{dr} \rho \ \Longrightarrow \ 
\frac{1}{\rho}\frac{d\rho}{dr} 
= \frac{d\ln \rho}{dr} 
= - \frac{1}{K'} \frac{d\psi}{dr} \tag{4.3.2}
$$

この両辺を積分すると

$$
\ln \rho 
= - \frac{\psi}{K'} + C
$$

を得ます。
$$C$$は積分定数ですが、中心での密度とポテンシャルエネルギーをそれぞれ$$\rho_c, \psi_c$$と書くと

$$
C 
= \frac{\psi_c}{K'} + \ln \rho_c 
$$

となります。
ここで新しい変数$$\Theta$$を導入しましょう。

$$
\Theta 
\equiv \frac{\psi- \psi_c}{K'} \tag{4.3.3}
$$

これを用いると

$$
\rho 
= \rho_c e^{-\Theta} \tag{4.3.4}
$$

が得られます。
$$\Theta$$の定義式(4.3.3)式から、中心では$$\Theta = 0$$です。
(4.3.1), (4.3.4)式を、静水圧平衡の式を変形したもの$$\frac{d}{dr} \left( \frac{r^2}{\rho} \frac{dP}{dr} \right) = -4\pi G r^2 \rho$$に用いると

$$
\begin{align}
&K' \frac{d}{dr} \left( \frac{r^2}{\rho} \frac{d\rho}{dr} \right) 
= 4\pi G r^2 \rho \ \Longrightarrow \ 
K' \frac{d}{dr} \left( \frac{r^2}{\rho_c e^{-\Theta}} \rho_c e^{-\Theta} (-1)\frac{d\Theta}{dr} \right) 
= - 4\pi G r^2 \rho_c e^{-\Theta} \notag \\
&\Longrightarrow \ 
\frac{d}{dr} \left( r^2 \frac{d\Theta}{dr} \right) 
= \frac{4\pi G r^2 \rho_c}{K'} e^{-\Theta} \tag{4.3.5}
\end{align}
$$

のようになります。
(4.3.5)式の左辺から、無次元化された中心からの距離を

$$
\Xi 
= \sqrt{\frac{4\pi G \rho_c}{K'}} r \tag{4.3.6}
$$

を定義しましょう。
すると、等温度球に対するレーン・エムデン方程式

$$
\frac{1}{\Xi^2} \frac{d}{d\Xi} \left( \Xi^2 \frac{d \Theta}{d\Xi} \right) 
= e^{-\Theta} \tag{4.3.7}
$$

を得ます。  
境界条件は、中心($$\Xi = 0$$)で$$\Theta=0$$、そして中心で力が働かない条件から$$\frac{d\Theta}{d\Xi} = 0$$で与えられます。
(4.3.7)式の中心付近での解は、$$\Xi = 0$$での展開より

$$
\Theta 
= \frac{1}{6} \Xi^2 - \frac{1}{120} \Xi^4 + \frac{1}{1890}\Xi^6 + \cdots \tag{4.3.8}
$$

$$
\rho 
\propto e^{-\Theta} 
= 1 - \frac{1}{6} \Xi^2 + \frac{1}{45} \Xi^4 + \cdots \tag{4.3.9}
$$

です。  
一方、中心から離れたところ$$\Xi \gg 1$$での(4.3.7)式の解を考えてみましょう。
$$\Xi \rightarrow \infty$$で$$\rho \rightarrow 0$$となるため、$$C, \alpha$$を正の定数として

$$
e^{-\Theta} 
= C \Xi^{-\alpha} \quad (\Theta 
= -\ln C + \alpha \ln \Xi) \tag{4.3.10}
$$

の形で、その振る舞いを見てみることにしましょう。
これを(4.3.7)式に代入すると

$$
C\Xi^{-\alpha} 
= \frac{1}{\Xi^2} \frac{d}{d\Xi} (\alpha \Xi) 
= \frac{\alpha}{\Xi^2}
$$

となります。
両辺を比較すると、$$C = \alpha = 2$$であれば、(4.3.10)式が$$\Xi \gg 1$$での(4.3.7)式の解となっていることがわかります。
これは、中心から十分離れたところで

$$
\rho 
\propto \frac{1}{r^2}
$$

となることを表しています。
したがって、等温度球に境界は存在せず、$$\int_0^\infty 4\pi r^2 \rho dr$$により計算される全体の質量も無限大になります。

{% include adsense.html %} 