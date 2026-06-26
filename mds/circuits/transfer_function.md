---
layout: default
title: 伝達関数
parent: 電気回路
math: mathjax3
permalink: /circuits/transfer_function
nav_order: 13
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

# 伝達関数

[ラプラス変換](/math/laplace_transform)を基礎として、ここでは伝達関数について勉強したことをメモしていきます。

## 伝達関数の定義と基礎

物理的な[線形システム](/circuits/linear_system)では、その入力 $$x(t)$$ とその結果生じる出力 $$y(t)$$ との関係は、ある1つの微積分方程式で表されます。
そこで、伝達関数 (transfer function) $$G(s)$$ は系の入出力の関係を記述する微積分方程式を、[ラプラス変換](/math/laplace_transform)することにより与えられます。
すなわち伝達関数は、出力信号の[ラプラス変換](/math/laplace_transform) $$Y(s)$$ と入力信号の[ラプラス変換](/math/laplace_transform) $$X(s)$$ との比

$$
G(s) 
= \frac{Y(s)}{X(s)} \tag{1}
$$

により定義されます。
伝達関数は多くの場合、次のような有理式で表されます。

$$
G(s) 
= \frac{b_m s^m + b_{m-1} s^{m-1} + \cdots + b_0}{a_n s^n + a_{n-1} s^{n-1} + \cdots + a_0} \tag{2}
$$

系の伝達関数がわかれば、入力信号の[ラプラス変換](/math/laplace_transform) $$X(s)$$ に対する出力信号の[ラプラス変換](/math/laplace_transform) $$Y(s)$$ に対する出力信号の[ラプラス変換](/math/laplace_transform) が $$Y(s) = G(s) X(s)$$ として求められます。
よって出力信号の時間的変化 $$y(t)$$ は、その[逆ラプラス変換](/math/laplace_transform#ラプラス逆変換)により

$$
y(t) 
= \mathcal{L}^{-1} [Y(s)] 
= \mathcal{L}^{-1} [G(s) X(s)] \tag{3}
$$

のように求めることができます。  
例えば、[線形システムの周波数応答と同じCR回路](/circuits/linear_system#具体例-cr回路)について考えてみましょう。
入力 $$x(t)$$ の[ラプラス変換](/math/laplace_transform) $$X(s)$$ に対しては

$$
\frac{dx}{dt} 
= \frac{y}{RC} + \frac{dy}{dt} \ \underbrace{\Longrightarrow}_{ラプラス変換} \ 
s X(s) - x(0) 
= \frac{Y(s)}{RC} + s Y(s) - y(0) \tag{4}
$$

のようになります。
初期に $$x(0) = y(0) = 0$$ とすれば、この系の伝達関数が

$$
G(s) 
= \frac{Y(s)}{X(s)} 
= \frac{sRC}{1+sRC} \tag{5}
$$

と求まります。
(3)式を用いることで、出力 $$y(t)$$ が計算できます。  
特に入力信号がデルタ関数の場合、その[ラプラス変換](/math/laplace_transform)は

$$
X(s) 
= \mathcal{L}[x(t)] 
= \mathcal{L}_- [\delta(t)] 
= 1 \tag{6}
$$

です。
したがって、出力の[ラプラス変換](/math/laplace_transform)は

$$
Y(s) 
= G(s) X(s) 
= G(s) \tag{7}
$$

となります。
すると、デルタ関数入力に対する出力の時間変化と伝達関数の間に

$$
g(t) 
= \mathcal{L}^{-1} [G(s)] \ \Longrightarrow \ 
G(s) 
= \mathcal{L} [g(t)] \tag{8}
$$

のような関係があるとわかります。
すなわち、デルタ関数に対する応答を (例えば実験的に) 知ることができれば、その[ラプラス変換](/math/laplace_transform)により $$G(s)$$ を求めることができます。

## 線形システムの安定性







## 参考文献

[] [霜田光一, 桜井 捷海, "エレクトロニクスの基礎"](https://amzn.to/4wAOuib)  

{% include adsense.html %}