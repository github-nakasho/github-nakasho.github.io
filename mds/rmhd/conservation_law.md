---
layout: default
title: 保存則
parent: 相対論的磁気流体力学
math: mathjax3
permalink: /rmhd/conservation_law
nav_order: 3
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

# 保存則

ここでは、相対論的流体力学の保存則について見ていきましょう。

## 粒子数保存

まずは粒子数保存について考えてみましょう。
微小体積要素に含まれる粒子数の変化を計算するため、座標が$$x^i$$と$$x^i + dx^i$$の間にある直方体を考えます。
$$x$$軸 ($$i=1$$の軸)に垂直な側面を単位時間に通過する粒子数は

$$
n^1 dx^2 dx^3 
= n\gamma v_x dx^2 dx^3 \tag{1}
$$

のように計算されます。
ここから、単位時間あたりの直方体内の粒子数増加量は、2つの側面の通過量の差は

$$
\left\{ n^1 (x^1) - n^1 (x^1 + dx^1) \right\} dx^2 dx^3 
= - dV \frac{\partial n^1}{\partial x^1} \tag{2}
$$

となります。
$$y, z$$軸 ($$i=2, 3$$の軸)に対しても同様に計算すると、これがこの立方体中の粒子数の増加率$$\tfrac{dV}{c} \tfrac{\partial n^0}{\partial t}$$に等しいことから、粒子数の連続方程式が

$$
\frac{dV}{c} \frac{\partial n^0}{\partial t} 
= - dV \left( \frac{\partial n^1}{\partial x^1} + \frac{\partial n^2}{\partial x^2} + \frac{\partial n^3}{\partial x^3}\right) \ \Longrightarrow \ 
\frac{\partial n^\mu}{\partial x^\mu} 
\equiv \partial_\mu n^\mu 
= n^\mu_{\;  , \mu} = 0 \tag{3}
$$

のようにまとめることができます。
3次元的な表現は

$$
\frac{\partial n\gamma}{\partial t} + \nabla \cdot (n \gamma \mathbf{v}) 
= 0 \tag{4}
$$

のようになり、さらに$$\gamma \rightarrow 1$$の非相対論的な極限では

$$
\frac{\partial n}{\partial t} + \nabla \cdot (n \mathbf{v}) 
= 0 \tag{5}
$$

のような見慣れた形になります。  
非相対論的流体力学では、粒子数保存則に粒子質量をかけたものは質量保存則となり、これは基本法則と考えて議論を進めてきました。
しかし相対論的流体力学では、質量はエネルギーと等価なものであり、静止質量ではなくエネルギーが保存すると考えるのが自然です。
また相対論の世界では粒子の生成・消滅が起こり得るため、粒子数についてはこれを考慮した方程式を考える必要があります。
ここで導いた保存則は、厳密には保存する量 (例えばバリオン数)に対する方程式であるとみなさなければなりません。
対消滅や対生成を考える場合、粒子数と反粒子数の差は保存するようにも考えられますが、これも常に保存するわけではありません。
例えば、電子数と陽電子数の差は弱い相互作用によるニュートリノへの相互変換を考えなければ保存します。
しかし一般には、電子とニュートリノを合わせたレプトン数で考える必要があります。
このように、粒子数の保存則は、相対論の原理から決まるものではなく、素粒子物理学などの物質についての具体的な法則に基づいて決定するものと考えなければなりません。  
例えば、バリオン成分は保存しますが、電子成分については電子陽電子対生成が重要になる場合があります。
このときには、バリオン成分については保存則が成立しますが、電子成分と陽電子成分については連続方程式の右辺に対生成・対消滅による変化を表す項を加える必要があります。
通常、生成・消滅率は流体の固有系で計算されるため、これを$$\left. \dot{n}_- \right\vert_\mathrm{cr, ann}$$のように表すことにしましょう。
これを慣性系で見てみると、電子数密度$$n_-$$も時間間隔も$$\gamma$$倍になるため、電子成分の連続方程式は

$$
\frac{\partial n_- \gamma}{\partial t} + \nabla \cdot (n_- \gamma \mathbf{v}) 
= \left. \dot{n}_- \right\vert_\mathrm{cr, ann} \tag{6}
$$

のようになります。
生成・消滅が対をなして生じる場合には、電子数から陽電子数の数を引いた数は保存しています。
以降では、一定の物質量に対する熱力学的考察を行うときの数密度は、バリオン数などの保存量を意味するものとしましょう。

## エネルギー運動量保存

これまでの議論と同様にして、エネルギー保存則を連続方程式の形に表すことにしましょう。
各側面を単位時間・単位面積あたりに通過するエネルギーは$$c T^{0i}$$より、エネルギー保存を表す連続の式は

$$
\frac{\partial T^{0\mu}}{\partial x^\mu} 
\equiv \partial_\mu T^{0\mu} 
\equiv T^{0\mu}_{\; \; ,\mu} 
= 0\tag{7}
$$

のように書かれます。
運動量保存則も同様にして、連続の式の形に表すことができます。
$$i$$方向の運動量については

$$
\frac{\partial T^{i\mu}}{\partial x^\mu} 
\equiv \partial_\mu T^{i\mu} 
\equiv T^{i\mu}_{\; \; ,\mu} 
= 0 \tag{8}
$$

のようになります。
(7), (8)式をまとめて

$$
\frac{\partial T^{\mu \nu}}{\partial x^\nu} 
\equiv \partial_\nu T^{\mu \nu} 
\equiv T^{\mu \nu}_{\; \; ,\nu} 
= 0 \tag{9}
$$

と書くことができます。
粒子数保存とは異なり、運動量とエネルギーの保存則は全ての構成成分の和をとる限り厳密に成立します。
流体をいくつかの構成要素に分割して考える場合、例えば輻射は流体を構成しない外部の要素と考えて、他の物質の成分についてのエネルギーや運動量の保存則を考えるような状況を見てみましょう。
このとき、輻射との相互作用でのエネルギーや運動量の交換を表す項が右辺に必要となります。
すると、輻射のエネルギー運動量保存則の右辺にはこれと符号が反対の項が出現し、両者の和を取ると厳密に保存則が成立するようになっています。

## 参考文献

[1] [北島 歓大, 2025, "相対論的流体力学の粒子法的数値計算法の開発及び高速噴流の解析"](https://nagoya.repo.nii.ac.jp/records/2012452)  
[2] [田中 秀和, "宇宙流体力学"](https://jupiter.astr.tohoku.ac.jp/~hidekazu/lecture/astrophys_fluid_dyn.pdf)  
[3] [高原文郎, "特殊相対論"](https://amzn.to/49sJUrA)  
[4] [Mathlog, "【相対論】相対論的流体"](https://mathlog.info/articles/dtGQSWXXQbmPFOMv3Mfj)  

{% include adsense.html %} 
