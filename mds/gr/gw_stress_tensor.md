---
layout: default
title: 重力波の応力テンソル
parent: 一般相対性理論
math: mathjax3
permalink: /gr/gw_stress_tensor
nav_order: 39
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

# 重力波の応力テンソル

ここでは、物体が重力波を放射することで運ばれるエネルギーについてメモします。

## 線形化されたアインシュタイン方程式からは導出できない？

まずは[線形化されたアインシュタイン方程式](/gr/linear_einstein)から考えてみることにしましょう。

$$
\Box \bar{h}^{\mu \nu} 
= - \frac{16 \pi G}{c^4} T^{\mu \nu} \tag{1}
$$

ここで、$$\bar{h}^{\mu \nu}$$は

$$
\bar{h}^{\mu \nu}_{\ \ \ \ \ , \nu} 
= 0 \tag{2}
$$

を満たすようなゲージ(ローレンツゲージ)を選択したのでした。
これらより、(1)式の両辺に$$\partial^\nu$$を作用させることで

$$
T^{\mu \nu}_{\ \ \ \ \ , \nu} 
= 0 \tag{3}
$$

を得ます。
ここで$$T^{00}$$は、物質のエネルギーを表します。
これをある有限の大きさの体積で積分しましょう。
その中に存在する物質の全エネルギーを$$E$$とすると、これは

$$
E 
\equiv \iiint T^{00} dV \tag{4}
$$

のようになります。
この両辺を時間微分すると

$$
\frac{dE}{dt} 
= \iiint T^{00}_{\ \ \ \ \ , 0} dV 
\underbrace{=}_{(3)} - \iiint T^{0k}_{\ \ \ \ \ ,k} dV 
\underbrace{=}_{ガウスの定理} - \iint T^{0k} dS_k 
= 0 \tag{5}
$$

のように計算できます。
最後の等号は、表面積分においてその面を無限遠に設定することから得られるものです。
この式はエネルギーが保存すること、すなわち重力波放出によるエネルギー損失が存在しないことを意味します。  
では重力波によるエネルギーの運搬を計算するには、どうすれば良いでしょうか。

## Balbus 2016の方法

```
このBalbusさんは、磁気回転不安定性で有名なBalbus & Hawley, 1991のBalbusさんと同一人物です。
```

### エネルギー・運動量保存則の導出

それには、[ゲージ変換を施し線形化されたアインシュタイン方程式(1)](/gr/linear_einstein)を用いるのでなく、その前の方程式である

$$
\Box \bar{h}_{\mu \nu} - \bar{h}^\alpha_{\ \ \ \mu, \nu \alpha} - \bar{h}^\alpha_{\ \ \ \nu, \mu \alpha} + \eta_{\mu \nu} \bar{h}^{\alpha \beta}_{\ \ \ \ \ , \alpha \beta} 
= - \kappa T_{\mu \nu} \tag{6}
$$

を用います。
ここで$$\kappa = 16 \pi G / c^4$$です。
この式を出発点にすることで、ゲージ変換で失われた情報を用いることが可能となり、重力波の運ぶエネルギーを求めることができるようになります。
(6)式の両辺に$$\eta^{\mu \nu}$$をかけて縮約をとります。
このとき、$$\bar{h} \equiv \eta^{\mu \nu} \bar{h}_{\mu \nu} = h^\mu_{\ \ \mu}$$とすると

$$
\begin{align}
&\Box \bar{h} - \bar{h}^{\alpha \nu}_{\ \ \ \ \ , \alpha \nu} - \bar{h}^{\alpha \mu}_{\ \ \ \ \ , \alpha \mu} + \underbrace{\delta^{\mu}_{\ \ \ \mu}}_{=4} \bar{h}^{\alpha \beta}_{\ \ \ \ \ , \alpha \beta} 
= - \kappa T_{\mu}^{\ \ \ \mu} 
\ \Longrightarrow \ 
\Box \bar{h} + 2 \bar{h}^{\alpha \beta}_{\ \ \ \ \ , \alpha \beta} 
= - \kappa T \notag \\
&\Longrightarrow \ 
\bar{h}^{\alpha \beta}_{\ \ \ \ \ , \alpha \beta} 
= - \frac{1}{2} \Box \bar{h} - \frac{\kappa}{2} T \tag{7}
\end{align}
$$

となります。
途中、$$T \equiv T_\mu^{\ \ \ \mu}$$としました。
これを(6)式に代入すると

