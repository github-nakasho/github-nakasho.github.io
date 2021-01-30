# 4.1.2 放射平衡 (Radiative equilibrium)

Radiative tranferの式

$$
\mu \frac{d I_\nu}{d\tau_\nu} 
= I_\nu - S_\nu \ \left[ {\rm or} \ \mu \frac{dI_\nu}{dm} 
= (\kappa_\nu + \sigma_\nu ) (I_\nu - S_\nu) \right] \tag{4.8}
$$

を全立体角で積分すると

$$
\frac{d F_\nu}{d\tau_\nu} 
= 4\pi (J_\nu - S_\nu) \ \left[ {\rm or} \ \mu \frac{dF_\nu}{dm} 
= 4\pi (\kappa_\nu + \sigma_\nu ) (J_\nu - S_\nu) \right] \tag{4.9}
$$

となります。これに

$$
S_\nu 
= \frac{\kappa_\nu B_\nu + \sigma_\nu J_\nu}{\kappa_\nu + \sigma_\nu} \tag{4.10}
$$

を代入すると

$$
\frac{dF_\nu}{d\tau_\nu} 
= \frac{4\pi \kappa_\nu}{\kappa_\nu + \sigma_\nu} (J_\nu - B_\nu) \ \Longrightarrow \ 
\frac{dF_\nu}{dm} 
= 4\pi \kappa_\nu (J_\nu - B_\nu) \tag{4.11}
$$

が得られます。Plane-parallelかつ放射によって全てのエネルギーが運ばれる場合は、全フラックス$$\int_0^\infty F_\nu d\nu$$が場所に依存せず一定であるはずです。よって放射平衡の条件として

$$
\int_0^\infty \kappa_\nu (J_\nu - B_\nu) d\nu 
= 0 \tag{4.12}
$$

の関係が得られます。  

$$J_\nu$$は(2.39)式のSchwarzschild-Milne方程式のように表されるので、演算子$$\Lambda$$を

$$
\Lambda [f(\tau)] 
\equiv \frac{1}{2} \int_0^\infty f(t) E_1(|t-\tau|) dt \tag{4.13}
$$

のように定義しましょう。すると

$$
J_\nu (\tau_\nu) 
= \Lambda_{\tau_\nu} [S_\nu (t)] \tag{4.14}
$$

のように、この演算子で表すことができます。また

$$
\epsilon_\nu 
\equiv \frac{\kappa_\nu}{\kappa_\nu + \sigma_\nu} \ 
\left[ {\rm or} \ 1- \epsilon_\nu 
= \frac{\sigma_\nu}{\kappa_\nu + \sigma_\nu}\right]
$$

の変数を使うと、(4.10)式よりSouce functionが

$$
S(\tau_\nu) 
= \epsilon_\nu B_\nu(\tau_\nu) + (1-\epsilon_\nu) J_\nu (\tau_\nu) \tag{4.15}
$$

のように表されます。この式を(4.14)式に代入すると、Mean intensity $$J_\nu$$が

$$
J_\nu (\tau_\nu) 
= \Lambda_{\tau_\nu} [\epsilon_\nu B_\nu (t)] + \Lambda_{\tau_\nu} [(1-\epsilon_\nu) J_\nu (t)] \tag{4.14'}
$$

のように表されます。温度分布がわかっている場合には、最初に$$J_\nu (\tau_\nu) = B_\nu (\tau_\nu)$$と近似して、(4.14')と(4.15)を繰り返し用いる(Iterationを行う)ことによって$$J_\nu (\tau_\nu)$$を決めることができます(ただし、この方法は$$\epsilon \ll 1$$のときは上手くいかないことに注意しましょう)。

# 4.1.3 大気モデルを決めるパラメータ

静水圧平衡と放射平衡となっている構造を解くことで大気モデルが得られます。しかし、その性質を特定するパラメータは有効温度と重力加速度

$$
T_{\rm{eff}} 
= \left( \frac{F}{\sigma} \right)^{1/4} 
= \left( \frac{L}{4\pi R^2 \sigma}\right)^{1/4}, \ 
g 
= \frac{GM}{R^2} \tag{4.16}
$$

と大気の元素組成(Chemical composition)です。元素組成は各元素の数密度、または質量含有量で与えられます。水素、ヘリウムの質量含有量はそれぞれ$$X, Y$$を使って表されることが多くあります。これらの量は、それぞれの数密度を$$N_{\rm{H}}, N_{\rm{He}}$$と書くと

$$
N_{\rm{H}} 
= \rho X, \ 
N_{\rm{He}} 
= \frac{\rho Y}{4}
$$

の関係にあります。