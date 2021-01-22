# 3.3 連続吸収断面積

## 3.3.1 連続光に対するEinstein-Milne relations

以前考えた、2つのレベル間のEinstein relationsをBound-free 過程(電離または再結合)に拡張します。$$n_0$$を原子の数密度、$$n_1$$をイオンの数密度、$$n_e$$を自由電子の数密度とします。振動数$$[\nu, \nu+d\nu]$$の光$$I_\nu$$を浴びたときの光電離確率を$$p_\nu$$と書くと、単位時間あたりに起こる電離の数は

$$
n_0 p_\nu I_\nu d \nu
$$

と表されます。一方で、自発的再結合確率を$$F(v)$$、誘導再結合確率を$$G(v)$$とします。ここで$$v$$は自由電子の速度(熱平衡を仮定してMaxwell分布とします)のことです。このとき、速度$$v$$を持つ電子が単位時間あたりに再結合する数は

$$
n_1 n_e (v) \{F(v) + G(v) I_\nu\} v dv
$$

です。ここで$$\nu$$は電離エネルギー$$\chi_I$$と電子の速度を用いて

$$
h\nu 
= \chi_I + \frac{1}{2} mv^2 \tag{3.29}
$$

のように表されるため、$$d\nu = \frac{mv dv}{h}$$の関係があります。また$$n(v)$$は$$[v, v+dv]$$にある電子の数密度を表し、Maxwell分布

$$
n_e (v) dv 
= n_e \left( \frac{m}{2\pi k_B T}\right)^{3/2} e^{-\frac{mv^2}{2k_B T}} 4\pi v^2 dv \tag{3.30}
$$

で与えられます。以下では熱平衡状態を考えましょう。このとき、電離する数と再結合をする数とが同じで、$$I_\nu = B_\nu$$なので

$$
n_0^\ast p_\nu B_\nu 
= n_I^\ast n_e(v) \{F(v) + G(v) B_\nu \} \frac{h}{m} \tag{3.31}
$$

ここで$$\ast$$は熱平衡状態での値を表します。これを$$B_\nu$$について解きましょう。

$$
B_\nu 
= \frac{n_1^\ast n_e (v) F(v) \frac{h}{m}}{n_0^\ast p_\nu - n_1^\ast n_e(v) G(v) \frac{h}{m}} 
= \frac{\frac{F(v)}{G(v)}}{\frac{n_0^\ast p_\nu m}{n_1^\ast n_e(v) G(v) h}-1} \tag{3.32}
$$

我々は

$$
B_\nu 
= \frac{\frac{2h\nu^3}{c^2}}{e^{\frac{h\nu}{k_B T}}-1}
$$

であることを知っているので、これと(3.32)式を比較して

$$
F(v) 
= \frac{2h\nu^3}{c^2} G(v) \tag{3.33}
$$

$$
\frac{n_0^\ast p_\nu m}{n_1^\ast n_e(v) G(v) h} 
= e^{\frac{h\nu}{k_B T}} \ \Longrightarrow \ 
p_\nu 
= \frac{n_1^\ast}{n_0^\ast} \frac{h G(v)}{m} n_e \left( \frac{m}{2\pi k_B T} \right)^{3/2} e^{\frac{h\nu - \frac{mv^2}{2}}{k_BT}} 4\pi v^2 \tag{3.34}
$$

ここで$$n_e$$に(3.30)式を用いました。さらに後々に導出するSahaの式から得られる関係である

$$
\frac{n_e n_1^\ast}{n_0^\ast} 
= \frac{2g_1}{g_0} \frac{(2\pi m k_B T)^{3/2}}{h^3} e^{-\frac{\chi_I}{k_B T}} \tag{3.35}
$$

を用いると、(3.34)式は

$$
p_\nu 
= \frac{8\pi m^2 v^2 g_1}{h^2 g_0} G(v) 
= \frac{4\pi c^2 m^2 v^2 g_1}{g_0 h^3 \nu^3} F(v) \tag{3.36}
$$

のように書くことができます。ここで$$g_0, g_1$$はそれぞれ原子と1階電離したイオンの分配関数(Partition function)の値を表します。さらに途中で(3.29)式を用いました。  

### Radiative transfer equation

この過程による光の吸収・発光に対するRadiative transferの式は

$$
\rho \frac{dI_\nu}{dz} 
= -n_0 p_\nu h \nu I_\nu + n_1 n_e (v) \{F(v) + G(v) I_\nu \} \frac{h^2 \nu}{m} \tag{3.37}
$$

と書けます。したがって、誘導放射により補正した吸収係数は

$$
\rho \kappa_\nu 
= \left( 1- \frac{n_1 n_e(v)}{n_0} \frac{G(v) h}{m p_\nu}\right) n_0 p_\nu h\nu 
\underbrace{=}_{熱平衡} (1-e^{-\frac{h\nu}{k_B T}}) n_o p_\nu h\nu \tag{3.38}
$$

のようになります。誘導放射の補正を入れないときは、1個の原子に対する吸収係数は$$p_\nu h\nu$$です。その前に誘導放射に対する補正がかかっていますが、これはBound-bound遷移のときと同じであることがわかります。ただし、Bound-free吸収は$$h\nu > \chi_I$$のときだけ可能です。このことは、(3.36)式で$$p_\nu$$が$$mv^2 = 2(h\nu - \chi_I)$$に比例することに現れています。