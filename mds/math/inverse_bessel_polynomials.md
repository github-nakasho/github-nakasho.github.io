---
layout: default
title: 逆ベッセル多項式
parent: 数学
math: mathjax3
permalink: /math/inverse_bessel_polynomials
nav_order: 24
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

# 逆ベッセル多項式

## 定義

逆ベッセル多項式は、[ベッセル多項式](/math/bessel_polynomials)を用いて

$$
\theta_n (x) 
\equiv x^n y_n (1/x) 
= \sum_{k=0}^n \frac{(n+k)!}{(n-k)! k!} \frac{x^{n-k}}{2^k} \tag{1}
$$

のように定義されます。
$$n = 0, 1, \dots, 5$$ の具体的な多項式は、次のようになります。

|$$n$$|$$\theta_n (x)$$|
|:--|:--|
|$$0$$|$$1$$|
|$$1$$|$$x + 1$$|
|$$2$$|$$x^2 + 3x + 3$$|
|$$3$$|$$x^3 + 6x^2 + 15x + 15$$|
|$$4$$|$$x^4 + 10x^3 + 45x^2 + 105x + 105$$|
|$$5$$|$$x^5 + 15x^4 + 105x^3 + 420x^2 + 945x + 945$$|

またこれらを可視化したグラフは、次のようになります。

![](/assets/images/math/inverse_bessel_polynomials_01.png)

最高次の係数は常に1となることや、$$x = 0$$ での値は

$$
\theta_n (0) 
\underbrace{=}_{k = n 以外は全てゼロ}
= \frac{(2n)!}{n!} \frac{1}{2^n} 
= (2n-1)!! \tag{2}
$$

のように計算できる特徴があります。

## 半整数次の修正ベッセル関数との関係式

