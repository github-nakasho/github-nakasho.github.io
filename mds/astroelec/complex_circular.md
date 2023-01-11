---
layout: default
title: 電磁波の複素数表示と円偏光の偏光ベクトル
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/complex_circular
nav_order: 105
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

# 電磁波の複素数表示と円偏光の偏光ベクトル

電磁波の進行方向の単位ベクトルを$$\mathbf{n}$$、そしてそれに互いに直交するように2つの偏光ベクトル$$\boldsymbol{\epsilon}_1, \boldsymbol{\epsilon}_2$$を定めます。

![](/assets/images/astroelec/complex_circular_01.png)

実部が実際の電磁波の成分を表すと約束して、電場成分を

$$
\mathbf{E} 
= a_1 e^{-i(\omega t - \mathbf{k} \cdot \mathbf{r} + \delta_1)} \boldsymbol{\epsilon}_1 + a_2 e^{-i(\omega t - \mathbf{k} \cdot \mathbf{r} + \delta_2)} \boldsymbol{\epsilon}_2
= (a_1 \boldsymbol{\epsilon}_1 + a_2 e^{-i\delta} \boldsymbol{\epsilon}_2) e^{-i(\omega t - \mathbf{k} \cdot \mathbf{r} + \delta_1)} \quad (\delta \equiv \delta_2 - \delta_1) \tag{1}
$$

のように書くことにします。
ただし$$a_1, a_2$$は実数です。

## 電場の振幅の2乗の計算

唐突ですが、$$\mathbf{E}$$と$$\mathbf{E}^\ast$$の内積を計算してみましょう。
(1)式より

$$
\mathbf{E} \cdot \mathbf{E}^\ast 
= (a_1 \boldsymbol{\epsilon}_1 + a_2 e^{-i\delta} \boldsymbol{\epsilon}_2) \cdot (a_1 \boldsymbol{\epsilon}_1 + a_2 e^{i\delta} \boldsymbol{\epsilon}_2)
= a_1^2 + a_2^2 \tag{2} 
$$

となります。
さらに(1)式の実部を見てみると

$$
\mathrm{Re} (\mathbf{E}) 
= a_1 \cos (\omega t - \mathbf{k} \cdot \mathbf{r} + \delta_1) \boldsymbol{\epsilon}_1 + a_2 \cos (\omega t - \mathbf{k} \cdot \mathbf{r} + \delta_2) \boldsymbol{\epsilon}_2 \tag{3}
$$

のようになります。
すると、この電磁波において[ストークスパラメータ $$I$$](/astroelec/stokes)は$$I = a_1^2 + a_2^2$$です。
よって電場の振幅の2乗が$$\mathbf{E} \cdot \mathbf{E}^\ast$$で計算できることがわかりました。

## 円偏光の偏光ベクトル

円偏光のとき、$$a_1 = a_2 = E_0$$です。
そして円偏光には右回り$$\delta = \pi/2$$のときと、左回り$$\delta = -\pi/2$$が存在します。
それぞれについて、電場がどのように書けるかを見てみましょう。
(1)式から、右回り円偏光の場合は

$$
\begin{align}
\mathbf{E} 
&= E_0 (\boldsymbol{\epsilon}_1 + e^{-i\pi/2} \boldsymbol{\epsilon}_2) e^{-i(\omega t - \mathbf{k} \cdot \mathbf{r} + \delta_1)} 
= E_0 (\boldsymbol{\epsilon}_1 - i \boldsymbol{\epsilon}_2) e^{-i(\omega t - \mathbf{k} \cdot \mathbf{r} + \delta_1)} \notag \\
&= \sqrt{2} E_0 e^{-i(\omega t - \mathbf{k} \cdot \mathbf{r} + \delta_1)} \boldsymbol{\epsilon}_- 
\quad \left( \boldsymbol{\epsilon}_- \equiv \frac{1}{\sqrt{2}} (\boldsymbol{\epsilon}_1 - i \boldsymbol{\epsilon}_2)\right) \tag{4}
\end{align}
$$

のように書くことができます。
同様に左回り円偏光の場合は

$$
\begin{align}
\mathbf{E} 
&= E_0 (\boldsymbol{\epsilon}_1 + e^{i\pi/2} \boldsymbol{\epsilon}_2) e^{-i(\omega t - \mathbf{k} \cdot \mathbf{r} + \delta_1)} 
= E_0 (\boldsymbol{\epsilon}_1 + i \boldsymbol{\epsilon}_2) e^{-i(\omega t - \mathbf{k} \cdot \mathbf{r} + \delta_1)} \notag \\
&= \sqrt{2} E_0 e^{-i(\omega t - \mathbf{k} \cdot \mathbf{r} + \delta_1)} \boldsymbol{\epsilon}_+ 
\quad \left( \boldsymbol{\epsilon}_+ \equiv \frac{1}{\sqrt{2}} (\boldsymbol{\epsilon}_1 + i \boldsymbol{\epsilon}_2)\right) \tag{5}
\end{align}
$$

のようになります。
途中で定義された$$\boldsymbol{\epsilon}_+, \boldsymbol{\epsilon}_-$$はそれぞれ、ヘリシティが正・負の円偏光を表す偏光ベクトルです。

## 円偏光ベクトルで成り立つ関係式

先ほど定義された$$\boldsymbol{\epsilon}_+, \boldsymbol{\epsilon}_-$$について成り立つ関係式を証明していきましょう。

