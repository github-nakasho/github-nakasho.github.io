---
layout: default
title: ベッセル関数
parent: 数学
math: mathjax3
permalink: /math/bessel
nav_order: 11
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

# ベッセル関数

## ベッセル関数の積分表示

母関数展開

$$
e^{\frac{z}{2}(\omega - 1/\omega)} 
= \sum_{n=-\infty}^{\infty} J_n (z) \omega^n \ (0<| \omega | <\infty) \tag{1}
$$

によって定義される$$J_n(z)$$を$$n$$次のベッセル関数と呼びます。左辺を$$f(\omega ) = e^{\frac{z}{2} (\omega- 1/\omega)}$$と定義し、両辺を$$\omega^{n+1}$$で割りましょう。すると

$$
\begin{aligned}
\frac{f(\omega)}{\omega^{n+1}} 
&= \cdots + \frac{J_{n-3}(z)}{\omega^4} + \frac{J_{n-2}(z)}{\omega^3} + \frac{J_{n-1}(z)}{\omega^2} +  \frac{J_n(z)}{\omega} + J_{n+1}(z) + J_{n+2} (z) \omega + J_{n+3} (z) \omega^2 + \cdots \\
&=\sum_{m=-\infty}^{-1} \frac{J_{m+n}}{\omega^{m+3}} + \frac{J_n}{\omega} + \sum_{m=1}^\infty J_{m+n} \omega^{m-1}
\end{aligned}
$$

これを両辺複素数平面上$$\| \omega \| =1$$の円周上で経路積分する。すると留数定理より

$$
\oint_{|\omega|=1} \frac{f(\omega)}{\omega^{n+1}} d\omega 
= \oint_{|\omega|=1} \frac{J_n(z)}{\omega} d\omega 
= 2\pi i J_n(z) \ \Longrightarrow \ 
\therefore \ J_n(z) 
= \frac{1}{2\pi i} \oint_{|\omega|=1} \frac{f(\omega)}{\omega^{n+1}} d\omega
$$

$$\omega=e^{i \theta}(\theta : -\pi \rightarrow \pi), d\omega = i e^{i\theta} d\theta$$より

$$
J_n(z) 
= \frac{1}{2\pi i} \int_{-\pi}^\pi \frac{e^{\frac{z}{2} (e^{i\theta} - e^{-i\theta})}}{e^{i(n+1)\theta}} i e^{i\theta} d\theta 
=\frac{1}{2\pi}\int_{-\pi}^\pi \frac{e^{iz\sin \theta}}{e^{in\theta}} d\theta 
=\frac{1}{2\pi} \int_{-\pi}^\pi e^{i(z\sin \theta-n\theta)} d\theta 
$$

となります。これをさらに変形しましょう。オイラーの公式より

$$
J_n(z) 
=\frac{1}{2\pi} \int_{-\pi}^\pi \{ \cos(z\sin \theta-n\theta) + i \sin (z\sin \theta-n\theta) \} d\theta
$$

第2項は奇関数より積分値は0となります。よって

$$
J_n(z) 
=\frac{1}{2\pi} \int_{-\pi}^\pi \cos(z\sin \theta-n\theta) d\theta
$$

とも書けます。さらにこの被積分関数は偶関数なので

$$
J_n(z)
=\frac{1}{\pi} \int_{0}^\pi \cos(z\sin \theta-n\theta) d\theta \tag{2}
$$

となります。  

(2)式を変形しましょう。

$$
J_n 
= \frac{1}{2\pi} \int_0^\pi [\exp\{ i (n\varphi - z \sin \varphi)\} + \exp \{ - i (n\varphi - z \sin \varphi)\}] \ d\varphi 
= \frac{1}{2\pi} \int_0^\pi (e^{in\varphi} e^{-i z \sin \varphi} + e^{-i n \varphi} e^{iz \sin \varphi}) \ d\varphi
$$

以下の様に変形を行います。

$$
\begin{aligned}
\int_0^\pi e^{in\varphi} e^{-iz\sin \varphi} \ d \varphi 
&\underbrace{=}_{\varphi \rightarrow -\varphi}
\int_0^{-\pi} (-e^{-in\varphi} e^{iz\sin \varphi}) \ d\varphi 
= \int_{-\pi}^0 e^{-in\varphi} e^{iz\sin \varphi} \ d\varphi 
\underbrace{=}_{\varphi \rightarrow \varphi + 2\pi}  \int_\pi^{2\pi} e^{-in(\varphi - 2\pi)} e^{iz \sin (\varphi - 2\pi)} \ d\varphi \\
&=\int_\pi^{2\pi} e^{-in\varphi} \underbrace{e^{i2\pi n}}_{=1} e^{iz \sin \varphi} \ d\varphi 
= \int_\pi^{2\pi} e^{-in\varphi} e^{iz \sin \varphi} \ d\varphi 
\end{aligned}
$$

$$
\therefore \ 
J_n 
= \frac{1}{2\pi} \int_0^{2\pi} e^{-in\varphi} e^{iz\sin\varphi} \ d\varphi \tag{3}
$$

同様に次の様に式変形をしましょう。

$$
\begin{aligned}
\int_0^\pi e^{in\varphi} e^{-iz\sin \varphi} \ d\varphi 
&\underbrace{=}_{\varphi \rightarrow \varphi + \pi/2} \int_{\pi/2}^{3\pi/2} e^{in(\varphi- \pi/2)} e^{-iz\sin (\varphi- \pi/2)} \ d\varphi 
= \int_{\pi/2}^{3\pi/2} e^{in\varphi} \underbrace{e^{-in\frac{\pi}{2}}}_{=(e^{i \frac{\pi}{2}})^{-n}} e^{iz\cos \varphi} \ d\varphi \\
&= i^{-n} \int_{\pi/2}^{3\pi/2} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi
\end{aligned}
$$

$$
\begin{aligned}
\int_0^\pi e^{-in\varphi} e^{iz\sin \varphi} \ d\varphi 
&\underbrace{=}_{\varphi \rightarrow \varphi - \pi/2} \int_{-\pi/2}^{\pi/2} e^{-in(\varphi+ \pi/2)} e^{iz\sin (\varphi+ \pi/2)} \ d\varphi 
= \int_{-\pi/2}^{\pi/2} e^{-in\varphi} \underbrace{e^{-in\frac{\pi}{2}}}_{(e^{i \frac{\pi}{2}})^{-n}} e^{iz\cos \varphi} \ d\varphi \\
&= i^{-n} \int_{-\pi/2}^{\pi/2} e^{-in\varphi} e^{iz\cos\varphi} \ d\varphi
\underbrace{=}_{\varphi=-\varphi} i^{-n} \int_{\pi/2}^{-\pi/2} (-e^{in\varphi} e^{iz\cos(-\varphi)} ) \ d\varphi 
=i^{-n} \int_{-\pi/2}^{\pi/2} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi \\
&= i^{-n} \int_{-\pi/2}^{0} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi +  i^{-n} \int_{0}^{\pi/2} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi 
\end{aligned}
$$

上式第一項において

