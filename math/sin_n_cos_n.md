# $$\sin^n, \cos^n$$の積分公式

## nが偶数のとき

$$
I_n 
= \int_0^{\pi/2} \cos^n x dx
$$

を求めましょう。ただし$$I_0 = \pi/2, I_1 = 1$$です。

$$
\begin{align}
I_n 
&= \int_0^{\pi/2} \cos x \cos^{n-1} x dx 
= [\sin x \cos^{n-1} x]_0^{\pi/2} + (n-1) \int_0^{\pi/2} \sin^2 x \cos^{n-2} x dx \\
&= (n-1) \int_0^{\pi/2} (1-\cos^2 x) \cos^{n-2} x dx 
= (n-1) I_{n-2} - (n-1) I_n 
\ \Longrightarrow \ I_n 
= \frac{n-1}{n} I_{n-2}
\end{align} 
$$

$$n$$が偶数のとき

$$
I_n 
= \frac{n-1}{n} I_{n-2} 
= \frac{n-1}{n} \frac{n-3}{n-2} \cdots \frac{1}{2} I_0 
= \frac{\pi}{2} \frac{(n-1)!!}{n!!} \tag{1}
$$

です。

## nが奇数のとき

$$
I_n 
= \int_0^{\pi/2} \sin^{n} \theta d\theta
$$

を求めましょう。$$I_0 = \pi/2, I_1 = 1$$です。

$$
\begin{align}
I_n 
&= \int_0^{\pi/2} \sin \theta \sin^{n-1} \theta d\theta 
= [-\cos \theta \sin^{n-1}]_0^{\pi/2} + (n-1) \int_0^{\pi/2} \cos^2 \theta \sin^{n-2} \theta d\theta \\
&= (n-1) \int_0^{\pi/2} (\sin^{n-2} \theta - \sin^n \theta) d\theta
= (n-1) I_{n-2} - (n-1) I_n \ \Longrightarrow \ 
I_n 
= \frac{n-1}{n} I_{n-2}
\end{align}
$$

$$n$$が奇数のとき

$$
I_n 
= \frac{n-1}{n} \frac{n-3}{n-2} \cdots \frac{4}{5} \frac{2}{3} I_1 
= \frac{(n-1)!!}{n!!} \tag{2}
$$

のようになります。

# 参考文献

[1] [高校数学の美しい物語, sinのn乗, cosのn乗の積分公式](https://manabitimes.jp/math/663)  