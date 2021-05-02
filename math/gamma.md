# ガンマ関数

ガンマ関数は1729に数学者レオンハルト・オイラーが、**階乗の一般化のため**に導入したと言われています。このページではその公式や性質を見ていきましょう。

## 定義

$$
\Gamma (x) = \int_0^\infty e^{-t} t^{x-1} dt
$$

## 諸公式

$$
\Gamma(x) 
= [-e^{-t} t^{x-1} ]_0^\infty -\int_0^\infty (-1) e^{-t} (x-1) t^{x-2} dt 
= (x-1) \Gamma(x-1)
$$

特に$$x=n$$(正の整数)のとき

$$
\begin{align}
\Gamma(n) 
&= (n-1) \Gamma(n-1) 
= (n-1) (n-2) \Gamma(n-2) 
= \cdots 
= (n-1) (n-2) \cdots 2 \cdot 1 \cdot \Gamma(1) \\
&= (n-1) ! \int_0^\infty e^{-t} dt 
= (n-1) !
\end{align}
$$

次に$$x \rightarrow 1-x$$と置き換えると

$$
\begin{align}
\Gamma(1-x) 
&= \int_0^\infty e^{-t} t^{1-x-1} dt 
= \int_0^\infty e^{-t} t^{-x} dt
= [ -e^{-t} t^{-x} ]_0^\infty - \int_0^\infty(-1) e^{-t} (-x) t^{-x-1} dt \\
&= -x \int_0^\infty e^{-t} t^{-x-1} dt 
= -x \Gamma (-x)
\end{align} 
$$

が成り立ちます。

## 半整数の階乗

$$
\Gamma (1/2) 
= \int_0^\infty e^{-t} t^{-1/2} dt 
\underbrace{=}_{t=s^2} \int_0^\infty e^{-s^2} s^{-1} 2s ds
= 2 \int_0^\infty e^{-s^2} ds 
\underbrace{=}_{ガウス積分} \sqrt{\pi}
$$

このようにして1/2の階乗を求めることができます。

$$
\begin{align}
\Gamma (n+1/2) 
&= \int_0^\infty t^{n+1/2-1} e^{-t} dt 
= \left[ -t^{n-1/2} e^{-t} \right]^\infty_0 - \int_0^\infty (n-1/2) t^{n-3/2} (-e^{-t}) dt \\
&= (n-1/2) \int_0^\infty t^{n-1/2-1} e^{-t} dt 
= (n-1/2) \Gamma (n-1/2) 
= (n-1/2) (n-3/2) \Gamma (n-3/2) \\
&= \cdots
= (n-1/2) (n-3/2) \cdots \frac{3}{2} \frac{1}{2} \Gamma(1/2)
= \frac{(2n-1)(2n-3) \cdots 3 \cdots 1}{2^n} \sqrt{\pi} 
= \frac{(2n)!}{2^n 2^n n!} \sqrt{\pi}
\end{align}
$$

よって

$$
\Gamma (n+1/2) 
= \frac{(2n)!}{2^{2n} n!} \sqrt{\pi}
$$

が成立します。さらに

$$
\Gamma (-1/2) 
= \int_0^\infty t^{-3/2} e^{-t} dt 
= \left[ -2 t^{-1/2} e^{-t} \right]^\infty_0 - \int_0^\infty (-2) t^{-1/2} (-e^{-t}) dt
= -2 \underbrace{\int_0^\infty t^{1/2-1} e^{-t} dt}_{=\Gamma (1/2)} 
= -2\sqrt{\pi}
$$

と計算できるので

$$
\begin{align}
\Gamma (1/2-n) 
&= \Gamma(-(n-1/2)) 
= \frac{-1}{n-1/2} \Gamma(1-(n-1/2)) 
= \frac{-2}{2n-1} \Gamma(3/2-n) 
= \frac{-2}{2n-1} \frac{-2}{2n-3} \Gamma(5/2-n) \\
&= \cdots 
= \frac{(-1)^n 2^n}{(2n-1)(2n-3) \cdots 3\cdot 1} \Gamma(1/2) 
= \frac{(-1)^n 2^{2n} n!}{(2n)!} \sqrt{\pi}
\end{align}
$$

とも計算できます。

