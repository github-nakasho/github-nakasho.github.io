---
layout: default
title: 宇宙年齢
parent: 宇宙論
math: mathjax3
permalink: /cosmo/age
nav_order: 16
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

# 宇宙年齢

これまでの知識を用いて、現在の宇宙の年齢を計算してみましょう。

$$
t 
= \int_0^t dt 
= \int_0^a \frac{dt}{da} da 
= \int_0^a \frac{da}{Ha} 
$$

最後の等号は[Hubbleパラメータ](/cosmo/hubble)より$$H = \left( \frac{da}{dt}\right) / a$$を用いました。[Friedmann方程式の変形](/cosmo/solve_friedmann)から

$$
H^2 
= H_0^2 (\Omega_{m, 0}(1+z)^3 + \Omega_{r, 0}(1+z)^4 + \Omega_{\mathrm{DE}, 0}(1+z)^{3(1+w_\mathrm{DE})} + \Omega_{K, 0}(1+z)^2) 
= H_0^2 E(z)^2 \tag{1}
$$

のように書けば

$$
t 
= \frac{1}{H_0} \int_0^a \frac{da}{a E(z)} 
\underbrace{=}_{1+z = 1/a} \frac{1}{H_0} \int_z^\infty \frac{dz}{(1+z) E(z)} \tag{2} 
$$

のように書かれます。以下ではそれぞれの宇宙論モデルにおける宇宙年齢を具体的に計算しましょう。

## アインシュタイン・ド・ジッター(EdS)宇宙の場合

$$\Omega_{m, 0} = 1, \Omega_{r, 0} = \Omega_{\mathrm{DE}, 0} =\Omega_{K, 0} =  0$$より(1), (2)式から

$$
t(z) 
= \frac{1}{H_0} \int_z^\infty \frac{dz}{(1+z)^{5/2}} 
= \frac{2}{3H_0} \frac{1}{(1+z)^{3/2}} \tag{3}
$$

$$H_0 \sim 67 [\mathrm{km/s/Mpc}]$$という値を用いると、$$z = 0$$で$$t = 2/(3H_0) \sim 10 [\mathrm{Gyr}]$$となります。しかし、球状星団の観測から10Gyr=100億歳以上の球状星団が発見されており、宇宙年齢との間に深刻な矛盾をもたらしてきました。現在では、この問題は宇宙定数の存在によって回避されると考えられています。

## ダークエネルギー($$\Lambda$$項)がある宇宙の場合

$$\Omega_{m, 0} + \Omega_\mathrm{DE, 0} = 1, \Omega_{K, 0} = \Omega_{r, 0} = 0$$の場合を考えましょう。またダークエネルギーが[ラムダ項(宇宙項)](/cosmo/const)と考え、$$w_\mathrm{DE} = w_\Lambda = -1, \Omega_\mathrm{DE} = \Omega_\Lambda$$のように書くと

$$
t (z) 
= \frac{1}{H_0} \int_z^\infty \frac{dz}{(1+z) \{ \Omega_{m, 0} (1+z)^3 + 1- \Omega_{m, 0} \}^{1/2}}
$$

$$\Omega_{m, 0} (1+z_\Lambda)^3 = \Omega_\Lambda$$となる赤方偏移を$$z_\Lambda$$のように書くと

$$
t (z) 
= \frac{1}{H_0 \Omega_{m, 0}^{1/2}} \int_z^\infty \frac{dz}{(1+z) \{ (1+z)^3 + (1+z_\Lambda)^3\}^{1/2}} 
= \frac{1}{H_0 \Omega_{m, 0}^{1/2}} \int_z^\infty \frac{dz}{(1+z)^{5/2} \left\{ 1 + \left( \frac{1+z_\Lambda}{1+z} \right)^3 \right\}^{1/2}} 
$$

ここで$$x^2 = \left( \frac{1+z_\Lambda}{1+z}\right)^3$$のように変数変換すると、$$\frac{dz}{1+z} = -\frac{2}{3x} dx$$より

$$
t(z) 
= - \frac{2}{3H_0 (1+z_\Lambda)^{3/2}} \underbrace{\int_{x(z)}^\infty \frac{dx}{\sqrt{1+x^2}}}_{積分公式} 
= \frac{2}{3H_0 (1+z_\Lambda)^{3/2}} \log (x + \sqrt{1+x^2}) \tag{4}
$$

$$z=0$$の場合、$$x = (1+z_\Lambda)^{3/2}$$、さらに$$1+ z_\Lambda = \left( \frac{1-\Omega_{m, 0}}{\Omega_{m, 0}}\right)^{1/3}$$より