[ベッセル多項式と半整数次の修正ベッセル関数との関係式](/math/bessel_polynomials#半整数次の修正ベッセル関数との関係式)は

$$
y_n (x) 
= \sqrt{\frac{2}{\pi x}} e^{1/x} K_{n+1/2} (1/x) \tag{3}
$$

のように与えられるのでした。
これを(1)式に代入すると

$$
\theta_n (x) 
= x^n \sqrt{\frac{2x}{\pi}} e^x K_{n+1/2} (x) 
= \sqrt{\frac{2}{\pi}} x^{n+1/2} e^x K_{n+1/2} (x) \tag{4}
$$

のように、逆ベッセル多項式も[第二種ベッセル関数](/math/modified_bessel_airy)を用いてかけることがわかります。
この式と、[第二種修正ベッセル関数において $$K_\nu = K_{-\nu}$$が成り立つ](/math/modified_bessel_airy#漸化式)ことから

$$
\begin{align}
\theta_{-n} (x) 
&= \sqrt{\frac{2}{\pi}} x^{-n+1/2} e^x K_{-n+1/2} (x) 
= \sqrt{\frac{2}{\pi}} x^{-n+1/2} x^{-n+1/2} x^{n-1/2} e^x K_{n-1/2} (x) \notag \\
&= x^{1-2n} \theta_{n-1} (x) \tag{5} 
\end{align}
$$

も成り立つことがわかります。

## 逆ベッセル多項式の漸化式

(4)式を[修正ベッセル関数が満たす漸化式](/math/modified_bessel_airy#漸化式)に代入します。
すると

$$
\begin{align}
&\sqrt{\frac{\pi}{2}} x^{-n - 3/2} e^{-x} \theta_{n+1} - \sqrt{\frac{\pi}{2}} x^{-n + 1/2} e^{-x} \theta_{n-1} 
= \frac{2\left( n + 1/2\right)}{x} \sqrt{\frac{\pi}{2}} x^{-n - 1/2} e^{-x} \theta_n \notag \\
&\Longrightarrow \ 
\theta_{n+1} - x^2 \theta_{n-1} 
= (2n +1) \theta_n \tag{6}
\end{align}
$$

を得ます。

## 逆ベッセル多項式が満たす微分方程式

(4)式を[修正ベッセル関数が満たす微分方程式](/math/modified_bessel_airy#修正ベッセルの微分方程式)に代入しましょう。

$$
\begin{align}
\frac{d}{dx} K_{n+1/2} 
&= \sqrt{\frac{\pi}{2}} \left\{ \left( -n - \frac{1}{2}\right) x^{-n-3/2} e^{-x} \theta_n - x^{-n-1/2} e^{-x} \theta_n + x^{-n-1/2} e^{-x} \theta_n' \right\} \notag \\
&= \sqrt{\frac{\pi}{2}} x^{-n-1/2} e^{-x} \left\{ \theta_n' - \left( \frac{n+\frac{1}{2}}{x} + 1\right) \theta_n \right\} \tag{7}
\end{align}
$$

$$
\begin{align}
\frac{d^2}{dx^2} K_{n+1/2} 
&= \sqrt{\frac{\pi}{2}} \left[ -\frac{n+\frac{1}{2}}{x} x^{-n-1/2} e^{-x} \left\{ \theta_n' - \left( \frac{n+\frac{1}{2}}{x} + 1\right) \theta_n \right\} - x^{-n-1/2} e^{-x} \left\{ \theta_n' - \left( \frac{n+\frac{1}{2}}{x} + 1\right) \theta_n \right\} \right. \notag \\
& \qquad \left. + x^{-n-1/2} e^{-x} \left\{ \theta_n'' + \frac{n+\frac{1}{2}}{x^2} \theta_n - \left( \frac{n+\frac{1}{2}}{x} + 1\right) \theta_n' \right\}\right] \tag{8}
\end{align}
$$

これらより

$$
\begin{align}
&\frac{d^2}{dx^2} K_{n+1/2} + \frac{1}{x} \frac{d}{dx} K_{n+1/2} - \left( 1 + \frac{\left( n + \frac{1}{2}\right)^2}{x^2} \right) K_{n+1/2} 
= 0 \notag \\
& \underbrace{\Longrightarrow}_{\times \sqrt{\frac{2}{\pi}} x^{n+1/2} e^x}
\left[ - \frac{n + \frac{1}{2}}{x} \left\{ \theta_n' - \left( \frac{n+\frac{1}{2}}{x} + 1\right) \theta_n \right\} - \theta_n' + \left( \frac{n+\frac{1}{2}}{x} + 1\right) \theta_n + \left\{ \theta_n'' + \frac{n + \frac{1}{2}}{x^2} \theta_n - \left( \frac{n+\frac{1}{2}}{x} + 1\right) \theta_n' \right\}\right] \notag \\
& \qquad \qquad \qquad + \frac{1}{x} \left\{ \theta_n' - \left( \frac{n + \frac{1}{2}}{x} + 1\right) \theta_n \right\} - \left( 1 + \frac{\left( n + \frac{1}{2} \right)^2}{x^2}\right) \theta_n 
= 0 \tag{9}
\end{align}
$$

のようになります。
式が長いため、$$\theta_n'', \theta_n', \theta_n$$ の各係数ごとに計算しましょう。

$$
\theta_n'': 1 \tag{10}
$$

$$
\theta_n': - \frac{n + \frac{1}{2}}{x} -1 - \left( \frac{n+\frac{1}{2}}{x} + 1\right) + \frac{1}{x} 
= - \frac{2n}{x} - 2 \tag{11}
$$

$$
\begin{align}
&\theta_n: \frac{n + \frac{1}{2}}{x} \left( \frac{n + \frac{1}{2}}{x} + 1\right) + \left( \frac{n + \frac{1}{2}}{x} + 1\right) + \frac{n + \frac{1}{2}}{x^2} - \frac{1}{x} \left( \frac{n + \frac{1}{2}}{x} + 1\right) - \left( 1 + \frac{\left( n + \frac{1}{2} \right)^2}{x^2}\right) \notag \\
& \qquad = \frac{\left( n + \frac{1}{2} \right)^2}{x^2} + \frac{n + \frac{1}{2}}{x} + \frac{n + \frac{1}{2}}{x} + 1 + \frac{n + \frac{1}{2}}{x^2} - \frac{n + \frac{1}{2}}{x^2} - \frac{1}{x} - 1 - \frac{\left( n + \frac{1}{2} \right)^2}{x^2} \notag \\
& \qquad = \frac{2n + 1}{x} - \frac{1}{x} 
= \frac{2n}{x} \tag{12}
\end{align}
$$

よって全体に $$x$$ をかけることで

$$
x \theta_n'' - 2 (x + n) \theta_n' + 2n \theta_n 
= 0 \tag{13}
$$

のような、逆ベッセル多項式が満たす微分方程式を得ることができます。

## 参考文献

[1] [Carlitz, 1957, "A note on the Bessel polynomials"](https://projecteuclid.org/journals/duke-mathematical-journal/volume-24/issue-2/A-note-on-the-Bessel-polynomials/10.1215/S0012-7094-57-02421-3.short)  
[2] [Burchnall, 1951, "The Bessel Polynomials"](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/E5973F3DEA0EBD9BFD1A1E81293980DD/S0008414X00030790a.pdf/div-class-title-the-bessel-polynomials-div.pdf)  
[3] [Krall & Fink, 1949, "A new class of orthogonal polynomials: The Bessel polynomials"](https://scispace.com/pdf/a-new-class-of-orthogonal-polynomials-the-bessel-polynomials-4gyj0tv5hf.pdf)  
[4] [Wolfram MathWorld, "Bessel Polynomial"](https://mathworld.wolfram.com/BesselPolynomial.html)  

{% include adsense.html %}