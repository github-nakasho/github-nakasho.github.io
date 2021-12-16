---
layout: default
title: 反変ベクトル・ベクトル
parent: 一般相対性理論
math: mathjax3
permalink: /gr/vector
nav_order: 4
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

# 反変ベクトル・共変ベクトル

基底ベクトルの変換則

$$
e'_\nu 
= \frac{\partial x^\mu}{\partial x'^\nu} e_\mu
$$

は前のメモですでに導出しました。今度はこれと**添字が反対の変換則になっている反変なもの**

$$
A^\nu 
= \frac{\partial x^\nu}{\partial x'^\mu} A'^\mu
$$

そして**添字が同じ変換則になっている共変なもの**

$$
A_\nu 
= \frac{\partial x^\mu}{\partial x'^\nu} A'_\mu
$$

のベクトルの導出を行います。

## 反変ベクトル

あるベクトル$${\bf A}$$は

$$
{\bf A} 
= A^\nu {\bf e}_\nu
= A'^\mu {\bf e'}_\mu
$$

のように書くことができます。ここで座標基底の変換則より

$$
{\bf A} 
= A'^\mu \frac{\partial x^\nu}{\partial x'^\mu} {\bf e}_\nu
= A^\nu {\bf e}_\nu \ \Longrightarrow \ 
\therefore A^\nu 
= \frac{\partial x^\nu}{\partial x'^\mu} A'^\mu
$$

これは座標基底の変換則と添字が分子分母で逆になっています。このことからこれを**反変ベクトル(contravariant vector)**と呼びます。上述では'のない座標基底から'のついた座標基底への変換を考えました。ではその逆はどうなるでしょうか。

$$
A^\nu 
= \frac{\partial x^\nu}{\partial x'^\mu}A'^\mu \ \Longrightarrow \
\frac{\partial x'^\alpha}{\partial x^\nu}A^\nu 
= \underbrace{\frac{\partial x'^\alpha}{\partial x^\nu} \frac{\partial x^\nu}{\partial x'^\mu}}_{=\delta^\alpha_\mu}A'^\mu
= A'^\alpha \ \Longrightarrow \
A'^\alpha 
= \frac{\partial x'^\alpha}{\partial x^\nu}A^\nu 
$$

となり、'系から'のない系への変換もやはり座標基底の変換則の逆になっていることがわかります。

## 共変ベクトル

$${\bf A}$$の大きさの2乗を考えましょう。

$$
\left| {\bf A} \right| ^2 
= {\bf A} \cdot{\bf A} 
= A^\mu {\bf e}_\mu \cdot A^\nu {\bf e}_\nu
= g_{\mu \nu} A^\mu A^\nu
$$

大きさは'系でも'のない系でも変わらないので

$$
\left| {\bf A}\right| ^2 
= g'_{\mu \nu} A'^\mu A'^\nu 
= \frac{\partial x^\alpha}{\partial x'^\mu} \frac{\partial x^\beta}{\partial x'^\nu} g_{\alpha \beta} \frac{\partial x'^\mu}{\partial x^\gamma} \frac{\partial x'^\nu}{\partial x^\delta} A^\gamma A^\delta
= \underbrace{\frac{\partial x^\alpha}{\partial x'^\mu} \frac{\partial x'^\mu}{\partial x^\gamma}}_{\delta^\alpha_\gamma} \underbrace{\frac{\partial x^\beta}{\partial x'^\nu} \frac{\partial x'^\nu}{\partial x^\delta}}_{\delta^\beta_\delta} g_{\alpha \beta} A^\gamma A^\delta
= g_{\gamma \delta} A^\gamma A^\delta
$$

ここで共変ベクトルを

$$
A_\nu 
\equiv g_{\mu \nu} A^\mu
= g_{\nu \mu} A^\mu
$$

のように定義します。このベクトルの'系への座標変換を考えましょう。座標基底の変換則から

$$
A'_\nu 
= g_{\mu'\nu'} A'^\mu 
=\frac{\partial x^\alpha}{\partial x'^\mu} \frac{\partial x^\beta}{\partial x'^\nu} g_{\alpha \beta} \frac{\partial x'^\mu}{\partial x^\gamma} A^\gamma
= \underbrace{\frac{\partial x^\alpha}{\partial x'^\mu} \frac{\partial x'^\mu}{\partial x^\gamma}}_{\delta^\alpha_\gamma} \frac{\partial x^\beta}{\partial x'^\nu} g_{\alpha \beta} A^\gamma 
= \frac{\partial x^\beta}{\partial x'^\nu} g_{\alpha \beta} A^\alpha
= \frac{\partial x^\beta}{\partial x'^\nu} A_\beta 
$$

これは座標基底と同じ変換則です。よってこれを改めて**共変ベクトル(covariant vactor)**と呼びます。この**変換則に従うベクトル(テンソル)を一階の共変テンソル**と呼びます。

## 共変テンソル

では二階の共変テンソルとはどのようなものでしょうか。

$$
A'_\alpha B'_\beta
= \frac{\partial x^\mu}{\partial x^{\alpha'}} A_\mu \frac{\partial x^\nu}{\partial x^{\beta'}} B_\nu 
= \frac{\partial x^\mu}{\partial x^{\alpha'}}\frac{\partial x^\nu}{\partial x^{\beta'}} A_\mu B_\nu 
$$

ここで$$T_{\mu \nu} \equiv A_\mu B_\nu$$と定義しましょう。

$$
T_{\alpha'\beta'} 
= \frac{\partial x^\mu}{\partial x^{\alpha'}}\frac{\partial x^\nu}{\partial x^{\beta'}} T_{\mu \nu}
$$

こちらを二階の共変テンソルと定義します。途中で$$x'^\beta$$を$$x^{\beta'}$$と表記しました。以降の一般相対論のメモでは特に何もない限りこの表記を使います。  
最後に$$|{\bf A}|^2$$をもう一度考えましょう。

$$
\left| {\bf A}\right| ^2 
= {\bf A} \cdot {\bf A} 
= g_{\mu \nu} A^\mu A^\nu 
= A_\nu A^\mu
$$

さらに

$$
A_{\mu'} A^{\nu'} 
= \frac{\partial x^\alpha}{\partial x^{\nu'}} \frac{\partial x^{\nu'}}{\partial x^{\beta}} A_\alpha A^\beta
= \delta^\alpha_\beta A_\alpha A^\beta 
= A_\alpha A^\alpha
$$

となります。これはベクトルの大きさの二乗が改めてスカラーであり、座標変換に対して不変であることを意味します。これは同時に微小変位ベクトルの大きさの二乗$$dx^2 = d{\bf x} \cdot d{\bf x}$$などもスカラーであることを意味します。

{% include adsense.html %}