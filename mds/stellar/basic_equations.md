---
layout: default
title: 自己重力系の流体に対する基本方程式
parent: 恒星物理学
math: mathjax3
permalink: /stellar/basic_equations
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

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4535607273&linkId=1cea0e65f198098664e273dc87bb11aa"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4769916434&linkId=bcd899a3fcbddde6902d952cfbcb362d"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254131178&linkId=df352ef9ddcb1ed7bd7daf1d11bb2ff7"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254137796&linkId=fbe4a9946970c35d3676fad8f7c7d872"></iframe>

# 恒星内部での力学的平衡

恒星の観測により、有効温度($$T_\mathrm{eff}$$)、光度(Luminosity $$L$$)、表面元素組成などの情報を得ることができます。
しかし、恒星内部に関する情報を直接得ることはできません(太陽の場合は例外で、ニュートリノフラックスおよび太陽振動の観測から内部の情報を得ることができます。)
そのため、恒星内部の構造を知るためには、物理法則を用いて理論的な構造モデルを計算する必要があります。
恒星の内部構造を決定する重要な要素は、力学的平衡・エネルギーの流れ・エネルギー保存・ガスの状態方程式・元素組成分布、などがあります。
以下では、恒星内部での力学的平衡を考察していきましょう。

## 自己重力系の流体に対する基本方程式

### 一般の場合

恒星は、流体がその自己重力で集まって形成されているものです。
よってその構造の記述には流体力学の基本方程式が基礎となります。
ガスの分子粘性は非常に小さいため、恒星の内部構造を考察する際には、粘性はほとんどの場合に無視することができます。
自己重力計の流体に対する基本方程式は、粘性を無視すると次のように書けます。

$$
\frac{\partial \mathbf{v}}{\partial t} + (\mathbf{v} \cdot \nabla) \mathbf{v} 
= - \frac{1}{\rho} \nabla P - \nabla \psi \tag{1.1.1}
$$

$$
\frac{\partial \rho}{\partial t} + \nabla \cdot (\rho \mathbf{v}) 
= 0 \tag{1.1.2}
$$

(1.1.1)式は運動方程式、(1.1.2)式は連続の式(質量保存の式)です。
ここで$$\mathbf{v}, \rho, P$$はそれぞれ流体の速度ベクトル、密度、圧力を表します。
さらに、重力ポテンシャル$$\psi$$はポアソン方程式

$$
\nabla^2 \psi 
= 4\pi G \rho \tag{1.1.3}
$$

を満たします。
ここで$$G = 6.672 \times 10^{-8} \mathrm{dyn} \ \mathrm{cm}^2 \ \mathrm{g}^{-2} \ (1 \mathrm{dyn} = 1 \mathrm{g} \ \mathrm{cm} \ \mathrm{s}^{-2} = 10^{-5} \mathrm{N})$$は、万有引力定数です。
これらの式はオイラー座標に対する指揮であり、$$\partial / \partial t$$は$$(\partial / \partial t)_\mathrm{r}$$のように、座標$$\mathrm{r}$$を固定して考えたものです。

### 球対称の場合

恒星の自転および磁場、連星を構成している場合は潮汐の効果なども無視すると、恒星内部構造は球対称です。
球対称構造の場合、(1.1.1)-(1.1.3)式は

$$
\left( \frac{\partial v_r}{\partial t} \right)_r + v_r \frac{\partial v_r}{\partial r} 
= - \frac{1}{\rho} \frac{\partial P}{\partial r} - \frac{\partial \psi}{\partial r} \tag{1.1.4}
$$

$$
\left( \frac{\partial \rho}{\partial t} \right)_r + \frac{1}{r^2} \frac{\partial}{\partial r} (r^2 \rho v_r) 
= 0 \tag{1.1.5}
$$

$$
\frac{1}{r^2} \frac{\partial}{\partial r} \left( r^2 \frac{\partial \psi}{\partial r} \right) 
= 4\pi G \rho \ \Longrightarrow \ 
\frac{\partial}{\partial r} \left( r^2 \frac{\partial \psi}{\partial r} \right) 
= 4\pi G r^2 \rho \tag{1.1.6}
$$

と書くことができます。
ここで$$r$$は恒星中心からの距離を表し、$$v_r$$は速度の動径方向成分を表します。
中心から半径$$r$$の球の内部に含まれる質量

$$
M_r 
\equiv \int_0^r 4\pi r'^2 \rho dr' \tag{1.1.7}
$$

を定義しましょう。
すると(1.1.6)式は積分できて

$$
r^2 \frac{\partial \psi}{\partial r} 
= GM_r \ \Longrightarrow \ 
\frac{\partial \psi}{\partial r} 
= \frac{GM_r}{r^2} \tag{1.1.8}
$$