$$
t(z) 
= \frac{2}{3 H_0 \sqrt{1- \Omega_{m, 0}}} \ln \left( \frac{1+\sqrt{1-\Omega_{m, 0}}}{\sqrt{\Omega_{m, 0}}}\right) \tag{5}
$$

(5)式に$$H_0 \sim 67 [\mathrm{km/s/Mpc}], \Omega_{m, 0} \sim 0.24$$を代入して大雑把に計算するとおよそ$$13 [\mathrm{Gyr}]$$となります。

## 宇宙初期かつ平坦な宇宙の場合

宇宙初期なので輻射の影響も考え、$$\Omega_{m, 0} +\Omega_{r, 0} = 1, \Omega_\Lambda = \Omega_K=0$$とします。また$$z \gg z_\Lambda$$とします。

すると

$$
t(z) 
= \frac{1}{H_0} \int_z^\infty \frac{dz}{(1+z) \{ \Omega_{m, 0}(1+z)^3 + \Omega_{r, 0} (1+z)^4 \}^{1/2} }
$$

物質と輻射のエネルギーが等しくなるときの赤方偏移を$$z_\mathrm{eq}$$とすると

$$
\Omega_{m, 0} (1+ z_\mathrm{eq})^3 
= \Omega_{r, 0} (1+ z_\mathrm{eq})^4 \ \Longrightarrow \ 
1 + z_\mathrm{eq} 
= \frac{\Omega_{m, 0}}{\Omega_{r, 0}}
$$

これを用いて式を整理しましょう。

$$
\begin{aligned}
t(z) 
&= \frac{1}{H_0} \int_{\frac{1+z}{1+z_\mathrm{eq}}}^\infty \frac{d\left( \frac{1+z}{1+z_\mathrm{eq}}\right)}{\frac{1+z}{1+z_\mathrm{eq}} \{ \Omega_{m, 0} (1+z_\mathrm{eq})^3 \left( \frac{1+z}{1+z_\mathrm{eq}}\right)^3 + \Omega_{r, 0} (1+z_\mathrm{eq})^4 \left( \frac{1+z}{1+z_\mathrm{eq}}\right)^4\}^{1/2} } \\
&= \frac{1}{H_0 (1+z_\mathrm{eq})^{3/2} \sqrt{\Omega_{m, 0}}} \int_x^\infty \frac{dx}{x^{5/2} (1+x)^{1/2}} 
\end{aligned}
$$

ここで$$y = \sqrt{x}$$と変数変換すると

$$
t(z) 
= \frac{2}{H_0 (1+z_\mathrm{eq})^{3/2} \sqrt{\Omega_{m, 0}}} \int_y^\infty \frac{dy}{y^4 (1+y^2)^{3/2}} 
= \cdots 
= \frac{2}{H_0 (1+z_\mathrm{eq})^{3/2} \sqrt{\Omega_{m, 0}}} \left\{ \frac{2}{3} + \frac{1}{3} \left( 1 + \frac{1+z_\mathrm{eq}}{1+z}\right)^{3/2} - \left( 1 + \frac{1+z_\mathrm{eq}}{1+z}\right)^{1/2}\right\} \tag{6}
$$

のように計算を進めることができます。ここで宇宙初期で$$1+z \gg 1+z_\mathrm{eq}$$として、輻射優勢宇宙を考えてみましょう。Taylor展開から

$$
\frac{2}{3} + \frac{1}{3} \left( 1 + \frac{1+z_\mathrm{eq}}{1+z}\right)^{3/2} - \left( 1 + \frac{1+z_\mathrm{eq}}{1+z}\right)^{1/2} 
\simeq \frac{1}{4} \left( \frac{1+z}{1+z_\mathrm{eq}}\right)^2 
$$

と計算されることと、[CMB温度への換算](/cosmo/energy_cons)として

$$
1 + z 
= \frac{T}{2.72 [\mathrm{K}]}
$$

のように書けることを用いると

$$
t(T)
= 23.9 \times 10^{18} \left( \frac{2.72 [\mathrm{K}]}{T} \right)^2 
\simeq 132 \left( \frac{k_B T}{0.1 [\mathrm{MeV}]}\right)^{-2} \ [\mathrm{s}] \tag{7}
$$

のようになります。このように表記しておけば、宇宙の中で生まれる素粒子や関連する現象と宇宙年齢を比較することができて便利です。

{% include adsense.html %}