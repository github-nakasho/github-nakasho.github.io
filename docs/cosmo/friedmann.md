---
layout: default
title: Friedmann方程式
parent: 宇宙論
math: mathjax3
permalink: /cosmo/friedmann
nav_order: 4
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

# フリードマン方程式

スケール因子$$a$$の満たす方程式を導出しましょう。

## アインシュタイン方程式

[アインシュタイン方程式](/gr/einstein_eq)より

$$
R_{\mu \nu} - \frac{1}{2} R g_{\mu \nu} = \frac{8\pi G}{c^4} T_{\mu \nu}
$$

ここで$$g_{\mu \nu}$$は[ロバートソン・ウォーカー計量](/cosmo/rw)より

$$
(g_{\mu \nu}) = \left(
\begin{array}{cccc}
-c^2 & & & \mathbf{0} \\
 & \frac{a^2}{1-Kr^2}& & \\
 & & a^2 r^2 & \\
 \mathbf{0} & & & a^2 r^2 \sin^2 \theta 
\end{array}
\right)
$$

です。右辺に現れた$$T_{\mu \nu}$$は完全流体のエネルギー運動量テンソルです。今は静止流体$$\mathbf{v}=\mathbf{0}$$を考えましょう。

$$
T_{\mu \nu} = (\rho c^2 + p)\frac{u^\mu}{c} \frac{u^\nu}{c} + p g_{\mu \nu}
$$

$$$u^\mu = (c, \mathbf{0}), u_\mu = (-c, \mathbf{0})$$より、これの縮約を考えると

$$
T^\mu_{\ \mu} = (\rho c^2 + p) \underbrace{\frac{u^\mu}{c} \frac{u_\mu}{c}}_{=-1} + p\underbrace{g^\mu_{\ \mu}}_{=4} = -\rho c^2 + 3p
$$

同様にアインシュタイン方程式の縮約を考えましょう。

$$
R^\mu_{\ \mu} - \frac{1}{2} R g^{\mu}_{\ \mu} = -R 
= \frac{8\pi G}{c^4} (-\rho c^2 + 3p)
$$

$$
\therefore \ R_{\mu \nu} = \frac{8\pi G}{c^4} (T_{\mu \nu} -\frac{1}{2} (-\rho c^2 + 3p) g_{\mu \nu})
$$

この式の$$R_{00}, R_{rr}$$成分を考えていきます。

## クリストッフェル記号

$$
\Gamma^r_{r0} = \frac{a_{, 0}}{a}, \ 
\Gamma^\theta_{\theta 0} = \frac{a_{, 0}}{a}, \ \Gamma^\varphi_{\varphi 0} = \frac{a_{, 0}}{a}, \ 
\Gamma^0_{rr} = \frac{a a_{, 0}}{1-Kr^2}, \ \Gamma^r_{rr} = \frac{Kr}{1-Kr^2}, \ 
\Gamma^\theta_{\theta r} = \frac{1}{r}, \ \Gamma^\varphi_{\varphi r} = \frac{1}{r}
$$

それ以外の成分は0です。

## リッチテンソル

$$
R_{00} = \partial_\alpha \Gamma^\alpha_{00} - \partial_0 \Gamma^\alpha_{\alpha 0} + \Gamma^\alpha_{\alpha \sigma} \Gamma^\sigma_{00} - \Gamma^\alpha_{0\sigma} \Gamma^\sigma_{\alpha 0}
$$

より

$$
R_{00} 
= -\frac{\partial }{\partial t} \left( 3 \frac{\dot{a}}{a} \right) -3 \left( \frac{\dot{a}}{a}\right)^2 
= -\frac{3}{c^2} \frac{\ddot{a}}{a}
$$


$$
R_{rr} = \partial_\alpha \Gamma^\alpha_{rr} - \partial_r \Gamma^\alpha_{\alpha r} + \Gamma^\alpha_{\alpha \sigma} \Gamma^\sigma_{rr} - \Gamma^\alpha_{r\sigma} \Gamma^\sigma_{\alpha r}
$$

より

$$
R_{rr} 
= \frac{1}{1-Kr^2} \frac{1}{c^2} (a\ddot{a} + 2 \dot{a}^2 + 2Kc^2)
$$

## フリードマン方程式

$$00$$成分より

$$
\frac{\ddot{a}}{a} = -\frac{4\pi G}{3} (\rho + \frac{3p}{c^2}) \tag{1}
$$

$$rr$$成分より

$$
\frac{1}{1-Kr^2} \frac{a^2}{c^2} (\frac{\ddot{a}}{a} + 2 \frac{\dot{a}^2}{a^2} + \frac{2Kc^2}{a^2}) = \frac{8\pi G}{c^4} \frac{a^2}{1-Kr^2} (\frac{1}{2}\rho c^2 -\frac{1}{2} p) \ \Longrightarrow \ 
\frac{\ddot{a}}{a} + \frac{2\dot{a}^2}{a^2} = -\frac{2K}{a^2} + \frac{8\pi G}{c^2} (\frac{1}{2} \rho c^2 - \frac{1}{2} p)
$$

(1)を用いて

$$
\left(\frac{\dot{a}}{a}\right)^2 \equiv H^2 
= \frac{8\pi G}{3} \rho - \frac{Kc^2}{a^2} \tag{2}
$$

この(1), (2)をフリードマン方程式と呼びます。

## 物理的意味

それぞれの方程式の物理的意味を考えましょう。

$$
(2) \ \Longrightarrow \ - \frac{Kc^2}{2} = \underbrace{\frac{1}{2} \dot{a}^2}_{運動エネルギー} \underbrace{- \frac{G}{a} \frac{4\pi}{3} a^3 \rho}_{重力ポテンシャルエネルギー}
$$

と変形できるので、これは宇宙の運動エネルギー保存と考えることもできます。  
さらに(2)式の両辺を微分すると

$$
\frac{2\dot{a}\ddot{a}}{a^2} - \frac{2\dot{a}^3}{a^3} = \frac{8\pi G}{3} \dot{\rho} + \frac{2Kc^2}{a^3} \dot{a}
$$

これを変形して

$$
\dot{\rho} = \frac{3}{8\pi G} (2\frac{\dot{a}}{a} \frac{\ddot{a}}{a} -2 \frac{\dot{a}^2}{a^2} \frac{\dot{a}}{a} -2\frac{Kc^2}{a^3} \dot{a})
$$

これはさらに以下のように整理されます。

$$
\dot{\rho} 
= -3\frac{\dot{a}}{a} (\rho + \frac{p}{c^2}) \ \Longrightarrow \ \frac{d}{dt} (c^2 \rho a^3) 
= -p\frac{d a^3}{dt}
$$

これは断熱変化を仮定したときの熱力学第一法則、すなわち内部エネルギー保存則を表しています。

{% include adsense.html %}