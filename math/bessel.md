# ベッセル関数

## ベッセル関数の積分表示

母関数展開

$$
e^{\frac{z}{2}(\omega - 1/\omega)} 
= \sum_{n=-\infty}^{\infty} J_n (z) \omega^n \ (0<| \omega | <\infty) \tag{#1}
$$

によって定義される$$J_n(z)$$を$$n$$次のベッセル関数と呼びます。左辺を$$f(\omega ) = e^{\frac{z}{2} (\omega- 1/\omega)}$$と定義し、両辺を$$\omega^{n+1}$$で割りましょう。すると

$$
\begin{align}
\frac{f(\omega)}{\omega^{n+1}} 
&= \cdots + \frac{J_{n-3}(z)}{\omega^4} + \frac{J_{n-2}(z)}{\omega^3} + \frac{J_{n-1}(z)}{\omega^2} +  \frac{J_n(z)}{\omega} + J_{n+1}(z) + J_{n+2} (z) \omega + J_{n+3} (z) \omega^2 + \cdots \\
&=\sum_{m=-\infty}^{-1} \frac{J_{m+n}}{\omega^{m+3}} + \frac{J_n}{\omega} + \sum_{m=1}^\infty J_{m+n} \omega^{m-1}
\end{align}
$$

これを両辺複素数平面上$$| \omega | =1$$の円周上で経路積分する。すると留数定理より

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
=\frac{1}{\pi} \int_{0}^\pi \cos(z\sin \theta-n\theta) d\theta \tag{*1}
$$

となります。  

(*1)式を変形しましょう。

$$
J_n 
= \frac{1}{2\pi} \int_0^\pi [\exp\{ i (n\varphi - z \sin \varphi)\} + \exp \{ - i (n\varphi - z \sin \varphi)\}] \ d\varphi 
= \frac{1}{2\pi} \int_0^\pi (e^{in\varphi} e^{-i z \sin \varphi} + e^{-i n \varphi} e^{iz \sin \varphi}) \ d\varphi
$$

以下の様に変形を行います。

$$
\begin{align}
\int_0^\pi e^{in\varphi} e^{-iz\sin \varphi} \ d \varphi 
&\underbrace{=}_{\varphi \rightarrow -\varphi}
\int_0^{-\pi} (-e^{-in\varphi} e^{iz\sin \varphi}) \ d\varphi 
= \int_{-\pi}^0 e^{-in\varphi} e^{iz\sin \varphi} \ d\varphi 
\underbrace{=}_{\varphi \rightarrow \varphi + 2\pi}  \int_\pi^{2\pi} e^{-in(\varphi - 2\pi)} e^{iz \sin (\varphi - 2\pi)} \ d\varphi \\
&=\int_\pi^{2\pi} e^{-in\varphi} \underbrace{e^{i2\pi n}}_{=1} e^{iz \sin \varphi} \ d\varphi 
= \int_\pi^{2\pi} e^{-in\varphi} e^{iz \sin \varphi} \ d\varphi 
\end{align}
$$

$$
\therefore \ 
J_n 
= \frac{1}{2\pi} \int_0^{2\pi} e^{-in\varphi} e^{iz\sin\varphi} \ d\varphi \tag{*2}
$$

同様に次の様に式変形をしましょう。

$$
\begin{align}
\int_0^\pi e^{in\varphi} e^{-iz\sin \varphi} \ d\varphi 
&\underbrace{=}_{\varphi \rightarrow \varphi + \pi/2} \int_{\pi/2}^{3\pi/2} e^{in(\varphi- \pi/2)} e^{-iz\sin (\varphi- \pi/2)} \ d\varphi 
= \int_{\pi/2}^{3\pi/2} e^{in\varphi} \underbrace{e^{-in\frac{\pi}{2}}}_{=(e^{i \frac{\pi}{2}})^{-n}} e^{iz\cos \varphi} \ d\varphi \\
&= i^{-n} \int_{\pi/2}^{3\pi/2} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi
\end{align}
$$

$$
\begin{align}
\int_0^\pi e^{-in\varphi} e^{iz\sin \varphi} \ d\varphi 
&\underbrace{=}_{\varphi \rightarrow \varphi - \pi/2} \int_{-\pi/2}^{\pi/2} e^{-in(\varphi+ \pi/2)} e^{iz\sin (\varphi+ \pi/2)} \ d\varphi 
= \int_{-\pi/2}^{\pi/2} e^{-in\varphi} \underbrace{e^{-in\frac{\pi}{2}}}_{(e^{i \frac{\pi}{2}})^{-n}} e^{iz\cos \varphi} \ d\varphi \\
&= i^{-n} \int_{-\pi/2}^{\pi/2} e^{-in\varphi} e^{iz\cos\varphi} \ d\varphi
\underbrace{=}_{\varphi=-\varphi} i^{-n} \int_{\pi/2}^{-\pi/2} (-e^{in\varphi} e^{iz\cos(-\varphi)} ) \ d\varphi 
=i^{-n} \int_{-\pi/2}^{\pi/2} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi \\
&= i^{-n} \int_{-\pi/2}^{0} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi +  i^{-n} \int_{0}^{\pi/2} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi 
\end{align}
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
&= \frac{1}{2\pi} \left( i^{-n} \int_{\pi/2}^{3\pi/2} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi +  i^{-n} \int_{3\pi/2}^{2\pi} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi +  i^{-n} \int_{0}^{\pi/2} e^{in\varphi} e^{iz\cos\varphi} \ d\varphi \right) \\
&= \frac{i^{-n}}{2\pi} \int_0^{2\pi} e^{in\varphi} e^{iz \cos \varphi} \ d\varphi \tag{*3}
\end{align}
$$

## ベッセル関数の満たす漸化式

$$
\begin{align}
&J_{n-1} (z) + J_{n+1} (z) 
= \frac{1}{\pi} \int_0^\pi [\cos \{ (n-1) \varphi - z \sin \varphi) \} + \cos \{ (n+1) \varphi - z \sin \varphi \} ] \ d\varphi \\
&= \frac{1}{\pi} \int_0^\pi [ \cos \{ (n-1) \varphi \} \cos (z \sin \varphi) + \sin \{ (n-1) \varphi \} \sin (z \sin \varphi) + \cos \{ (n+1) \varphi \} \cos (z \sin \varphi) + \sin \{ (n+1)\varphi \} \sin (z \sin \varphi) ] \ d\varphi \\
&= \frac{1}{\pi} \int_0^\pi \{ 2\cos n \varphi \cos \varphi \cos (z \sin \varphi) + 2\sin n \varphi \cos \varphi \sin (z \sin \varphi) \} \ d\varphi \\
&= \frac{2}{\pi} \int_0^\pi \{\cos n \varphi \frac{1}{z} \frac{d}{d\varphi} \sin (z \sin \varphi) - \sin n\varphi \frac{1}{z} \frac{d}{d\varphi} \cos (z \sin \varphi) \} \ d\varphi \\
&= \frac{2}{\pi z} \left\{ \left[ \sin(z\sin \varphi) \cos n\varphi \right]_0^\pi - \int_0^\pi \sin (z\sin \varphi) n (-\sin n\varphi) \ d\varphi - \left[\sin n\varphi \cos (z\sin \varphi)  \right]_0^\pi + \int_0^\pi \cos (z\sin \varphi) n \cos n\varphi \ d\varphi\right\} \\
&= \frac{2n}{\pi z} \int_0^\pi \{ \sin (z\sin \varphi) \sin n\varphi + \cos (z\sin \varphi) \cos n\varphi \} \ d\varphi 
= \frac{2n}{z} \frac{1}{\pi} \int_0^\pi \cos (n\varphi- z \sin \varphi) \ d\varphi 
= \frac{2n }{z} J_n
\end{align}
$$

