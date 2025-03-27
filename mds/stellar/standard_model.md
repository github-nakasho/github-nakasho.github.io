---
layout: default
title: 標準モデル
parent: 恒星物理学
math: mathjax3
permalink: /stellar/standard_model
nav_order: 18
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

# 標準モデル

理想気体ガス圧$$P_\mathrm{gas}$$と輻射圧$$P_\mathrm{rad}$$を考え、ガス圧と全圧の比を$$\beta \equiv P_\mathrm{gas} / P$$とします。
この$$\beta$$が恒星内部で一定であると仮定するモデルは、Eddingtonによって勢力的に研究されました。
これは恒星中で輻射によりエネルギーが運ばれる場合の粗い近似となっており、標準モデルと呼ばれています。
以下では、この標準モデルについて考えてみましょう。

## 全圧

ガス圧・輻射圧・全圧はそれぞれ

$$
P_\mathrm{gas} 
= n k_B T 
= \frac{\rho}{ \mu m_p} k_B T \tag{1}
$$

$$
P_\mathrm{rad} 
= \frac{1}{3} a T^4 \tag{2}
$$

$$
P 
= P_\mathrm{gas} + P_\mathrm{rad} \tag{3}
$$

で与えられます。
ここで$$\mu$$は平均分子量、そして[$$a$$は輻射定数](/stellar/black_body#輻射圧プランク関数の導出)です。
すると恒星内部の温度$$T$$は、$$\beta$$をパラメータとして

$$
\beta 
= \frac{P_\mathrm{gas}}{P} 
= \frac{\frac{k_B}{\mu m_p} \rho T}{P} \ \Longrightarrow \ 
T 
= \beta P \frac{\mu m_p}{k_B \rho} \tag{4}
$$

これにより、全圧$$P$$が

$$
\begin{align}
&P 
= \beta P + \frac{1}{3} a \beta^4 P^4 \left( \frac{\mu m_p}{k_B \rho} \right)^4 \ \Longrightarrow \
1-\beta  
= \frac{1}{3} a \beta^4 P^3 \left( \frac{\mu m_p}{k_B \rho} \right)^4 \notag \\
&\Longrightarrow \ 
P 
= \left\{ \left( \frac{k_B}{\mu m_p}\right)^4 \frac{3}{a} \frac{1-\beta}{\beta^3}\right\}^{1/3} \rho^{4/3} \tag{5}
\end{align}
$$

のように求まります。

## 恒星の全質量

(5)式は、[$$n = 3$$のポリトロープ関係](/stellar/polytrope_lane_emden)

$$
P = K \rho^{4/3} \tag{6}
$$

になっています。
(5), (6)式を比較することで

$$
K 
= \left\{ \left( \frac{k_B}{\mu m_p}\right)^4 \frac{3}{a} \frac{1-\beta}{\beta^3}\right\}^{1/3} \tag{7}
$$

これにより、[このガス球の全質量](/stellar/polytrope_lane_emden#半径と質量)が

$$
M 
= -4\pi \left\{ \frac{4K}{4\pi G}\right\}^{3/2} \xi_1^2 \left( \frac{d\theta}{d\xi} \right)_{\xi_1} 
= - \frac{4\pi}{(\pi G)^{3/2}} \left\{ \left( \frac{k_B}{\mu m_p}\right)^4 \frac{3}{a} \frac{1-\beta}{\beta^3}\right\}^{1/2} \xi_1^2 \left( \frac{d\theta}{d\xi}\right)_{\xi_1}\tag{8}
$$

[$$n=3$$のときのレーン・エムデン方程式のゼロ点での値より$$- \xi_1^2 \left( \frac{d\theta}{d\xi}\right)_{\xi_1} \sim 2.0$$](/stellar/polytrope_lane_emden#ポリトロープの関係式)を代入すれば

$$
M 
\simeq \frac{18}{\mu^2} \left( \frac{1-\beta}{\beta^4} \right)^{1/2} M_\odot \tag{9}
$$

のような、$$M, \mu, \beta$$の関係式を得ます。

## 太陽組成での$$\beta$$

ガスの組成が$$X = 0.7, Y = 0.28, Z = 0.02$$としましょう。
これは太陽組成として知られています。
すると[平均分子量](/stellar/element_composition#ガスの元素組成と平均分子量-1)は

$$
\frac{1}{\mu} 
\simeq 2 X + \frac{3}{4} Y + \frac{1}{2} Z \ \Longrightarrow \ 
\mu 
\simeq \frac{1}{2 X + \frac{3}{4} Y + \frac{1}{2} Z} 
\sim 0.62 \tag{10}
$$

のように求まります。
これを用いる前に、(9)式を整理しておきましょう。

$$
M^2 
= \left( \frac{18}{\mu^2}\right)^2 \frac{1-\beta}{\beta^4} \ \Longrightarrow \ 
\beta^4 + \left( \frac{\mu^2 M}{18} \right)^2 (\beta - 1) 
= 0 \tag{11}
$$

この式を解くことで、$$M$$に対する$$\beta$$の値を解くことができます。
数値的に解くことで以下の表の値を得ます。

| $$M \ [M_\odot]$$ | $$\beta$$ | 
| 1 | 0.99996|
| 10 | 0.96|
| 100 | 0.56|

## 中心部での密度と温度

[$$n=3$$のポリトロープ関係](/stellar/polytrope_lane_emden#半径と質量)より

$$
R 
= \sqrt{frac{K}{\pi G} \rho_c^{-2/3}} \xi_1 \ \Longrightarrow \ 
\rho_c 
= \frac{1}{R^3} \left( \frac{K}{\pi G}\right)^{3/2} \xi_1^3 \tag{12}
$$

$$n=3$$の場合、$$\xi_1 \sim 6.9$$です。
さらに、(12)式に$$R = 1 R_\odot, M = 1 M_\odot$$を代入することで、太陽の場合の中心密度と温度を計算してみましょう。
すると

$$
\rho_c 
\sim 76 \ [\mathrm{g/cm^3}], \quad 
T_c 
= \beta \underbrace{P_c}_{=K\rho_c^{4/3}} \frac{\mu m_p}{k_B \rho_c} 
= \beta K \frac{\mu m_p}{k_B} \rho_c^{1/3} 
\sim 1.2 \times 10^7 \ [\mathrm{K}] \tag{13}
$$

のように求まります。
ここで得られた値は、実際の太陽の値($$\rho_c \sim 1.6 \times 10^2 \ [\mathrm{g/cm^3}], T_c \sim 1.6 \times 10^7 \ [\mathrm{K}]$$)よりも少し低い値となっています。
これは、$$\beta$$を恒星内部で一様としている仮定や、そもそもポリトロープの仮定で記述できる限界を表しています。

{% include adsense.html %} 