$$
\int_{-\pi/2}^{0} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi 
\underbrace{=}_{\varphi \rightarrow \varphi + 2\pi} \int_{3\pi/2}^{2\pi} e^{in(\varphi-2\pi)} e^{iz\cos(\varphi-2\pi)} \ d\varphi 
= \int_{3\pi/2}^{2\pi} e^{in\varphi} \underbrace{e^{-i 2\pi n}}_{=1} e^{iz\cos\varphi} d\varphi 
= \int_{3\pi/2}^{2\pi} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi 
$$

より

$$
\int_0^\pi e^{-in\varphi} e^{iz\sin \varphi} \ d\varphi 
= i^{-n} \int_{3\pi/2}^{2\pi} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi +  i^{-n} \int_{0}^{\pi/2} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi 
$$

$$
\begin{align}
\therefore \ 
J_n 
&= \frac{1}{2\pi} \left( i^{-n} \int_{\pi/2}^{3\pi/2} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi +  i^{-n} \int_{3\pi/2}^{2\pi} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi +  i^{-n} \int_{0}^{\pi/2} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi \right) \notag \\
&= \frac{i^{-n}}{2\pi} \int_0^{2\pi} e^{in\varphi} e^{iz \cos \varphi} \ d\varphi \tag{4}
\end{align}
$$

## ベッセル関数の満たす漸化式

$$
\begin{aligned}
&J_{n-1} (z) + J_{n+1} (z) 
= \frac{1}{\pi} \int_0^\pi [\cos \{ (n-1) \varphi - z \sin \varphi) \} + \cos \{ (n+1) \varphi - z \sin \varphi \} ] \ d\varphi \\
&= \frac{1}{\pi} \int_0^\pi [ \cos \{ (n-1) \varphi \} \cos (z \sin \varphi) + \sin \{ (n-1) \varphi \} \sin (z \sin \varphi) + \cos \{ (n+1) \varphi \} \cos (z \sin \varphi) + \sin \{ (n+1)\varphi \} \sin (z \sin \varphi) ] \ d\varphi \\
&= \frac{1}{\pi} \int_0^\pi \{ 2\cos n \varphi \cos \varphi \cos (z \sin \varphi) + 2\sin n \varphi \cos \varphi \sin (z \sin \varphi) \} \ d\varphi \\
&= \frac{2}{\pi} \int_0^\pi \{\cos n \varphi \frac{1}{z} \frac{d}{d\varphi} \sin (z \sin \varphi) - \sin n\varphi \frac{1}{z} \frac{d}{d\varphi} \cos (z \sin \varphi) \} \ d\varphi \\
&= \frac{2}{\pi z} \left\{ \left[ \sin(z\sin \varphi) \cos n\varphi \right]_0^\pi - \int_0^\pi \sin (z\sin \varphi) n (-\sin n\varphi) \ d\varphi - \left[\sin n\varphi \cos (z\sin \varphi)  \right]_0^\pi + \int_0^\pi \cos (z\sin \varphi) n \cos n\varphi \ d\varphi\right\} \\
&= \frac{2n}{\pi z} \int_0^\pi \{ \sin (z\sin \varphi) \sin n\varphi + \cos (z\sin \varphi) \cos n\varphi \} \ d\varphi 
= \frac{2n}{z} \frac{1}{\pi} \int_0^\pi \cos (n\varphi- z \sin \varphi) \ d\varphi 
= \frac{2n}{z} J_n
\end{aligned}
$$

$$
\therefore \ J_{n-1}+ J_{n+1} 
= \frac{2n}{z} J_n \tag{5}
$$

が成立します。同様に

$$
\begin{aligned}
&J_{n-1} (z) - J_{n+1} (z) 
= \frac{1}{\pi} \int_0^\pi [\cos \{ (n-1) \varphi - z \sin \varphi) \} - \cos \{ (n+1) \varphi - z \sin \varphi \} ] \ d\varphi \\
&= \frac{1}{\pi} \int_0^\pi [ \cos \{ (n-1) \varphi \} \cos (z \sin \varphi) + \sin \{ (n-1)\varphi \} \sin (z \sin \varphi) - \cos \{ (n+1) \varphi \} \cos (z \sin \varphi) - \sin \{ (n+1)\varphi \} \sin (z \sin \varphi)] \ d\varphi \\
&= \frac{1}{\pi} \int_0^\pi \{ 2\sin n \varphi \sin \varphi \cos (z \sin \varphi) - 2\sin \varphi \cos n\varphi \sin (z \sin \varphi) \} \ d\varphi \\
&= \frac{2}{\pi} \int_0^\pi \sin \varphi \{ \sin n \varphi \cos (z \sin \varphi) - \cos n\varphi \sin (z \sin \varphi) \} \ d\varphi 
= \frac{2}{\pi} \int_0^\pi \sin \varphi \sin (n\varphi- z \sin \varphi) \ d\varphi \\
&= \frac{2}{\pi} \int_0^\pi\frac{d}{dz} \cos (n\varphi- z \sin \varphi) \ d\varphi 
= 2 \frac{d}{dz} J_n
\end{aligned}
$$

$$
\therefore \ J_{n-1}- J_{n+1} 
= 2 \frac{d}{dz} J_n \tag{6}
$$

{% include adsense.html %}

## ベッセルの微分方程式

$$
\frac{d^2}{dz^2} J_n + \frac{1}{z} \frac{d}{dz} J_n + (1- \frac{n^2}{z^2}) J_n 
= 0 \tag{7}
$$

この式はベッセルの微分方程式と呼ばれています。ベッセル関数がこの微分方程式を満たすことを示しましょう。

$$
(5) \underbrace{\Longrightarrow}_{両辺z微分} 
2 \frac{d^2}{dz^2} J_n 
= \frac{d}{dz} J_{n-1} - \frac{d}{dz} J_{n+1} 
= \frac{1}{2} (J_{n-2} + J_n) - \frac{1}{2} (J_n - J_{n+2}) 
= \frac{1}{2} J_{n-2} - J_n + \frac{1}{2} J_{n+2}
$$

$$
\begin{aligned}
(6)式左辺 \ \Longrightarrow \ 
&\frac{d^2}{dz^2} J_n+ \frac{1}{z} \frac{d}{dz} J_n + (1- \frac{n^2}{z^2}) J_n 
= \frac{1}{4} J_{n-2} -\frac{1}{2} J_n + \frac{1}{4} J_{n+2} + \frac{1}{2z} (J_{n-1} - J_{n+1}) + J_n - \frac{n}{2z} \frac{2n}{z} J_n \\
&= \frac{1}{4} J_{n-2} +\frac{1}{2} J_n + \frac{1}{4} J_{n+2} + \frac{1}{2z} (J_{n-1}- J_{n+1})- \frac{n}{2z} (J_{n-1}+ J_{n+1}) \\
&= \frac{1}{4} J_{n-2} +\frac{1}{2} J_n + \frac{1}{4} J_{n+2} - \frac{n-1}{2z} J_{n-1} - \frac{n+1}{2z} J_{n+1} \\
&= \frac{1}{4} J_{n-2} +\frac{1}{2} J_n + \frac{1}{4} J_{n+2} - \frac{1}{4}( J_{n-2} + J_n) - \frac{1}{4} (J_{n} + J_{n+2}) 
= 0 
\end{aligned}
$$

$$
\therefore \ \frac{d^2}{dz^2} J_n + \frac{1}{z} \frac{d}{dz} J_n + (1- \frac{n^2}{z^2}) J_n 
= 0 
$$

を満たすことがわかりました。