$$
\therefore \ J_{n-1}+ J_{n+1} 
= \frac{2n}{z} J_n \tag{*4}
$$

が成立します。同様に

$$
\begin{align}
&J_{n-1} (z) - J_{n+1} (z) 
= \frac{1}{\pi} \int_0^\pi [\cos \{ (n-1) \varphi - z \sin \varphi) \} - \cos \{ (n+1) \varphi - z \sin \varphi \} ] \ d\varphi \\
&= \frac{1}{\pi} \int_0^\pi [ \cos \{ (n-1) \varphi \} \cos (z \sin \varphi) + \sin \{ (n-1)\varphi \} \sin (z \sin \varphi) - \cos \{ (n+1) \varphi \} \cos (z \sin \varphi) - \sin \{ (n+1)\varphi \} \sin (z \sin \varphi)] \ d\varphi \\
&= \frac{1}{\pi} \int_0^\pi \{ 2\sin n \varphi \sin \varphi \cos (z \sin \varphi) - 2\sin \varphi \cos n\varphi \sin (z \sin \varphi) \} \ d\varphi \\
&= \frac{2}{\pi} \int_0^\pi \sin \varphi \{ \sin n \varphi \cos (z \sin \varphi) - \cos n\varphi \sin (z \sin \varphi) \} \ d\varphi 
= \frac{2}{\pi} \int_0^\pi \sin \varphi \sin (n\varphi- z \sin \varphi) \ d\varphi \\
&= \frac{2}{\pi} \int_0^\pi\frac{d}{dz} \cos (n\varphi- z \sin \varphi) \ d\varphi 
= 2 \frac{d}{dz} J_n
\end{align}
$$

