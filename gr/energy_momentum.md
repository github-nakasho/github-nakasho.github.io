# エネルギー運動量テンソル

完全流体のエネルギー運動量テンソルを

$$
T^{\mu \nu} \equiv \left(\rho c^{2}+p\right) \frac{u^{\mu}}{c} \frac{u^{\nu}}{c}+p g^{\mu \nu} \tag{1}
$$

と定義します。$$\rho c^2$$はエネルギー密度、$$p$$は流体を構成するガスの圧力、$$u$$は4元速度で$$u^\mu = dx^\mu / d\tau$$です。

# 非相対論的極限

局所慣性系で非相対論的流体$$v/c \ll 1, p \ll \rho c^2, u^\mu \simeq (c, v^i)$$の極限を考えてみましょう。すると(1)式で定義されるテンソルは

$$
\left(T^{\mu \nu}\right)=\left(\begin{array}{cccc}
\rho c^{2} & \rho c v_{x} & \rho c v_{y} & \rho c v_{z} \\
\rho v_{x} c & \rho v_{x}v_{x}+p & \rho v_{x} v_{y} & \rho v_{x} v_{z} \\
\rho v_{y} c & \rho v_{y} v_{x} & \rho v_{y}v_{y}+p & \rho v_{y} v_{z} \\
\rho v_{z} c & \rho v_{z} v_{x} & \rho v_{z} v_{y} & \rho v_{z} v_{z}+p
\end{array}\right)
$$

局所慣性系より$$\nabla_\lambda = \partial_\lambda$$です。

## エネルギー成分(第0成分)

$$
\nabla_{\mu} T^{\mu 0}=\partial_{0} T^{00}+\partial_{x} T^{x 0}+\partial_{y} T^{y 0}+\partial_{z} T^{* 0}=\frac{1}{c} \frac{\partial}{\partial t}\left(\rho c^{2}\right)+\frac{\partial}{\partial x}\left(\rho v_{x} c\right)+\frac{\partial}{\partial y}\left(\rho v_{y} c\right)+\frac{\partial}{\partial z}\left(\rho v_{z} c\right)=c\left\{\frac{\partial \rho}{\partial t}+\nabla \cdot(\rho \mathbf{v})\right\}=0
$$

## 運動量成分(第1-3成分)

$$
\begin{aligned}
\nabla_{\mu} T^{\mu x} &=\partial_{0} T^{0 x}+\partial_{x} T^{x x}+\partial_{y} T^{y x}+\partial_{z} T^{z x}=\frac{1}{c} \frac{\partial}{\partial t}\left(\rho v_{x} c\right)+\frac{\partial}{\partial x}\left(\rho v_{x}v_x+p\right)+\frac{\partial}{\partial y}\left(\rho v_{x} v_{y}\right)+\frac{\partial}{\partial z}\left(\rho v_{x} v_{z}\right) \\
&=\frac{\partial}{\partial t}\left(\rho v_{x}\right)+\nabla \cdot\left(\rho v_{x} \mathbf{v}+\mathbf{I} p\right)=0
\end{aligned}
$$

## 結論

以上の非相対論的極限の計算より、局所慣性系での完全流体のエネルギー(質量)・運動量保存則から、完全流体のエネルギー運動量テンソルの定義はこれで間違っておらず、また$$\nabla_\mu T^{\mu \nu} = 0$$が成立します。