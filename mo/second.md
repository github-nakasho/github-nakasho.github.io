# 最適性の2次の十分条件

## 内容

最適化問題の目的関数$$\mathrm{obj} (\mathbf{x})$$と制約条件$$g_i (\mathbf{x}) \ (i = 0, \dots, N-1)$$が2階微分可能とします。そして点$$\mathbf{x}^\ast$$は局所最適解かつ正則とします。このとき[最適性の1次の必要条件](/mo/first.md)に加えて

$$
\mathbf{d}^T \left( \nabla^2 \mathrm{obj} (\mathbf{x}^\ast) + \sum_i \lambda_i \nabla^2 g_i (\mathbf{x}^\ast) \right) \mathbf{d} 
\geq 0 \tag{1}
$$

を満たすベクトル$$\boldsymbol{\lambda}$$が存在します。ここで$$\mathbf{d}$$は点$$\mathbf{x}^\ast$$から少しだけズレた位置を考えるときの方向ベクトルです。

## 証明

目的関数と制約条件を全て足し合わせた関数を$$H (\mathbf{x}, \boldsymbol{\lambda})$$とします。局所最適解$$\mathbf{x}^\ast$$から少しだけズレた位置での値を考えるために微小な値$$\alpha$$を考えると

$$
H (\mathbf{x}^\ast + \alpha \mathbf{d}, \boldsymbol{\lambda}) 
= H (\mathbf{x}^\ast, \boldsymbol{\lambda})+ \alpha (\nabla_\mathbf{x} H(\mathbf{x}^\ast, \boldsymbol{\lambda}))^T \mathbf{d} + \frac{1}{2} \alpha^2 \mathbf{d}^T \nabla_\mathbf{xx}^2 H (\mathbf{x}^\ast, \boldsymbol{\lambda}) \mathbf{d} + \mathcal{O} (\alpha^3)   
$$

[最適性の1次の必要条件](/mo/first.md)から$$\nabla_\mathbf{x} H (\mathbf{x}^\ast, \boldsymbol{\lambda}) = \mathbf{0}$$より

$$
\frac{H (\mathbf{x}^\ast + \alpha \mathbf{d}, \boldsymbol{\lambda})-H(\mathbf{x}^\ast, \boldsymbol{\lambda})}{\alpha^2} 
= \frac{1}{2} \mathbf{d}^T \nabla_\mathbf{xx}^2 H (\mathbf{x}^\ast, \boldsymbol{\lambda}) \mathbf{d} + \mathcal{O} (\alpha) 
\geq 0
$$

両辺の$$\alpha \rightarrow 0$$の極限をとると

$$
\frac{1}{2} \mathbf{d}^T \nabla_\mathbf{xx}^2 H (\mathbf{x}^\ast, \boldsymbol{\lambda}) \mathbf{d} 
\geq 0
$$

よって(1)式が成り立っており、これを満たす$$\boldsymbol{\lambda}$$が存在することがわかります。

## 参考文献

* [1] 梅谷俊治, しっかり学ぶ数理最適化 モデルからアルゴリズムまで
* [2] [山下信雄, 数理計画法 第3回目: 最適性の条件1](http://www-optima.amp.i.kyoto-u.ac.jp/~nobuo/Ryukoku/2002/course3.pdf)