$$
\therefore \ J_{n-1}- J_{n+1} 
= 2 \frac{d}{dz} J_n \tag{*5}
$$

## ベッセルの微分方程式

$$
\frac{d^2}{dz^2} J_n + \frac{1}{z} \frac{d}{dz} J_n + (1- \frac{n^2}{z^2}) J_n 
= 0 \tag{*6}
$$

この式はベッセルの微分方程式と呼ばれています。ベッセル関数がこの微分方程式を満たすことを示しましょう。

$$
(*5) \underbrace{\Longrightarrow}_{両辺z微分} 
2 \frac{d^2}{dz^2} J_n 
= \frac{d}{dz} J_{n-1} - \frac{d}{dz} J_{n+1} 
= \frac{1}{2} (J_{n-2} + J_n) - \frac{1}{2} (J_n - J_{n+2}) 
= \frac{1}{2} J_{n-2} - J_n + \frac{1}{2} J_{n+2}
$$

$$
\begin{align}
(*6)式左辺 \ \Longrightarrow \ 
&\frac{d^2}{dz^2} J_n+ \frac{1}{z} \frac{d}{dz} J_n + (1- \frac{n^2}{z^2}) J_n 
= \frac{1}{4} J_{n-2} -\frac{1}{2} J_n + \frac{1}{4} J_{n+2} + \frac{1}{2z} (J_{n-1} - J_{n+1}) + J_n - \frac{n}{2z} \frac{2n}{z} J_n \\
&= \frac{1}{4} J_{n-2} +\frac{1}{2} J_n + \frac{1}{4} J_{n+2} + \frac{1}{2z} (J_{n-1}- J_{n+1})- \frac{n}{2z} (J_{n-1}+ J_{n+1}) \\
&= \frac{1}{4} J_{n-2} +\frac{1}{2} J_n + \frac{1}{4} J_{n+2} - \frac{n-1}{2z} J_{n-1} - \frac{n+1}{2z} J_{n+1} \\
&= \frac{1}{4} J_{n-2} +\frac{1}{2} J_n + \frac{1}{4} J_{n+2} - \frac{1}{4}( J_{n-2} + J_n) - \frac{1}{4} (J_{n} + J_{n+2}) 
= 0 
\end{align}
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
(*1) \ \Longrightarrow \ 
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
\begin{align}
J_n(n \epsilon) 
&\simeq \frac{1}{\pi} \int_0^\infty \cos \left[ n \left\{ \xi - \epsilon \left( \xi - \frac{1}{3!} \xi^3 \right)\right\} \right] d\xi 
= \frac{1}{\pi} \int_0^\infty \cos \left[ n \left\{ \xi(1 - \epsilon) + \frac{\epsilon}{6} \xi^3 \right\} \right] d\xi \\
&\simeq \frac{1}{\pi} \int_0^\infty \cos \left[ n \left\{ \xi \left( 1- \frac{1+ \epsilon^2}{2}\right) + \frac{\epsilon}{6} \xi^3 \right\} \right] d\xi 
= \frac{1}{\pi} \int_0^\infty \cos \left[ n \left( \frac{1- \epsilon^2}{2} \xi + \frac{\epsilon}{6} \xi^3 \right) \right] d\xi
\end{align}
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
= \left( \frac{z}{2} \right)^n \sum_{k=0}^\infty \frac{(-1)^k}{k! (n+k)!} \left( \frac{z}{2}\right)^{2k} \tag{*7}
$$

