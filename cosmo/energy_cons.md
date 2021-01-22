# エネルギー保存

## フリードマン方程式の変形

フリードマン方程式から

$$
\dot{\rho} + 3 \frac{\dot{a}}{a} (\rho + \frac{p}{c^2}) = 0
$$

これがエネルギー保存になっています。この式が、非相対論的物質や相対論的物質・ダークエネルギー・空間曲率にどのような制限をつけるのでしょうか。

## 非相対論的物質の場合

$$
\dot{\rho}_m + 3 \rho_m \frac{\dot{a}}{a} (1 + \frac{p}{\rho_m c^2}) 
\simeq \dot{\rho}_m + 3\frac{\dot{a}}{a} \rho_m = 0 \ \Longrightarrow \ 
a^3 \dot{\rho}_m + 3a^2 \dot{a} \rho_m = 0
$$

これより

$$
a^3 \rho_m = {\rm Const} = \rho_{m, 0}
$$

となります。

## 相対論的物質の場合

$$
\dot{\rho}_\gamma + 3 \rho_\gamma \frac{\dot{a}}{a} (1 + \frac{p_\gamma}{\rho_\gamma c^2}) 
\simeq \dot{\rho}_\gamma + 4\frac{\dot{a}}{a} \rho_\gamma = 0 \ \Longrightarrow \ 
a^4 \dot{\rho}_\gamma + 4a^3 \dot{a} \rho_\gamma = 0
$$

これより

$$
a^4 \rho_\gamma = {\rm Const} = \rho_{\gamma, 0}
$$

となります。特に光子の場合、光子1個のエネルギーは$$h\nu$$より光子数は

$$
n_\gamma = \frac{\rho_\gamma c^2}{h\nu}
$$

です。ドップラー効果より

$$
\nu_0 = \frac{\nu}{1+z} = a\nu
$$

これらを総合すると

$$
\rho_\gamma c^2 a^4 = {\rm Const} = h\nu n_\gamma a^4 = h\nu_0 n_\gamma a^3
$$

よって

$$
n_\gamma a^3 = {\rm Const}
$$

となります。これは粒子数保存を示しています。また状態方程式の補遺より、$$\rho_\gamma \propto T^4$$から

$$
T^4 a^4 = {\rm Const} = T_0^4 a_0^4 = T_0^4
$$

です。よって光子の温度は$$T = T_0 (1+z)$$となります。

## ダークエネルギーの場合

$$
\begin{align}
&\dot{\rho}_{\rm DE} + 3 \frac{\dot{a}}{a} \rho_{\rm DE} (1+\frac{p_{\rm DE}}{\rho_{\rm DE} c^2}) 
= \dot{\rho}_{\rm DE} + 3 (1+w_{\rm DE}) \frac{\dot{a}}{a} \rho_{\rm DE} 
= 0 \\
&\Longrightarrow \ 
a^{3(1+w_{\rm DE})} \dot{\rho}_{\rm DE} + 3(1+w_{\rm DE}) a^{3(1+w_{\rm DE})-1} \dot{a} \rho_{\rm DE} = 0
\end{align}
$$

これより

$$
a^{3(1+w_{\rm DE})} \rho_{\rm DE} = {\rm Const} = \rho_{\rm DE, 0}
$$

となります。

## 真空(空間の曲率)の場合

$$
\dot{\rho}_K + 3\frac{\dot{a}}{a} \rho_K (1+\frac{p_K}{\rho_K c^2}) 
= \dot{\rho}_K + 2\frac{\dot{a}}{a} \rho_K = 0 \ \Longrightarrow \ 
a^2 \dot{\rho}_K + 2a\dot{a} \rho_K = 0
$$

これより

$$
a^2 \rho_K = {\rm Const} = \rho_{K, 0}
$$

となります。