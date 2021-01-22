# 固有体積要素

## 固有体積要素とは

局所慣性系での微小変位ベクトルを$$d\bar{\bf x}$$と書きましょう。これを用いて体積要素を表現すると$$dV = d\bar{x}^0d\bar{x}^1d\bar{x}^2d\bar{x}^3$$と書けます。これを一般座標系での微小変位ベクトル$$d{\bf x}$$で表現すると、ヤコビアンを用いて

$$
dV 
= {\rm det} \left( \frac{\partial \bar{x}^\alpha}{\partial x^\mu}\right) dx^0 dx^1 dx^2 dx^3
$$

となります。局所慣性系での計量テンソルはミンコフスキーメトリックなので、一般座標系での計量テンソルは

$$
g_{\mu \nu} 
= \frac{\partial \bar{x}^\alpha}{\partial x^\mu}\frac{\partial \bar{x}^\beta}{\partial x^\nu} \eta_{\bar{\alpha} \bar{\beta}} 
= \Lambda_\mu^{\ \bar{\alpha}}\eta_{\bar{\alpha} \bar{\beta}} \Lambda_{\ \nu}^\bar{\beta}
$$

よってこれを行列形式で書くと

$$
(g_{\mu \nu}) = {}^t \Lambda \eta \Lambda
$$

これの行列式は

$$
g \equiv {\rm det} (g_{\mu \nu})
= {\rm det}({}^t \Lambda) {\rm det}(\eta) {\rm det}(\Lambda) 
= - {\rm det}(\Lambda)^2 
\ \Longrightarrow \ {\rm det}(\Lambda) = \sqrt{-g}
$$

となります。よって固有体積要素は

$$
dV 
= \sqrt{-g} d^4 x
$$

と書けます。

## 例題: 2次元デカルト座標での固有体積要素

$$
{\rm det} (g_{\mu \nu}) 
= \left| \begin{array}{ccc}
 -1 & & {\bf 0}\\
& 1 &\\
{\bf 0}& & 1
\end{array} \right|
= -1
$$

$$
\therefore \ dV 
= 1 dx dy cdt
$$

## 例題: 2次元極座標での固有体積要素

$$
{\rm det} (g_{\mu \nu}) 
= \left| \begin{array}{ccc}
 -1 & & {\bf 0}\\
& 1 &\\
{\bf 0}& & r^2
\end{array} \right|
= -r^2
$$

$$
\therefore \ dV 
= r dr d\theta cdt
$$
