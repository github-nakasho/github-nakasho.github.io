# シュバルツシルトの内部解

## 導出

$$r<R$$のとき$$\rho=\rho_0 ({\rm Const})$$, そして$$M(r) = \frac{4\pi}{3}r^3 \rho_0 = \frac{r^3}{R^3} M$$です。TOV方程式より

$$
p = \frac{f(r) - C_p}{3C_p - f(r)} \rho_0 c^2, \ f(r) = \sqrt{1-\frac{2GM}{c^2 R^3} r^2}, \ C_p = \sqrt{1-\frac{2GM}{c^2 R}}
$$

です。さらにTOV方程式を導出する途中で求めた式より

$$
\frac{d\Phi}{dr} = \frac{1}{f(r)^2} (\frac{GM}{c^2} \frac{r}{R^3} + \frac{3G}{c^2} \frac{f(r) - C_p}{3C_p - f(r)} \frac{M}{R^3} r)
$$

ここで

$$
\frac{df}{dr} = \frac{1}{f(r)} (-\frac{2GM}{c^2 R^3} r) \ \Longrightarrow \ 
\frac{GM}{c^2 R^3} r 
= -\frac{1}{2} f(r) \frac{df}{dr}
$$

より

$$
\frac{d\Phi}{dr} 
= \frac{1}{f(r)^2} (-\frac{1}{2} f(r) \frac{df}{dr} -\frac{3}{2} f(r) \frac{df}{dr} \frac{f(r) -C_p}{3C_p -f(r)}) 
= \frac{\frac{d}{dr} (3C_p -f(r))}{3C_p - f(r)} 
= \frac{d}{dr} \ln (3C_p -f(r))
$$

$$
\Phi = \ln (3C_p -f(r)) + C_1
$$

ここで$$C_1$$は積分定数です。

$$
\therefore \ g_{00} 
= -e^{2\Phi} 
= -C_2 (3C_p -f(r))^2
$$

境界条件より$$r =R$$でシュバルツシルトの外部解に接続するので

$$
-(1-\frac{2GM}{c^2 R}) = -C_2 (3C_p -C_p)^2 
= -4 C_2 (1-\frac{2GM}{c^2 R}) \ \Longrightarrow \ 
C_2 = \frac{1}{4}
$$

よって

$$
g_{00} = -\left( \frac{3}{2} \sqrt{1-\frac{2GM}{c^2 R}} - \frac{1}{2} \sqrt{1-\frac{2GM}{c^2 R} \frac{r^2}{R^2}} \right)^2
$$

となります。