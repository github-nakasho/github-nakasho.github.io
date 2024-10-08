---
layout: default
title: 密度パラメータなど
parent: 宇宙論
math: mathjax3
permalink: /cosmo/density
nav_order: 5
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

# 臨界密度、密度パラメータ、ハッブル時間、ハッブル長

種々の定義量をご紹介します。

## 臨界密度と密度パラメータ

[フリードマン方程式](/cosmo/friedmann)より

$$
Kc^2 = \frac{8\pi G}{3} \rho a^2 - a^2 H^2 
= \frac{8\pi G}{3} \rho_0 - H_0^2 
= H_0^2 \left(\frac{\rho_0}{\rho_{\rm cr, 0}} -1 \right) \tag{1}
$$

ここで

$$
\rho_{\rm cr, 0} \equiv \frac{3H_0^2}{8\pi G} 
\simeq 8.44 \times 10^{-30} h_{0.67}^2 \ [{\rm g/cm^3}]
$$

を臨界密度(critical density)と呼びます。さらに$$\Omega_0 \equiv \rho_0/\rho_{\rm cr, 0}$$を密度パラメータと定義します。  
上式の

$$
h_{0.67} = \frac{H_0}{67{\rm km/s/Mpc}}
$$

はハッブル定数依存性を明示的に示すための変数です。  
(1)式より

$$
\Omega_0 = 1 \ \Longrightarrow \ K = 0 \ (\mathrm{flat}) \cdots
ずっと膨張(ずっと\dot{a}>0)
$$

$$
\Omega_0 < 1 \ \Longrightarrow \ K > 0 \ (\mathrm{closed}) \cdots 
\dot{a}=0となる時期がある
$$

$$
\Omega_0 > 1 \ \Longrightarrow \ K < 0 \ (\mathrm{open}) \cdots
ずっと膨張
$$

となることがわかります。

## ハッブル時間

ハッブル定数の逆数は宇宙年齢を与える良い目安となり、ハッブル時間(Hubble time)と呼ばれます。

$$
t_{H_0}\equiv
\frac{1}{H_0} = 4.6 \times 10^{17} h_{0.67}^{-1} [{\rm s}] \simeq 10^{10} h^{-1}_{0.67} [{\rm yr}]
$$

またハッブル時間は宇宙膨張によって宇宙の半径が変わったことが認識される目安を与える時間スケールです。逆を言えば、これより十分短い時間スケールであれば、宇宙膨張の効果は無視できると言って議論を進めても良いでしょう。

## ハッブル長

ハッブル時間の間に光が走ることができる距離をハッブル長(Hubble length)と呼びます。

$$
\ell_{H_0} 
\equiv ct_{H_0} 
= 1.38 \times 10^{28} h^{-1}_{0.67} [{\rm cm}]
\simeq 4 h^{-1}_{0.67} [{\rm Gpc}]
$$

これは現在の宇宙のサイズを与える目安や、宇宙の状態が変化する長さの指標となります。

{% include adsense.html %}