## フーリエ級数展開

$$e^{iz\sin \varphi}$$のフーリエ級数展開を考えましょう。

$$
e^{iz \sin \varphi} 
= \sum_{n=-\infty}^\infty C_n e^{in\varphi}
$$

$$e^{iz\sin \varphi}$は周期$2\pi$$の関数なので

$$
C_n 
= \frac{1}{2\pi} \int_0^{2\pi} e^{-in\varphi} e^{iz\sin \varphi} \ d\varphi 
= J_n
$$

$$
\therefore \ e^{iz \sin \varphi} 
= \sum_{n=-\infty}^\infty J_n e^{in\varphi}
$$

が成立します。

## ベッセル関数の近似

$$
(2) \ \Longrightarrow \ 
J_n(n \epsilon) = \frac{1}{\pi} \int_0^\pi \cos \left\{ n (\xi - \epsilon \sin \xi)\right\} d\xi
$$

この式で$$n \gg 1$$での振る舞いについて考えましょう。

### (1)

$$\epsilon \ll 1$$ のとき

$$
n \xi \gg n \epsilon \sin \xi \ \Longrightarrow \ 
Jn(n \epsilon) 
\simeq \frac{1}{\pi} \int_0^\pi \cos n \xi \ d \xi = \frac{1}{\pi n } [\sin n \xi]_0^\pi 
= 0
$$

### (2)

$$\epsilon \sim 1$$ のとき、$$\cos$$ の中の$$\xi$$と$$\epsilon \sin \xi$$を比較して考えてみましょう。$$\xi \ll 1$$ のときは $$\xi-\epsilon \sin \xi \sim 0$$ より$$\cos \{ n( \xi-\epsilon \sin \xi)\} \sim 1$$となり、$$[0, \pi ]$$ の積分に大きく寄与すると考えられます。しかし、$$\xi \ll 1$$以外のところでは$$n \gg 1$$より $$\cos$$が激しく振動し、結局積分にはほとんど影響しないと見なすことができます。よって積分範囲を$$[0, \infty]$$のようにしても構わないと考えてよく

$$
\begin{aligned}
J_n(n \epsilon) 
&\simeq \frac{1}{\pi} \int_0^\infty \cos \left[ n \left\{ \xi - \epsilon \left( \xi - \frac{1}{3!} \xi^3 \right)\right\} \right] d\xi 
= \frac{1}{\pi} \int_0^\infty \cos \left[ n \left\{ \xi(1 - \epsilon) + \frac{\epsilon}{6} \xi^3 \right\} \right] d\xi \\
&\simeq \frac{1}{\pi} \int_0^\infty \cos \left[ n \left\{ \xi \left( 1- \frac{1+ \epsilon^2}{2}\right) + \frac{\epsilon}{6} \xi^3 \right\} \right] d\xi 
= \frac{1}{\pi} \int_0^\infty \cos \left[ n \left( \frac{1- \epsilon^2}{2} \xi + \frac{\epsilon}{6} \xi^3 \right) \right] d\xi
\end{aligned}
$$

ここで$$\epsilon \simeq \frac{1+ \epsilon^2}{2}$$ としたのは$$\cos$$の中を微少量を3次に統一するためです。以上をまとめると

