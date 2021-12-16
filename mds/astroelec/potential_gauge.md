---
layout: default
title: 電磁ポテンシャルとゲージ変換
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/potential_gauge
nav_order: 5
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

# 電磁ポテンシャルとゲージ変換

## マクスウェル方程式の分類

マクスウェル方程式は2つに分類することができます。1つは

$$
\nabla \cdot \mathbf{E} 
= 4\pi \rho_e \tag{1}
$$

$$
\nabla \times \mathbf{B} 
= \frac{4\pi}{c} \mathbf{j} + \frac{1}{c} \frac{\partial \mathbf{E}}{\partial t} \tag{2}
$$

のグループです。これは電荷密度分布や電流密度分布などの外的要因を含む方程式群になっています。もう1つは

$$
\nabla \cdot \mathbf{B} = 0 \tag{3}
$$

$$
\nabla \times \mathbf{E} 
= -\frac{1}{c} \frac{\partial \mathbf{B}}{\partial t} \tag{4}
$$

のグループです。これらは電場と磁場のみを方程式に含み、外的要因には依存しません。後者のグループを内部方程式(internal equations)と呼びます。

## 磁場のベクトルポテンシャル表示

この式は磁場のガウス則を表す式(磁気単極子が存在しないことを表す式)から以下のような式を導くことができます。

$$
\begin{align}
&\nabla \cdot (\nabla \times \mathbf{A}) 
= \partial_i (\nabla \times {\bf A})_i 
= \partial_i \epsilon_{ijk} \partial_j A_k 
=  \epsilon_{ijk}\partial_i  \partial_j A_k 
= -\epsilon_{jik}\partial_i \partial_j A_k 
=-\partial_j \epsilon_{jik} \partial_i A_k 
= - \partial_j (\nabla \times \mathbf{A})_j \notag \\
&= - \nabla \cdot (\nabla \times \mathbf{A}) 
\ \Longrightarrow \ \nabla \cdot (\nabla \times \mathbf{A}) 
= 0 \notag
\end{align}
$$

より磁場を

$$
\mathbf{B} = \nabla \times \mathbf{A} \tag{5}
$$

とすれば、磁場の発散をとったときにベクトル恒等式より$$\nabla \cdot \mathbf{B}=0$$が必ず成り立ちます。

## 電場のポテンシャル表示

(4), (5)式より

$$
\nabla \times \mathbf{E} 
= -\frac{1}{c} \frac{\partial}{\partial t}(\nabla \times \mathbf{A}) \ \Longrightarrow \ 
\nabla \times \left( \mathbf{E} + \frac{1}{c} \frac{\partial \mathbf{A}}{\partial t}\right) 
= 0
$$

ここでベクトル恒等式

$$
\begin{align}
&[\nabla \times (\nabla \phi)]_i 
= \epsilon_{ijk} \partial_j (\nabla \phi)_k 
= \epsilon_{ijk} \partial_j \partial_k \phi 
= -\epsilon_{ikj} \partial_j \partial_k \phi 
=-\epsilon_{ikj} \partial_k \partial_j \phi 
= -\epsilon_{ikj} \partial_k (\nabla \phi)_j 
= -[\nabla \times (\nabla \phi)]_i \notag \\
&\Longrightarrow \ \nabla \times (\nabla \phi) 
= \mathbf{0} \notag
\end{align}
$$

より$$\mathbf{E} + \frac{1}{c}\frac{\partial \mathbf{A}}{\partial t} = - \nabla \phi$$とおけばよいことがわかります。

$$
\therefore \ \mathbf{E} 
= - \nabla \phi - \frac{1}{c} \frac{\partial \mathbf{A}}{\partial t} \tag{6}
$$

## 電磁ポテンシャルが満たす方程式

$$
\begin{align}
&\nabla \cdot \mathbf{E} 
= \nabla \cdot \left( -\nabla \phi -\frac{1}{c} \frac{\partial \mathbf{A}}{\partial t}\right) 
= - \nabla^2 \phi -\frac{1}{c} \frac{\partial }{\partial t}(\nabla \cdot \mathbf{A}) 
= -\nabla^2 \phi + \frac{1}{c^2} \frac{\partial^2 \phi}{\partial t^2} - \frac{1}{c^2} \frac{\partial^2 \phi}{\partial t^2} - \frac{1}{c} \frac{\partial }{\partial t} (\nabla \cdot \mathbf{A}) \notag \\
& \Longrightarrow \ \therefore \ \left( \nabla^2 -\frac{1}{c^2}\frac{\partial^2}{\partial t^2}\right) \phi + \frac{1}{c} \frac{\partial }{\partial t} \left( \frac{1}{c} \frac{\partial \phi}{\partial t} + \nabla \cdot \mathbf{A}\right) 
= - 4\pi \rho \tag{7}
\end{align}
$$

さらにベクトル恒等式

$$
\begin{align}
[\nabla \times (\nabla \times \mathbf{A})]_i 
&= \epsilon_{ijk} \partial_j (\nabla \times \mathbf{A})_k 
= \epsilon_{ijk} \partial_j \epsilon_{klm} \partial_l A_m 
= \epsilon_{ijk}\epsilon_{klm} \partial_j  \partial_l A_m 
= \epsilon_{kij}\epsilon_{klm} \partial_j  \partial_l A_m
= (\delta_{il}\delta_{jm} - \delta_{im}\delta_{jl}) \partial_j  \partial_l A_m \notag \\
&= \partial_j \partial_i A_j - \partial_j \partial_j A_i 
= \partial_i(\partial_j A_j) - \partial_j\partial_jA_i 
= [\nabla(\nabla \cdot \mathbf{A}) -\nabla^2 \mathbf{A}]_i \notag \\
&\Longrightarrow \ \therefore \ \nabla \times (\nabla \times \mathbf{A}) 
= \nabla (\nabla \cdot \mathbf{A}) - \nabla^2 \mathbf{A} \notag
\end{align}
$$

