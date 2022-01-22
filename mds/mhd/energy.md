---
layout: default
title: エネルギー保存則
parent: 宇宙磁気流体力学
math: mathjax3
permalink: /mhd/energy
nav_order: 6
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

# 磁気流体におけるエネルギー保存則

磁気流体のエネルギーを考えるには、流体の運動エネルギー・内部エネルギー・電磁場のエネルギーを考えなければなりません。まずは内部エネルギーから見ていいきましょう。

## 内部エネルギー

$$s$$を流体の単位質量あたりのエントロピーとすると$$T ds = dQ$$より

$$
\rho T \frac{Ds}{Dt} 
= \rho \frac{DQ}{Dt} 
= - \mathcal{L} \tag{1}
$$

ここで$$\mathcal{L}$$はエネルギー損失関数(energy loss function)と呼ばれる量で、ある流体要素の正味のエネルギーの吸い込みやわきだしの量を表します。例えば恒星内部では、核融合反応によりエネルギーが生み出され(わきだし)ていると考えることができます。ここで単位質量あたりの内部エネルギーを$$e$$としましょう。熱力学第一法則より

$$
de 
= dQ - P dV 
= T ds - P dV \ \Longrightarrow \ 
\rho \frac{De}{Dt} 
= \underbrace{\rho T \frac{Ds}{Dt}}_{(1)} - \rho P \frac{DV}{Dt} 
= - \mathcal{L} - \rho P \frac{DV}{Dt}
$$

ここで$$V$$は単位質量あたりの体積で$$V = 1/\rho$$であることから

$$
\rho \frac{De}{Dt} 
= - \rho P \frac{D}{Dt} \left( \frac{1}{\rho} \right) - \mathcal{L}
$$

ここで質量密度$$\rho$$の流体要素の、[密度の時間変化を表す式](/mhd/continuity)

$$
\frac{D \rho}{Dt} + \rho (\nabla \cdot \mathbf{v}) 
= 0 \tag{2}
$$

を用いると

$$
\rho \frac{De}{Dt} 
= -P (\nabla \cdot \mathbf{v}) - \mathcal{L} \tag{3}
$$

を得ます。これは単位体積あたりの流体要素を考えたとき、その内部エネルギーの時間変化は、体積変化$$\nabla \cdot \mathbf{v}$$に伴って圧力がする仕事と熱のやり取り$$\mathcal{L}$$によってもたらされるという式です。

### 内部エネルギーの密度と圧力を用いた表記

今後のために、内部エネルギー$$e$$がどのように表されるかも見ておきましょう。理想気体を仮定すると、内部エネルギーは体積(密度)に依存しないことから

$$
de 
= \left( \frac{\partial e}{\partial T}\right)_V dT + \underbrace{\left( \frac{\partial e}{\partial V}\right)_T}_{=0} dV 
= dQ - P dV \ \Longrightarrow \ 
\left( \frac{\partial e}{\partial T}\right)_V 
= \left( \frac{\partial Q}{\partial T}\right)_V \equiv C_v
$$

より

$$
de = C_V dT \tag{4}
$$

を得ます。ここで$$C_V$$は定積熱容量です。さらに$$V = V(P, T)$$だと思うと

$$
\begin{aligned}
&de 
= dQ - P dV 
= dQ - P \left\{ \left( \frac{\partial V}{\partial P} \right)_T dP + \left( \frac{\partial V}{\partial T}_P \right)_P dT \right\} \\
&\Longrightarrow \ 
dQ 
\underbrace{=}_{(4)} P \left( \frac{\partial V}{\partial P} \right)_T dP + \left\{ C_V + P \left( \frac{\partial V}{\partial T} \right)_P \right\} dT
\end{aligned}
$$

より

$$
\left( \frac{\partial Q}{\partial T}\right)_P 
\equiv C_P 
= C_V + P \left( \frac{\partial V}{\partial T} \right)_P \tag{5}
$$

となります。理想気体の状態方程式より

$$
P 
= nk_B T 
= \frac{\rho}{\mu} k_B T \ \Longrightarrow \ 
V 
= \frac{1}{\rho} 
= \frac{k_B T}{\mu P} \ \Longrightarrow \ 
\left( \frac{\partial V}{\partial T}\right)_P
= \frac{k_B}{\mu P} \tag{6}
$$

です。ここで$$\mu$$は平均粒子質量(このガスが単一粒子で構成されているとみなしたときの1つの粒子の質量)です。(5), (6)式より

$$
C_P - C_V 
= \frac{k_B}{\mu}
$$

比熱比$$\gamma = C_P / C_V$$を用いれば

