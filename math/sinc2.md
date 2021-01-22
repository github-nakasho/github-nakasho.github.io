# sinc関数の2乗の積分

sinc関数の2乗の積分値を求めましょう。そのために

$$
W(t) = \left\{
\begin{array}{cl}
1 &(-T/2 < t < T/2) \\
0 & ({\rm otherwise})
\end{array} \right.
$$

のようなトップハット関数のフーリエ変換を考えます。

$$
{\hat W}(\omega)
= \frac{1}{2\pi} \int_{-\infty}^{\infty} W(t) e^{i\omega t} dt 
= \frac{1}{2\pi} \int_{-T/2}^{T/2} e^{i\omega t} dt 
= \frac{1}{2\pi} \frac{e^{i \omega T/2}-e^{-i \omega T/2}}{i \omega }
=\frac{T}{2\pi} {\rm sinc} \left( \omega \frac{T}{2} \right)
$$

ここでパーセバルの公式より

$$
\int_{-\infty}^{\infty} W(t)^2 dt 
= 2\pi \int_{-\infty}^{\infty} \left| {\hat W} (\omega) \right|^2 d\omega 
=\frac{T^2}{2\pi} \int_{-\infty}^{\infty} {\rm sinc}^2 \left( \omega \frac{T}{2} \right) d\omega
\underbrace{=}_{\omega T/2=x}\frac{T}{\pi} \int_{-\infty}^{\infty} {\rm sinc}^2 x dx 
$$

一方

$$
(最左辺)
=\int_{-T/2}^{T/2} dt
=T 
$$

より

$$
\int_{-\infty}^{\infty} {\rm sinc}^2 x dx 
= \pi 
$$

が求まります。sinc関数の積分値と$${\rm sinc}^2$$関数の積分値が同じ$$\pi$$となる不思議。