## ガウスの公式

$$0<x<1$$においてガンマ関数$$\Gamma (x)$$に対して成り立つ公式を導出しましょう。この照明では、$$n>2$$とします。$$a=n+x > 3$$となる実数において

$$
f(a) 
= \frac{\ln \Gamma (a) - \ln \Gamma (n)}{a-n}
$$

は単調増加関数です(実際に証明しても良いですが、適当なスクリプトなどで図示して見ても良いでしょう)。すると以下の不等式が成り立ちます。

$$
\frac{\ln \Gamma (n-1) - \ln \Gamma (n)}{(n-1) - n} 
\leq \frac{\ln \Gamma (n+x) - \ln \Gamma (n)}{(n+x) - n}
\leq \frac{\ln \Gamma (n+1) - \ln \Gamma (n)}{(n+1) - n}
$$

この不等式と$$\Gamma (n) = (n-1)!$$より

$$
\ln (n-1) 
\leq \frac{\ln \frac{\Gamma (n+x)}{(n-1)!}}{x}
\leq \ln n \ \Longrightarrow \ 
\ln (n-1)^x 
\leq \ln \frac{\Gamma (n+x)}{(n-1)!}
\leq \ln n^x
$$

となります。両辺のlogを外すことで

$$
(n-1)^x (n-1)! 
\leq \Gamma (n+x)
\leq n^x (n-1)!
$$

を得ます。ここでガンマ関数の公式から$$\Gamma(n+x) = (n+x-1) (n+x-2) \cdots (x+1) x \Gamma (x)$$より

$$
\frac{(n-1)^x (n-1)!}{(n+x-1) (n+x-2) \cdots (x+1) x} 
\leq \Gamma (x)
\leq \frac{n^x (n-1)!}{(n+x-1) (n+x-2) \cdots (x+1) x}
$$

となります。左右の辺において、$$n \rightarrow n+1$$のように置換すれば

$$
\frac{n^x n!}{(n+x) (n+x-1) \cdots (x+1) x} 
\leq \Gamma (x)
\leq \frac{(n+1)^x n!}{(n+x) (n+x-1) \cdots (x+1) x}
$$

です。ここで最右辺において$$(n+1)^x = \left(\frac{n+1}{n} \right)^x n^x$$という変形をします。最左辺と最右辺において$$n \rightarrow \infty$$の極限をとると

$$
\lim_{n \rightarrow \infty} \frac{n^x n!}{(n+x) (n+x-1) \cdots (x+1) x} 
\leq \Gamma (x)
\leq \lim_{n \rightarrow \infty} \underbrace{\left( 1+\frac{1}{n}\right)^x}_{\rightarrow 1} \frac{n^x n!}{(n+x) (n+x-1) \cdots (x+1) x}
$$

はさみうちの原理から

$$
\Gamma (x) 
= \lim_{n \rightarrow \infty} \frac{n^x n!}{(n+x) (n+x-1) \cdots (x+1) x} 
= \lim_{n \rightarrow \infty} \frac{n^x n!}{\prod_{k=0}^n (x+k)} 
$$

となります。これをガンマ関数におけるガウスの公式と呼びます。

## 補遺: ガウス積分

$$
2 \int_0^\infty e^{-s^2} ds 
\underbrace{=}_{偶関数} \int_{-\infty}^\infty e^{-s^2} ds 
= \left( \int_{-\infty}^\infty e^{-x^2} dx \int_{-\infty}^\infty e^{-y^2} dy \right)^{1/2}
= \left( \int_{-\infty}^\infty dx \int_{-\infty}^\infty dy e^{-(x^2+y^2)} \right)^{1/2}
$$

ここで$$x=r\cos \theta, y=r\sin \theta$$と置換すると

$$
\int_{-\infty}^\infty dx \int_{-\infty}^\infty dy e^{-(x^2+y^2)} 
= \int_0^\infty dr \int_0^{2\pi} d\theta r e^{-r^2} 
= 2\pi \left[ -\frac{e^{-r^2}}{2} \right]_0^\infty 
= \pi
$$

$$
\therefore \ \int_0^\infty e^{-s^2} ds = \frac{\sqrt{\pi}}{2}
$$

が導出できます。