$$
C_V 
= \frac{1}{\gamma -1} \frac{k_B}{\mu}, \quad C_P 
= \frac{\gamma}{\gamma - 1} \frac{k_B}{\mu} \tag{7}
$$

と書けます。最後に(4), (7)式から

$$
e 
= \frac{1}{\gamma-1} \frac{P}{\rho} \tag{8}
$$

を得ます。

## 運動エネルギー

次に考えるのは運動エネルギーの時間変化を表す式です。[流体要素の運動方程式](/mhd/momentum)より

$$
\rho \frac{D \mathbf{v}}{Dt} 
= - \nabla P + \mathbf{j} \times \frac{\mathbf{B}}{c} + \mathbf{F}
$$

です。この両辺を$$\mathbf{v}$$との内積をとると

$$
\rho \frac{D}{Dt} \left( \frac{1}{2} v^2\right) 
= - \mathbf{v} \cdot \nabla P + \mathbf{v} \cdot \left( \mathbf{j} \times \frac{\mathbf{B}}{c}\right) + \mathbf{v} \cdot \mathbf{F} \tag{9}
$$

となります。これは圧力勾配による力・ローレンツ力・外力による仕事が流体要素の運動エネルギーに変化をもたらすことを表す式です。ここで[Ohmの法則](/mhd/ohm)の式の両辺を$$\mathbf{j}$$との内積をとったものを計算します。

$$
\begin{align}
&j^2 
= \sigma \left\{ \mathbf{j} \cdot \mathbf{E} + \mathbf{j} \cdot \left( \mathbf{v} \times \frac{\mathbf{B}}{c}\right)\right\} 
= \sigma \left\{ \mathbf{j} \cdot \mathbf{E} + \mathbf{v} \cdot \left(  \frac{\mathbf{B}}{c} \times \mathbf{j}\right)\right\} \notag \\
&\Longrightarrow \ 
\mathbf{v} \cdot \left( \mathbf{j} \times \frac{\mathbf{B}}{c} \right) 
= -\frac{j^2}{\sigma} + \mathbf{j} \cdot \mathbf{E} \tag{10}
\end{align}
$$

(10)式と、(9)式に先程導出した内部エネルギーの時間変化(3)式を加えることで

$$
\rho \frac{D}{Dt} \left( \frac{1}{2} v^2 + e\right) 
= - \nabla \cdot (P \mathbf{v}) - \frac{j^2}{\sigma} + \mathbf{j} \cdot \mathbf{E} + \mathbf{v} \cdot \mathbf{E} - \mathcal{L} \tag{11}
$$

を得ます。ここまではLagrange微分の形で記述してきましたが、ここからは[Euler微分](/mhd/eular_lagrange)を用いた記述に書き換えていきましょう。そのために(2)式に$$v^2/2 + e$$をかけたものを計算します。

$$
\begin{aligned}
&\left( \frac{1}{2} v^2 + e\right) \frac{D \rho}{Dt} + \left( \frac{1}{2} v^2 + e\right) \rho (\nabla \cdot \mathbf{v}) 
= \frac{D}{Dt} \left\{ \rho \left( \frac{1}{2} v^2 + e\right)\right\} - \rho \frac{D}{Dt} \left( \frac{1}{2} v^2 + e\right) + \left( \frac{1}{2} v^2 + e\right) \rho (\nabla \cdot \mathbf{v}) 
= 0 \\ 
&\Longrightarrow \ 
\rho \frac{D}{Dt} \left( \frac{1}{2} v^2 + e\right) 
= \frac{\partial }{\partial t} \left\{ \rho \left( \frac{1}{2} v^2 + e\right)\right\} + (\mathbf{v} \cdot \nabla) \left\{ \rho \left( \frac{1}{2} v^2 + e\right)\right\} + \left( \frac{1}{2} v^2 + e\right) \rho (\nabla \cdot \mathbf{v})
\end{aligned}
$$

この式と(11)式より

$$
\frac{\partial}{\partial t} \left\{ \rho \left( \frac{1}{2} v^2 + e \right) \right\} + \nabla \cdot \left\{ \left( \frac{1}{2} v^2 + e \right) \rho \mathbf{v} \right\} 
= - \nabla \cdot (\rho \mathbf{v}) + \mathbf{j} \cdot \mathbf{E} + \mathbf{v} \cdot \mathbf{F} - \left( \mathcal{L} + \frac{j^2}{\sigma} \right) \tag{12}
$$

となります。

## 電磁場のエネルギー

磁気流体に特有のものとして、電磁場のエネルギーを考えなければならない問題が残されています。今は電磁場のエネルギーの出入りを知りたいので、[電磁場のエネルギー密度流束を表すPoyntingフラックス](/astroelec/em_energy_momentum)

