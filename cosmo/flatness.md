# 平坦性問題

宇宙がどのくらい平坦なのか、その問題を考えていきましょう。

## フリードマン方程式

$$
H^2 = \frac{8\pi G}{3} (\rho_r + \rho_m + \rho_{\rm DE}) - \frac{Kc^2}{a^2} 
= \frac{8\pi G}{3} (\rho_r + \rho_m + \rho_{\rm DE} + \frac{-3 Kc^2}{8\pi G}\frac{1}{a^2}) 
$$

ここで$$\rho_K \equiv \frac{-3 Kc^2}{8\pi G}\frac{1}{a^2}$$とおきます。

$$
\Omega_K 
\equiv \frac{\rho_K}{\rho_{\rm cr}} 
= \frac{-Kc^2}{a^2 H^2} 
= \frac{-Kc^2}{H_0^2} \frac{H_0^2}{\dot{a}}
$$

$$\Omega_{K, 0} = -Kc^2 / H_0^2$$より

$$
\Omega_K = \Omega_{K, 0} \frac{H_0^2}{\dot{a}^2} \tag{1}
$$

となります。

## 宇宙初期(輻射優勢)の曲率

宇宙初期は輻射優勢期なので

$$
a = t_0^{-1/2} t^{1/2} \ \Longrightarrow \ 
\dot{a} = \frac{1}{2} t_0^{-1/2} t^{-1/2}
$$

と書けます。ここから

$$
H= \frac{\dot{a}}{a} 
= \frac{1}{2t} \ \Longrightarrow \ 
H_0 = \frac{1}{2 t_0}
$$

となります。(1)式より

$$
\Omega_K = \Omega_{K, 0} \frac{t}{t_0}
$$

宇宙初期の典型的な値としてプランク時間$$t\simeq t_{\rm pl} \sim 10^{-43}$$s, 現在の宇宙年齢を$$t\sim 3 \times 10^{17}$$sとすると、$$\Omega_K = \Omega_{K, 0} \times 10^{-61}$$となります。このことから**宇宙の初期条件$$\Omega_K$$は現在の曲率に比べて61桁も小さな値である必要があり、ほぼ平坦な宇宙である**必要があります。これを平坦性問題(Flatness problem)と呼びます。