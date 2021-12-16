---
layout: default
title: 最適性の1次の必要条件
parent: 数理最適化
math: mathjax3
permalink: /mo/first
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

{% include adsense.html %}

# 最適性の1次の必要条件

## 内容

等式制約のある最適化問題の目的関数を$$\mathrm{obj} (\mathbf{x})$$、そして制約条件を$$g_i (\mathbf{s}) \ (i = 0, \dots, N-1)$$とします。ここで$$N$$は制約の総数です。これらは微分可能であるとします。  
$$\mathbf{x}^\ast$$が局所最適解かつ正則ならば

$$
\nabla H (\mathbf{x}^\ast, \boldsymbol{\lambda}) 
= \nabla \mathrm{obj} (\mathbf{x}^\ast) + \sum_i \lambda_i \nabla g_i (\mathbf{x}^\ast) 
= \mathbf{0} \tag{1}
$$

を満たす$$\boldsymbol{\lambda}$$が存在します。

## 証明

$$\mathbf{x}^\ast$$が局所最適解とすると、$$\mathbf{x}^\ast$$から$$\mathbf{d}$$方向に少しズレた点を考えます。$$\alpha$$を十分小さな値とすると

$$
H (\mathbf{x}^\ast + \alpha \mathbf{d}, \boldsymbol{\lambda}) - H (\mathbf{x}^\ast, \boldsymbol{\lambda})
\geq 0
$$

両辺を$$\alpha$$で割ると、微分の定義より

$$
\frac{H (\mathbf{x}^\ast + \alpha \mathbf{d}, \boldsymbol{\lambda}) - H (\mathbf{x}^\ast, \boldsymbol{\lambda})}{\alpha} 
\xrightarrow{\alpha \rightarrow 0} (\nabla_\mathbf{x} H (\mathbf{x}^\ast, \boldsymbol{\lambda}))^\top \mathbf{d} 
\geq 0 
$$

任意の方向$$\mathbf{d}$$に対してこれが常に成り立つためには$$\nabla_\mathbf{x} H = \mathbf{0}$$でなければなりません。よって局所最適解ならば(1)式を満たすような$$\boldsymbol{\lambda}$$が存在することがわかります。

# 参考文献

* [1] 梅谷俊治, しっかり学ぶ数理最適化 モデルからアルゴリズムまで
* [2] [山下信雄, 数理計画法 第3回目: 最適性の条件1](http://www-optima.amp.i.kyoto-u.ac.jp/~nobuo/Ryukoku/2002/course3.pdf)

{% include adsense.html %}