$$
\mathbf{S} 
= \frac{c}{4\pi} \mathbf{E} \times \mathbf{B} 
$$

の発散をとってみると綺麗に整理できそうな予感がします。では実際に計算を進めていきましょう。

$$
\nabla \cdot {\mathbf{E} \times \mathbf{B}} 
= \partial_i (\epsilon_{ijk} E_j B_k) 
= B_k (\epsilon_{kij} \partial_i E_j) - E_j (\epsilon_{jik} \partial_i B_k) 
= \mathbf{B} \cdot (\nabla \times \mathbf{E}) - \mathbf{E} \cdot (\nabla \times \mathbf{B})
$$

のように計算できます。ここで完全反対称テンソルの性質$$\epsilon_{ijk} = \epsilon{kik}, \epsilon_{ijk} = - \epsilon_{jik}$$を用いました。するとFaradayの法則とAmpereの法則

$$
\nabla \times \mathbf{E} 
= - \frac{1}{c} \frac{\partial \mathbf{B}}{\partial t}, \quad \nabla \times \mathbf{B} 
= \frac{4\pi}{c} \mathbf{j}
$$

より

$$
\nabla \cdot \mathbf{S} 
= - \frac{1}{4\pi} \mathbf{B} \cdot \frac{\partial \mathbf{B}}{\partial t} - \mathbf{E} \cdot \mathbf{j} \ \Longrightarrow \ 
\mathbf{j} \cdot \mathbf{E} 
= - \frac{1}{8\pi} \frac{\partial B^2}{\partial t} - \nabla \cdot \mathbf{S} \tag{13}
$$

(12), (13)式より

$$
\frac{\partial }{\partial t} \left\{ \rho \left( \frac{1}{2} v^2 + e\right) + \frac{1}{8\pi} B^2\right\} + \nabla \cdot \left\{ \left( \frac{1}{2}v^2 + e + \frac{P}{\rho} \right) \rho \mathbf{v} + \mathbf{S} \right\} 
= - \left( \mathcal{L} + \frac{j^2}{\sigma} \right) + \mathbf{v} \cdot \mathbf{F} \tag{14}
$$

となります。ここで$$h = e + P/\rho$$は単位質量あたりのエンタルピーであり、内部エネルギーのやり取りを表す量に帰結していることがわかります。また右辺の$$j^2 / \sigma$$は電気伝導度が有限であることに起因するJule熱発生効果を表し、これにより電磁場のエネルギーが散逸することを表しています。

## 数値計算しやすい形に変形

最後に、磁気流体シミュレーションをしやすい形に定式化し直しましょう。ここでは電気伝導度無限大の理想磁気流体極限を考えます。すると[Ohmの法則](/mhd/ohm)より

$$
\mathbf{E} + \mathbf{v} \times \frac{\mathbf{B}}{c} = \frac{\mathbf{j}}{\sigma} \xrightarrow{\sigma \rightarrow \infty} \mathbf{0}
$$

から$$\mathbf{E} = - \mathbf{v} \times \mathbf{B}/c$$となります。よってPoyntingベクトルは

$$
\mathbf{S} 
= - \frac{1}{4\pi} (\mathbf{v} \times \mathbf{B}) \times \mathbf{B} 
= - \frac{1}{4\pi} (\mathbf{B} \cdot \mathbf{v}) \mathbf{B} + \frac{2}{8\pi} B^2 \mathbf{v}
$$

これと(8), (14)式より

$$
\frac{\partial}{\partial t} \left( \frac{1}{2} \rho v^2 + \frac{P}{\gamma -1} + \frac{1}{8\pi} B^2\right) + \nabla \cdot \left[ \left\{ \left(\frac{1}{2} \rho v^2 + \frac{P}{\gamma - 1} + \frac{1}{8\pi} B^2 \right) + \left( P + \frac{1}{8\pi} B^2 \right) \right\} \mathbf{v} - \frac{1}{4\pi} (\mathbf{B} \cdot \mathbf{v}) \mathbf{B} \right] 
= - \mathcal{L} + \mathbf{v} \cdot \mathbf{F}
$$

ここで$$E = \frac{1}{2} \rho v^2 + \frac{P}{\gamma -1} + \frac{1}{8\pi} B^2, P_\mathrm{total} = P + \frac{1}{8\pi} B^2$$のようにおけば

$$
\frac{\partial E}{\partial t} + \nabla \cdot \left\{ (E + P_\mathrm{tot}) \mathbf{v} - \frac{1}{4\pi} (\mathbf{B} \cdot \mathbf{v}) \mathbf{B} \right\} 
= - \mathcal{L} + \mathbf{v} \cdot \mathbf{F} \tag{15}
$$

のようにスッキリした見た目で記述することができます。




{% include adsense.html %} 
