---
layout: default
title: 修正Bessel関数とAiry関数
parent: 数学
math: mathjax3
permalink: /math/modified_bessel_airy
nav_order: 12
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

# 修正ベッセル関数

修正ベッセル関数(modified Bessel function)、またの名をマクドナルド関数(Macdonald function)は

$$
K_\nu (z) 
= \int_0^\infty e^{-z \cosh t} \cosh \nu t dt \tag{1}
$$

で定義されます。ただし$$z>0$$とします。

## 漸化式

修正ベッセル関数が満たす漸化式を求めましょう。

$$
\begin{aligned}
 - K_{\nu-1} + K_{\nu + 1} 
&= \int_0^\infty \{ -e^{-z \cosh t} \cosh (\nu -1)t + e^{-z \cosh t} \cosh (\nu+1) t\} \ dt \\
&= \int_0^\infty e^{-z \cosh t} \left( -\frac{e^{(\nu-1)t} + e^{-(\nu - 1)t}}{2} + \frac{e^{(\nu+1)t} + e^{-(\nu + 1)t}}{2}\right) dt \\
&=\int_0^\infty e^{-z \cosh t} \frac{1}{2} \left\{ e^{\nu t} ( e^t - e^{-t}) + e^{-\nu t} (e^{-t} - e^t) \right\} dt 
= \int_0^\infty e^{-z \cosh t} \left\{ e^{\nu t}- e^{-\nu t} \right\} \sinh t \ dt \\
&=2 \int_0^\infty e^{-z \cosh t} \sinh \nu t \sinh t \ dt 
= - \frac{2}{z}\int_0^\infty \frac{d}{dt} (e^{-z \cosh t}) \sinh \nu t \ dt \\
&=- \frac{2}{z} \left\{ [(e^{-z \cosh t}) \sinh \nu t]_0^\infty - \nu \int_0^\infty e^{-z \cosh t} \cosh \nu t \ dt\right\} 
= \frac{2\nu}{z}  K_\nu
\end{aligned}
$$

よって

$$
 -K_{\nu-1} + K_{\nu+1} 
= \frac{2\nu}{z} K_\nu \tag{2}
$$

が成り立ちます。同様に

$$
\begin{aligned}
 -K_{\nu-1} - K_{\nu + 1} 
&= \int_0^\infty \{ -e^{-z \cosh t} \cosh (\nu -1)t - e^{-z \cosh t} \cosh (\nu+1) t\} \ dt \\
&= - \int_0^\infty e^{-z \cosh t} \left( \frac{e^{(\nu-1)t} + e^{-(\nu - 1)t}}{2} + \frac{e^{(\nu+1)t} + e^{-(\nu + 1)t}}{2}\right) dt \\
&= - \int_0^\infty e^{-z \cosh t} \frac{1}{2} \left\{ e^{\nu t} ( e^t + e^{-t}) + e^{-\nu t} (e^{-t} + e^t) \right\} dt 
= - \int_0^\infty e^{-z \cosh t} \left\{ e^{\nu t}+ e^{-\nu t} \right\} \cosh t \ dt \\
&= - 2 \int_0^\infty e^{-z \cosh t} \cosh \nu t \cosh t \ dt 
= 2 \int_0^\infty \frac{d}{dz} (e^{-z \cosh t}) \cosh \nu t \ dt \\
&= 2 \frac{d}{dz} \int_0^\infty e^{-z \cosh t} \cosh \nu t \ dt
= 2 \frac{d}{dz} K_\nu
\end{aligned}
$$

より

$$
 -K_{\nu-1} - K_{\nu+1}
= 2 \frac{d}{dz} K_\nu (z) \tag{3}
$$

さらに(1)式と$$\cosh$$の偶関数性$$\cosh \nu t = \cosh (-\nu t)$$より

$$
K_\nu = - K_\nu \tag{4}
$$

## 修正ベッセルの微分方程式

