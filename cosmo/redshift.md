# 赤方偏移

ここでは宇宙論的な赤方偏移(Cosmological Redshift)を導出しています。

## 光の経路

光は$$ds^2 = 0$$の経路を通るので

$$
ds^2 = -c^2 dt^2 + a^2 (t) (\frac{dr^2}{1-Kr^2} r^2 (d\theta^2 + \sin^2 \theta)) 
= 0
$$

$$d\theta = d\varphi = 0$$で光が直進しているとすると

$$
cdt = - \frac{a(t) dr}{\sqrt{1-Kr^2}} 
= -a(t) d\chi \ \Longrightarrow \ 
d\chi = -\frac{cdt}{a(t)}
$$

## 赤方偏移

この両辺を積分します。$$t_1$$に発せられた光が$$t_0$$に観測者に到達すると考えます。光源までの距離を$$\chi_1$$とすると

$$
\int_{t_1}^{t_0} \frac{c}{a(t)} dt 
= -\int_{\chi_1}^0 d\chi = \chi_1
$$

同じく、$$t_1 + \Delta t_1$$に発せられた光が$$t_0 + \Delta t_0$$に観測者に到達すると考えると、同様に

$$
\int_{t_1 + \Delta t_1}^{t_0  + \Delta t_0} \frac{c}{a(t)} dt 
= -\int_{\chi_1}^0 d\chi = \chi_1
$$

この2式の両辺を引くと

$$
\begin{align}
\int_{t_1 + \Delta t_1}^{t_0  + \Delta t_0} \frac{c}{a(t)}dt -\int_{t_1 }^{t_0 } \frac{c}{a(t)} dt 
&= \int_{t_1 + \Delta t_1}^{t_0  + \Delta t_0} \frac{c}{a(t)}dt + \int_{t_0}^{t_1 + \Delta t_1} \frac{c}{a(t)} dt - \int_{t_0}^{t_1 + \Delta t_1} \frac{c}{a(t)} dt - \int_{t_1 }^{t_0 } \frac{c}{a(t)} dt \\
&= \int_{t_0}^{t_0 + \Delta t_0} \frac{c}{a(t)} dt -\int_{t_1}^{t_1 + \Delta t_1} \frac{c}{a(t)} dt
\end{align}
$$

$$\Delta t_0, \Delta t_1$$は光の周期くらい短いと考えて、宇宙膨張を示すパラメータ$$a(t)$$は積分範囲内で定数と考えると$$c\Delta t = \lambda, a(t_0) = 1$$より

$$
\frac{c\Delta t_1}{a(t_1)} = \frac{\lambda_1}{a(t_1)} 
= \frac{c\Delta t_0}{a(t_0)} = \lambda_0
$$

赤方偏移を$$1/a(t_1) \equiv 1+ z_1$$とすると

$$
\lambda_0 = \lambda_1 (1+z_1)
$$

振動数に直すと

$$
\nu_0 = \frac{\nu_1}{1+z_1}
$$

これが宇宙膨張による光の赤方偏移、cosmological redshiftです。