と、(2), (6)式より

$$
\frac{4\pi}{c} \mathbf{j} + \frac{1}{c} \frac{\partial \mathbf{E}}{\partial t} 
= \frac{4\pi}{c} \mathbf{j} + \frac{1}{c} \frac{\partial }{\partial t}
\left( -\nabla \phi - \frac{1}{c} \frac{\partial \mathbf{A}}{\partial t}\right) 
= \frac{4\pi}{c} \mathbf{j} -\frac{1}{c} \nabla \frac{\partial \phi}{\partial t} -\frac{1}{c^2} \frac{\partial^2 \mathbf{A}}{\partial t^2}
$$

となります。これらから

$$
\left( \nabla^2 -\frac{1}{c^2} \frac{\partial^2 }{\partial t^2} \right) \mathbf{A}- \nabla \left( \nabla \cdot \mathbf{A} + \frac{1}{c} \frac{\partial \phi}{\partial t} \right)
= - \frac{4\pi}{c} \mathbf{j} \tag{8}
$$

## ゲージ自由度とゲージ変換

古典電磁気学では、電磁ポテンシャルは計算を楽にするために導入された便宜的なものです。よってこれらを物理的に実在がある物理量とは考えません。それらから導出される電場・磁場が同一のものであれば、どんな形でも良いということです。よって形を変えても、実際の観測量である電場・磁場が不変となるような変形を考えましょう(これを自由度と呼びます)。以下では$$\mathbf{B}' = \nabla \times \mathbf{A}', \mathbf{E}' = -\nabla \phi'-\frac{1}{c} \frac{\partial \mathbf{A}'}{\partial t}$$として、$$\mathbf{A}' = \mathbf{A} + \nabla \chi(\mathbf{r}, t)$$を代入してみましょう。

$$
\mathbf{B}' 
= \nabla \times \mathbf{A}' 
= \nabla \times (\mathbf{A} + \nabla \chi (\mathbf{r}, t)) 
= \nabla \times \mathbf{A} + \nabla \times (\nabla \chi) = \nabla \times \mathbf{A} 
= \mathbf{B}
$$

$$
\mathbf{E}' 
= - \nabla \phi' -\frac{1}{c} \frac{\partial }{\partial t} (\mathbf{A} + \nabla \chi) 
= -\nabla \left( \phi' + \frac{1}{c} \frac{\partial \chi}{\partial t}\right) -\frac{1}{c} \frac{\partial \mathbf{A}}{\partial t} 
$$

これらより

$$
\left\{ \begin{array}{ll}
\mathbf{A}' = \mathbf{A} + \nabla \chi(\mathbf{r}, t) \\
\phi' = \phi -\frac{1}{c} \frac{\partial \chi}{\partial t}
\end{array} \right. \tag{9}
$$

のような変換(ゲージ変換)では$$\mathbf{E}, \mathbf{B}$$は不変となることがわかります。

## ローレンツゲージ

(7), (8)式において$$\phi \rightarrow \phi', \mathbf{A} \rightarrow \mathbf{A}'$$のように置換をします。

$$
\left( \nabla^2 -\frac{1}{c^2}\frac{\partial^2}{\partial t^2}\right) \phi' + \frac{1}{c} \frac{\partial }{\partial t} \left( \frac{1}{c} \frac{\partial \phi'}{\partial t} + \nabla \cdot \mathbf{A}'\right) 
= - 4\pi \rho
$$

$$
\left( \nabla^2 -\frac{1}{c^2} \frac{\partial^2 }{\partial t^2} \right) \mathbf{A}'- \nabla \left( \nabla \cdot \mathbf{A}' + \frac{1}{c} \frac{\partial \phi'}{\partial t} \right)
= - \frac{4\pi}{c} \mathbf{j}
$$

ここで

$$
\nabla \cdot \mathbf{A}' + \frac{1}{c}\frac{\partial \phi'}{\partial t} 
= 0 \tag{10}
$$

となるようなゲージ変換をローレンツゲージと呼びます。これに対して(9)式を代入すると

$$
\nabla \cdot \mathbf{A}' + \frac{1}{c} \frac{\partial \phi'}{\partial t} 
= \nabla \cdot \left( \mathbf{A} + \nabla \chi \right) + \frac{1}{c} \frac{\partial}{\partial t} \left( \phi - \frac{1}{c} \frac{\partial \chi}{\partial t}\right) 
= 0 
\ \Longrightarrow \ \nabla \cdot \mathbf{A} + \frac{1}{c} \frac{\partial \phi}{\partial t} 
= - \nabla^2 \chi + \frac{1}{c}\frac{\partial^2 \chi}{\partial t^2}
$$

この式から$$\chi (\mathbf{r}, t) = \chi (\mathbf{r})$$かつ$$\nabla^2 \chi = 0$$であれば、$$\nabla \cdot \mathbf{A} + \frac{1}{c} \frac{\partial \phi}{\partial t} = 0$$が成立します。ゲージ変換前と変換後の結果が等しくなっているので、ローレンツゲージにおいてはこの自由度が残されていることがわかります。

{% include adsense.html %} 