$$
J_n(n\epsilon) 
\simeq \left\{
\begin{array}{l}
\displaystyle{\frac{1}{\pi} \int_0^\infty \cos \left\{ n \left( \frac{1- \epsilon^2}{2} \xi + \frac{\xi^3}{6}\right)\right\} d\xi} \ \ \ ({\rm for} \ \epsilon \sim 1)\\
0 \ \ \ ({\rm for} \ \epsilon \ll 1)
\end{array} \right. 
$$

となります。

{% include adsense.html %}

## ベッセル関数のべき乗表示

一方で(#1)式の左辺を展開し、$$\omega^n$$の項の係数と比較することにより$$J_n(z)$$を求めることもできます。

$$
e^{\frac{z}{2} \omega} e^{-\frac{z}{2} \frac{1}{\omega}} 
= \left\{ 1+ \frac{z}{2} \omega + \frac{1}{2} \left( \frac{z}{2} \right)^2 \omega^2 + \frac{1}{3!} \left( \frac{z}{2} \right)^3 \omega^3 \cdots\right\} \left\{ 1- \frac{z}{2} \omega^{-1} + \frac{1}{2} \left( \frac{z}{2} \right)^2 \omega^{-2} + \frac{1}{3!} \left( \frac{z}{2} \right)^3 \omega^{-3} \cdots \right\}
$$

ここで気をつけなくてはならないのは、$$n$$の正負によって式の形が異なってくることです。

(i). $$n \geq 0$$のとき、前の$$\{ \cdots \}$$から$$\omega^{n+k}$$の項、後ろの$$\{ \cdots \}$$から$$\omega^{-k}$$の項を選び出せば、$$\omega^n$$の項を選び出すことができます(ただし$$k\geq 0$$)。

$$
(\omega^nの項) 
= \sum_{k=0}^\infty \frac{1}{(n+k)!} \left( \frac{z}{2} \right)^{n+k} \omega^{n+k} \frac{(-1)^k}{k!} \left( \frac{z}{2}\right)^k \omega^{-k} 
=\left( \frac{z}{2} \right)^n \sum_{k=0}^\infty \frac{(-1)^k}{k! (n+k)!} \left( \frac{z}{2}\right)^{2k} \omega^n 
$$

$$
\therefore \ J_n(z) 
= \left( \frac{z}{2} \right)^n \sum_{k=0}^\infty \frac{(-1)^k}{k! (n+k)!} \left( \frac{z}{2}\right)^{2k} \tag{8}
$$

(ii) $$n < 0$$のとき、前の$$\{ \cdots \}$$から$$\omega^k$$の項、後ろの$$\{ \cdots \}$$から$$\omega^{n-k}$$の項を選び出せば、$$\omega^n$$の項を選び出すことができます(ただし$$k\geq 0$$)。

$$
(\omega^nの項) 
= \sum_{k=0}^\infty \frac{1}{k!} \left( \frac{z}{2} \right)^k \omega^{k} \frac{(-1)^{-(n-k)}}{\{-(n-k)\}!} \left( \frac{z}{2}\right)^{-(n-k)} \omega^{n-k} 
=\left( - \frac{z}{2} \right)^{-n} \sum_{k=0}^\infty \frac{(-1)^k}{k! (-n+k)!} \left( \frac{z}{2}\right)^{2k} \omega^n 
$$

$$
\therefore \ J_n(z) 
=\left(- \frac{z}{2} \right)^{-n} \sum_{k=0}^\infty \frac{(-1)^k}{k! (-n+k)!} \left( \frac{z}{2}\right)^{2k}  \tag{9}
$$

(9)式より$$n>0$$のとき

$$
J_{-n}(z) 
\underbrace{=}_{(9)でn\rightarrow-n} \left(- \frac{z}{2} \right)^n \sum_{k=0}^\infty \frac{(-1)^k}{k! (n+k)!} \left( \frac{z}{2}\right)^{2k} 
$$

一方(8)式で$$z\rightarrow -z$$とすると

$$
J_n(-z) 
= \left(\frac{-z}{2} \right)^n \sum_{k=0}^\infty \frac{(-1)^k}{k! (n+k)!} \left(\frac{-z}{2}\right)^{2k}
= \left( - \frac{z}{2} \right)^n \sum_{k=0}^\infty \frac{(-1)^k}{k! (n+k)!} (-1)^{2k} \left(\frac{z}{2}\right)^{2k}
= \left( - \frac{z}{2} \right)^n \sum_{k=0}^\infty \frac{(-1)^k}{k! (n+k)!} \left(\frac{z}{2}\right)^{2k}
$$

$$
\therefore \ J_{-n}(z) 
= J_n(-z)
$$

さらに

$$
J_{-n}(z) 
= \left(- \frac{z}{2} \right)^n \sum_{k=0}^\infty \frac{(-1)^k}{k! (n+k)!} \left( \frac{z}{2}\right)^{2k} 
= (-1)^n \underbrace{\left(\frac{z}{2} \right)^n \sum_{k=0}^\infty \frac{(-1)^k}{k! (n+k)!} \left( \frac{z}{2}\right)^{2k}}_{(8)}
= (-1)^n J_n(z)
$$

以上より

$$
J_{-n} (z) 
= J_n(-z) 
= (-1)^n J_n(z) \tag{10}
$$

が成立します。$$n<0$$のときも同様に証明できます。

(10)式を母関数展開(1)式に用いると

$$
\begin{aligned}
e^{\frac{z}{2} (\omega-1/\omega)}
&= \underbrace{\sum_{n=-\infty}^{-1} J_n(z) \omega^n}_{n\rightarrow -n と置換} + J_0(z) + \sum_{n=1}^\infty J_n(z) \omega^n
= \sum_{n=1}^\infty \underbrace{J_{-n}(z)}_{(10)} \omega^{-n} + J_0(z) + \sum_{n=1}^\infty J_n(z) \omega^n \\
&= J_0(z) + \sum_{n=1}^\infty J_n(z) \{ \omega^n + (-1)^n \omega^{-n}\}
\end{aligned}
$$

という公式を導くこともできます。さらに上式において$$\omega = e^{i \theta}$$を代入すると

$$
\begin{aligned}
e^{\frac{z}{2} (e^{i\theta} - e^{-i\theta})} 
&= e^{izsin\theta} 
=  J_0(z) + \underbrace{\sum_{n=1}^\infty J_n(z) \{ e^{in\theta} + (-1)^n e^{-in\theta}\}}_{偶数和・奇数和に分解} \\
&= J_0(z) + \sum_{m=1}^\infty J_{2m}(z) (e^{2im\theta} +  e^{-2im\theta}) + \sum_{m=0}^\infty J_{2m+1}(z) ( e^{i(2m+1)\theta} -  e^{-i(2m+1)\theta}) \\
&=J_0(z) + 2 \sum_{m=1}^\infty J_{2m}(z) \cos(2m\theta) + 2i \sum_{m=0}^\infty J_{2m+1}(z) \sin\{(2m+1)\theta\} 
\end{aligned}
$$

上式において$$z\rightarrow -z$$と置換することにより

$$
\begin{aligned}
e^{-iz\sin \theta} 
&= J_0(-z) + 2 \sum_{m=1}^\infty J_{2m}(-z) \cos(2m\theta) + 2i \sum_{m=0}^\infty J_{2m+1}(-z) \sin\{(2m+1)\theta\} \\
&= J_0(z) + 2 \sum_{m=1}^\infty (-1)^{2m} J_{2m}(z) \cos(2m\theta) + 2i \sum_{m=0}^\infty (-1)^{2m+1}  J_{2m+1}(z) \sin\{(2m+1)\theta\} \\
&= J_0(z) + 2 \sum_{m=1}^\infty J_{2m}(z) \cos(2m\theta) - 2i \sum_{m=0}^\infty  J_{2m+1}(z) \sin\{(2m+1)\theta\}
\end{aligned}
$$

上の2つの式の両辺を足し算することで$$\cos$$、引き算することで$$\sin$$に関する公式を得ることができます。


$$
\cos (z \sin \theta) 
= J_0(z) + 2 \sum_{m=1}^\infty J_{2m} (z) \cos(2m\theta) \tag{11}
$$

$$
\sin (z \sin \theta) 
=  2 \sum_{m=0}^\infty J_{2m+1} (z) \sin\{(2m+1)\theta\} \tag{12}
$$

{% include adsense.html %}

## 直交関係とフーリエ・ベッセル展開

ベッセル関数はベッセルの微分方程式(7)を満たします。ここに$$\lambda_1, \lambda_2$$を異なる正の実数として、$$u(x) = J_n (\lambda_1 x), v(x) = J_n(\lambda_2 x)$$としましょう。これらと(7)式より

$$
\frac{1}{\lambda_1^2} \frac{d^2 J_n (\lambda_1 x)}{dx^2} + \frac{1}{\lambda_1 x} \frac{1}{\lambda_1} \frac{d J_n(\lambda_1 x)}{dx} + \left( 1- \frac{n^2}{\lambda_1^2 x^2}\right) J_n(\lambda_1 x) 
= 0 \ \Longrightarrow \ 
x u'' + u' + \left( \lambda_1^2 - \frac{n^2}{x^2} \right) xu 
= 0
$$

同様の式変形で

$$
xv'' + v' + \left( \lambda_2^2 - \frac{n^2}{x^2} \right) xv 
= 0
$$

上の$$u$$に関する式にvを、$$v$$に関する式にuをそれぞれかけて、辺辺を引き算します。

$$
x(u''v - v''u) + (u'v- v'u) + (\lambda_1^2-\lambda_2^2) xuv 
= 0 \ \Longrightarrow \ 
\frac{d}{dx} \{ x(u'v-v'u)\} 
= (\lambda_2^2 - \lambda_1^2) xuv
$$

この式を[0: 1]区間で積分します。

$$
[x(u'v-v'u)]_0^1 
= u'(\lambda_1) v(\lambda_2) - v'(\lambda_2) u(\lambda_1) 
= (\lambda_2^2 - \lambda_1^2) \int_0^1 xuv dx
$$

$$u'(x) = \lambda_1 J_n(\lambda_1 x)$$であることに注意すると

$$
\frac{1}{\lambda_2^2-\lambda_1^2} \{ \lambda_1 J_n' (\lambda_1 ) J_n(\lambda_2) - \lambda_2 J_n (\lambda_1) J_n' (\lambda_2) \} 
= \int_0^1 x J_n(\lambda_1 x) J_n(\lambda_2 x) dx
$$

この積分は$$n>-1$$のときに可能です。$$\lambda_1, \lambda_2$$が$$J_n(x)$$の正値のゼロ点ならば、左辺は0となります。よって一般的な$$J_n(x)$$のゼロ点$$0<\lambda_1 < \lambda_2<\cdots$$に対して、$$x$$を重み関数とする直交関係

$$
\int_0^1 x J_n (\lambda_m x) J_n(\lambda_\ell x) dx = 0 \ (m \neq \ell) \tag{13}
$$

が成立します。次に$$m=\ell$$のとき$$\lambda_\ell = \lambda_m + \epsilon$$として、$$\epsilon \rightarrow 0$$の極限をとります。

$$
\begin{aligned}
\int_0^1 x J_n (\lambda_m)^2 dx 
&= \frac{1}{2\lambda_m \epsilon + \epsilon^2} \{ \lambda_m J_n' (\lambda_m) J_n(\lambda_m + \epsilon) - (\lambda_m+\epsilon) J_n(\lambda_m) J_n'(\lambda_m + \epsilon)\} \\
&\underbrace{=}_{\epsilon^2を無視} \frac{1}{2} \left\{ J_n' (\lambda_m) \frac{J_n (\lambda_m + \epsilon)}{\epsilon} - J_n(\lambda_m) \frac{J_n'(\lambda_m + \epsilon)}{\epsilon} - \frac{1}{\lambda_m} J_n(\lambda_m) J_n'(\lambda_m+\epsilon)\right\} \\
&\xrightarrow{\epsilon \rightarrow 0} \frac{1}{2} \left\{ J_n'(\lambda_m)^2 - J_n (\lambda_m) J_n''(\lambda_m) - \frac{1}{\lambda_m} J_n(\lambda_m) + J_n' (\lambda_m)\right\} \\
&\underbrace{=}_{(*6)} \frac{1}{2} \left\{ J_n' (\lambda_m)^2 + J_n(\lambda_m) \frac{1}{\lambda_m} J_n'(\lambda_m) + \left( 1-\frac{n^2}{\lambda_m^2}\right) J_n(\lambda_m)^2 - \frac{1}{\lambda_m} J_n(\lambda_m) J_n'(\lambda_m) \right\} \\
&= \frac{1}{2} \left\{ J_n' (\lambda_m)^2 + \left( 1-\frac{n^2}{\lambda_m^2} \right) J_n(\lambda_m)^2\right\}
\underbrace{=}_{\lambda_mはゼロ点より} \frac{1}{2} J_n'(\lambda_m)^2 
= \frac{1}{2} J_{n+1}(\lambda_m)^2 
\end{aligned}
$$

最後の等号には(*4), (*5)式の辺辺を引き算と$$\lambda_m$$が$$J_n$$のゼロ点であることを用いました。以上より

$$
\int_0^1 x J_n(\lambda_m x) J_n(\lambda_\ell x) dx 
= \frac{\delta_{m\ell}}{2} J_n'(\lambda_m)^2 
= \frac{\delta_{m\ell}}{2} J_{n+1}(\lambda_m)^2 \tag{14}
$$

が成り立ちます。この直交性より、$$0<x<1$$で定義されている関数$$\phi (x)$$を

$$
\phi (x) 
= \sum_{m=1}^\infty a_m J_n(\lambda_m x), \ 
a_m 
= \frac{2}{J_{n+1} (\lambda_m)^2} \int_0^1 x \phi(x) J_n(\lambda_m x) dx \tag{15}
$$

のように展開することができます。これをフーリエ・ベッセル展開と呼びます。

## ベッセル関数の2乗

(8)式より、この2乗を計算しましょう。

$$
J_n^2(z) 
= \left( \frac{z}{2} \right)^{2n} \sum_{k, \ell=0}^\infty \frac{(-1)^{k+\ell}}{k! \ell ! (n+k)!(n+\ell)!} \left( \frac{z}{2}\right)^{2(k+\ell)}
$$

ここで$$k+\ell=m$$とおいて、和を書き換えます。

$$
J_n^2(z) 
= \left( \frac{z}{2} \right)^{2n} \sum_{m=0}^\infty \sum_{k=0}^m \frac{(-1)^{m}}{k! (m-k) ! (n+k)!(n+m-k)!} \left( \frac{z}{2}\right)^{2(k+\ell)}
$$

それでは階乗の変形を行いましょう。唐突ですが$$(1+x)^{n+m}$$の$$x^{m-k}$$の項の係数を考えると、$${}_{n+m}C_{m-k}$$です。よって

$$
\frac{d^{m-k}}{dx^{m-k}} {}_{n+m} C_{m-k} x^{m-k} 
= (m-k)! \frac{(n+m)!}{(m-k)!(n+m-m+k)!} 
= \frac{(n+m)!}{(n+k)!}
$$

より

$$
\frac{1}{(n+k)!} 
= \frac{1}{(n+m)!} \frac{(n+m)!}{(n+k)!} 
= \frac{1}{(n+m)!} \left[ \frac{d^{m-k}}{dx^{m-k}} (1+x)^{n+m}\right]_{x=0}
$$

同様に$$(1+x)^{n+m}$$の$$x^k$$の項の係数は$${}_{n+m}C_k$$です。よって

$$
\frac{d^k}{dx^k} {}_{n+m} C_k x^k 
= k! {}_{n+m} C_k 
= \frac{(n+m)!}{(n+m-k)!}
$$

より

$$
\frac{1}{(n+m-k)!} 
= \frac{1}{(n+m)!} \frac{(n+m)!}{(n+m-k)!} 
= \frac{1}{(n+m)!} \left[ \frac{d^{k}}{dx^{k}} (1+x)^{n+m}\right]_{x=0}
$$

これらを用いて

$$
\begin{aligned}
J_n^2(z) 
&= \left( \frac{z}{2} \right)^{2n} \sum_{m=0}^\infty (-1)^m \sum_{k=0}^m \frac{1}{k! (m-k) ! \{ (n+m)!\}^2} \left[ \frac{d^{m-k}}{dx^{m-k}} (1+x)^{n+m} \right]_{x=0} \left[ \frac{d^{k}}{dx^{k}} (1+x)^{n+m} \right]_{x=0} \left( \frac{z}{2}\right)^{2m} \\
&= \left( \frac{z}{2} \right)^{2n} \sum_{m=0}^\infty \frac{(-1)^m}{m! \{ (n+m)!\}^2} \left( \frac{z}{2}\right)^{2m} \sum_{k=0}^m {}_{m}C_k \left[ \frac{d^{m-k}}{dx^{m-k}} (1+x)^{n+m} \right]_{x=0} \left[ \frac{d^{k}}{dx^{k}} (1+x)^{n+m} \right]_{x=0} \\
&= \left( \frac{z}{2} \right)^{2n} \sum_{m=0}^\infty \frac{(-1)^m}{m! \{ (n+m)! \}^2} \left( \frac{z}{2}\right)^{2m} \left[ \frac{d^m}{dx^m} (1+x)^{2(n+m)} \right]_{x=0} 
\end{aligned}
$$

と変形されます。$$(1+x)^{2(n+m)}$$の$$x^m$$の係数は$${}_{2(n+m)} C_m$$より

$$
\left[ \frac{d^m}{dx^m} (1+x)^{2(n+m)} \right]_{x=0} 
= \frac{(2n+2m)!}{(2n+m)!}
$$

よって

$$
J_n^2(z) 
= \left( \frac{z}{2} \right)^{2n} \sum_{m=0}^\infty \frac{(-1)^m}{m! \{ (n+m)! \}^2} \frac{(2n+2m)!}{(2n+m)!} \left( \frac{z}{2}\right)^{2m} \tag{16}
$$

{% include adsense.html %}

## 2乗との間に成り立つ公式

[sin, cosのn乗(nが偶数の場合)](/math/sin_n_cos_n)の公式において、$$n \rightarrow 2(n+m)$$と置換すると

$$
\int_0^{\pi/2} \cos^{2(n+m)} x dx 
= \frac{\pi}{2} \frac{(2n+2m-1)!!}{(2n+2m)!!}
= \frac{\pi}{2} \frac{(2n+2m)!}{\{ (2n+2m)!! \}^2}
= \frac{\pi}{2} \frac{1}{(2^{n+m})^2}\frac{(2n+2m)!}{\{ (n+m)! \}^2}
$$

よって(16)式から

$$
J_n^2(z) 
= \left( \frac{z}{2} \right)^{2n} \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \left( \frac{z}{2}\right)^{2m} \frac{2}{\pi} 2^{2n+2m} \int_0^{\pi/2} \cos^{2(n+m)}x dx 
$$

となります。  
唐突ですが、(8)式から

$$
J_{2n}(z) 
= \left( \frac{z}{2}\right)^{2n} \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \left( \frac{z}{2} \right)^{2m}
$$

これにおいて$$z \rightarrow 2z \cos \theta$$と置換すると

$$
J_{2n}(2z \cos \theta) 
= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} z^{2n+2m} \cos^{2n+2m} \theta
$$

よって

$$
\int_0^{\pi/2} J_{2n} (2z \cos \theta) d \theta 
= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} z^{2n+2m} \int_0^{\pi/2} \cos^{2n+2m} \theta d\theta 
= \frac{\pi}{2} J_n^2(z) \tag{17}
$$

が成り立ちます。  

(16)式において$$z \rightarrow z \sin \theta$$と置換し、両辺に$$\sin \theta$$をかけたものを$$0 \leq \theta \leq \pi/2$$で積分すると

$$
\int_0^{\pi/2} J_n^2(z \sin \theta) \sin \theta d \theta 
= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{(2n+2m)!}{\{ (n+m)! \}^2} \left( \frac{z}{2}\right)^{2n+2m} \int_0^{\pi/2} \sin^{2n+2m+1} \theta  d\theta
$$

ここで[sin, cosのn乗(nが奇数の場合)](/math/sin_n_cos_n)の公式において、$$n \rightarrow 2(n+m)+1$$に置換すると

$$
\int_0^{\pi/2} \sin^{2(n+m)+1} \theta d\theta 
= \frac{(2n+2m)!!}{(2n+2m+1)!!}
$$

よって

$$
\begin{aligned}
\int_0^{\pi/2} J_n^2(z \sin \theta) \sin \theta d \theta 
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{(2n+2m)!}{\{ (n+m)! \}^2} \left( \frac{z}{2}\right)^{2n+2m}
\frac{(2n+2m)!!}{(2n+2m+1)!!} \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{(2n+2m)!}{\{ (2n+2m)!!\}^2} z^{2n+2m} \frac{(2n+2m)!!}{(2n+2m+1)!!} \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{(2n+2m)!}{(2n+2m+1)!} z^{2n+2m} 
= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{z^{2n+2m}}{2n+2m+1} 
\end{aligned}
$$

と求まります。  
唐突ですが(8)式から

$$
J_{2n} (t) 
= \left( \frac{t}{2} \right)^{2n} \sum_{k=0}^\infty \frac{(-1)^k}{k! (2n+k)!} \left( \frac{t}{2} \right)^{2k}
$$

より

$$
\frac{1}{2z} \int_0^{2z} J_{2n} (t) dt 
= \frac{1}{2z} \sum_{k=0}^\infty \frac{(-1)^k}{k! (2n+k)!} \frac{1}{2^{2n+2k}} \frac{1}{2n+2k+1} [ t^{2n+2k+1}]_0^{2z} 
= \sum_{k=0}^\infty \frac{(-1)^k}{k! (2n+k)!} \frac{z^{2n+2k}}{2n+2k+1}
$$

以上から

$$
\int_0^{\pi/2} J_n^2(z \sin \theta) \sin \theta d\theta 
= \frac{1}{2z} \int_0^{2z} J_{2n} (t) dt \tag{17}
$$

という公式が導かれます。  
同様に

$$
\begin{aligned}
\int_0^{\pi/2} \frac{J_n^2(z \sin \theta)}{\sin \theta} d\theta 
&= \int_0^{\pi/2} \frac{1}{\sin \theta} \left( \frac{z \sin \theta}{2}\right)^{2n} \sum_{m=0}^\infty \frac{(-1)^m}{m! \left\{ (n+m)!\right\}^2} \frac{(2n+2m)!}{(2n+m)!} \left( \frac{z \sin \theta}{2}\right)^{2m} d\theta \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! \left\{ (n+m)!\right\}^2} \frac{(2n+2m)!}{(2n+m)!} \left( \frac{z}{2}\right)^{2n+2m} \int_0^{\pi/2} \sin^{2n+2m-1} \theta d\theta \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! \left\{ (n+m)!\right\}^2} \frac{(2n+2m)!}{(2n+m)!} \left( \frac{z}{2}\right)^{2n+2m} \frac{(2n+2m-2)!!}{(2n+2m-1)!!} \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! \left\{ (2n+2m)!!\right\}^2} \frac{(2n+2m)!}{(2n+m)!} z^{2n+2m} \frac{(2n+2m-2)!!}{(2n+2m-1)!!} \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+2m) (2n+2m)!! } \frac{(2n+2m)!}{(2n+m)!} \frac{z^{2n+2m}}{(2n+2m-1)!!} \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{z^{2n+2m}}{2n+2m}
\end{aligned}
$$