$$
\boldsymbol{\epsilon}_+ \cdot \boldsymbol{\epsilon}_+^\ast 
= \frac{1}{2} (\boldsymbol{\epsilon}_1 + i \boldsymbol{\epsilon}_2) \cdot (\boldsymbol{\epsilon}_1 - i \boldsymbol{\epsilon}_2) 
= \frac{1}{2} (\boldsymbol{\epsilon}_1 \cdot \boldsymbol{\epsilon}_1 - i^2 \boldsymbol{\epsilon}_2 \cdot \boldsymbol{\epsilon}_2) 
= 1 \tag{6}
$$

$$
\boldsymbol{\epsilon}_- \cdot \boldsymbol{\epsilon}_-^\ast 
= 1 \tag{7}
$$

$$
\boldsymbol{\epsilon}_+ \cdot \boldsymbol{\epsilon}_-^\ast 
= \frac{1}{2} (\boldsymbol{\epsilon}_1 + i \boldsymbol{\epsilon}_2) \cdot (\boldsymbol{\epsilon}_1 + i \boldsymbol{\epsilon}_2) 
= \frac{1}{2} (\boldsymbol{\epsilon}_1 \cdot \boldsymbol{\epsilon}_1 + i^2 \boldsymbol{\epsilon}_2 \cdot \boldsymbol{\epsilon}_2) 
= \frac{1}{2} (1-1) 
= 0 \tag{8}
$$

$$
\boldsymbol{\epsilon}_- \cdot \boldsymbol{\epsilon}_+^\ast 
= 0 \tag{9}
$$

$$
\mathbf{n} \times \boldsymbol{\epsilon}_+^\ast 
= \frac{1}{\sqrt{2}} (\mathbf{n} \times \boldsymbol{\epsilon}_1 - i \mathbf{n} \times \boldsymbol{\epsilon}_2) 
= \frac{1}{\sqrt{2}} \{ \boldsymbol{\epsilon}_2 -i (-\boldsymbol{\epsilon}_1)\} 
= i \boldsymbol{\epsilon}_- 
= i \boldsymbol{\epsilon}_+^\ast \tag{10}
$$

$$
\mathbf{n} \times \boldsymbol{\epsilon}_-^\ast 
= \frac{1}{\sqrt{2}} (\mathbf{n} \times \boldsymbol{\epsilon}_1 + i \mathbf{n} \times \boldsymbol{\epsilon}_2) 
= \frac{1}{\sqrt{2}} \{ \boldsymbol{\epsilon}_2 + i(-\boldsymbol{\epsilon}_1)\} 
= -i \boldsymbol{\epsilon}_+ 
= -i \boldsymbol{\epsilon}_-^\ast \tag{11}
$$

## 円偏光ベクトルによる書き換え

任意の電磁波の電場成分は、直交する2つの直線偏光の重ね合わせとして(1)式のように書くことができるのでした。
これを右回り・左回り円偏光の重ね合わせとして、以下のように表現できることを証明しましょう。

$$
\mathbf{E} 
= (E_+ \boldsymbol{\epsilon}_+ + E_- \boldsymbol{\epsilon}_-) e^{-i(\omega t - \mathbf{k} \cdot \mathbf{r})} \tag{12}
$$

天下り的ですが、(12)式に$$\boldsymbol{\epsilon}_+, \boldsymbol{\epsilon}_-$$の定義を代入すると

$$
\begin{align}
\mathbf{E} 
&= \left\{ \frac{E_+}{\sqrt{2}} (\boldsymbol{\epsilon}_1 + i \boldsymbol{\epsilon}_2) + \frac{E_-}{\sqrt{2}} (\boldsymbol{\epsilon}_1 - i \boldsymbol{\epsilon}_2) \right\} e^{-i(\omega t - \mathbf{k} \cdot \mathbf{r})} \notag \\
&= \left\{ \frac{1}{\sqrt{2}} (E_+ + E_-) \boldsymbol{\epsilon}_1 + \frac{i}{\sqrt{2}} (E_+ - E_-) \boldsymbol{\epsilon}_2 \right\} e^{-i\omega t - \mathbf{k} \cdot \mathbf{r}} \tag{13}
\end{align}
$$

この式と(1)式を比較すると

$$
\begin{align}
&\frac{1}{\sqrt{2}} (E_+ + E_-) = a_1 e^{-i\delta_1}, \quad \frac{1}{\sqrt{2}} (E_+ - E_-) = a_2 e^{-i\delta_2} \notag \\
&\Longrightarrow \ 
E_+ = \frac{1}{\sqrt{2}} (a_1 e^{-i\delta_1} - i a_2 e^{-i\delta_2}), \quad E_- = \frac{1}{\sqrt{2}} (a_1 e^{-i\delta_1} + i a_2 e^{-i\delta_2}) \tag{14}
\end{align}
$$

のようになります。
よって(14)式のように$$E_+, E_-$$を取ることで、任意の電磁波を円偏光の重ね合わせて表現することができます。
例として、$$\boldsymbol{\epsilon}_1$$方向に直線偏光した電磁波を、右回り・左回りの2つの円偏光の重ね合わせで表現してみましょう。
$$\boldsymbol{\epsilon}_1$$方向に直線偏光した電磁波では、$$a_2=0$$より

$$
\frac{1}{\sqrt{2}} (E_+ - E_-) 
= 0 \ \Longrightarrow \ 
E_+ = E_- = E_0 \tag{15}
$$

です。
よってこれを(12)式に代入すれば

$$
\mathbf{E} 
= E_0 (\boldsymbol{\epsilon}_+ + \boldsymbol{\epsilon}_-) e^{-i(\omega t - \mathbf{k} \cdot \mathbf{r})} \tag{16}
$$

のようになります。
同じ振幅の右回り・左回り円偏光を同位相で重ね合わせると、下図のようにある方向の直線偏光になることを表しています。

![](/assets/images/astroelec/complex_circular_02.png)


{% include adsense.html %} 
