---
layout: default
title: 運動の積分とジーンズの定理
parent: 銀河のダイナミクス
math: mathjax3
permalink: /galady/jeans_theorem
nav_order: 7
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

# 運動の積分とジーンズの定理

ここでは、[ブラソフ方程式(無衝突ボルツマン方程式)](/galady/vlasov)の定常解において成り立つ定理をメモしておきます。

## 運動の積分 (integrals of motions)

運動の積分とは、現在の位相空間の位置$$(\mathbf{x}, \mathbf{v})$$にのみ依存する(時間$$t$$には依存しない)、運動の軌道に沿って保存される任意の量$$I(\mathbf{x}. \mathbf{v})$$のことです。
軌道に沿った微分([ラグランジュ微分](/mhd//mhd/euler_lagrange))から

$$
\frac{DI}{Dt} 
= \underbrace{\frac{\partial I}{\partial t}}_{=0} + \frac{\partial I}{\partial \mathbf{x}} \cdot \underbrace{\frac{d \mathbf{x}}{d t}}_{= \mathbf{v}} + \frac{\partial I}{\partial \mathbf{v}} \cdot \underbrace{\frac{d \mathbf{v}}{dt}}_{= -\frac{\partial \Phi}{\partial \mathbf{x}}} 
= \mathbf{v} \cdot \nabla I - \nabla \Phi \cdot \frac{\partial I}{\partial \mathbf{v}} 
= 0 \tag{1}
$$

となります。

## ジーンズの定理 (Jeans theorem)

ここで、定常状態になった位相空間上の分布関数$$f(\mathbf{x}, \mathbf{v})$$について考えてみましょう。$$f$$は時間に依存しないことから、[ブラソフ方程式](/galady/vlasov)は

$$
\underbrace{\frac{\partial f}{\partial t}}_{=0} + \mathbf{v} \cdot \nabla f - \nabla \Phi \cdot \frac{\partial f}{\partial \mathbf{v}} 
= 0 \tag{2}
$$

のように、(1)式と全く同じ形となります。このことから、運動の積分が定常ブラソフ方程式の解となっていることがわかります。
以上より、以下の定理が成り立ちます。

**ジーンズの定理: 運動の積分$$I_1, I_2, \dots, I_n$$の任意関数は、定常ブラソフ方程式の解である**

つまり、分布関数$$f$$が定常であるならば、運動の積分を用いて$$f = f(I_1, I_2, \dots, I_n)$$の形で書くことができます。

```
実は上の照明は必要十分条件の必要性しか行なっていません。真にこれを言いたければ、分布関数の全微分を$$I_k$$で書き下し、それぞれの項が0となることを示します。
```

## 例: ケプラー運動における運動の積分

例えば球対称重力ポテンシャル中で運動する粒子の場合、角運動量ベクトル$$\mathbf{L} = \mathbf{r} \times \mathbf{v}$$は、その粒子の軌道に沿って一定で保存しています。
このことから、この状況下では角運動量ベクトルお運動の積分です。
同様に、全エネルギー$$\frac{1}{2} v^2 + \Phi$$も運動の積分となります。  
しかし、一般に運動の積分はポテンシャルが与えられたとき、5個存在すると言われています。
ここまで出てきたのは角運動量ベクトルの成分$$(L_x, L_y, L_z)$$、そして全エネルギーの4つです。  
ここではケプラー運動の場合に着目して、最後の運動の積分を求めてみましょう。座標原点に質量$$M$$の粒子がいるとします。
すると[2体問題の(16)式](/galady/twobody)より、その軌道は

$$
y 
= B \cos (\theta - \theta_0) + \frac{GM}{h^2} \tag{3}
$$

と書かれるのでした。
ここで$$y = 1/r$$は中心からの距離の逆数、$$\theta$$は軌道の位相(2次元曲座標$$(r, \theta)$$の角度変数)、$$h$$は角運動量です。
さらに$$B = \frac{2E}{h^2}+ \frac{G^2 M^2}{h^4}$$であり、$$E$$は全エネルギーです。
すると

$$
\cos (\theta - \theta_0) 
= \frac{1}{B} \left( \frac{1}{r} - \frac{GM}{h^2} \right) \tag{4}
$$

(4)式において、左辺は周期$$2\pi$$の周期関数なので

$$
\begin{align}
&\cos (\theta - \theta_0 + 2n\pi) 
= \frac{1}{B} \left( \frac{1}{r} - \frac{GM}{h^2} \right) \notag \\
&\Longrightarrow \ 
\theta 
= \theta_0 + \cos^{-1} \left\{ \frac{1}{B} \left( \frac{1}{r} - \frac{GM}{h^2} \right) \right\} + 2n\pi 
\quad (n \in \mathbb{Z}) \tag{5}
\end{align}
$$

のようになります。$$\theta_0$$は初期条件から決まる定数です。
よってその他の$$E, L, r$$が与えられれば、$$\theta$$を$$2\pi$$で割った余りが常に一定になります。
同じ$$r$$に対して常に同じ$$\theta$$となることから、これはケプラー運動において軌道が閉じることを意味しています。

{% include adsense.html %} 
