---
layout: default
title: ベッセル多項式
parent: 数学
math: mathjax3
permalink: /math/bessel_polynomials
nav_order: 23
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

# ベッセル多項式

ベッセル多項式について勉強したことをまとめています。

## 微分方程式とべき乗表記

ベッセル多項式は [Krall & Fink (1949)](https://scispace.com/pdf/a-new-class-of-orthogonal-polynomials-the-bessel-polynomials-4gyj0tv5hf.pdf) で示された直交多項式です。
まずは、次のような $$y(x)$$ の微分方程式を考えましょう。

$$
x^2 y'' + 2(x + 1) y' 
= n(n+1) y \tag{1}
$$

この方程式の解を、$$y = \sum_{k=0}^\infty C_k x^k$$ の形で求めてみましょう。

$$
y' 
= \sum_{k=1}^\infty k C_k x^{k-1} \tag{2}
$$

$$
y'' 
= \sum_{k=2}^\infty k (k-1) C_k x^{k-2} \tag{3}
$$

これらを (1) 式に代入すると

$$
\sum_{k=2}^\infty k (k-1) C_k x^{k} + 2 \sum_{k=1}^\infty k C_k x^{k} + 2 \sum_{k=1}^\infty k C_k x^{k-1} 
= n (n + 1) \sum_{k=0}^\infty C_k x^k \tag{4}
$$

のようになります。
$$x^k$$ の係数を比較していきましょう。
$$k = 0$$ の場合から

$$
2 C_1 
= n (n + 1) C_0 \ \Longrightarrow \ 
C_1 
= \frac{n (n+1)}{2} C_0 \tag{5}
$$

を得ます。
また $$k = 1$$ の場合からは

$$
2 C_1 + 4 C_2 
= n (n + 1) C_1 \ \Longrightarrow \ 
C_2 
= \frac{n (n+1) -2}{4} C_1 \tag{6}
$$

を得ます。
$$k \geq 2$$ の場合には

$$
\begin{align}
&k(k-1) C_k + 2 k C_k + 2 (k+1) C_{k+1} 
= n (n + 1) C_k \notag \\
&\Longrightarrow \ 
C_{k+1} 
= \frac{n(n+1) - k(k+1)}{2 (k+1)} C_k 
= \frac{(n-k) (n+k+1)}{2(k+1)} C_k \tag{7}
\end{align}
$$

のように整理できます。
$$k = 0, 1$$ の場合を特別に考えましたが、(7)式で $$k = 0, 1$$ を代入すれば (5), (6)式を再現できるため、以降は $$k$$ の場合分けをしなくても良いことがわかります。
(7)式において、$$k = n$$ のとき $$C_{k+1} = C_{n+1} = 0$$ となります。
これを再び(7)式に代入すれば $$C_{n+1} = C_{n+2} = \cdots = 0$$ のようになり、$$k = n$$ 以降の項はゼロとなることがわかります。
さらに(7)式を繰り返し適用することで


$$
\begin{align}
C_k 
&= \frac{(n-k+1)(n+k)}{2k} C_{k-1} 
= \frac{(n-k+1)(n+k)}{2k} \frac{(n-k+2)(n+k-1)}{2(k-1)} C_{k-2} \notag \\
&= \cdots 
= \frac{(n-k+1)(n+k)}{2k} \frac{(n-k+2)(n+k-1)}{2(k-1)} \cdots \frac{(n-0)(n+0+1)}{2(0+1)} C_0 \notag \\
&= C_0 \prod_{i = 1}^k \frac{(n-i+1)(n+j)}{2i} \tag{8}
\end{align}
$$

のようになることがわかります。
このままでは見通しが悪いので、各項に分けて整理を行いましょう。

$$
\prod_{i=1}^k (n-i+1) 
= n (n-1) \cdots (n-k+2) (n-k+1) 
= \frac{n!}{(n-k)!} \tag{9}
$$

$$
\prod_{i=1}^k (n+i) 
= (n+1) (n+2) \cdots (n+k-1) (n+k) 
= \frac{(n+k)!}{n!} \tag{10}
$$

$$
\prod_{i=1}^k (2i) 
= 2^k k! \tag{11}
$$

以上より

$$
C_k 
= \frac{(n+k)!}{2^k k! (n-k)!} C_0 \tag{12}
$$

となります。
規格化として $$C_0 = 1$$、すなわち $$x$$ に依存しない定数項の値が1であるように選びましょう。
すると最終的に

$$
y_n(x) 
= \sum_{k=0}^n \frac{(n+k)!}{k! (n-k)!} \left( \frac{x}{2}\right)^k \tag{13}
$$

を得ます。
これが、ベッセル多項式と呼ばれるものです。
次の表は $$n = 0, 1, \dots, 5$$ の多項式を示したものです。

|$$n$$|$$y_n (x)$$|
|:--|:--|
|$$0$$|$$1$$|
|$$1$$|$$1 + x$$|
|$$2$$|$$1 + 3x + 3x^2$$|
|$$3$$|$$1 + 6x + 15x^2 + 15x^3$$|
|$$4$$|$$1 + 10x + 45x^2 + 105x^3 + 105x^4$$|
|$$5$$|$$1 + 15x + 105x^2 + 420x^3 + 945x^4 + 945x^5$$|

そして $$n=0, 1, \dots, 5$$ を描画したグラフは、次のようになります。

![](/assets/images/math/bessel_polynomials_01.png)

{% include adsense.html %}

## 漸化式

ベッセル多項式は、次の三項間漸化式を満たすことが知られています。

$$
y_{n+1} - (2n + 1) x y_n - y_{n-1} 
= 0 \tag{14}
$$

左辺に(13)式を代入し、各次数 $$x^k$$ の係数がゼロになることから示してみましょう。

$$
\begin{align}
&\frac{(n+1 + k)!}{k! (n+1 - k)! 2^k} - (2n+1) \frac{(n+k-1)!}{(k-1)! (n-k+1)! 2^{k-1}} - \frac{(n-1+k)!}{k! (n-1-k)! 2^k} \notag \\
&= \frac{(n+k-1)!}{k! (n-k+1)! 2^k} \left\{ (n+k+1)(n+k) - 2 (2n+1) k - (n-k+1) (n-k) \right\} \notag \\
&= \frac{(n+k-1)!}{k! (n-k+1)! 2^k} \left\{ (n+k)^2 + n + k - 4nk -2k - (n-k)^2 - n + k \right\} 
= 0 \tag{15}
\end{align}
$$

以上から、ベッセル多項式が(14)式を満たすことが示されました。
その他にも、ベッセル多項式は次のような漸化式を満たします。

$$
x^2 y_n' 
= (nx - 1) y_n + y_{n-1} \tag{16}
$$

$$
x^2 y_{n-1}' 
= y_n - (nx +1) y_{n-1} \tag{17}
$$

$$
x(y_n' + y_{n-1}' ) 
= n (y_n - y_{n-1}) \tag{18}
$$

$$
(nx + 1) y_n' + y_{n-1}' 
= n^2 y_n \tag{19}
$$

## 半整数次の修正ベッセル関数との関係式

ベッセル多項式が満たす微分方程式 (1) において、$$x = 1/s$$ のように変数変換を施しましょう。
このとき

$$
\frac{dy}{dx} 
= \frac{dy}{ds} \frac{ds}{dx} 
= - s^2 \frac{dy}{ds} \tag{20}
$$

$$
\begin{align}
\frac{d^2 y}{dx^2} 
&= \frac{d}{dx} \left( -s^2 \frac{dy}{ds}\right) 
= \frac{ds}{dx} \frac{d}{ds} \left( -s^2 \frac{dy}{ds}\right)
= -s^2 \left( -2s \frac{dy}{ds} -s^2 \frac{d^2 y}{ds^2} \right) \notag \\
&= s^4 \frac{d^2 y}{ds^2} + 2s^3 \frac{dy}{ds} \tag{21}
\end{align}
$$

より、(1)式は

$$
s^2 \frac{d^2 y}{ds^2} + 2 s \frac{dy}{ds} + 2\left( \frac{1}{s} + 1 \right) \left( -s^2 \frac{dy}{ds} \right) - n(n+1) y 
= s^2 \frac{d^2 y}{ds^2} -2 s^2 \frac{dy}{ds} - n (n+1) y 
= 0 \tag{22}
$$

のように整理されます。
ここでさらに $$y(s) = s^{1/2} e^s g(s)$$ のように置換を行いましょう。
すると

$$
\frac{dy}{ds} 
= \frac{1}{2} s^{-1/2} e^s g + s^{1/2} e^s g + s^{1/2} e^s g' 
= s^{1/2} e^s \left( \frac{1}{2} s^{-1} g + g + g' \right) \tag{22}
$$

$$
\begin{align}
\frac{d^2 y}{ds^2} 
&= \frac{1}{2} s^{-1/2} e^s \left( \frac{1}{2} s^{-1} g + g + g' \right) + s^{1/2} e^s \left( \frac{1}{2} s^{-1} g + g + g' \right) + s^{1/2} e^s \left( - \frac{1}{2} s^{-2} g + \frac{1}{2} s^{-1} g' + g' + g'' \right) \notag \\
&= s^{1/2} e^s \left( \frac{1}{4} s^{-2} g + \frac{1}{2} s^{-1} g + \frac{1}{2} s^{-1} g' + \frac{1}{2} s^{-1} g + g + g' - \frac{1}{2} s^{-2} g + \frac{1}{2} s^{-1} g' + g' + g'' \right) \notag \\
&= s^{1/2} e^s \left\{ g'' + (2+s^{-1}) g' + \left( - \frac{1}{4} s^{-2} + s^{-1} + 1 \right)g \right\} \tag{23}
\end{align}
$$

これらを(22)式に代入し、その両辺に $$s^{-1/2} e^{-s}$$ をかけることで

$$
\begin{align}
&s^2 g'' + (2s^2 + s) g' + \left( - \frac{1}{4} + s + s^2 \right)g - \left( sg + 2s^2 g + 2s^2 g' \right) - n(n+1) g 
= 0 \notag \\
&\Longrightarrow \ s^2 g'' + s g' - \left\{ s^2 + \left( n + \frac{1}{2} \right)^2 \right\} 
= 0 \tag{24}
\end{align}
$$

を得ます。
これは[修正ベッセル関数の満たす微分方程式](/math/modified_bessel_airy#修正ベッセルの微分方程式)において $$\nu = n + \frac{1}{2}$$ とし、さらに両辺に $$s^2$$ をかけたものに等しいことがわかります。
よって

$$
y(s) 
= C s^{1/2} e^s K_{n+1/2} (s) \tag{25}
$$

です。
ここで $$C$$ は規格化定数です。
元を辿ると、$$y$$ はベッセル多項式が満たす微分方程式 (1) の解なのでした。
以上から

$$
y_n(x) 
= C \sqrt{s} e^{s} K_{n+1/2} (s) \quad (s = 1/x) \tag{26}
$$

となることがわかります。
規格化定数の不定性を解消するために、$$n=0$$ の場合を見ることにしましょう。
このとき

$$
K_{1/2}(s) 
= \sqrt{\frac{\pi}{2s}} e^{-s} \tag{27}
$$

となることが知られています。
これを代入すると

$$
y_0 (x) 
= C \sqrt{s} e^s \sqrt{\frac{\pi}{2s}} e^{-s} 
= C \sqrt{\frac{\pi}{2}} \tag{28}
$$

ベッセル多項式の表から $$y_0 (x) = 1$$ でなければなりません。
よって $$C = \sqrt{2/\pi}$$ であり、最終的に

$$
y_n(x) 
= \sqrt{\frac{2}{\pi x}} e^{1/x} K_{n+1/2} (1/x) \tag{29}
$$

を得ます。  
この式と、[第二種修正ベッセル関数において $$K_\nu = K_{-\nu}$$ が成り立つ](/math/modified_bessel_airy#漸化式)ことから

$$
y_{-n} (x) 
= \sqrt{\frac{2}{\pi x}} e^{1/x} K_{-n+1/2} (1/x) 
= \sqrt{\frac{2}{\pi x}} e^{1/x} K_{n-1/2} (1/x) 
= y_{n-1} (x) \tag{30}
$$

も成り立つことがわかります。
これはベッセル多項式が満たす微分方程式 (1) において $$n \rightarrow -n$$ としたものが、$$y_{n-1}(x)$$ が満たす微分方程式に一致することからもわかります。

{% include adsense.html %}

## ベッセル多項式のロドリゲス公式表示

[ルジャンドル多項式のロドリゲスの公式](/math/legendre#ロドリゲスの公式)のように、$$n$$ 次のベッセル多項式も $$n$$ 階微分の形で書くことができます。

$$
R_n (x) 
= 2^{-n} e^{2/x} \frac{d^n}{dx^n} (x^{2n} e^{-2/x}) \tag{31}
$$

この $$R_n$$ が $$y_n$$ に等しいことを示しましょう。
このままでは見通しが悪いため、$$t = 1/x$$ のように変数変換します。
すると

$$
\frac{d}{dx} 
= \frac{dt}{dx} \frac{d}{dt} 
= - \frac{1}{x^2} \frac{d}{dt} 
= -t^2 \frac{d}{dt} \tag{32}
$$

です。
これを直接 (31) 式に用いると、$$t^2$$ と $$\frac{d}{dt}$$ が入り乱れるため、式が煩雑になります。
そこで次のように、[この演算子において成り立つ恒等式](/math/bessel_polynomials#補遺a-fracdn-fdxn---1n-tn1-fracdndtn-tn-1-f-の証明)を用いましょう。

$$
\frac{d^n f}{dx^n} 
= \left( -t^2 \frac{d}{dt} \right)^n f 
= (-1)^n t^{n+1} \frac{d^n}{dt^n} (t^{n-1} f) \tag{33} 
$$

ここに $$f = t^{-2n} e^{-2t}$$ を代入することで

$$
\begin{align}
\frac{d^n}{dx^n} (x^{2n} e^{-2/x}) 
&= (-1)^n t^{n+1} \frac{d^n}{dt^n} (t^{-n-1} e^{-2t}) 
= (-1)^n t^{n+1} \sum_{k=0}^{n} {}_n C_k \left( \frac{d^k}{dt^k} t^{-n-1}\right) \left( \frac{d^{n-k}}{dt^{n-k}} e^{-2t} \right) \notag \\
&= (-1)^n t^{n+1} \sum_{k=0}^{n} {}_n C_k \left( \frac{d^k}{dt^k} t^{-n-1}\right) \left( \frac{d^{n-k}}{dt^{n-k}} e^{-2t} \right) \tag{34} 
\end{align}
$$

のようになります。
微分の部分のみを取り出して計算しましょう。

$$
\begin{align}
\frac{d^k}{dt^k} t^{-n-1} 
&= (-n-1) (-n-2) \cdots (-n-k) t^{-n-1-k}
= (-1)^k (n+1) (n+2) \cdots (n + k) t^{-n-k-1} \notag \\
&= \frac{(-1)^k (n+k)!}{n!} t^{-n-k-1} \tag{35}
\end{align}
$$

$$
\frac{d^{n-k}}{dt^{n-k}} e^{-2t} 
= (-2)^{n-k} e^{-2t} \tag{36}
$$

以上より

$$
\begin{align}
\frac{d^n}{dx^n} (x^{2n} e^{-2/x}) 
&= (-1)^n t^{n+1} \sum_{k=0}^{n} {}_n C_k \frac{(-1)^k (n+k)!}{n!} t^{-n-k-1} (-2)^{n-k} e^{-2t} \notag \\
&= (-1)^n t^{n+1} \sum_{k=0}^{n} \frac{n!}{k! (n-k)!} \frac{(-1)^k (n+k)!}{n!} t^{-n-k-1} (-2)^{n-k} e^{-2t} \notag \\
&= e^{-2t} \sum_{k=0}^{n} \frac{(n+k)!}{k! (n-k)!} 2^{n-k} t^{-k} \tag{37}
\end{align}
$$

を得ます。
$$t = 1/x$$ であることを思い出し、これを(31)式に代入すれば

$$
R_n(x) 
= 2^{-n} e^{2/x} e^{-2/x} \sum_{k=0}^n \frac{(n+k)!}{k! (n-k)!} 2^{n-k} x^k 
= \sum_{k=0}^n \frac{(n+k)!}{k! (n-k)!} \left( \frac{x}{2} \right)^k 
= y_n(x) \tag{38}
$$

のように、$$R_n(x)$$ が ベッセル多項式に一致すると示すことができました。

## 補遺A: $$\frac{d^n f}{dx^n} = (-1)^n t^{n+1} \frac{d^n}{dt^n} (t^{n-1} f)$$ の証明

$$x = 1/t$$ としたときに、この恒等式が成り立つことを示しましょう。
それには、帰納法を用いることにします。
$$n=1$$ のとき、右辺は

$$
-t^2 \frac{df}{dt} 
\underbrace{=}_{(32)} \frac{df}{dx} \tag{A.1}
$$

のように、左辺と等しくなることがわかります。
次に、$$n$$ で先ほどの恒等式が成立すると仮定し、$$\frac{d^{n+1}f}{dx^{n+1}}$$ を計算してみましょう。

$$
\frac{d^{n+1} f}{dx^{n+1}} 
= \underbrace{\frac{d}{dx}}_{(32)} \left( \frac{d^n f}{dx^n}\right) 
= -t^2 \frac{d}{dt} \left\{ (-1)^n t^{n+1} \frac{d^n}{dt^n} (t^{n-1} f) \right\} \tag{A.2}
$$

ここで見通しをよくするために、$$h = \frac{d^n}{dt^n} (t^{n-1} f)$$ とおくと

$$
\frac{d^{n+1} f}{dx^{n+1}} 
= (-1)^{n+1} t^2 \{ (n+1) t^n h + t^{n+1} h' \} \tag{A.3}
$$

のようになります。
示したいのは、これが $$(-1)^{n+1} t^{n+2} \frac{d^{n+1}}{dt^{n+1}} (t^n f)$$ に一致することです。
すると

$$
\begin{align}
\frac{d^{n+1}}{dt^{n+1}} (t^n f) 
&= \frac{d^{n+1}}{dt^{n+1}} (t \cdot t^{n-1} f) 
= \sum_{k=0}^{n+1} {}_{n+1} C_k \frac{d^k t}{dt^k} \left\{ \frac{d^{n+1-k}}{dt^{n+1-k}} \left( t^{n-1} f \right) \right\} \notag \\
&\underbrace{=}_{k\geq 2は全てゼロ} {}_{n+1} C_0 \frac{d^0 t}{dt^0} \frac{d^{n+1}}{dt^{n+1}} (t^{n-1} f) + {}_{n+1} C_1 \frac{dt}{dt} \frac{d^n}{dt^n} (t^{n-1} f) \notag \\
&= t \frac{d}{dt} \frac{d^n}{dt^n} (t^{n-1} f) + (n+1) \frac{d^n}{dt^n} (t^{n-1} f) 
= t h' + (n+1) h \tag{A.4}
\end{align}
$$

より

$$
(-1)^{n+1} t^{n+2} \frac{d^{n+1}}{dt^{n+1}} (t^n f) 
= (-1)^{n+1} t^2 \{ t^{n+1} h' + (n+1) t^n h \} 
= (A.3) \tag{A.5} 
$$

が示されました。
以上から $$n$$ での成立を仮定して $$n+1$$ が示されたため、一般に

$$
\frac{d^n f}{dx^n} 
= (-1)^n t^{n+1} \frac{d^n}{dt^n} (t^{n-1} f) \quad (t = 1/x) \tag{A.6}
$$

が成り立つことが証明されました。

## 参考文献

[1] [Krall & Fink, 1949, "A new class of orthogonal polynomials: The Bessel polynomials"](https://scispace.com/pdf/a-new-class-of-orthogonal-polynomials-the-bessel-polynomials-4gyj0tv5hf.pdf)  
[2] [Wolfram MathWorld, "Bessel Polynomial"](https://mathworld.wolfram.com/BesselPolynomial.html)  
[3] [Mathlog, "留数と漸化式と円周率の平方根 (2) 〜ベッセル多項式〜"](https://mathlog.info/articles/T9uGrLSIzXFXjD0VXyUx)  

{% include adsense.html %}