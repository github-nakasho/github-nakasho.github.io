---
layout: default
title: 相対論ジェットの流体的な加速機構
parent: 相対論的磁気流体力学
math: mathjax3
permalink: /rmhd/hydro_accerelation
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

# 相対論的ジェットの流体的な加速機構

宇宙で見られるジェット現象は、今なおその加速機構が未解明です。
ジェットの加速機構として様々なアイデアが考案されていますが、ここではそのうちの一つである、純粋に流体的な効果による加速機構について見ていきましょう。

## 特殊相対論的なベルヌーイの定理

まず、相対論的な定常流において成り立つ、ベルヌーイの定理について示しておきましょう。
流体を構成する粒子の生成・消滅が無視できるとすると、[粒子数保存の式](/rmhd/conservation_law#粒子数保存)より

$$
\nabla \cdot (n\gamma \mathbf{v}) 
= 0 \ \Longrightarrow \ 
n \gamma v_i dS_i 
= (一定) \tag{1}
$$

ここで$$dS_i$$は、流線で囲まれた管(流管)の断面積を表します。
同様に、エネルギー保存の式から

$$
\nabla \cdot \{(\varepsilon + P) \gamma^2 \mathbf{v} \} 
= 0 \ \Longrightarrow \
(\varepsilon + P) \gamma^2 v_i dS_i 
= (一定) \tag{2}
$$

を得ます。
これらを辺々割り算すれば

$$
\frac{(\varepsilon + P) \gamma}{n} 
= \gamma h 
= (一定) \qquad \left( h = \frac{\varepsilon + P}{n}\right)\tag{3}
$$

のようになります。
これが特殊相対論的なベルヌーイの定理です。

## 特殊相対論的なラバール管

次に、[ラバール管](/mhd/laval_nozzle)中を相対論的な速度で定常的に運動する場合の流体の振る舞いについて見ていきましょう。
[非相対論的な場合](/mhd/laval_nozzle)と同様、断面積$$A(x)$$で表される管中を、流体は定常的に流れるものとします。
また、流体の運動は1次元であるとします。
粒子数保存の式より

$$
n \gamma v A 
= (一定) \tag{4}
$$

運動方程式は

$$

$$



## 参考文献

[1] [Rezzolla & Zanotti, "Relativistic Hydrodynamics"](https://amzn.to/4t57unb)  
[2] [北島 歓大, 2025, "相対論的流体力学の粒子法的数値計算法の開発及び高速噴流の解析"](https://nagoya.repo.nii.ac.jp/records/2012452)  
[3] [田中 秀和, "宇宙流体力学"](https://jupiter.astr.tohoku.ac.jp/~hidekazu/lecture/astrophys_fluid_dyn.pdf)  
[4] [高原文郎, "特殊相対論"](https://amzn.to/49sJUrA)  

{% include adsense.html %} 
