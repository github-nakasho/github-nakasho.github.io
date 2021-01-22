# 連続の式

質量保存の法則を表すこの式は、自然界でもとても強力な式です。ぜひ覚えておきましょう。

## ラグランジュ微分表現

質量密度$$\rho$$の流体要素が運動とともに変化する様子を考えましょう。流体要素の速度を$${\bf v}$$とすると、その流体要素の膨張率は$${\nabla \cdot {\bf v}}$$と書けるので

$$
\frac{1}{\rho} \frac{D\rho}{Dt} = - \nabla \cdot{\bf v}
$$

## オイラー微分表現、保存形式表現

上の式でラグランジュ微分をオイラー微分に書き換えましょう。

$$
\frac{D\rho}{Dt} + \rho (\nabla \cdot {\bf v}) 
= \frac{\partial \rho}{\partial t} + ({\bf v} \cdot \nabla) \rho + \rho (\nabla \cdot {\bf v}) 
= \frac{\partial \rho}{\partial t} + \nabla \cdot (\rho {\bf v}) = 0
$$

## 連続の式の積分系

両辺を適当な体積$$V$$の領域で体積積分しましょう。

$$
\iiint_V \frac{\partial \rho}{\partial t} dV = \frac{\partial }{\partial t} \iiint_V \rho dV = \frac{\partial M}{\partial t}
$$

途中、体積$$V$$内に含まれる総質量を$$M$$とおきました。

$$
\iiint_V \nabla \cdot (\rho {\bf v}) dV \underbrace{=}_{ガウスの定理} \iint_S (\rho {\bf v}) \cdot d{\bf S}
$$

ここで$$S$$は体積$$V$$を囲む閉曲面です。

$$
\therefore \ \frac{\partial M}{\partial t} = - \iint_S (\rho {\bf v}) \cdot d{\bf S}
$$

右辺は閉曲面を通過して領域内に流入・流出する質量フラックスの総和です。領域内の全質量$$M$$の時間変化は流入・流出する量で表現されるという当然とも言える結果を得ました。

## 参考文献

* Solar Magnetohydrodynamics, E.R.Priest