を得ます。
したがって、球対称の場合の力学的平衡を表す式は

$$
\left( \frac{\partial v_r}{\partial t} \right)_r + v_r \frac{\partial v_r}{\partial r} 
= - \frac{1}{\rho} \frac{\partial P}{\partial r} - \frac{GM_r}{r^2}
$$

$$
\left( \frac{\partial \rho}{\partial t} \right)_r + \frac{1}{r^2} \frac{\partial}{\partial r} (r^2 \rho v_r) 
= 0
$$

の2本の式となります。

{% include adsense.html %} 

### ラグランジュ座標を用いた記述

球対称的で動径方向にしか物質が動かない場合、$$M_r$$は物質に固定された値を持ちます。
このことから、これをラグランジュ座標として扱うこともできます。
球対称の場合、オイラー座標$$r$$を用いるよりも、独立変数としてラグランジュ座標$$M_r$$を用いる方が都合の良いことが多々あります。
よって$$(r, t)$$座標から$$(M_r, t)$$座標に変換することを考えましょう。
ある関数$$f(M_r, t)$$を$$f(M_r (r, t), t)$$と考えて

$$
\left( \frac{\partial f (M_r, t)}{\partial t} \right)_r 
= \left( \frac{\partial f(M_r (r, t), t)}{\partial t} \right)_r 
= \left( \frac{\partial f}{\partial t}\right)_{M_r} + \left( \frac{\partial M_r}{\partial t}\right)_r \left( \frac{\partial f}{\partial M_r}\right)_t 
$$

$$
\left( \frac{\partial f(M_r, t)}{\partial r} \right)_t 
= \left( \frac{\partial M_r}{\partial r}\right)_t \left( \frac{\partial f}{\partial M_r}\right)_t
$$

より

$$
\left( \frac{\partial}{\partial t} \right)_r
= \left( \frac{\partial }{\partial t}\right)_{M_r} + \left( \frac{\partial M_r}{\partial t}\right)_r \left( \frac{\partial}{\partial M_r}\right)_t, \quad
\left( \frac{\partial}{\partial r} \right)_t 
= \left( \frac{\partial M_r}{\partial r}\right)_t \left( \frac{\partial}{\partial M_r}\right)_t \tag{1.1.9}
$$

のように書くことができます。
途中で出てきた$$\left( \frac{\partial M_r}{\partial t}\right)_r$$は、（1.1.7)式より

