---
layout: default
title: Kerr BH
parent: 一般相対性理論
math: mathjax3
permalink: /gr/kerr
nav_order: 31
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

# カー・ブラックホール時空を(厳密性は省いて)求める

ここでは$$z$$軸を回転軸として自転している、Kerrメトリックの導出方法について記述します。

タイトルから分かる通り、数学的な厳密性は保証されていません。ご注意ください。
{: .label .label-yellow }

## ミンコフスキー時空のボイヤー・リンキスト座標表現

まずはMinkowski時空を考えます。

$$
ds^2 
= -c^2 dt^2 + dx^2 + dy^2 + dz^2 \tag{1}
$$

これを以下のような楕円体の座標(Boyer-Lindquist座標)に変換しましょう。

$$
\left\{
\begin{array}{l}
x = \sqrt{r^2 + a^2} \sin \theta \cos \varphi \\
y = \sqrt{r^2 + a^2} \sin \theta \sin \varphi \\
z = r \cos \varphi
\end{array}
\right. \tag{2}
$$

ここで$$a$$は定数です。すると

$$
\left\{
\begin{array}{l}
dx = \frac{r}{(r^2 + a^2)^{3/2}} \sin \theta \cos \varphi dr + (r^2 + a^2)^{1/2} \cos \theta \cos \varphi d\theta + (r^2 + a^2)^{1/2} \sin \theta (-\sin \varphi) d\varphi\\
dy = \frac{r}{(r^2 + a^2)^{3/2}} \sin \theta \sin \varphi dr + (r^2 + a^2)^{1/2} \cos \theta \sin \varphi d\theta + (r^2 + a^2)^{1/2} \sin \theta \cos \varphi d\varphi\\
dz = \cos \theta dr - r \sin \theta d\theta
\end{array}
\right. \tag{3}
$$

これらより

$$
dx^2 + dy^2 + dz^2 
= \frac{\rho^2}{r^2 + a^2} dr^2 + \rho^2 d\theta^2 + \rho^2 \sin^2 \theta d\varphi^2 \tag{4}
$$

ここで$$\rho^2 \equiv r^2 + a^2 \cos^2 \theta$$です。(1)式と合わせると、このままでは$$g_{tt} g_{rr}=-1$$のようにならずに、見通しが悪いことがわかります(Minkowskiメトリックや[Schwarzschildメトリック](/gr/schwarzschild)を参照)。よって、これをさらに以下のように変形します。

$$
ds^2 
= -B (cdt - a \sin^2 \theta d\varphi)^2 + C \{ (r^2 + a^2) d\varphi - a c dt\}^2 + \frac{\rho^2}{r^2 + a^2} dr^2 + \rho^2 d\theta^2 \tag{5}
$$

先程の議論から、$$B=\frac{r^2 + a^2}{\rho^2}$$となるように$$C$$を定めると、$$C = \frac{\sin^2 \theta}{\rho^2}$$となります。よって

$$
ds^2 = - \frac{r^2 + a^2}{\rho^2} db^2 + \frac{\rho^2}{r^2 + a^2} dr^2 + \rho^2 d\theta^2 + \frac{\sin^2 \theta}{\rho^2} d\phi \tag{6}
$$

ここで$$db =cdt - a \sin^2 \theta d\varphi, d\phi =(r^2 + a^2) d\varphi - a c dt$$のように置換しました。

## 測地線方程式と粒子のラグランジアン

ここまではMinkowskiメトリックに座標変換を施しただけであって、質量$$M$$の物体による重力場を考慮してはいません。ここで[Schwarzschildメトリック](/gr/schwarzschild)を思い出してみると

$$
g_{tt} 
= - \left( 1 - \frac{2GM}{c^2 r}\right) 
= - \frac{r^2 - r_g r}{r^2}
$$

のように考えることができます。ここで$$r_g = 2 GM/c^2$$ (Schwarzschild半径)です。今、$$r$$の代わりに$$\rho$$が距離の指標であると考えると(6)式とこれとの比較から、重力の効果を含めた場合を

$$
ds^2 
= - \frac{f(r)}{\rho^2} db^2 + \frac{\rho^2}{f(r)} dr^2 + \rho^2 d\theta^2 + \frac{\sin^2 \theta}{\rho^2} d\phi \tag{7}
$$

のように書くことができます。ここで$$f(\rho)$$ではなく$$f(r)$$としているのは、ここまでの適切な座標変換によって$$g_{bb}, g_{rr}$$部分の$$\theta$$依存性は消去され、この座標系においては球対称になっていると考えたためです。  
ここから質量$$m$$の粒子の[測地線方程式](/gr/geodesic)を考えましょう。

$$
m \frac{dp_\nu}{d\tau} 
= - \frac{1}{2} g_{\beta \mu, \nu} p^\mu p^\beta \tag{8}
$$

ここで$$p$$は粒子の4元運動量、$$\tau$$は固有時間を表します。(8)式右辺の$$g_{\beta \mu}$$の依存性から

$$
\frac{dp_b}{ d\tau} = 0 \ \Longrightarrow \ 
p_b = mE
$$

とわかります。ここで$$E$$は単位質量あたりのエネルギーを表す定数です。よって

$$
p^b = g^{b \mu} p_\mu 
= g^{bb} p_b 
= -\frac{\rho^2}{f(r)} m E 
$$

さらに最左辺の運動量は$$p^b = m v^b = m \dot{b}$$と考えれば

$$
\dot{b} = - \frac{\rho^2}{f} E \tag{9}
$$

となります。ここでドットは固有時間$$\tau$$の微分を表します。さらにLagrangianを計算すると

$$
L 
= \frac{1}{2} g_{\alpha \beta} \dot{x}^\alpha \dot{x}^\beta 
= -\frac{f}{\rho^2} \dot{b}^2 + \frac{\rho^2}{2f} \dot{r}^2 \tag{10}
$$

です。ここでは球対称なので$$\theta=0, d\theta=0$$として計算しました。(9), (10)式より

$$
\dot{r}^2
= \frac{f}{\rho^2} (2L + \frac{\rho^2}{f} E^2) \tag{11}
$$

$$L=1/2, E=0$$の粒子についてのみ考えると、この粒子においては

$$
\dot{r}^2 
= \frac{f}{\rho^2} \tag{12}
$$

と求まります。

## 無限遠との接続

そして$$r$$方向の測地線方程式を考えると

$$
m \frac{dp_r}{d\tau} 
= - \frac{1}{2} g_{rr, r} p^r p^r \tag{13}
$$

です。これを計算していきましょう。

$$
\frac{d}{d\tau} (\rho^2 \dot{r}) 
= \ddot{r} \rho^2 + 2 r \dot{r}^2
$$

$$
\frac{df}{d\tau} = \dot{r} f'
$$

と$$p^r = m \dot{r}$$より

$$
(左辺) 
= m \frac{d}{d\tau} (g_{rr} p^r)
= m^2 \frac{d}{d\tau} \left( \frac{\rho^2}{f} \dot{r} \right) 
= m^2 \frac{\frac{d}{d\tau} (\rho^2 \dot{r})f -\rho^2 \dot{r} \frac{df}{d\tau}}{f^2} 
= \frac{m^2}{f^2} (\ddot{r} \rho^2 f + 2 r \dot{r}^2 f - \rho^2 \dot{r}^2 f')
$$

$$
(右辺) 
= - \frac{1}{2} \frac{\partial}{\partial r} \left( \frac{\rho^2}{f}\right) m^2 \dot{r}^2
= - \frac{2r f - \rho^2 f'}{2f^2} m^2 \dot{r}^2
$$

(12)式と合わせて

$$
\ddot{r} 
= \frac{3 \rho^2 f' - 6rf}{2\rho^4} \tag{14}
$$

今、$$\theta=0$$について考えているため、$$\rho^2 = r^2 + a^2$$より

$$
\ddot{r} 
= \frac{3 (r^2 + a^2) f' - 6rf}{2(r^2 + a^2)^2} 
$$

さらに$$f(r) = r^2 + a^2 - \psi (r)$$の形を仮定すると、$$f' = 2 r-\psi'$$より

$$
\ddot{r} 
= \frac{6r \psi}{2(r^2 + a^2)^2} - \frac{3 \psi'}{2(r^2 + a^2)} \xrightarrow{r \rightarrow \infty} \frac{6\psi - 3 r \psi'}{2r^3}
$$

$$r \rightarrow \infty$$の極限で加速度は0になるという境界条件から、$$\psi = 2 D r$$となります。ここで$$D$$は定数です。この結果から

$$
ds^2 = - \frac{r^2 + a^2 - 2D r}{\rho^2} (cdt - a \sin^2 \theta d\varphi)^2 + \frac{\rho^2}{r^2 + a^2 - 2D r} dr^2 + \rho^2 d\theta^2 + \frac{\sin^2 \theta}{\rho^2} \{ (r^2 + a^2) d\varphi - a c dt\}^2
$$

## シュバルツシルト時空への接続

(2)式から$$a \rightarrow 0$$の極限で、これは質量$$M$$が作る球対称な重力場、すなわち[Schwarzschild時空](/gr/schwarzschild)の3次元極座標表示に一致しなければなりません。このとき$$\rho^2 = r^2$$より

$$
g_{rr} 
= \frac{r^2}{r^2 - 2 Dr} = \frac{1}{1-\frac{r_g}{r}} \ \Longrightarrow \ 
D 
= \frac{r_g}{2} 
= \frac{GM}{c^2}
$$

以上より

$$
ds^2 
= - \frac{\Delta}{\rho^2} (cdt - a \sin^2 \theta d\varphi)^2 + \frac{\rho^2}{\Delta} dr^2 + \rho^2 d\theta^2 + \frac{\sin^2 \theta}{\rho^2} \{ (r^2 + a^2) d\varphi - a c dt\}^2 \tag{15}
$$

と求まります。ここで$$\Delta \equiv r^2 + a^2 - r_g r$$です。さらに分解すれば

$$
ds^2 
= - \frac{\Delta -a^2 \sin^2 \theta}{\rho^2} c^2 dt^2 - \frac{2 a r_g r \sin^2 \theta}{\rho^2} c dt d\varphi + \frac{(r^2 + a^2)^2 -a^2 \Delta \sin^2 \theta}{\rho^2} \sin^2 \theta d\varphi^2 + \frac{\rho^2}{\Delta} dr^2 + \rho^2 d\theta^2 \tag{16}
$$

のようになります。$$a$$は距離の次元ですが、自転と結びつけて考えると$$a = J/(Mc)$$となります。$$J$$はブラックホールの自転角運動量です。

もう少し厳密な自転の導出方法はいつか掲載予定です。
{: .label .label-yellow }

# より厳密な導出方法

私には追えませんでしたが、[Chandrasekharの"The mathematical Theory of Black Holes"](https://www.amazon.com/dp/0198503709/ref=cm_sw_em_r_mt_dp_9HPGCYPVZ3NHC6DC30EF)などを参照するのが良いでしょう。

# 参考文献

[1] Dadhich, 2013, "A novel derivation of the rotating black hole metric"  
[2] Nikolic & Pantic, 2012, "A Possible Intuitive Derivation of Kerr Metric in Orthogonal Form Based On Ellipsoidal Metric Ansatz"  
[3] [D'Inverno, 1992, "Introducing Einstein's Relativity"](https://www.amazon.co.jp/Introducing-Einsteins-Relativity-Ray-DInverno/dp/0198596863)  
[4] [Chandrasekhar, 1998, "The mathematical Theory of Black Holes"](https://www.amazon.com/dp/0198503709/ref=cm_sw_em_r_mt_dp_9HPGCYPVZ3NHC6DC30EF)

{% include adsense.html %}