と

$$
\begin{aligned}
\int_0^{2z} \frac{J_{2n}(t)}{t} dt 
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \int_0^{2z} \frac{t^{2n+2m-1}}{2^{2n+2m}} dt 
= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{1}{2^{2n+2m} (2n+2m)} [t^{2n+2m}]_0^{2z} \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{z^{2n+2m}}{(2n+2m)} 
\end{aligned}
$$

より

$$
\int_0^{\pi/2} \frac{J_n^2(z \sin \theta)}{\sin \theta} d\theta 
= \int_0^{2z} \frac{J_{2n}(t)}{t} dt \tag{18}
$$

も成り立ちます。

{% include adsense.html %}

## ベッセル関数のポアソン表示

(8)式において階乗を[ガンマ関数](/math/gamma)を用いて一般化すると

$$
J_\nu (z) 
= \sum_{k=0}^\infty \frac{(-1)^k}{k! \Gamma(\nu+k+1)} \left( \frac{z}{2}\right)^{2k+\nu}
$$

となります。先に以下の計算を行いましょう。

$$
\int_{-1}^1 e^{izx} (1-x^2)^{\nu-1/2} dx 
= \int_{-1}^1 \sum_{n=0}^\infty \frac{(iz)^n}{n!} x^n (1-x^2)^{\nu-1/2} dx
$$