$$
\Box \bar{h}_{\mu \nu} - \bar{h}^\alpha_{\ \ \ \mu, \nu \alpha} - \bar{h}^\alpha_{\ \ \ \nu, \alpha \mu} - \frac{1}{2} \eta_{\mu \nu} \Box \bar{h} 
= - \kappa S_{\mu \nu} \tag{8}
$$

のように計算できます。
ここで右辺の

$$
S_{\mu \nu} 
\equiv T_{\mu \nu} - \frac{1}{2} \eta_{\mu \nu} T \tag{9}
$$

は、 厳選項を表しています。
さて、この式をエネルギー・運動量保存則の形に書き換えることで、重力波の応力テンソルを導出していきましょう。
そのために、(8)式の両辺に$$\partial_\sigma \bar{h}^{\mu \nu}$$をかけ、$$\mu, \nu$$で縮約を取ります。
まずは第一項からです。

$$
\begin{align}
&\Box \bar{h}_{\mu \nu} \partial_\sigma \bar{h}^{\mu \nu} 
= (\partial_\rho \partial^\rho \bar{h}_{\mu \nu}) (\partial_\sigma \bar{h}^{\mu \nu})
= \partial^\rho \{ (\partial_\rho \bar{h}_{\mu \nu}) (\partial_\sigma \bar{h}^{\mu \nu})\} - \{\partial^\rho (\partial_\sigma \bar{h}^{\mu \nu})\} (\partial_\rho \bar{h}_{\mu \nu}) \notag \\
& \quad = \partial^\rho \{ (\partial_\rho \bar{h}_{\mu \nu}) (\partial_\sigma \bar{h}^{\mu \nu})\} - \{\partial_\sigma (\partial^\rho \bar{h}^{\mu \nu})\} (\partial_\rho \bar{h}_{\mu \nu}) 
= \partial^\rho \{ (\partial_\rho \bar{h}_{\mu \nu}) (\partial_\sigma \bar{h}^{\mu \nu})\} - \frac{1}{2} \partial_\sigma \{ (\partial^\rho \bar{h}^{\mu \nu}) (\partial_\rho \bar{h}_{\mu \nu}) \} \tag{10}
\end{align}
$$

最後の等号は、$$\rho, \mu, \nu$$で縮約をとることから、2乗の微分であることを用いた変形をしています。
続いて第二項です。

$$
\begin{align}
&-\bar{h}^\alpha_{\ \ \ \mu, \nu \alpha} \partial_\sigma \bar{h}^{\mu \nu} 
= -\bar{h}^\alpha_{\ \ \ \mu, \nu \alpha} \partial_\sigma \eta^{\mu \beta} \eta^{\nu \gamma} \bar{h}_{\beta \gamma} 
= -\bar{h}^{\alpha \beta, \gamma}_{\ \ \ \ \ \ \ \ , \alpha} \partial_\sigma \bar{h}_{\beta \gamma} 
= - \{ \partial^\gamma (\partial_\alpha \bar{h}^{\alpha \beta}) \} (\partial_\sigma \bar{h}_{\beta \gamma}) \notag \\
& \quad = -\partial^\gamma \{( \partial_\alpha \bar{h}^{\alpha \beta}) (\partial_\sigma \bar{h}_{\beta \gamma})\} + (\partial_\alpha \bar{h}^{\alpha \beta})(\partial^\gamma \partial_\sigma \bar{h}_{\beta \gamma}) 
\underbrace{=}_{\gamma \rightarrow \rho} -\partial^\rho \{( \partial_\alpha \bar{h}^{\alpha \beta}) (\partial_\sigma \bar{h}_{\beta \rho})\} + \frac{1}{2} \partial_\sigma (\partial_\alpha \bar{h}^{\alpha \beta})(\partial^\rho \bar{h}_{\beta \rho}) \tag{11}
\end{align}
$$

第三項は、$$\mu, \nu$$で縮約をとることを考えれば、第二項と同じ結果になります。
第四項は

$$
\begin{align}
&-\frac{1}{2} \eta_{\mu \nu} (\partial^\rho \partial_\rho \bar{h}) \partial_\sigma \bar{h}^{\mu \nu} 
= -\frac{1}{2} (\partial^\rho \partial_\rho \bar{h}) (\partial_\sigma \bar{h}) 
= -\frac{1}{2} \partial^\rho \{ (\partial_\rho \bar{h}) (\partial_\sigma \bar{h})\} + \frac{1}{2} (\partial_\rho \bar{h}) (\partial^\rho \partial_\sigma \bar{h}) \notag \\
& \quad = -\frac{1}{2} \partial^\rho \{ (\partial_\rho \bar{h}) (\partial_\sigma \bar{h})\} + \frac{1}{4} (\partial_\rho \bar{h}) (\partial^\rho \bar{h}) \tag{12}
\end{align}
$$

