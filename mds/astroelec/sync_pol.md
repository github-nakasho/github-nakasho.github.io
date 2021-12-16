---
layout: default
title: シンクロトロン放射偏光度の厳密な導出
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/sync_pol
nav_order: 20
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

# シンクロトロン放射偏光度の厳密な導出

[相対論的ビーミング](/astroelec/rel_beaming)から、ピッチ角が観測者の視線方向と磁場のなす角と一致している電子からの放射がほとんど観測されます。このとき、円運動を真横から見た形になるので、磁場に垂直方向に直線偏光したものを観測するでしょう。ピッチ角がこれより大きな電子は右回りに回って見えるので、右回り楕円偏光になります。逆にピッチ角がこれより小さな電子は左回りに回って見えるため、左回り楕円偏光となります。様々なピッチ角の電子からの放射の重ね合わせを観測することを考慮すると、楕円偏光の部分は打ち消しあって無偏光を作ると予想されます。結果として、直線偏光と無偏光の重ね合わせとして観測されるでしょう。直線偏光を作る部分は[相対論的ビーミング](/astroelec/rel_beaming)を受けているため強度が強く、偏光度も非常に大きいと考えられます。

![様々なピッチ角からの電子の放射の見え方](/assets/images/astroelec/sync_pol_01.png)

上述の議論を数式から厳密に導出してみましょう。

## 1つの電子からのシンクロトロン放射のストークス$$Q$$

[ストークスパラメータ](/astroelec/stokes)で定義されたストークスパラメータの1つである$$Q$$を求めてみましょう。その定義から

$$
Q d\omega
= \int_{4\pi} \frac{dW_\parallel}{d\Omega dt'} - \frac{dW_\perp}{d\Omega dt'} d\Omega
$$

です。これらは[シンクロトロン放射のスペクトルを求める](/astroelec/sync_spec)の(5), (6)式としてすでに求めているため、計算を行うと