$$
\begin{aligned}
(3) \ \underbrace{\Longrightarrow}_{\times d/dz} \ 
\frac{d^2}{dz^2} K_\nu 
&= - \frac{1}{2} (\frac{d}{dz} K_{\nu-1} + \frac{d}{dz} K_{\nu+1}) 
= - \frac{1}{2} \left\{ - \frac{1}{2} (K_{\nu-2} + K_\nu) - \frac{1}{2} (K_\nu + K_{\nu+2})\right\} \\
&= \frac{1}{4} (K_{\nu+2} + 2K_\nu + K_{\nu-2})
\end{aligned}
$$

$$
(2) \ \Longrightarrow \ 
\left\{ \begin{array}{l}
\frac{2(\nu-1)}{z} K_{\nu-1} 
= - K_{\nu -2} + K_\nu \\
\frac{2(\nu+1)}{z} K_{\nu+1} 
= - K_\nu + K_{\nu+2}
\end{array} \right.
$$

などを用いることで

$$
\begin{aligned}
\frac{d^2}{dz^2} K_\nu + \frac{1}{z} \frac{d}{dz} K_\nu - \left( 1+ \frac{\nu^2}{z^2}\right) K_\nu
&= \frac{1}{4} (K_{\nu+2} + 2K_\nu + K_{\nu-2}) - \frac{1}{2z} (K_{\nu-1} + K_{\nu+1}) - K_\nu - \frac{\nu}{2z} \frac{2\nu}{z} K_\nu \\ 
&= \frac{1}{4} (K_{\nu+2} + 2K_\nu + K_{\nu-2}) - \frac{1}{2z} (K_{\nu-1} + K_{\nu+1}) - K_\nu - \frac{\nu}{2z} (-K_{\nu-1}+ K_{\nu+1}) \\
&= \frac{1}{4} (K_{\nu+2} + 2K_\nu + K_{\nu-2}) + \frac{\nu-1}{2z} K_{\nu-1} - \frac{\nu+1}{2z}K_{\nu+1} - K_\nu \\
&= \frac{1}{4} (K_{\nu+2} + 2K_\nu + K_{\nu-2}) + \frac{1}{4}(-K_{\nu-2}+ K_\nu) - \frac{1}{4} (-K_\nu + K_{\nu +2}) - K_\nu = 0 
\end{aligned}
$$

これより修正ベッセル関数の満たす微分方程式が

$$
\frac{d^2}{dz^2} K_\nu + \frac{1}{z} \frac{d}{dz} K_\nu - \left( 1+ \frac{\nu^2}{z^2} \right) K_\nu 
= 0 \tag{5}
$$

と求まります。

{% include adsense.html %}

# エアリー関数

以下で定義されるエアリー関数(Airy function)について考えましょう。

$$
\Phi (z) 
= \frac{1}{\sqrt{\pi}} \int_0^\infty \cos \left( \frac{\xi^3}{3} + \xi z \right) d\xi \tag{6}
$$

これが2階の微分方程式

$$
\Phi '' (z) 
= z \Phi (z) \tag{7}
$$

の解であることを示します。

$$
(6) \underbrace{\Longrightarrow}_{\times d/dz} 
\Phi' 
= - \frac{1}{\sqrt{\pi}} \int_0^\infty \xi \sin \left( \frac{\xi^3}{3} + \xi z\right) d\xi \underbrace{\Longrightarrow}_{\times d/dz} 
\Phi'' 
= - \frac{1}{\sqrt{\pi}} \int_0^\infty \xi^2 \cos \left( \frac{\xi^3}{3} + \xi z \right) d\xi  
$$

よって

$$
\begin{aligned}
\Phi'' - z \Phi 
&= - \frac{1}{\sqrt{\pi}} \int_0^\infty (\xi^2 + z) \cos \left( \frac{\xi^3}{3} + \xi z\right) d \xi 
= - \frac{1}{\sqrt{\pi}} \int_0^\infty \frac{d}{d \xi }(\frac{\xi^3}{3} + z\xi) \cos \left( \frac{\xi^3}{3} + \xi z\right) d \xi \\
&= - \frac{1}{\sqrt{\pi}} \left[ \sin \left( \frac{\xi^3}{3} + z \xi \right)\right]_0^\infty
= - \frac{1}{\sqrt{\pi}} (\underbrace{\sin \infty}_{=0} - \sin 0) 
= 0
\end{aligned}
$$

となり、確かにエアリー関数(6)式は(7)式の解であることがわかります。

# 修正ベッセル関数とエアリー関数の関係式

エアリー関数が、修正ベッセル関数を用いて

$$
\Phi (z) 
= \sqrt{\frac{z}{3\pi}} K_{1/3} \left( \frac{2}{3} z^{3/2}\right) \tag{8}
$$

と書けることを示しましょう。そのためには

1. (8)式の右辺が(7)式の解であること
2. $$z=0, \infty$$の2つの境界条件での値が一致していること

の2つが確認できれば、(7)式は2階の微分方程式なので解が一意に定ま利、(8)式を示せたことになります。

## 1の証明

$$
\phi(z) 
= \sqrt{\frac{z}{3\pi}} K_{1/3} \left( \frac{2}{3} z^{3/2} \right) 
= \sqrt{\frac{z}{3\pi}} K_{1/3} (\alpha) \ \ \ \left(\alpha \equiv \frac{2}{3} z^{3/2} \right)
$$

とおいて、$$\phi (z)$$が$$\phi'' = z\phi$$を満たしていることを確認しましょう。

$$
\phi'(z) 
= \frac{1}{2 \sqrt{3\pi z}} K_{1/3} (\alpha) + \sqrt{\frac{z}{3\pi}} \frac{d\alpha}{dz} \left( \frac{d}{d\alpha}K_{1/3} (\alpha) \right)
$$

$$
\begin{aligned}
\phi'' 
& = - \frac{1}{4 \sqrt{3\pi z^3}} K_{1/3}(\alpha) + \frac{1}{2\sqrt{3\pi z}} \frac{d\alpha}{dz} \left( \frac{d}{d\alpha}K_{1/3} (\alpha) \right) + \frac{1}{2\sqrt{3\pi z}} \frac{d\alpha}{dz} \left( \frac{d}{d\alpha} K_{1/3} (\alpha) \right) \\
& \quad + \sqrt{\frac{z}{3\pi}} \frac{d^2 \alpha}{dz^2} \left( \frac{d}{d\alpha}K_{1/3} (\alpha) \right) + \sqrt{\frac{z}{3\pi}} \left( \frac{d\alpha}{dz} \right)^2 \left( \frac{d^2}{d\alpha^2}K_{1/3} (\alpha) \right)
\end{aligned}
$$

$$\frac{d\alpha}{dz} = \sqrt{z}, \frac{d^2 \alpha}{dz^2} = \frac{1}{2 \sqrt{z}}$$ , さらに$$\frac{d^2}{d\alpha^2} K_{1/3} (\alpha) = - \frac{1}{\alpha} \frac{d}{d\alpha} K_{1/3} (\alpha) + (1 + \frac{1}{9\alpha^2}) K_{1/3} (\alpha)$$を代入します。

$$
\begin{aligned}
\phi'' 
&= - \frac{1}{4 \sqrt{3\pi z^3}} K_{1/3}(\alpha) + \frac{1}{2\sqrt{3\pi}} \frac{d}{d\alpha}K_{1/3} (\alpha) + \frac{1}{2\sqrt{3\pi}} \frac{d}{d\alpha} K_{1/3} (\alpha) + \frac{1}{2 \sqrt{3\pi}} \frac{d}{d\alpha}K_{1/3} (\alpha) \\
& \quad + \sqrt{\frac{z^3}{3\pi}} \left( - \frac{1}{\alpha} \frac{d}{d\alpha} K_{1/3} (\alpha) + (1 + \frac{1}{9\alpha^2}) K_{1/3} (\alpha)\right) \\
&=- \frac{1}{4 \sqrt{3\pi z^3}} K_{1/3}(\alpha) + \frac{3}{2\sqrt{3\pi}} \frac{d}{d\alpha}K_{1/3} (\alpha) + \sqrt{\frac{z^3}{3\pi}} \left( - \frac{3}{2\sqrt{z^3}} \frac{d}{d\alpha} K_{1/3} (\alpha) + (1 + \frac{1}{4 z^3}) K_{1/3} (\alpha)\right) \\
&=- \frac{1}{4 \sqrt{3\pi z^3}} K_{1/3}(\alpha) + \sqrt{\frac{z^3}{3\pi}}(1 + \frac{1}{4 z^3}) K_{1/3} (\alpha) 
= z \sqrt{\frac{z}{3\pi}} K_{1/3} (\alpha) 
= z \phi(z)
\end{aligned}
$$

よって$$\phi(z)$$も(7)式の解であることがわかります。

## 2の証明

### $$z=\infty$$

$$z=\infty$$での値を求めましょう。

$$
\lim_{z \rightarrow \infty} \Phi (z) 
= \lim_{z \rightarrow \infty} \frac{1}{\sqrt{\pi}} \int_0^\infty \cos \left( \frac{\xi^3}{3} + \xi z \right) d\xi 
\underbrace{\simeq}_{\xi^3 \ll \xi z} \lim_{z \rightarrow \infty} \frac{1}{\sqrt{\pi}} \int_0^\infty \cos \xi z \ d\xi 
= \lim_{z \rightarrow \infty} \frac{1}{z\sqrt{\pi}} [\sin \xi z]_0^\infty 
\rightarrow 0
$$

$$
\lim_{z \rightarrow \infty} \phi(z) 
= \lim_{z \rightarrow \infty} \sqrt{\frac{z}{3\pi}} \underbrace{ K_{1/3} \left( \frac{2}{3} z^{3/2}\right)}_{(1)}
= \lim_{z \rightarrow \infty} \sqrt{\frac{z}{3\pi}} \int_0^\infty e^{-\frac{2}{3} z^{\frac{3}{2}} \cosh t} \cosh \frac{t}{3} \ dt \rightarrow 0
$$

以上から、$$z = \infty$$での値は一致していることがわかります。

### $$z=0$$

続いて$$z=0$$での境界値を求めましょう。

$$
\lim_{z \rightarrow 0} \Phi(z) 
= \frac{1}{\sqrt{\pi}} \int_0^\infty \cos \frac{\xi^3}{3} \ d \xi 
\underbrace{=}_{t^3 = \xi^3/3} \frac{3^{1/3}}{\sqrt{\pi}} \int_0^\infty \cos t^3 \ dt
=\frac{3^{1/3}}{2\sqrt{3\pi}} \Gamma \left( \frac{1}{3} \right)
$$

途中の$$\int_0^\infty \cos t^3 dt$$は[フレネル積分](/math/fresnel)を用いて計算しました。$$\lim_{z\rightarrow 0} \phi(z)$$がこの値と一致することを示すには、修正ベッセル関数の公式

$$
K_\nu (z)
= \frac{\Gamma\left( \nu+ \frac{1}{2} \right) (2z)^\nu}{\sqrt{\pi}} \int_0^\infty \frac{\cos t}{(t^2 + z^2)^{\nu + \frac{1}{2}}} \ dt \tag{9}
$$

を用います。

$$
\begin{aligned}
\lim_{z\rightarrow 0} \phi (z) 
&= \lim_{z \rightarrow 0}\frac{\sqrt{z}}{\sqrt{3 \pi}} \frac{\Gamma \left( \frac{1}{3} + \frac{1}{2} \right) \left( \frac{4}{3} z^{3/2} \right)^{1/3}}{\sqrt{\pi}} \int_0^\infty \frac{\cos t}{\left( t^2 + \frac{4}{9} z^3 \right)^{\frac{1}{3} + \frac{1}{2}}} \\
&= \lim_{z \rightarrow 0} \frac{z}{ \pi \sqrt{3}} \left( \frac{4}{3}\right)^{1/3} \Gamma \left( \frac{5}{6} \right) \int_0^\infty \frac{\overbrace{\cos t}^{\rm Taylor \ expansion}}{\left( t^2 + \frac{4}{9} z^3 \right)^{5/6}} \ dt \\
&= \lim_{z \rightarrow 0} \frac{z}{ \pi \sqrt{3}} \left( \frac{4}{3}\right)^{1/3} \Gamma \left( \frac{5}{6} \right) \int_0^\infty \frac{1}{\left( t^2 + \frac{4}{9} z^3 \right)^{5/6}} \sum_{n=0}^\infty \frac{(-1)^n}{(2n)!} t^{2n} \ dt \\
&= \lim_{z \rightarrow 0} \frac{z}{ \pi \sqrt{3}} \left( \frac{4}{3}\right)^{1/3} \Gamma \left( \frac{5}{6} \right) \sum_{n=0}^\infty \frac{(-1)^n}{(2n)!} \int_0^\infty \frac{t^{2n}}{\left( t^2 + \frac{4}{9} z^3 \right)^{5/6}} \ dt
\end{aligned}
$$

積分部分において$$t=\left(\frac{4}{9} z^3 \right)^{1/2} T, dt=\left(\frac{4}{9} z^3 \right)^{1/2} dT$$と変数変換し、さらに式変形を進めましょう。

$$
\begin{aligned}
\lim_{z\rightarrow 0} \phi (z) 
&= \lim_{z \rightarrow 0} \frac{z}{ \pi \sqrt{3}} \left( \frac{4}{3}\right)^{1/3} \Gamma \left( \frac{5}{6} \right) \sum_{n=0}^\infty \frac{(-1)^n}{(2n)!} \int_0^\infty \frac{\left( \frac{4}{9} z^3 \right)^{n} T^{2n}}{\left( \frac{4}{9} z^3 T^2 + \frac{4}{9} z^3 \right)^{5/6}} \left( \frac{4}{9} z^3 \right)^{1/2} dT \\
&= \lim_{z \rightarrow 0} \frac{z}{ \pi \sqrt{3}} \left( \frac{4}{3}\right)^{1/3} \Gamma \left( \frac{5}{6} \right) \sum_{n=0}^\infty \frac{(-1)^n}{(2n)!} \left( \frac{4}{9} z^3 \right)^{n+\frac{1}{2}-\frac{5}{6}} \int_0^\infty \frac{ T^{2n}}{(T^2 + 1 )^{5/6}} \ dT \\
&= \lim_{z \rightarrow 0} \frac{z}{ \pi \sqrt{3}} \left( \frac{4}{3}\right)^{1/3} \Gamma \left( \frac{5}{6} \right) \sum_{n=0}^\infty \frac{(-1)^n}{(2n)!} \left( \frac{4}{9} \right)^{n-\frac{1}{3}} z^{3n-1} \int_0^\infty \frac{ T^{2n}}{(T^2 + 1)^{5/6}} \ dT \\
&= \lim_{z \rightarrow 0} \frac{1}{ \pi \sqrt{3}} \left( \frac{4}{3}\right)^{1/3} \left( \frac{4}{9}\right)^{-1/3} \Gamma \left( \frac{5}{6} \right) \sum_{n=0}^\infty \frac{(-1)^n}{(2n)!} \left( \frac{4}{9} \right)^{n} z^{3n} \int_0^\infty \frac{ T^{2n}}{( T^2 + 1)^{5/6}} \ dT \\
&= \lim_{z \rightarrow 0} \frac{3^{1/3}}{ \pi \sqrt{3}} \Gamma \left( \frac{5}{6} \right) \sum_{n=0}^\infty \frac{(-1)^n}{(2n)!} \left( \frac{4}{9} \right)^{n} z^{3n} \int_0^\infty \frac{ T^{2n}}{( T^2 + 1)^{5/6}} \ dT
\end{aligned}
$$

さらに積分において$$T^2=u, dT=\frac{1}{2} u^{-\frac{1}{2}}du$$と変数変換すると

$$
\lim_{z\rightarrow 0} \phi (z) 
= \lim_{z \rightarrow 0} \frac{3^{1/3}}{ \pi \sqrt{3}} \Gamma \left( \frac{5}{6} \right) \sum_{n=0}^\infty \frac{(-1)^n}{(2n)!} \left( \frac{4}{9} \right)^{n} z^{3n} \frac{1}{2} \int_0^\infty \frac{ u^{n-\frac{1}{2}}}{( u^2 + 1)^{5/6}} \ du
$$

となり、最後の積分部分が[ベータ関数関数の定義とその積分形の式](/math/beta)から

$$
B(m, n) \equiv \frac{\Gamma (m) \Gamma(n)}{\Gamma(m+n)} \ , \ B(m+1, n+1) = \int_0^\infty \frac{u^m}{(1+u)^{m+n+2}} \ du
$$

で表現することができます。

$$
\begin{aligned}
\lim_{z\rightarrow 0} \phi (z) 
&= \lim_{z \rightarrow 0} \frac{3^{1/3}}{2 \pi \sqrt{3}} \Gamma \left( \frac{5}{6} \right) \sum_{n=0}^\infty \frac{(-1)^n}{(2n)!} \left( \frac{4}{9} \right)^{n} z^{3n} B \left( n-\frac{1}{2} +1, - (n+\frac{2}{3}) + 1\right) \\
&= \lim_{z \rightarrow 0} \frac{3^{1/3}}{2 \pi \sqrt{3}} \Gamma \left( \frac{5}{6} \right) \sum_{n=0}^\infty \frac{(-1)^n}{(2n)!} \left( \frac{4}{9} \right)^{n} z^{3n} B \left( n+\frac{1}{2}, - n+\frac{1}{3} \right)
\end{aligned}
$$

ここまで$$n$$を残して変形してきましたが、今は$$z \rightarrow 0$$を考えているので$$n=0$$以外の項($$z^3, \ z^6, \ \cdots$$の項)は$$0$$と考えてよいことがわかります。

$$
\begin{aligned}
\therefore \ \lim_{z \rightarrow 0} \phi (z) 
&= \frac{3^{1/3}}{2 \pi \sqrt{3}} \Gamma \left( \frac{5}{6} \right) B \left(\frac{1}{2}, \frac{1}{3} \right) 
= \frac{3^{1/3}}{2 \pi \sqrt{3}} \Gamma \left( \frac{5}{6} \right) B \left(\frac{1}{2}, \frac{1}{3} \right) \\
&= \frac{3^{1/3}}{2 \pi \sqrt{3}} \Gamma \left( \frac{5}{6} \right) \frac{\displaystyle{ \overbrace{\Gamma \left( \frac{1}{2}\right)}^{=\sqrt{\pi}} \Gamma \left( \frac{1}{3} \right)}}{ \displaystyle{ \Gamma \left( \frac{5}{6}\right)}} 
= \frac{3^{1/3}}{2 \sqrt{3 \pi}} \Gamma \left( \frac{1}{3} \right)
\end{aligned}
$$

よって$$z = 0$$での値も等しくなっていることがわかりました。

以上から(8)式が示されました。

{% include adsense.html %}