---
layout: default
title: 湯川型ポテンシャルの導出
parent: プラズマ物理学
math: mathjax3
permalink: /plasma/yukawa_pot
nav_order: 3
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

# 湯川型ポテンシャルの導出

[デバイ・ヒュッケルの理論](/plasma/debye_huckel)で出現した以下のポテンシャルを、もとの方程式から求めてみましょう。
ここでは$$\mu = 1/\lambda_D$$とした、以下の方程式の解を求めます。

$$
\left( \Delta - \mu^2 \right) \phi 
= - 4\pi q_0 \delta^3(\mathbf{r}) \tag{1}
$$

## フーリエ変換による方法

今回はフーリエ変換の方法を用いて解きます。
左辺の$$\phi$$の逆フーリエ変換を考えると

$$
(\Delta - \mu^2) \iiint_{-\infty}^\infty \hat{\phi}(\mathbf{k}) e^{i \mathbf{r} \cdot \mathbf{k}} d^3 \mathbf{k} 
= \iiint_{-\infty}^\infty \hat{\phi} (\mathbf{k}) (\Delta-\mu^2) e^{i \mathbf{r} \cdot \mathbf{k}} d^3 \mathbf{k} 
= \iiint_{-\infty}^\infty \hat{\phi} (\mathbf{k}) (-k^2-\mu^2) e^{i \mahtbf{r} \cdot \mathbf{k}} d^3 \mathbf{k} \tag{2}
$$

これと、右辺のデルタ関数の積分表示より

$$
\iiint_{-\infty}^\infty \hat{\phi} (\mathbf{k}) (-k^2-\mu^2) e^{i \mahtbf{r} \cdot \mathbf{k}} d^3 \mathbf{k} 
= - \frac{4\pi q_0}{(2\pi)^3} \iiint_{-\infty}^\infty e^{i \mathbf{r} \cdot \mathbf{k}} d^3 \mathbf{k} \tag{3}
$$

両辺を比較することで

$$
\hat{\phi} (\mathbf{k}) 
= \frac{q_0}{2\pi^2} \frac{1}{k^2 + \mu^2} \tag{4}
$$

を得ます。
逆フーリエ変換したものが求まったので、これをフーリエ変換すればそれが(1)式の解になります。
積分の取り方としては、$$\mathbf{r} \cdot \mathbf{k} = rk \cos \theta$$のように、$$\mathbf{r}$$からの偏角を用いた極座標設定にすると計算が便利です。

$$
\phi(\mathbf{r}) 
= \frac{q_0}{2\pi^2} \iiint_{-\infty}^\infty \frac{e^{i\mathbf{r} \cdot \mathbf{k}}}{k^2 + \mu^2} d^3 \mathbf{k} 
\underbrace{=}_{d^3 \mathbf{k}= k^2 \sin \theta dk d\theta d\varphi} \frac{q_0}{2\pi^2} \int_0^\infty dk \int_0^\pi \int_0^{2\pi} d\varphi e^{ikr \cos \theta} \frac{k^2}{k^2 + \mu^2} \sin \theta 
\underbrace{=}_{\nu = \cos \theta} \frac{q_0}{\pi} \int_0^\infty dk \int_{-1}^1 d\nu e^{irk\nu} \frac{k^2}{k^2 + \mu^2} 
= \frac{q_0}{\pi} \int_0^\infty \frac{k^2}{k^2 + \mu^2} \frac{e^{irk} - e^{-irk}}{irk} dk 
= \frac{2q_0}{\pi r} \int_0^\infty \frac{k \sin rk}{k^2 + \mu^2} dk \tag{5}  
$$

最後に出てきた被積分関数は偶関数であるため、以下のように変形することができます。

$$
\phi (\mathbf{r}) 
= \frac{q_0}{\pi r} \int_{-\infty}^\infty \frac{k \sin rk}{k^2 + \mu^2} dk 
= \frac{q_0}{2i \pi r} \int_{-\infty}^\infty \frac{k}{k^2 + \mu^2} (e^{irk} - e^{-irk}) dk \tag{6}
$$

## 複素平面上での積分

(6)式の積分を計算するために

$$
f(z) 
= \frac{z}{z^2 + \mu^2} e^{irz} \quad (z = x+ iy) \tag{7}
$$

を、次の複素数平面上の閉曲路で積分することを考えましょう。

{% include adsense.html %} 

