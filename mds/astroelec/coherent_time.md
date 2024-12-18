---
layout: default
title: 観測の不確定性と可干渉時間
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/coherent_time
nav_order: 1
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

# 観測の不確定性と可干渉時間

$$-\Delta t /2 \leq t \leq \Delta t /2$$の間で

$$
E(t) = \cos \omega_0 t
$$

を観測し、それ以外では$$E(t) = 0$$の波が存在したとします。以下では$$\omega_0 \gg 2\pi /\Delta t$$とし、正の角周波数のスペクトルのみ考えることにましょう。

## フーリエ変換

$$
E(t) = \left\{
\begin{array}{ll}
\cos \omega_0 t & (-\displaystyle{\frac{\Delta t}{2}} < t < \displaystyle{\frac{\Delta t}{2}})\\
\\
0 & \mathrm{(otherwise)}
\end{array} \right.
$$

の波形を観測したと考え、これをフーリエ変換します。

$$
\begin{align}
\hat{E}(\omega) 
&= \frac{1}{2\pi} \int_{-\infty}^{+\infty} E(t) e^{i\omega t} \ dt 
= \frac{1}{2\pi} \int_{-\Delta t/2}^{\Delta t/2} \cos \omega_0 t e^{i\omega t} \ dt
= \frac{1}{4\pi} \int_{-\Delta t/2}^{\Delta t/2} (e^{i (\omega+\omega_0)t} + e^{i (\omega-\omega_0) t}) dt \notag \\
&= \frac{1}{4\pi i} \left[\frac{e^{i (\omega+ \omega_0) t}}{\omega + \omega_0} + \frac{e^{i (\omega -\omega_0) t}}{\omega -\omega_0}\right]_{-\Delta t/2}^{\Delta t/2} \notag \\
&= \frac{1}{4\pi i} \left\{ \frac{1}{\omega + \omega_0} (e^{i(\omega+\omega_0)\frac{\Delta t}{2}}- e^{-i(\omega+ \omega_0)\frac{\Delta t}{2}})+\frac{1}{\omega - \omega_0} (e^{i(\omega-\omega_0)\frac{\Delta t}{2}}- e^{-i(\omega- \omega_0)\frac{\Delta t}{2}}) \right\} \notag \\
&= \frac{1}{2\pi} \left( \frac{\sin \left( (\omega + \omega_0) \frac{\Delta t}{2}\right)}{\omega+ \omega_0} + \frac{\sin \left( (\omega - \omega_0) \frac{\Delta t}{2}\right)}{\omega- \omega_0}\right)
\end{align}
$$

## sinc関数の性質と波の広がり

(1)式の最右辺に置いて、物理的に意味を持つ$$\omega > 0$$のみを考えましょう。

$$
\hat{E}(\omega) = \frac{1}{2\pi} \frac{\sin \left( (\omega - \omega_0) \frac{\Delta t}{2}\right)}{\omega- \omega_0}
$$

これはsinc関数より$$\omega = \omega_0$$を中心として$$\Delta \omega \simeq \frac{2\pi}{\Delta t}$$程度の広がりを持ちます。すなわち実際に観測されるのは角振動数が$$\omega_0 - \frac{\Delta \omega}{2} < \omega < \omega_0 + \frac{\Delta \omega}{2}$$の波です。

物理的解釈からこの広がりを考えてみましょう。観測時間が$$-\frac{\Delta t}{2} < t < \frac{\Delta t}{2}$$なので、それ以外の時間では波が存在していないと考えることができます。このような波形を作るには多数の角振動数の波を重ね合わさなければなりません。$$\frac{\Delta t}{2}$$の時間が経過した所で角振動数$$\omega_0$$の波が消えるためには$$t=\frac{\Delta t}{2}$$でこの波と位相が$$\pi$$ずれた波が存在していればよいと考えられるでしょう。その波の角振動数を$$\omega_0+\Delta \omega$$とすると

$$
(\omega_0+ \Delta \omega) \frac{\Delta t}{2} - \omega_0 \frac{\Delta t}{2} 
= \frac{\Delta \omega \Delta t}{2} \sim \pi 
\ \Longrightarrow \ \Delta \omega \simeq \frac{2\pi}{\Delta t}
$$

逆に言えばこれくらいの角振動数の広がりが仕込まれていることによって、観測時間が有限であるような波形が再現される、ということになります。$$\Delta t \simeq \frac{2\pi}{\Delta \omega}$$を可干渉時間(coherent time)と呼びます。

{% include adsense.html %} 