この$$x^n (1-x^2)^{\nu-1/2}$$は$$n$$が偶数のとき偶関数、奇数のときは奇関数となります。よって$$n = 2m \ (m \in \mathbb{Z})$$の場合だけ考えれば良いとわかります。よって

$$
\int_{-1}^1 e^{izx} (1-x^2)^{\nu-1/2} dx 
= \sum_{m=0}^{\infty} \frac{(iz)^{2m}}{(2m)!} 2 \int_{0}^1 x^{2m} (1-x^2)^{\nu - 1/2} dx
$$

ここで$$y = x^2$$と置くと$$dy = 2x dx = 2\sqrt{y} dx$$より

$$
\int_{-1}^1 e^{izx} (1-x^2)^{\nu-1/2} dx 
= \sum_{m=0}^{\infty} \frac{(-1)^m z^{2m}}{(2m)!} \int_{0}^1 y^{m-1/2} (1-y)^{\nu - 1/2} dy
$$

最後の積分部分は[ベータ関数](/math/beta)を用いて

$$
\int_{-1}^1 e^{izx} (1-x^2)^{\nu-1/2} dx 
= \sum_{m=0}^{\infty} \frac{(-1)^m z^{2m}}{(2m)!} B(m+1/2, \nu+1/2) 
= \sum_{m=0}^{\infty} \frac{(-1)^m z^{2m}}{(2m)!} \frac{\Gamma(m+1/2) \Gamma(\nu+1/2)}{\Gamma(m+\nu+1)}
$$