(ii) $$n < 0$$のとき、前の$$\{ \cdots \}$$から$$\omega^k$$の項、後ろの$$\{ \cdots \}$$から$$\omega^{n-k}$$の項を選び出せば、$$\omega^n$$の項を選び出すことができます(ただし$$k\geq 0$$)。

$$
(\omega^nの項) 
= \sum_{k=0}^\infty \frac{1}{k!} \left( \frac{z}{2} \right)^k \omega^{k} \frac{(-1)^{-(n-k)}}{\{-(n-k)\}!} \left( \frac{z}{2}\right)^{-(n-k)} \omega^{n-k} 
=\left( - \frac{z}{2} \right)^{-n} \sum_{k=0}^\infty \frac{(-1)^k}{k! (-n+k)!} \left( \frac{z}{2}\right)^{2k} \omega^n 
$$

$$
\therefore \ J_n(z) 
=\left(- \frac{z}{2} \right)^{-n} \sum_{k=0}^\infty \frac{(-1)^k}{k! (-n+k)!} \left( \frac{z}{2}\right)^{2k}  \tag{*8}
$$

(*8)式より$$n>0$$のとき

$$
J_{-n}(z) 
\underbrace{=}_{(*8)でn\rightarrow-n} \left(- \frac{z}{2} \right)^n \sum_{k=0}^\infty \frac{(-1)^k}{k! (n+k)!} \left( \frac{z}{2}\right)^{2k} 
$$

一方(*7)式で$$z\rightarrow -z$$とすると

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
= (-1)^n \underbrace{\left(\frac{z}{2} \right)^n \sum_{k=0}^\infty \frac{(-1)^k}{k! (n+k)!} \left( \frac{z}{2}\right)^{2k}}_{(*7)}
= (-1)^n J_n(z)
$$

以上より

$$
J_{-n} (z) 
= J_n(-z) 
= (-1)^n J_n(z) \tag{*9}
$$

が成立します。$$n<0$$のときも同様に証明できます。