$$
\left( \frac{\partial M_r}{\partial t}\right)_r 
= 4\pi \int_0^r \underbrace{\left( \frac{\partial \rho}{\partial t}\right)_{r'}}_{(1.1.5)} r'^2 dr' 
= - 4\pi \int_0^r dr' \frac{\partial}{\partial r'} (r'^2 \rho v_r) 
= - 4\pi r^2 \rho v_r \tag{1.1.10}
$$

のように計算されます。
この式は、恒星の中心を中心とする半径$$r$$の球内に入っている質量の変化が、その球面から出入りする質量流によって起こることを意味しています。
そして(1.1.7)式の両辺を$$r$$で微分して

$$
\left( \frac{\partial M_r}{\partial r}\right)_t 
= 4\pi r^2 \rho \tag{1.1.11}
$$

を得ます。
これらを(1.1.4)式に利用すると、その左辺は

$$
\begin{align}
\left( \frac{\partial v_r}{\partial t} \right)_r + v_r \left( \frac{\partial v_r}{\partial r}\right)_t 
&= \left( \frac{\partial v_r}{\partial t}\right)_{M_r} - 4\pi r^2 v_r \rho \left( \frac{\partial v_r}{\partial M_r}\right)_t + 4\pi r^2 \rho v_r \left( \frac{\partial v_r}{\partial M_r}\right)_t \notag \\
&= \left( \frac{\partial v_r}{\partial t}\right)_{M_r} \tag{1.1.12}
\end{align}
$$

と書かれるため、最終的に運動方程式(1.1.4)は

$$
\left( \frac{\partial v_r}{\partial t} \right)_{M_r} 
= -4\pi r^2 \left( \frac{\partial P}{\partial M_r} \right)_t - \frac{GM_r}{r^2} \tag{1.1.13}
$$

となります。
また、(1.1.9)式から

$$
\begin{align}
&\left( \frac{\partial r}{\partial t}\right)_{M_r} + \left( \frac{\partial M_r}{\partial t}\right)_r \left( \frac{\partial r}{\partial M_r}\right)_t 
= \left( \frac{\partial r}{\partial t}\right)_r 
= 0 \notag \\
&\Longrightarrow \ 
\left( \frac{\partial r}{\partial t}\right)_{M_r} 
= - \underbrace{\left( \frac{\partial M_r}{\partial t}\right)_r}_{(1.1.10)} \underbrace{\left(\frac{\partial r}{\partial M_r}\right)_t}_{(1.1.11)} 
= v_r \tag{1.1.14}
\end{align}
$$

となります。
この関係は、$$M_r$$がラグランジュ座標として機能していることに対応します。
これを(1.1.13)式に代入すれば

$$
\left( \frac{\partial^2 r}{\partial t^2}\right)_{M_r} 
= -4\pi r^2 \left( \frac{\partial P}{\partial M_r} \right)_t - \frac{GM_r}{r^2} \tag{1.1.13'}
$$

という、ラグランジュ座標を用いた球対称の運動方程式を得ます。  
次に、質量保存の式(1.1.5)を$$(M_r, t)$$座標で現しましょう。

$$
\begin{align}
&\left( \frac{\partial \rho}{\partial t}\right)_{M_r} - 4\pi r^2 \rho v_r \left( \frac{\partial \rho}{\partial M_r} \right)_t + \frac{1}{r^2} \underbrace{\left( \frac{\partial M_r}{\partial r} \right)_t}_{1.1.11} \left[ \frac{\partial}{\partial M_r} (r^2 \rho v_r)\right]_t \notag \\
& \quad = \left( \frac{\partial \rho}{\partial t}\right)_{M_r} - 4\pi r^2 \rho v_r \left( \frac{\partial \rho}{\partial M_r} \right)_t + 4\pi \rho \left\{ r^2 v_r \left( \frac{\partial \rho }{\partial M_r}\right)_t + \rho \left( \frac{\partial (r^2 v_r) }{\partial M_r}\right)_t\right\} \notag \\ 
& \quad = \left( \frac{\partial \rho}{\partial t}\right)_{M_r} + 4\pi \rho^2 \left( \frac{\partial (r^2 v_r) }{\partial M_r}\right)_t 
= 0 \notag
\end{align}
$$

ここに(1.1.14)式を用いれば

$$
\left( \frac{\partial \rho}{\partial t}\right)_{M_r} + 4\pi \rho^2 \left[ \frac{\partial}{\partial M_r} \left\{ r^2 \left(\frac{\partial r}{\partial t}\right)_{M_r}\right\} \right]_t 
= \left( \frac{\partial \rho}{\partial t}\right)_{M_r} + 4\pi \rho^2 \left[ \frac{\partial}{\partial M_r} \left\{ \frac{1}{3} \left(\frac{\partial r^3}{\partial t}\right)_{M_r}\right\} \right]_t 
= 0
$$

のように変形されます。
さらに両辺を$$\rho^2$$で割るなどして整理を進めましょう。

$$
\underbrace{\frac{1}{\rho^2} \left( \frac{\partial \rho}{\partial t} \right)_{M_r}}_{=-\frac{\partial}{\partial t} \left(\frac{1}{\rho} \right)_{M_r}} + \frac{4\pi}{3} \left[ \frac{\partial}{\partial M_r} \left( \frac{\partial r^3}{\partial t} \right)_{M_r} \right]_t 
= 0 
$$

左辺第二項において微分の順序を入れ替え、さらに両辺を$$t$$で積分すれば

$$
-\frac{1}{\rho} + \frac{4\pi}{3} \frac{\partial r^3}{\partial M_r} 
= C(M_r)
$$

が得られます。
ここで、右辺の$$C(M_r)$$は積分定数です。
この定数は、恒星中心近傍では$$M_r = \frac{4\pi}{3} r^3 \rho \ (\rho \sim 一定)$$でなければならないことから、$$C(M_r)=0$$とわかります。
最終的に

$$
-\frac{1}{\rho} + 4\pi r^2 \left( \frac{\partial r}{\partial M_r} \right)_t 
= 0 \ \Longrightarrow \ 
\left( \frac{\partial r}{\partial M_r} \right)_t 
= \frac{1}{4\pi r^2 \rho} \tag{1.1.15}
$$

という関係が求まります。
これは(1.1.11)式の分子と分母を入れ替えたものになっています。
(1.1.13')式と(1.1.15)式が、球対称自己重力系の力学的な振る舞いを表す微分方程式です。

## 参考文献

[1] [野本憲一, 佐藤勝彦, 定金晃三, "シリーズ現代の天文学 恒星"](https://amzn.to/3tithNI)  

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4535607273&linkId=1cea0e65f198098664e273dc87bb11aa"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4769916434&linkId=bcd899a3fcbddde6902d952cfbcb362d"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254131178&linkId=df352ef9ddcb1ed7bd7daf1d11bb2ff7"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254137796&linkId=fbe4a9946970c35d3676fad8f7c7d872"></iframe>