と書き直すことができます。[半整数のガンマ関数](/math/gamma)は

$$
\Gamma(m+1/2) 
= \frac{(2m)!}{2^{2m} m!} \sqrt{\pi}
$$

のように書けるので、

$$
\begin{align}
\int_{-1}^1 e^{izx} (1-x^2)^{\nu-1/2} dx 
&= \sum_{m=0}^{\infty} \frac{(-1)^m z^{2m}}{(2m)!} \frac{\Gamma(\nu+1/2)}{\Gamma(m+\nu+1)} \frac{(2m)!}{2^{2m} m!} \sqrt{\pi} 
= \sqrt{\pi} \Gamma(\nu+1/2) \sum_{m=0}^{\infty} \frac{(-1)^m z^{2m}}{2^{2m} m! \Gamma(m+\nu+1)} \notag \\
&= \frac{\sqrt{\pi} \Gamma(\nu+1/2)}{(z/2)^\nu} \sum_{m=0}^{\infty} \frac{(-1)^m}{m! \Gamma(m+\nu+1)} \left( \frac{z}{2}\right)^{2m+\nu} 
= \frac{\sqrt{\pi} \Gamma(\nu+1/2)}{(z/2)^\nu} J_\nu(z) \notag 
\end{align}
$$

を得ます。よって

$$
J_\nu (z) = \frac{1}{\sqrt{\pi} \Gamma(\nu+1/2)} \left( \frac{z}{2}\right)^\nu \int_{-1}^1 e^{izx} (1-x^2)^{\nu-1/2} dx \tag{19}
$$

となります。これをベッセル関数のポアソン積分表示と呼びます。

## ベッセル関数のラプラス変換

ベッセル関数のラプラス変換を求めることを考えましょう。
そのために、ベッセルの微分方程式から考えます。

$$
(7) \ \Longrightarrow \ 
z^2 \frac{d^2 J_n}{dz^2} + z \frac{dJ_n}{dz} + (z^2 - n^2) J_n 
= 0
$$

これをラプラス変換します。
ラプラス変換を$$\mathcal{L}$$と表し、変換後の変数を$$s$$とすると

$$
\mathcal{L} \left[ z^2 \frac{d^2 J_n}{dz^2} + z \frac{dJ_n}{dz} + (z^2 - n^2) J_n \right]
= 0
$$

それでは、各項を計算しましょう。

