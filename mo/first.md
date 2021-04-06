# 最適性の1次の必要条件

## 内容

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
\xrightarrow{\alpha \rightarrow 0} (\nabla_\mathbf{x} H (\mathbf{x}^\ast, \boldsymbol{\lambda}))^T \mathbf{d} 
\geq 0 
$$

任意の方向$$\mathbf{d}$$に対してこれが常に成り立つためには$$\nabla_\mathbf{x} H = \mathbf{0}$$でなければなりません。よって局所最適解ならば(1)式を満たすような$$\boldsymbol{\lambda}$$が存在することがわかります。