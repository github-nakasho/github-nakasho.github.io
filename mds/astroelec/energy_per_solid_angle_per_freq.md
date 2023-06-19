---
layout: default
title: 単位立体角・単位周波数あたりの放射エネルギー
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/energy_per_solid_angle_per_freq
nav_order: 10
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

# 輻射のスペクトル

ここでは輻射のスペクトルについての式をまとめています。

## 電磁場のフーリエ変換

電磁波$$E(t)$$のフーリエ変換を考えましょう。

$$
\hat{E}(\omega) 
= \frac{1}{2\pi} \int_{-\infty}^\infty E(t) e^{i\omega t} dt \tag{1}
$$

そしてこの逆変換は

$$
E(t) 
= \int_{-\infty}^\infty \hat{E}(\omega) e^{-i\omega t} d\omega \tag{2}
$$

です。
$$\hat{E} (\omega)$$は一般には複素数です。
しかし、実際に観測される量である$$E(t)$$は実数です。
このことから複素共役$$\hat{E}^\ast (\omega)$$を計算してみると

$$
\hat{E}^\ast (\omega) 
= \frac{1}{2\pi} \int_{-\infty}^\infty \underbrace{E^\ast (t)}_{=E(t)} e^{-i\omega t} dt 
= \hat{E}(- \omega) \tag{3}
$$

のようになります。

## 単位立体角・単位周波数あたりの放射エネルギー

単位時間・単位面積あたりの放射エネルギーは、[ポインティングベクトル](/astroelec/em_energy_momentum#%E9%9B%BB%E7%A3%81%E5%A0%B4%E3%81%AE%E3%82%A8%E3%83%8D%E3%83%AB%E3%82%AE%E3%83%BC%E3%81%A8%E3%82%A8%E3%83%8D%E3%83%AB%E3%82%AE%E3%83%BC%E6%B5%81%E6%9D%9F%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0%E3%83%99%E3%82%AF%E3%83%88%E3%83%AB)より

$$
\frac{dW}{dt dA} 
= \frac{c}{4\pi} E^2 (t) \tag{4}
$$

のように書かれます。
この両辺を時間で積分することで、単位面積あたりに通過する放射のエネルギーが求まります。

$$
\frac{dW}{dA} 
= \frac{c}{4\pi} \int_{-\infty}^\infty E^2 (t) dt \tag{5}
$$

ここでパーセバルの定理より

$$
\int_{-\infty}^\infty E^2 (t) dt 
= 2\pi \int_{-\infty}^\infty \vert \hat{E}(\omega) \vert^2 d\omega \tag{6}
$$

そして(3)式から

$$
\vert \hat{E} (\omega) \vert^2 
= \vert \hat{E} (-\omega) \vert^2 \tag{7} 
$$

が成り立つため、

$$
\int_{-\infty}^\infty E^2 (t) dt 
= 4\pi \int_{0}^\infty \vert \hat{E}(\omega) \vert^2 d\omega \tag{8}
$$

を得ます。
(5), (8)式より

$$
\frac{dW}{dA} 
= c \int_0^\infty \vert \hat{E} (\omega) \vert^2 d\omega d\omega \ \Longrightarrow \
\frac{dW}{dA d\omega} 
= c \vert \hat{E} (\omega) \vert^2 \tag{9}
$$

です。
放射源と観測者までの距離を$$R$$、立体角を$$\Omega$$とすれば、$$dA = R^2 d\Omega$$の関係より

$$
\frac{dW}{d\omega d\Omega} 
= c R^2 \vert \hat{E} (\omega) \vert^2 \tag{10}
$$