$$
\mathcal{L} \left[ z^2 \frac{d^2 J_n}{dz^2}\right] 
= \frac{d^2}{ds^2} \mathcal{L}\left[ \frac{d^2J_n}{dz^2}\right] 
= \frac{d^2}{ds^2} \left( s^2 \mathcal{L} [J_n] -s J_n(0) - J_n'(0)\right) 
$$

となります。
途中、$$J_n' = \frac{dJ_n}{dz}$$としました。
ここで$$\mathcal{L}[J_n] = J_n^L$$のように書くことにすると

$$
\mathcal{L} \left[ z^2 \frac{d^2 J_n}{dz^2}\right] 
= 2 J^L_n + 4 s J_n^{L \prime}  + s^2 J_n^{L \prime \prime} 
$$

のように整理できます。
ここでも、$$J_n^{L \prime} = \frac{d J_n^L}{ds}$$としました。

$$
\mathcal{L} \left[ z \frac{dJ_n}{dz}\right] 
= - \frac{d}{ds} \mathcal{L} \left[ \frac{dJ_n}{dz}\right] 
= - \frac{d}{ds} (s J_n^L - J_n(0)) 
= -J_n^L - sJ_n^{L \prime}
$$

$$
\mathcal{L} [z^2 J_n] 
= J_n^{L \prime \prime}
$$

以上より

$$
(1+s^2) J_n^{L \prime \prime} + 3s J_n^{L \prime} + J_n^L - n^2 J_n^L 
= 0 \tag{20}
$$

が得られました。
これを解くために、$$\phi(s) = (1+s^2)^{1/2} J_n^L (s)$$のように変数変換を行いましょう。
すると

$$
\phi^\prime 
= (1+s^2)^{-1/2} s J_n^L + (1+s^2)^{1/2} J_n^{L \prime} 
\ \Longrightarrow \ 
J_n^{L \prime} 
= (1+s^2)^{-1/2} \phi^\prime - s(1+s^2)^{-3/2} \phi
$$

$$
\begin{aligned}
&\phi^{\prime \prime} 
= (1+s^2)^{-3/2} s^2 J_n^L + (1+s^2)^{-1/2} J_n^L + (1+s^2)^{-1/2} s J_n^{L \prime} + (1+s^2)^{-1/2} s J_n^{L \prime} + (1+s^2)^{1/2} J_n^{L \prime \prime} \\
& \qquad = -s^2 (1+s^2)^{-2} \phi + (1+s^2)^{-1} \phi + 2s (1+s^2)^{-1} \phi^\prime \\
&\Longrightarrow \ J_n^{L \prime \prime} 
= (1+s^2)^{-1/2} \phi^{\prime \prime}- 2s(1+s^2)^{-3/2} \phi^\prime - (1+s^2)^{-3/2} \phi + 3s^2 (1+s^2)^{-5/2} \phi 
\end{aligned}
$$

これを(21)式に代入すれば

$$
(1+s^2)^{1/2} \phi^{\prime \prime} + s(1+s^2)^{-1/2} \phi^\prime - n^2 (1+s^2)^{-1/2} \phi \phi 
= 0
$$

を得ます。
これを変形すると

$$
\frac{d}{ds} \left[ (1+s^2)^{1/2} \phi^\prime \right] 
= n^2 (1+s^2)^{-1/2} \phi
$$

となります。
この両辺に$$(1+s^2)^{1/2} \phi^\prime$$をかけ、積分を行いましょう。
すると

$$
(1+s^2)^{1/2} \phi^\prime \frac{d}{ds} \left[ (1+s^2)^{1/2} \phi^\prime \right] 
= n^2 \phi \phi^\prime 
\ \Longrightarrow \ 
\left\{ (1+s^2)^{1/2} \phi^\prime \right\}^2 
= n^2 \phi^2
$$

となります。
ここで積分定数はゼロとしました。
すると

$$
\frac{\phi^\prime}{\phi} 
= \frac{\pm n}{\sqrt{1+s^2}} 
\ \underbrace{\Longrightarrow}_{\int ds} \ \log \phi 
= \mp \ln (\sqrt{1+s^2} - s)
\ \Longrightarrow \ \phi 
= (\sqrt{1+s^2} - s)^{\mp n}
$$

のように計算されます。
以上より

$$
J_n^L (s)
= \frac{(\sqrt{1+s^2} - s)^{\mp n}}{\sqrt{1+s^2}}
$$

のように求まります。
$$\mp n$$のどちらの符号を取るかですが、これは境界条件から求めることにしましょう。
ラプラス変換の初期値の定理より

$$
J_n(0) 
= \lim_{s \rightarrow \infty} s J_n^L (s) 
= \lim_{s \rightarrow \infty} \frac{s^{\mp n} \left( \sqrt{1+\frac{1}{s^2}} - 1 \right)^{\mp n}}{\sqrt{1+\frac{1}{s^2}}}
$$

です。
$$s \rightarrow \infty$$でこの値が収束するには、マイナス符号を選択する必要があります。
このとき右辺は0に収束しますが、$$J_n(0)=0$$となるのは$$n = 1, 2, \dots$$の場合のみです。
以上から

$$
J_n^L (s) 
= \frac{(\sqrt{1+s^2} - s)^{- n}}{\sqrt{1+s^2}} \qquad (n = 1, 2, \dots)
$$

のようになります。
上の式では$$n=0$$は除外されていますが、実は

$$
\begin{aligned}
\mathcal{L}[J_0] 
&= \sum_{k=0}^\infty \frac{(-1)^k}{2^{2k} (k!)^2} \mathcal{L}[z^{2k}] 
= \sum_{k=0}^\infty \frac{(-1)^k}{2^{2k} (k!)^2} \frac{(2k)!}{s^{2k+1}}
= s \sum_{k=0}^\infty \frac{(-1)^k}{2^{2k}} {}_{2k} C_k (s^{-2})^k 
= s (1+s^{-2})^{-1/2} \\
&= \frac{1}{\sqrt{1+s^2}} 
= J_0^L (s)
\end{aligned}
$$

のように計算されるため、結局

$$
J_n^L (s) 
= \frac{(\sqrt{1+s^2} - s)^{-n}}{\sqrt{1+s^2}} \qquad (n = 0, 1, \dots) \tag{21}
$$

と求まります。  
(21)式において$$s=0$$とすれば

$$
\int_0^\infty J_n(z) dz 
= 1 \qquad (n=0, 1, \dots) \tag{22}
$$

という公式も導くことができました。

{% include adsense.html %}

## ベッセル関数の漸近的振る舞い

$$
J_\nu (z) 
= \frac{1}{\pi} \int_0^\pi \cos(z\sin \theta - n \theta) d\theta 
= \frac{1}{\pi} \mathrm{Re} \int_0^\pi e^{i(z\sin \theta - n \theta)} d\theta
$$

において、$$z \gg 1$$の場合の漸近的な振る舞いを示してみましょう。
積分で一番寄与が大きいのは、指数の肩の部分が最大値の部分です。
すなわち

$$
\frac{d}{d\theta} (z\sin \theta - n \theta) 
= z\cos \theta - n 
= 0 \ \Longrightarrow \ \cos \theta_0 
= \frac{\nu}{z}
$$

およびその近傍の値のみで、積分を計算していくことにしましょう。
このとき

$$
\sin \theta_0 
= \sqrt{1 - \frac{\nu^2}{z^2}} 
= \frac{\sqrt{z^2 - \nu^2}}{z} 
$$

です。
このような鞍点$$\theta_0$$周りで、$$\theta = \theta_0 + t$$として展開しましょう。

$$
z\sin \theta - n\theta 
\approx (z\sin \theta_0 - n \theta_0) + \frac{1}{2} (-z \sin \theta_0) t^2 
= \sqrt{z^2 - \nu^2} - n \theta_0 - \frac{\sqrt{z^2 - \nu^2}}{2} t^2 
$$

途中、鞍点から一階微分はゼロとしました。
よって

$$
J_\nu (z) 
= \frac{1}{\pi} \mathrm{Re} \ e^{i\left\{ \sqrt{z^2 - \nu^2}- n \theta_0 \right\}} \int_0^\pi e^{-i \frac{\sqrt{z^2 -\nu^2}}{2} t^2} d\theta
$$

のようになります。
積分する変数を$$\theta: 0 \rightarrow \pi$$から$$t$$に変換しましょう。
このとき被積分関数は$$t=0$$で鋭いピークを持つことから、積分範囲を$$-\infty < t < \infty$$に拡張します。
するとガウス積分から

$$
\int_{-\infty}^\infty e^{-i \frac{\sqrt{z^2 - \nu^2}}{2} t^2} dt 
= \sqrt{\frac{2\pi}{\sqrt{z^2 - \nu^2}}} e^{-i\pi / 4}
$$

です。
今回は$$z\gg 1$$の振る舞いを考えているため、$$\sqrt{z^2 - \nu^2} \approx z, z \sin \theta_0 - n\theta_0 \approx z - \nu \frac{\pi}{2}$$として良いでしょう。
よって

$$
J_\nu(z) 
\approx \frac{1}{\pi} \mathrm{Re} \left[ e^{i\left( z - \frac{\nu \pi}{2}\right)} \sqrt{\frac{2\pi}{z}} e^{-i\pi / 4}\right] 
= \sqrt{\frac{2}{\pi z}} \cos \left( z -\frac{2\nu + 1}{4} \pi\right) \tag{23}
$$

のようになります。
$$z \gg 1$$では、ベッセル関数は$$\cos$$で振動しつつ、$$z^{-1/2}$$でその振幅を減衰させるような関数であるとわかります。

## ベッセル関数の概形

以下にいくつかの$$n$$に対するベッセル関数を図示するスクリプトを示します。

```python
#!/usr/bin/env python3 

import numpy as np
import matplotlib.pyplot as plt
import scipy.special as sc

if __name__ == '__main__':
    # set variables
    ix = 100
    xmin = 0.0
    xmax = 10.0
    nmin = 0
    nmax = 5
    # set x coordinate
    x = np.linspace(xmin, xmax, ix)
    # main loop of plotting Bessel functions
    for n in range(nmin, nmax):
        ei = sc.jv(n, x)
        string = "n={}".format(n)
        plt.plot(x, ei, label=string)
        plt.legend()
    # make plot window
    plt.show()
```

そしてこのスクリプトによって図示された結果は以下のようになります。

![ベッセル関数。](/assets/images/math/bessel.png)

## 参考文献

[1] [田島, 近道, "改訂 演習工科の数学4 複素関数"](https://amzn.to/405zY0w)  
[2] [中山, "裳華房フィジックスライブラリー 物理数学 II"](https://amzn.to/3GxeWRt)  
[3] [福山, 小形, "基礎物理学シリーズ3 物理数学 I"](https://amzn.to/3o5YUaz)  
[4] [倭算数理研究所, ベッセル関数(円柱関数)の公式あれこれ](https://wasan.hatenablog.com/entry/2017/06/03/223531)  
[5] [まめけびのごきげん数学・物理, 第1種ベッセル関数の積分表示(2) ポアソン公式の導出](https://mamekebi-science.com/math/integral/besselfunction-integralrepresentation-2/)  
[6] [Mathematica tutorial for the fourst course. Part VI: Bessel Functions](https://www.cfm.brown.edu/people/dobrush/am33/Mathematica/ch6/bessel.html)  

{% include adsense.html %}