(*9)式を母関数展開(#1)式に用いると

$$
\begin{align}
e^{\frac{z}{2} (\omega-1/\omega)}
&= \underbrace{\sum_{n=-\infty}^{-1} J_n(z) \omega^n}_{n\rightarrow -n と置換} + J_0(z) + \sum_{n=1}^\infty J_n(z) \omega^n
= \sum_{n=1}^\infty \underbrace{J_{-n}(z)}_{(*9)} \omega^{-n} + J_0(z) + \sum_{n=1}^\infty J_n(z) \omega^n \\
&= J_0(z) + \sum_{n=1}^\infty J_n(z) \{ \omega^n + (-1)^n \omega^{-n}\}
\end{align}
$$

という公式を導くこともできます。さらに上式において$$\omega = e^{i \theta}$$を代入すると

$$
\begin{align}
e^{\frac{z}{2} (e^{i\theta} - e^{-i\theta})} 
&= e^{izsin\theta} 
=  J_0(z) + \underbrace{\sum_{n=1}^\infty J_n(z) \{ e^{in\theta} + (-1)^n e^{-in\theta}\}}_{偶数和・奇数和に分解} \\
&= J_0(z) + \sum_{m=1}^\infty J_{2m}(z) (e^{2im\theta} +  e^{-2im\theta}) + \sum_{m=0}^\infty J_{2m+1}(z) ( e^{i(2m+1)\theta} -  e^{-i(2m+1)\theta}) \\
&=J_0(z) + 2 \sum_{m=1}^\infty J_{2m}(z) \cos(2m\theta) + 2i \sum_{m=0}^\infty J_{2m+1}(z) \sin\{(2m+1)\theta\} 
\end{align}
$$

上式において$$z\rightarrow -z$$と置換することにより

$$
\begin{align}
e^{-iz\sin \theta} 
&= J_0(-z) + 2 \sum_{m=1}^\infty J_{2m}(-z) \cos(2m\theta) + 2i \sum_{m=0}^\infty J_{2m+1}(-z) \sin\{(2m+1)\theta\} \\
&= J_0(z) + 2 \sum_{m=1}^\infty (-1)^{2m} J_{2m}(z) \cos(2m\theta) + 2i \sum_{m=0}^\infty (-1)^{2m+1}  J_{2m+1}(z) \sin\{(2m+1)\theta\} \\
&= J_0(z) + 2 \sum_{m=1}^\infty J_{2m}(z) \cos(2m\theta) - 2i \sum_{m=0}^\infty  J_{2m+1}(z) \sin\{(2m+1)\theta\}
\end{align}
$$

上の2つの式の両辺を足し算することで$$\cos$$、引き算することで$$\sin$$に関する公式を得ることができます。


$$
\cos (z \sin \theta) 
= J_0(z) + 2 \sum_{m=1}^\infty J_{2m} (z) \cos(2m\theta) \tag{*10}
$$

$$
\sin (z \sin \theta) 
=  2 \sum_{m=0}^\infty J_{2m+1} (z) \sin\{(2m+1)\theta\} \tag{*11}
$$

## 直交関係とフーリエ・ベッセル展開

ベッセル関数はベッセルの微分方程式(\*6)を満たします。ここに$$\lambda_1, \lambda_2$$を異なる正の実数として、$$u(x) = J_n (\lambda_1 x), v(x) = J_n(\lambda_2 x)$$としましょう。これらと(\*6)式より

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
\int_0^1 x J_n (\lambda_m x) J_n(\lambda_\ell x) dx = 0 \ (m \neq \ell) \tag{*12}
$$

が成立します。次に$$m=\ell$$のとき$$\lambda_\ell = \lambda_m + \epsilon$$として、$$\epsilon \rightarrow 0$$の極限をとります。

$$
\begin{align}
\int_0^1 x J_n (\lambda_m)^2 dx 
&= \frac{1}{2\lambda_m \epsilon + \epsilon^2} \{ \lambda_m J_n' (\lambda_m) J_n(\lambda_m + \epsilon) - (\lambda_m+\epsilon) J_n(\lambda_m) J_n'(\lambda_m + \epsilon)\} \\
&\underbrace{=}_{\epsilon^2を無視} \frac{1}{2} \left\{ J_n' (\lambda_m) \frac{J_n (\lambda_m + \epsilon)}{\epsilon} - J_n(\lambda_m) \frac{J_n'(\lambda_m + \epsilon)}{\epsilon} - \frac{1}{\lambda_m} J_n(\lambda_m) J_n'(\lambda_m+\epsilon)\right\} \\
&\xrightarrow{\epsilon \rightarrow 0} \frac{1}{2} \left\{ J_n'(\lambda_m)^2 - J_n (\lambda_m) J_n''(\lambda_m) - \frac{1}{\lambda_m} J_n(\lambda_m) + J_n' (\lambda_m)\right\} \\
&\underbrace{=}_{(*6)} \frac{1}{2} \left\{ J_n' (\lambda_m)^2 + J_n(\lambda_m) \frac{1}{\lambda_m} J_n'(\lambda_m) + \left( 1-\frac{n^2}{\lambda_m^2}\right) J_n(\lambda_m)^2 - \frac{1}{\lambda_m} J_n(\lambda_m) J_n'(\lambda_m) \right\} \\
&= \frac{1}{2} \left\{ J_n' (\lambda_m)^2 + \left( 1-\frac{n^2}{\lambda_m^2} \right) J_n(\lambda_m)^2\right\}
\underbrace{=}_{\lambda_mはゼロ点より} \frac{1}{2} J_n'(\lambda_m)^2 
= \frac{1}{2} J_{n+1}(\lambda_m)^2 
\end{align}
$$

最後の等号には(*4), (*5)式の辺辺を引き算と$$\lambda_m$$が$$J_n$$のゼロ点であることを用いました。以上より

$$
\int_0^1 x J_n(\lambda_m x) J_n(\lambda_\ell x) dx 
= \frac{\delta_{m\ell}}{2} J_n'(\lambda_m)^2 
= \frac{\delta_{m\ell}}{2} J_{n+1}(\lambda_m)^2 \tag{*12}
$$

が成り立ちます。この直交性より、$$0<x<1$$で定義されている関数$$\phi (x)$$を

$$
\phi (x) 
= \sum_{m=1}^\infty a_m J_n(\lambda_m x), \ 
a_m 
= \frac{2}{J_{n+1} (\lambda_m)^2} \int_0^1 x \phi(x) J_n(\lambda_m x) dx \tag{*13}
$$

のように展開することができます。これをフーリエ・ベッセル展開と呼びます。

## ベッセル関数の2乗

(*7)式より、この2乗を計算しましょう。

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
\begin{align}
J_n^2(z) 
&= \left( \frac{z}{2} \right)^{2n} \sum_{m=0}^\infty (-1)^m \sum_{k=0}^m \frac{1}{k! (m-k) ! \{ (n+m)!\}^2} \left[ \frac{d^{m-k}}{dx^{m-k}} (1+x)^{n+m} \right]_{x=0} \left[ \frac{d^{k}}{dx^{k}} (1+x)^{n+m} \right]_{x=0} \left( \frac{z}{2}\right)^{2m} \\
&= \left( \frac{z}{2} \right)^{2n} \sum_{m=0}^\infty \frac{(-1)^m}{m! \{ (n+m)!\}^2} \left( \frac{z}{2}\right)^{2m} \sum_{k=0}^m {}_{m}C_k \left[ \frac{d^{m-k}}{dx^{m-k}} (1+x)^{n+m} \right]_{x=0} \left[ \frac{d^{k}}{dx^{k}} (1+x)^{n+m} \right]_{x=0} \\
&= \left( \frac{z}{2} \right)^{2n} \sum_{m=0}^\infty \frac{(-1)^m}{m! \{ (n+m)! \}^2} \left( \frac{z}{2}\right)^{2m} \left[ \frac{d^m}{dx^m} (1+x)^{2(n+m)} \right]_{x=0} 
\end{align}
$$

と変形されます。$$(1+x)^{2(n+m)}$$の$$x^m$$の係数は$${}_{2(n+m)} C_m$$より

$$
\left[ \frac{d^m}{dx^m} (1+x)^{2(n+m)} \right]_{x=0} 
= \frac{(2n+2m)!}{(2n+m)!}
$$

よって

$$
J_n^2(z) 
= \left( \frac{z}{2} \right)^{2n} \sum_{m=0}^\infty \frac{(-1)^m}{m! \{ (n+m)! \}^2} \frac{(2n+2m)!}{(2n+m)!} \left( \frac{z}{2}\right)^{2m} \tag{*14}
$$

## 2乗との間に成り立つ公式

[sin, cosのn乗(nが偶数の場合)](/math/sin_n_cos_n.md)の公式において、$$n \rightarrow 2(n+m)$$と置換すると

$$
\int_0^{\pi/2} \cos^{2(n+m)} x dx 
= \frac{\pi}{2} \frac{(2n+2m-1)!!}{(2n+2m)!!}
= \frac{\pi}{2} \frac{(2n+2m)!}{\{ (2n+2m)!! \}^2}
= \frac{\pi}{2} \frac{1}{(2^{n+m})^2}\frac{(2n+2m)!}{\{ (n+m)! \}^2}
$$

よって(*14)式から

$$
J_n^2(z) 
= \left( \frac{z}{2} \right)^{2n} \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \left( \frac{z}{2}\right)^{2m} \frac{2}{\pi} 2^{2n+2m} \int_0^{\pi/2} \cos^{2(n+m)}x dx 
$$

となります。  
唐突ですが、(*7)式から

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
= \frac{\pi}{2} J_n^2(z) \tag{*15}
$$

が成り立ちます。  

(*14)式において$$z \rightarrow z \sin \theta$$と置換し、両辺に$$\sin \theta$$をかけたものを$$0 \leq \theta \leq \pi/2$$で積分すると

$$
\int_0^{\pi/2} J_n^2(z \sin \theta) \sin \theta d \theta 
= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{(2n+2m)!}{\{ (n+m)! \}^2} \left( \frac{z}{2}\right)^{2n+2m} \int_0^{\pi/2} \sin^{2n+2m+1} \theta  d\theta
$$

ここで[sin, cosのn乗(nが奇数の場合)](/math/sin_n_cos_n.md)の公式において、$$n \rightarrow 2(n+m)+1$$に置換すると

$$
\int_0^{\pi/2} \sin^{2(n+m)+1} \theta d\theta 
= \frac{(2n+2m)!!}{(2n+2m+1)!!}
$$

よって

$$
\begin{align}
\int_0^{\pi/2} J_n^2(z \sin \theta) \sin \theta d \theta 
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{(2n+2m)!}{\{ (n+m)! \}^2} \left( \frac{z}{2}\right)^{2n+2m}
\frac{(2n+2m)!!}{(2n+2m+1)!!} \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{(2n+2m)!}{\{ (2n+2m)!!\}^2} z^{2n+2m} \frac{(2n+2m)!!}{(2n+2m+1)!!} \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{(2n+2m)!}{(2n+2m+1)!} z^{2n+2m} 
= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{z^{2n+2m}}{2n+2m+1} 
\end{align}
$$

と求まります。  
唐突ですが(*7)式から

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
= \frac{1}{2z} \int_0^{2z} J_{2n} (t) dt \tag{*16}
$$

という公式が導かれます。  
同様に

$$
\begin{align}
\int_0^{\pi/2} \frac{J_n^2(z \sin \theta)}{\sin \theta} d\theta 
&= \int_0^{\pi/2} \frac{1}{\sin \theta} \left( \frac{z \sin \theta}{2}\right)^{2n} \sum_{m=0}^\infty \frac{(-1)^m}{m! \left\{ (n+m)!\right\}^2} \frac{(2n+2m)!}{(2n+m)!} \left( \frac{z \sin \theta}{2}\right)^{2m} d\theta \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! \left\{ (n+m)!\right\}^2} \frac{(2n+2m)!}{(2n+m)!} \left( \frac{z}{2}\right)^{2n+2m} \int_0^{\pi/2} \sin^{2n+2m-1} \theta d\theta \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! \left\{ (n+m)!\right\}^2} \frac{(2n+2m)!}{(2n+m)!} \left( \frac{z}{2}\right)^{2n+2m} \frac{(2n+2m-2)!!}{(2n+2m-1)!!} \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! \left\{ (2n+2m)!!\right\}^2} \frac{(2n+2m)!}{(2n+m)!} z^{2n+2m} \frac{(2n+2m-2)!!}{(2n+2m-1)!!} \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+2m) (2n+2m)!! } \frac{(2n+2m)!}{(2n+m)!} \frac{z^{2n+2m}}{(2n+2m-1)!!} \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{z^{2n+2m}}{2n+2m}
\end{align}
$$

と

$$
\begin{align}
\int_0^{2z} \frac{J_{2n}(t)}{t} dt 
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \int_0^{2z} \frac{t^{2n+2m-1}}{2^{2n+2m}} dt 
= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{1}{2^{2n+2m} (2n+2m)} [t^{2n+2m}]_0^{2z} \\
&= \sum_{m=0}^\infty \frac{(-1)^m}{m! (2n+m)!} \frac{z^{2n+2m}}{(2n+2m)} 
\end{align}
$$

より

$$
\int_0^{\pi/2} \frac{J_n^2(z \sin \theta)}{\sin \theta} d\theta 
= \int_0^{2z} \frac{J_{2n}(t)}{t} dt \tag{*17}
$$

も成り立ちます。

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

![ベッセル関数。](/images/math/bessel.png)

# 参考文献

[1] 田島, 近道, "改訂 演習工科の数学4 複素関数"  
[2] 中山, "裳華房フィジックスライブラリー 物理数学 II"  
[3] 福山, 小形, "基礎物理学シリーズ3 物理数学 I"  
[4] [倭算数理研究所, ベッセル関数(円柱関数)の公式あれこれ](https://wasan.hatenablog.com/entry/2017/06/03/223531)