のように整理されます。
以上をまとめ、両辺を$$2\kappa$$で割れば

$$
\partial_\sigma \mathcal{S} + \partial^\rho \mathcal{T}_{\rho \sigma} 
= - \frac{1}{2} S_{\mu \nu} \partial_\sigma \bar{h}^{\mu \nu} \tag{13}
$$

のようにまとめることができます。
ここで

$$
\mathcal{S} 
= -\frac{1}{4\kappa} (\partial^\rho \bar{h}^{\mu \nu}) (\partial_\rho \bar{h}_{\mu \nu}) + \frac{1}{2\kappa} (\partial_\alpha \bar{h}^{\alpha \beta}) (\partial^\rho \bar{h}_{\beta \rho}) + \frac{1}{8\kappa} (\partial_\rho \bar{h}) (\partial^\rho \bar{h}) \tag{14}
$$

$$
\mathcal{T}_{\rho \sigma} 
= \frac{1}{2\kappa} (\partial_\rho \bar{h}_{\mu \nu}) (\partial_\sigma \bar{h}^{\mu \nu}) - \frac{1}{\kappa} (\partial_\alpha \bar{h}^{\alpha \beta}) (\partial_\sigma \bar{h}_{\beta \rho}) - \frac{1}{4\kappa} (\partial_\rho \bar{h}) (\partial_\sigma \bar{h}) \tag{15}
$$

です。
このようにすることで、保存系のような形にまとめることができました。

{% include adsense.html %}

### 応力テンソル

しかし、これは応力テンソルの形になっていません。
この$$\mathcal{T}_{\rho \sigma}$$は対称な形になっていないためです。
そこで$$\partial_\sigma \mathcal{S} = \partial^\rho \eta_{\rho \sigma} \mathcal{S}$$のような変形を行い、さらに式変形を進めましょう。

$$
\partial^\rho (\mathcal{T}_{\rho \sigma} + \eta_{\rho \sigma} \mathcal{S}) 
= - \frac{1}{2} S_{\mu \nu} \partial_\sigma \bar{h}^{\mu \nu} \tag{16}
$$

ここで

$$
\mathcal{U}_{\rho \sigma} 
\equiv \mathcal{T}_{\rho \sigma} + \eta_{\rho \sigma} \mathcal{S} \tag{17}
$$

です。
この$$\mathcal{U}_{\rho \sigma}$$の$$00, 0i, ij$$成分を、ローレンツゲージ($$\bar{h}_{\mu \nu}^{\ \ \ \ \ ,\nu} = 0$$)とTTゲージ($$\bar{h} = 0$$)を課して計算しましょう。

$$
\begin{align}
\mathcal{U}_{00} 
&= \mathcal{T}_{00} + \eta_{00} \mathcal{S} 
= \frac{1}{2\kappa} (\partial_0 \bar{h}_{\mu \nu}) (\partial_0 \bar{h}^{\mu \nu}) + \frac{1}{4\kappa} (\partial^\rho \bar{h}^{\mu \nu}) (\partial_\rho \bar{h}_{\mu \nu}) \notag \\
&= \frac{1}{2\kappa} (\partial_0 \bar{h}_{\mu \nu}) (\partial_0 \bar{h}^{\mu \nu}) + \frac{1}{4\kappa} (\eta^{\rho \alpha} \partial_\alpha \bar{h}^{\mu \nu}) (\partial_\rho \bar{h}_{\mu \nu}) \notag \\
&= \frac{1}{2\kappa} (\partial_0 \bar{h}_{\mu \nu}) (\partial_0 \bar{h}^{\mu \nu}) + \frac{1}{4\kappa} (- \partial_0 \bar{h}^{\mu \nu}) (\partial_0 \bar{h}_{\mu \nu}) + \frac{1}{4\kappa} (\partial_i \bar{h}^{\mu \nu}) (\partial_i \bar{h}_{\mu \nu}) \notag \\
&= \frac{1}{4\kappa} \{(\partial_0 \bar{h}_{\mu \nu}) (\partial_0 \bar{h}^{\mu \nu}) + (\partial_i \bar{h}^{\mu \nu}) (\partial_i \bar{h}_{\mu \nu}) \} \tag{18}
\end{align}
$$