$$
Q d\omega
= \frac{e^2}{c} \sum_{n=0}^\infty \omega_n^2 \int_0^\pi \left\{ \beta^2 J_n'(\lambda_n)^2 \sin \theta - \frac{\cos^2 \theta}{\sin \theta} J_n(\lambda_n)^2 \right\}
$$

ここで$$\omega_n = n \omega_\mathrm{se}, \lambda_n = n \beta \sin \theta$$です。

$$
\int_{\pi/2}^\pi J_n' (n \beta \sin \theta)^2 \sin \theta \ d \theta 
\underbrace{=}_{\theta = \pi - \Theta} - \int_{\pi/2}^0 J_n' (n \beta \sin (\pi-\Theta))^2 \sin (\pi- \Theta) d\Theta
= \int_0^{\pi/2} J_n' (n \beta \sin \Theta)^2 \sin \Theta \ d\Theta
$$

$$
\int_{\pi/2}^\pi \frac{\cos^2 \theta}{\sin \theta} J_n (n \beta \sin \theta)^2 d \theta 
\underbrace{=}_{\theta = \pi - \Theta} - \int_{\pi/2}^0 \frac{\cos^2(\pi- \Theta)}{\sin (\pi- \Theta)} J_n (n \beta \sin (\pi - \Theta))^2 d \Theta 
= \int_0^{\pi/2} \frac{\cos^2 \Theta}{\sin \Theta} J_n (n \beta \sin \Theta)^2 \ d \Theta
$$

より

$$
Q d\omega
= \frac{2 e^2}{c} \sum_{n=0}^\infty \omega_n^2 \int_0^{\pi/2} \left\{ \beta^2 J_n' (\lambda_n)^2 \sin \theta - \frac{\cos^2 \theta}{\sin \theta} J_n (\lambda_n)^2 \right\} d \theta
$$

そして

$$
n
=\frac{\omega}{\omega_\mathrm{se}}
\ \Longrightarrow \ \sum_{n=0}^\infty 
=\int_0^\infty dn 
=\int_0^\infty \frac{d\omega}{\omega_\mathrm{se}}
$$

のように和の記号を積分に置き換えます。すると

$$
\begin{align}
&Q \ d\omega 
= \frac{2 e^2}{c} \int_0^\infty \frac{d\omega}{\omega_\mathrm{se}} \omega^2 \int_0^{\pi/2} \left\{ \beta^2 J_n'^2 (\lambda_n) \sin \theta - \frac{\cos^2 \theta}{\sin \theta} J_n^2 (\lambda_n) \right\} d \theta \notag \\
&\Longrightarrow \ Q 
= \frac{2 e^2}{c} \frac{\omega^2}{\omega_\mathrm{\rm se}} \int_0^{\pi/2} \left[\beta^2 J_n'^2 (\lambda_n) \sin \theta - \frac{\cos^2 \theta}{\sin \theta} J_n^2 (\lambda_n) \right] d \theta \notag
\end{align}
$$

[ベッセル関数で成り立つ漸化式](/math/bessel)より


$$
\begin{align}
&J_n(\lambda_n) 
= \frac{\lambda_n}{2n} (J_{n-1} (\lambda_n)+ J_{n+1} (\lambda_n)) \notag \\
&\Longrightarrow \ J_n^2 
= \frac{\lambda_n^2}{4n^2} (J_{n-1}^2 + 2 J_{n-1} J_{n+1} + J_{n+1}^2)
= \frac{\beta^2 \sin^2 \theta}{4} (J_{n-1}^2 + 2 J_{n-1} J_{n+1} + J_{n+1}^2) \notag 
\end{align}
$$

よって

$$
2 J_{n-1}J_{n+1} 
= \frac{4}{\beta^2 \sin^2 \theta} J_n^2 - (J_{n-1}^2+ J_{n+1}^2)
$$

さらに

$$
J_n' (\lambda_n) 
= \frac{1}{2} (J_{n-1}(\lambda_n) - J_{n+1}(\lambda_n)) 
\ \Longrightarrow \ J_n'^2 (\lambda_n) 
= \frac{1}{4} (J_{n-1}^2 - 2 J_{n-1} J_{n+1} + J_{n+1}^2)
$$

より

$$
\begin{align}
Q 
&= \frac{2 e^2 \omega^2}{c \omega_\mathrm{se}} \int_0^{\pi/2} \left\{ \frac{\beta^2 \sin \theta}{4} ( J_{n-1}^2 - 2J_{n-1}J_{n+1} + J_{n+1}^2 ) - \frac{1-\sin^2 \theta}{\sin \theta} J_n^2 \right\} d \theta \notag \\
&= \frac{2 e^2 \omega^2}{c \omega_\mathrm{se}} \int_0^{\pi/2} \left[ \frac{\beta^2 \sin \theta}{4} \left\{ J_{n-1}^2 - \left( \frac{4}{\beta^2 \sin^2 \theta} J_n^2 - (J_{n-1}^2+ J_{n+1}^2) \right) + J_{n+1}^2 \right\} - \frac{1-\sin^2 \theta}{\sin \theta} J_n^2 \right] d \theta \notag \\
&= \frac{2 e^2 \omega^2}{c \omega_\mathrm{se}} \int_0^{\pi/2} \left\{ \frac{\beta^2 \sin \theta}{2} ( J_{n-1}^2 + J_{n+1}^2)- \frac{2 J_n^2}{\sin \theta} + J_n^2 \sin \theta \right\} d \theta \notag
\end{align}
$$

ここで[ベッセル関数の積分公式](/math/bessel)

$$
\int_0^{\pi/2} J_n^2(z \sin \theta) \sin \theta d\theta 
=\frac{1}{2z} \int_0^{2z}J_{2n}(t)dt
$$

$$
\int_0^{\pi/2} \frac{J_n^2 (z \sin \theta)}{\sin \theta} \ d\theta 
= \int_0^{2z} \frac{J_{2n} (t)}{t} dt 
\ \Longrightarrow \ \int_0^{\pi/2} \frac{J_n^2 (n \beta \sin \theta)}{\sin \theta} \ d\theta 
= \int_0^{2n\beta} \frac{J_{2n} (t)}{t} dt 
$$

を用いて式変形を進めます。

$$
\begin{align}
&\int_0^{\pi/2} \left\{ \frac{\beta^2 \sin \theta}{2} ( J_{n-1}^2 + J_{n+1}^2)- \frac{2 J_n^2}{\sin \theta} + J_n^2 \sin \theta \right\} d \theta
= \int_0^{\pi/2} \left\{ \frac{\beta^2 \sin \theta}{2} ( J_{n-1}^2 + J_{n+1}^2)- \frac{2 J_n^2}{\sin \theta} + J_n^2 \sin \theta \right\} d \theta \notag \\
&= \frac{\beta^2}{2} \frac{1}{2n \beta} \int_0^{2n\beta} (J_{2(n-1)} + J_{2(n+1)}) dt - 2 \int_0^{2n\beta} \frac{J_{2n}}{t} dt + \frac{1}{2n\beta} \int_0^{2n\beta}  J_{2n} dt \notag \\
&= \frac{\beta}{4n} \int_0^{2n\beta} (J_{2(n-1)} + J_{2(n+1)}) dt + \int_0^{2n\beta} J_{2n}\left( \frac{1}{2n\beta} - \frac{2}{t}\right) dt \notag
\end{align}
$$

さらに

$$
\begin{align}
J_{2n-1}' 
&= \frac{1}{2} (J_{2n-2} - J_{2n}) \ \Longrightarrow \ J_{2(n-1)} 
= 2 J_{2n-1}' + J_{2n} \notag \\ 
J_{2n+1}' 
&= \frac{1}{2} (J_{2n} - J_{2n+2}) \ \Longrightarrow \ J_{2(n+1)} 
= J_{2n} - 2 J_{2n+1}' \notag
\end{align}
$$

より

$$
\begin{align}
&\frac{\beta}{4n} \int_0^{2n\beta} (J_{2(n-1)} + J_{2(n+1)}) dt + \int_0^{2n\beta} J_{2n}\left( \frac{1}{2n\beta} - \frac{2}{t}\right) dt \notag \\
&= \frac{\beta}{4n} \int_0^{2n\beta} (2 J_{2n-1}' + J_{2n} + J_{2n} - 2J_{2n+1}' )dt + \int_0^{2n\beta} J_{2n} \left( \frac{1}{2n\beta} - \frac{2}{t} \right) dt \notag \\
&= \frac{\beta}{2n} \int_0^{2n\beta} ( J_{2n-1}' - J_{2n+1}' ) dt +  \int_0^{2n\beta} J_{2n} \left( \frac{\beta}{2n} + \frac{1}{2n\beta} - \frac{2}{t} \right) dt \notag
\end{align}
$$

です。ベッセル関数について成り立つ漸化式の両辺を微分すると

$$
J_{2n}'' 
= \frac{1}{2} (J_{2n-1}' - J_{2n+1}')
$$

が成り立つことから

$$
\begin{align}
&\frac{\beta}{2n} \int_0^{2n\beta} ( J_{2n-1}' - J_{2n+1}' ) dt +  \int_0^{2n\beta} J_{2n} \left( \frac{\beta}{2n} + \frac{1}{2n\beta} - \frac{2}{t} \right) dt \notag \\
&= \frac{\beta}{n} \int_0^{2n\beta} J_{2n}'' \ dt + \int_0^{2n\beta} J_{2n} \left( \frac{\beta}{2n} + \frac{1}{2n\beta} - \frac{2}{t} \right) dt
= \frac{\beta}{n} [J_{2n}']_0^{2n\beta} + \int_0^{2n\beta} J_{2n} \left(\frac{1+\beta^2}{2n\beta} - \frac{2}{t} \right) dt \notag \\
&= \frac{\beta}{n} J_{2n}' (2n\beta) + \int_0^{2n\beta} J_{2n} \left(\frac{1+\beta^2}{2n\beta} - \frac{2}{t} \right) dt \notag
\end{align} 
$$

以上より

$$
Q
=\frac{2e^2 \omega^2}{c\omega_{\rm se}} \left( \frac{\beta}{n} J_{2n}' (2n\beta) + \int_0^{2n\beta} J_{2n} \left(\frac{1+\beta^2}{2n\beta} - \frac{2}{t} \right) dt \right) \tag{1}
$$

ここで第一項において[シンクロトロン放射のスペクトル](/astroelec/sync_spectrum)のときに現れた関係式

$$
J_{2n}’(2n\beta) 
= - \frac{\beta}{\sqrt{\pi}n^{2/3}}\Phi’(n^{2/3}(1-\beta^2))
$$

を用います。ここで$$\Phi$$は[エアリー関数](/math/modified_bessel_airy)です。さらに[エアリー関数と修正ベッセル関数の関係式](/math/modified_bessel_airy)より

$$
\begin{align}
(\mathrm{First \ term}) 
&= \frac{2e^2 \omega^2 \beta}{c \omega_\mathrm{se} n} \left\{ - \frac{\beta}{\sqrt{\pi} n^{2/3}} \Phi'(n^{2/3} (1-\beta^2))\right\} \notag \\
&= \frac{2e^2\omega^2 \beta}{c \omega_\mathrm{se} n} \left[ \left( -\frac{\beta}{\sqrt{\pi} n^{2/3}} \right) \left\{ - \frac{n^{2/3}}{\sqrt{3\pi}} (1-\beta^2) K_{2/3} \left( \frac{2}{3} n (1-\beta^2)^{3/2} \right) \right\} \right] \notag \\
&= \frac{2e^2\omega^2 \beta^2}{\sqrt{3} \pi c \underbrace{\omega_\mathrm{se} n}_{=\omega}} \underbrace{(1-\beta^2)}_{\gamma^{-2}} K_{2/3} \left( \frac{2}{3} n (1-\beta^2)^{3/2} \right) 
= \frac{2e^2\omega \omega_\mathrm{se} \overbrace{\beta^2}^{\simeq 1}}{\sqrt{3} \pi c \omega_\mathrm{se} \gamma^2} K_{2/3} \left( \frac{2}{3} n (1-\beta^2)^{3/2} \right) \notag \\
&\underbrace{=}_{\omega_\mathrm{ce} = \omega_\mathrm{se} \gamma} \frac{2e^2\omega \omega_\mathrm{ce}}{\sqrt{3} \pi c \omega_\mathrm{se} \gamma^3} K_{2/3} \left( \frac{2}{3} n \gamma^{-3} \right) \notag
\end{align}
$$

途中、電子の運動が超相対論的であることから$$\beta^2 \sim 1$$を用いました。  
ここで

$$
\omega_\mathrm{c} 
\equiv \frac{3}{2} \omega_\mathrm{se} \gamma^3
$$

とおくと

$$
(\mathrm{First \ term}) 
= \frac{\sqrt{3} e^2 \omega_\mathrm{ce}}{\pi c}\frac{\omega}{\omega_\mathrm{c}} K_{2/3} \left( \frac{\omega}{\omega_\mathrm{ce}}\right) 
\underbrace{=}_{\chi \equiv \omega/\omega_\mathrm{c}} \frac{\sqrt{3} e^2 \omega_{\rm ce}}{\pi c} \chi K_{2/3} ( \chi) \tag{2}
$$

これと(1)式より

$$
Q 
= \frac{\sqrt{3} e^2 \omega_\mathrm{ce}}{\pi c} \chi K_{2/3} ( \chi) + \frac{2e^2 \omega^2}{c \omega_{\rm se}} \int_0^{2n\beta} J_{2n} \left( \frac{1+\beta^2}{2n\beta} - \frac{2}{t} \right) dt
$$

第二項の積部分部分のみを抜き出して計算をさらに進めましょう。

$$
(\mathrm{Second \ term \ integration}) 
=  \frac{1}{2n} \int_0^{2n\beta} J_{2n} \left( \frac{1+\beta^2}{\beta} - \frac{2 \cdot 2n}{t} \right) dt
\underbrace{\simeq}_{\beta \sim 1}  \frac{1}{2n} \int_0^{2n\beta} \left( 2J_{2n} - \frac{2 \cdot 2n}{t} J_{2n}\right) dt
$$

[ベッセル関数の漸化式](/math/bessel)より

$$
\frac{2 \cdot 2n}{t} J_{2n} = J_{2n-1} + J_{2n+1}
$$

を用いて

$$
(\mathrm{Second \ term \ integration}) 
= \frac{1}{2n} \int_0^{2n\beta} (2 J_{2n} - J_{2n-1}- J_{2n+1}) dt
$$

この式を整理するために、[ベッセル関数の積分表示](/math/bessel)

$$
J_{2n} 
= \frac{1}{\pi} \int_0^\pi \cos (2n \varphi - t \sin \varphi) d\varphi 
=  \frac{1}{\pi} \int_0^\pi \cos x_{2n} d\varphi
$$

に戻って計算する必要があります。ここで$$x_{2n} \equiv 2n \varphi - t \sin \varphi$$とおきました。

$$
\begin{align}
J_{2n+1} - J_{2n} 
&= \frac{1}{\pi} \int_0^\pi (\cos x_{2n+1} - \cos x_{2n}) d\varphi 
= \frac{1}{\pi} \int_0^\pi \{ \cos (x_{2n}+\varphi) - \cos x_{2n} \} d\varphi \notag \\
&= \frac{1}{\pi} \int_0^\pi \{ \cos x_{2n} \cos \varphi - \sin x_{2n} \sin\varphi- \cos x_{2n} \} d\varphi \notag
\end{align}
$$

ここで$$n \gg 1$$のとき、$$\varphi$$積分いおいては$$\varphi \ll 1$$でしか積分に寄与しないことを思い出すと

$$
J_{2n+1} - J_{2n} 
\simeq \frac{1}{\pi} \int_0^\pi \{ \cos x_{2n} - \varphi \sin x_{2n}  - \cos x_{2n} \} d\varphi
= - \frac{1}{\pi} \int_0^\pi \varphi \sin x_{2n} d\varphi
$$

一方

$$
\begin{align}
\frac{\partial }{\partial t} \int_0^\pi \cos x_{2n} d\varphi 
&= \int_0^\pi \frac{\partial }{\partial t} \cos x_{2n} d\varphi 
= \int_0^\pi \underbrace{\frac{\partial x_{2n}}{\partial t}}_{= - \sin \varphi} \frac{\partial }{\partial x_{2n}} \cos x_{2n} d\varphi \notag \\
&= \int_0^\pi \sin \varphi \sin x_{2n} d\varphi 
\underbrace{\simeq}_{\varphi \ll 1} \int_0^\pi \varphi \sin x_{2n} d\varphi \notag 
\end{align}
$$

さらに

$$
\begin{align}
J_{2n}- J_{2n-1} 
&= \frac{1}{\pi} \int_0^\pi (\cos x_{2n+1}- \cos x_{2n}) d\varphi 
= \frac{1}{\pi} \int_0^\pi \{ (\cos (x_{2n}+\varphi)- \cos x_{2n}) \}d\varphi \notag \\
&=\frac{1}{\pi} \int_0^\pi \{ \cos (x_{2n}+\varphi)- \cos x_{2n} \}d\varphi
= \frac{1}{\pi} \int_0^\pi (\cos x_{2n} \cos \varphi - \sin x_{2n} \sin \varphi - \cos x_{2n}) d \varphi \notag \\
&\underbrace{\simeq}_{\varphi \ll 1} \frac{1}{\pi} \int_0^\pi (\cos x_{2n} - \sin \varphi \sin x_{2n} - \cos x_{2n}) d\varphi \notag \\
&= - \frac{1}{\pi} \int_0^\pi \sin \varphi \sin x_{2n} \ d\varphi 
= - \frac{1}{\pi} \frac{\partial}{\partial t} \int_0^\pi \cos x_{2n} \ d\varphi 
= - J_{2n}'
\end{align}
$$

以上より

$$
\therefore \ 2J_{2n} - J_{2n-1} - J_{2n+1} 
= - J_{2n}''
$$

これを用いると

$$
\begin{align}
(\mathrm{Second \ term}) 
&= - \frac{2e^2 \omega^2}{c \omega_\mathrm{se}}\frac{1}{2n} \int_0^{2n\beta} J_{2n}'' dt
= - \frac{2e^2 \omega^2}{c \omega_\mathrm{se}}\frac{1}{2n} [J_{2n}']_0^{2n\beta}
= - \frac{e^2 \omega^2}{c \omega_\mathrm{se} n} J_{2n}'(2n\beta) \notag \\
&= \frac{e^2 \omega^2}{c \omega_\mathrm{se} n} \frac{\beta}{\sqrt{\pi} n^{2/3}} \Phi' (n^{2/3} (1-\beta^2))
= \frac{e^2 \omega^2 \beta}{c \omega_\mathrm{se} n^{5/3} \sqrt{\pi}} \left\{ - \frac{n^{2/3}(1-\beta^2)}{\sqrt{3\pi}} K_{2/3} \left(\frac{2}{3} n (1-\beta^2)^{3/2} \right) \right\} \notag \\
&= - \frac{e^2 \omega^2 \beta}{\sqrt{3} c \omega_\mathrm{se} n \pi } (1- \beta^2) K_{2/3} \left(\frac{2}{3} n (1-\beta^2)^{3/2} \right) 
= - \frac{e^2 \omega \beta}{\sqrt{3} c \pi } \underbrace{(1- \beta^2)}_{= \gamma^{-2}} K_{2/3} \left(\frac{2}{3} \frac{\omega}{\omega_{\rm se}} (1-\beta^2)^{3/2} \right) \notag \\
&\underbrace{=}_{\beta \sim 1} - \frac{e^2 \omega}{\sqrt{3} c \pi \gamma^2} K_{2/3} \left( \frac{2}{3} \frac{\omega}{\omega_\mathrm{se}} \gamma^{-3} \right) 
= - \frac{e^2 \omega \omega_\mathrm{se}}{\sqrt{3} c \pi \omega_{\rm se} \gamma^2} K_{2/3} \left( \frac{2}{3} \frac{\omega}{\omega_{\rm se}} \gamma^{-3} \right) \notag \\
&\underbrace{=}_{\omega_\mathrm{ce} = \gamma \omega_\mathrm{se}} - \frac{e^2 \omega \omega_\mathrm{ce}}{\sqrt{3} c \pi \omega_{\rm se} \gamma^3} K_{2/3} \left( \frac{2}{3} \frac{\omega}{\omega_{\rm se}} \gamma^{-3} \right)
= - \frac{\sqrt{3} e^2 \omega_\mathrm{ce}}{2c \pi } \frac{\omega}{\omega_\mathrm{c}} K_{2/3} \left( \frac{\omega}{\omega_\mathrm{c}} \right) \notag \\
&\underbrace{=}_{\chi_0 \equiv \omega/\omega_\mathrm{c}} - \frac{\sqrt{3} e^2 \omega_\mathrm{ce}}{2c \pi } \chi_0 K_{2/3} ( \chi_0 ) \notag 
\end{align}
$$

最終的に

$$
Q 
= \frac{\sqrt{3} e^2 \omega_{\rm ce}}{2c \pi }  \chi_0 K_{2/3} ( \chi_0 ) 
= \frac{\sqrt{3} e^3 B }{2m_e c^2 \pi }  \chi_0 K_{2/3} ( \chi_0 ) \tag{3}
$$

のようになります。

{% include adsense.html %}

## べき乗の電子分布からの放射の$$Q$$

[シンクロトロン放射のスペクトル](/astroelec/sync_spectrum)のときと同様に、電子のエネルギー分布が

$$
N(\gamma) d\gamma 
= N_0 \left( \frac{\gamma}{\gamma_0} \right)^{-p} \frac{d\gamma}{\gamma_0}
$$

で与えられるときの$$\mathbf{n}$$方向へのストークスパラメータ$$Q$$は、先ほどの式を$$4\pi$$で割り立体角で平均を取ることで得ることができます。

$$
Q_e(\omega, {\bf n}) 
= \frac{\sqrt{3} e^3 B}{8\pi^2 m_e c^2} N_0 \gamma_0^{p-1} \int_0^\infty \gamma^{-p} \chi_0 K_{2/3} (\chi_0) d\gamma
$$

積分を計算しましょう。

$$
\begin{align}
&\chi_0 
= \frac{2}{3} u_0^{3/2} 
= \frac{2}{3} \frac{\omega}{\omega_\mathrm{se}} \gamma^{-3} 
= \frac{2m_ec\omega}{3eB} \gamma^{-2} \notag \\
&\Longrightarrow \ \gamma 
= \left( \frac{2m_e c \omega}{3eB}\right)^{1/2} \chi_0^{-\frac{1}{2}}
\ \Longrightarrow \ d\gamma 
= \left( \frac{2m_e c \omega}{3eB} \right)^{1/2} \left( - \frac{1}{2}\right) \chi_0^{-\frac{3}{2}} \ d\chi_0 \notag
\end{align}
$$

$$\gamma0 \rightarrow \infty$$のとき$$\chi_0 = \infty \rightarrow 0$$より

$$
\begin{align}
Q_e 
&= \frac{\sqrt{3} e^3 B  N_0 \gamma_0^{p-1}}{8\pi^2 m_e c^2} \int_\infty^0 \chi_0 K_{2/3} (\chi_0) \left( \frac{2}{3} \frac{\omega}{\omega_{\rm ce}}\right)^{- \frac{p}{2}} \chi_0^{p/2} \left( \frac{2}{3} \frac{\omega}{\omega_{\rm ce}} \right)^{1/2} \left( - \frac{1}{2} \right) \chi_0^{-\frac{3}{2}} \ d\chi_0 \notag \\
&= \frac{\sqrt{3} e^3 B  N_0 \gamma_0^{p-1}}{8\pi^2 m_e c^2} \left( \frac{2}{3} \frac{\omega}{\omega_{\rm ce}}\right)^{- \frac{p-1}{2}} \frac{1}{2} \int_0^\infty \chi_0^{\frac{p-3}{2} + 1} K_{2/3} (\chi_0) d\chi_0 \notag \\
&= \frac{\sqrt{3} e^3 B  N_0 \gamma_0^{p-1}}{8\pi^2 m_e c^2} \left( \frac{2}{3} \frac{\omega}{\omega_{\rm ce}}\right)^{- \frac{p-1}{2}} \frac{1}{2} \ 2^{\frac{p-3}{2}} \Gamma \left( \frac{p-3}{4} + \frac{4}{3} \right) \Gamma \left( \frac{p-3}{4} + \frac{2}{3} \right) \notag \\
&= \frac{\sqrt{3} e^3 B  N_0 \gamma_0^{p-1}}{8\pi^2 m_e c^2} \left( \frac{2}{3} \frac{\omega}{\omega_{\rm ce}}\right)^{- \frac{p-1}{2}} 2^{\frac{p-5}{2}} \Gamma \left( \frac{p}{4} + \frac{7}{12} \right) \Gamma \left( \frac{p}{4} - \frac{1}{12} \right) \notag
\end{align}
$$

[ガンマ関数の公式](/math/gamma)より

$$
\Gamma \left( \frac{p}{4} + \frac{19}{12} \right) 
= \Gamma \left( \frac{p}{4} + \frac{7}{12} + 1 \right) 
=  \left( \frac{p}{4} + \frac{7}{12} \right) \Gamma \left( \frac{p}{4} + \frac{7}{12} \right)
$$

から

$$
Q_e 
= \frac{\sqrt{3} e^3 B  N_0 \gamma_0^{p-1}}{8\pi^2 m_e c^2} \left( \frac{m_e c \omega}{3 e B} \right)^{- \frac{p-1}{2}} \frac{1}{p + \frac{7}{3} } \Gamma \left( \frac{p}{4} + \frac{19}{12} \right) \Gamma \left( \frac{p}{4} - \frac{1}{12} \right) \tag{4}
$$

## 偏光度

冒頭の議論から、シンクロトロン放射は直線偏光と無偏光の重ね合わせです。よって円偏光を特徴付ける[ストークスパラメータ](/astroelec/stokes)の$$V$$は0です。これに付随して$$U=0$$となることから、求めたかったシンクロトロン放射の偏光度は[放射強度スペクトルの部分で計算した](/astroelec/sync_spectrum)$$P_e$$より

$$
\Pi 
=\frac{Q_e}{P_e} 
= \frac{p+1}{p+\frac{7}{3}} \tag{5}
$$

となります。通常の天体では$$p \sim 3-5$$であるため、$$\Pi \sim 0.75 - 0.82$$程度と非常に大きな偏光度となります。また偏光方向は磁場に垂直な方向です。

{% include adsense.html %}

## Faraday depolarization

実はシンクロトロン放射が観測されている天体の多くでは、偏光度があまり大きくありません。この原因の1つにFaraday rotationがあります。観測者から見て天体の奥側で生成された放射は天体内を伝搬する間に強いFaraday rotationを受けます。一方で、観測者から見て天体の手前側で生成された放射はさほどFaraday rotationを受けません。結果として天体の奥側の放射の偏光方向と手前側の放射の偏光方向に大きな差が生じることとなります。途中で生成された放射の偏光方向はその間に分布し、これらを重ね合わせとして、お互いに打ち消しあった(偏光度が下がった)シンクロトロン放射が観測されます。これをFaraday depolarizationと呼びます。

![観測者から見て天体の奥側から来る放射と天体の手前側から来る放射のFaraday rotation](/assets/images/astroelec/sync_pol_02.png)

## Razin効果

プラズマは屈折率$$n$$が1以下の媒質です。その中では位相速度$$c/n$$が真空中の光速度$$c$$を上回ります。すると荷電粒子は光速度を超える速度で運動することはできないため、屈折率$$n$$が1を大きく下回ると[相対論的ビーミング効果](/astroelec/rel_beaming)が期待できなくなります。この効果を起こす指標として

$$
\kappa = 1- n\beta \cos \theta
$$

がありましたが、$$\gamma \gg 1, \theta \ll 1$$の場合

$$
\kappa \simeq 1- n + n \left( \frac{1}{2\gamma^2} + \frac{\theta^2}{2} \right)
$$

です。$$1-n \ll n / (2\gamma^2)$$ならばプラズマの影響は無視できますが、$$1-n > n / (2\gamma^2)$$ではプラズマの存在により相対論的ビーミング効果が弱まります。この考察から、$$\omega < \gamma \omega_\mathrm{pe}$$になると相対論的ビーミング効果が効かなくなり、シンクロトロン放射も観測されなくなります。したがって$$\gamma \omega_\mathrm{pe}$$がシンクロトロン放射の観測周波数の下限を与えることが期待されます。これをRazin効果と呼びます。

{% include adsense.html %}