$$
\mathcal{U}_{0i} 
= \mathcal{T}_{0i} 
= \frac{1}{2\kappa} (\partial_0 \bar{h}_{\mu \nu}) (\partial_i \bar{h}^{\mu \nu}) \tag{19}
$$

$$
\mathcal{U}_{ij} 
= \mathcal{T}_{ij} + \delta_{ij} \mathcal{S} 
= \frac{1}{2\kappa} \left\{ (\partial_i \bar{h}_{\mu \nu}) (\partial_j \bar{h}^{\mu \nu})- \frac{1}{2} \delta_{ij} (\partial_\rho \bar{h}_{\mu \nu}) (\partial^\rho \bar{h}^{\mu \nu}) \right\} \tag{20}
$$

以上から、$$\mathcal{U}_{\rho \sigma}$$が対称なテンソルとなっていることがわかります。
さらに、重力波の波長$$\lambda$$よりも十分長いスケールで平均を取ると、光子と同じくその4元波数ベクトルは$$k^\rho k_\rho = 0$$を満たすはずです。
よって$$\partial^\rho \bar{h}_{\mu \nu} \partial_\rho \bar{h}^{\mu \nu} = 0$$から

$$
\begin{align}
&(\partial^\rho \bar{h}_{\mu \nu}) (\partial_\rho \bar{h}^{\mu \nu}) 
= \eta^{\rho \alpha} (\partial_\alpha \bar{h}_{\mu \nu}) (\partial_\rho \bar{h}^{\mu \nu}) 
= - (\partial_0 \bar{h}_{\mu \nu}) (\partial_0 \bar{h}^{\mu \nu}) + (\partial_i \bar{h}_{\mu \nu}) (\partial_i \bar{h}^{\mu \nu})
= 0 \notag \\
&\Longrightarrow \ 
(\partial_0 \bar{h}_{\mu \nu}) (\partial_0 \bar{h}^{\mu \nu}) 
= (\partial_i \bar{h}_{\mu \nu}) (\partial_i \bar{h}^{\mu \nu}) \tag{21}
\end{align}
$$

と示せます。
これを用いると

$$
\mathcal{U}_{\rho \sigma} 
= \frac{1}{2\kappa} \langle (\partial_{\rho} \bar{h}_{\mu \nu}) (\partial_\sigma \bar{h}^{\mu \nu}) \rangle_\mathrm{TT}
= \frac{c^4}{32 \pi G} \langle (\partial_{\rho} \bar{h}_{\mu \nu}) (\partial_\sigma \bar{h}^{\mu \nu}) \rangle_\mathrm{TT}
= T_{\rho \sigma}^\mathrm{GW} \tag{22}
$$

を得ます。
ここで$$\langle \cdots \rangle_\mathrm{TT}$$は、重力波の波長$$\lambda$$より十分長いスケールでの平均操作かつTTゲージを適用したことを表す記号です。
このようにして、[Isaacsonが1968に論文で発表したもの](https://journals.aps.org/pr/abstract/10.1103/PhysRev.166.1272)と同じ、TTゲージにおける重力波のエネルギー運動量擬テンソルを得ることができました。

## 参考文献

[1] [須藤靖, "もうひとつの一般相対論入門"](https://amzn.to/4blItLJ)  
[2] [田中貴浩, "基幹講座 物理学 相対論"](https://amzn.to/4ar7e7W)  
[3] [ランダウ & リフシッツ, "場の古典論"](https://amzn.to/4a6BSUd)  
[4] [Balbus, 2016, "Simplified Derivation of the Gravitational Wave Stress Tensor from the linearized Einstein Field Equations"](https://www.pnas.org/doi/full/10.1073/pnas.1614681113)  
[5] [Isaacson, 1968, "Gravitational Radiation in the Limit of High Frequency I. The Linear Approximation and Geometrical Optics"](https://journals.aps.org/pr/abstract/10.1103/PhysRev.166.1263)  
[6] [Isaacson, 1968, "Gravitational Radiation in the Limit of High Frequency II. Nonlinear Terms and the Effective Stress Tensor"](https://journals.aps.org/pr/abstract/10.1103/PhysRev.166.1272)  
[7] [Maggiore, "Gravitational Waves"](https://amzn.to/491W20k)  
[8] [Misner, Thorne & Wheeler, "Gravitation"](https://amzn.to/3x7JF5B)  

{% include adsense.html %}
