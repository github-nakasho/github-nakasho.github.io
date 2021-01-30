# 4.7.1 Spherical Gray Atmosphere

吸収係数と散乱係数が光の波長に依存しないGray atmosphereの仮定の下では、(4.32)式と(4.34)式は

$$
\frac{1}{r^2} \frac{d}{dr} (r^2 F) 
= 4\pi \rho (\kappa + \sigma) (S-J) 
\underbrace{=}_{輻射平衡} 0 \tag{4.35}
$$

$$
\frac{d}{dr} (fJ) + \frac{3f-1}{r} J 
= - \frac{\kappa + \sigma}{4\pi} F \tag{4.36}
$$

となります。(4.35)式は積分できて

$$
r^2 F 
= {\rm Const.} 
= \frac{L}{4\pi} \tag{4.37}
$$

が得られます。大気の厚さが厚いときはFlux $$F$$ではなく、Luminosity $$L = 4\pi r^2 F$$が一定となります。  
$$d\tau = - \rho (r) [\kappa(r) + \sigma(r)] dr$$より、十分遠方$$R_0$$から積分したOptical depth $$\tau (r)$$を

$$
\tau(r) 
\equiv \int_r^{R_0} \rho(r') [\kappa (r') + \sigma (r')] dr' \tag{4.38}
$$

のように定義しましょう。十分深い場所($$r \ll R_0, \tau \gg 1$$)では、放射が等方的になるため$$f \rightarrow 1/3$$となります(Eddington近似)。このとき(4.36)式は

$$
\frac{1}{3} \frac{dJ}{dr} 
= -\frac{\kappa + \sigma}{4\pi} \rho F \ \Longrightarrow \ 
\frac{dJ}{d\tau} 
= \frac{3}{(4\pi)^2} \frac{L}{r^2} \tag{4.39}
$$

となります。これを積分して

$$
J (\tau) 
= \frac{L}{(4\pi)^2} \left( 3 \int_0^\tau \frac{d\tau'}{r^2} + C\right) \tag{4.40}
$$

が得られます。積分定数を得るために、適用範囲外ですが$$\tau = 0$$で$$I(\mu) = I_0, \ 0 \leq \mu \leq 1; \ I(\mu) = 0, -1 \leq \mu <0$$であると仮定しましょう。すると

$$
J(0) 
= \frac{1}{4\pi} \int_{4\pi} I d\Omega 
= \frac{1}{2} \int_{-1}^1 I d\mu 
= \frac{1}{2} \int_0^1 I_0 d\mu 
= \frac{1}{2} I_0
$$

$$
F(0) 
= \int_{4\pi} \mu I d\Omega 
= 2\pi \int_0^1 \mu I_0 d\mu 
= \pi I_0
$$

より

$$
J(0) 
= \frac{F(0)}{2\pi} 
= \frac{L}{8\pi^2 R_0^2} \tag{4.41}
$$

となります。この関係を(4.40)式に用いると$$C = \frac{2}{R_0^2}$$となるので、(4.40)式は

$$
J(\tau) 
= \frac{L}{(4\pi R_0^2)} \left\{ 3 \int_0^\tau \left( \frac{R_0}{r}\right)^2 d\tau' + 2\right\} \tag{4.42}
$$

となります。$$L = 4\pi \sigma R^2 T_{\rm{eff}}^4$$ ($$R$$は光球の半径)と書き、LTEを仮定しましょう。そして、$$J = B = \frac{caT^4}{4\pi} = \frac{\sigma T^4}{\pi}$$と書くと、温度の関係

$$
T^4 (\tau) 
= \frac{3}{4} T_{\rm{eff}}^4 \left( \frac{R}{R_0}\right)^2 \left\{ \int_0^\tau \left( \frac{R_0}{r}\right)^2 + \frac{2}{3} \right\} \tag{4.43}
$$

が得られます。これはPlane-parallelの仮定のもとでの関係(2.66)式に対応するものです。(4.43)式を$$R_0 \rightarrow R, R/r \rightarrow 1$$とすると(2.26)式に一致します。  
今度は上の場合とは逆に$$\tau \ll 1$$を考えましょう。このとき放射はほとんど外向きであると考えられるので、$$I (r, \mu)$$は$$\mu=1$$の方向にだけ値があるとすると

$$
I(r, \mu ) 
\simeq I(r) \delta (\mu -1) \ \Longrightarrow \ 
J = K \ \Longrightarrow \ 
f = 1 \tag{4.44}
$$

となります。これらを(4.36)式に代入すると

$$
\frac{dJ}{dr} + \frac{2}{r} J 
= - \frac{\kappa + \sigma}{4\pi} \rho F \ \Longrightarrow \ 
\frac{1}{r^2} \frac{d}{dr} (r^2 J) 
= - \frac{\kappa + \sigma}{4\pi} \rho \frac{L}{4\pi r^2} \ \Longrightarrow \ 
\frac{d}{dr} (r^2 J) 
= - \frac{\kappa + \sigma}{(4\pi)^2} \rho L \tag{4.45}
$$

となります。これは積分できて

$$
J(\tau) 
= \frac{L}{(4\pi)^2 r^2} (\tau + C) \tag{4.46}
$$

を得ます。(4.44)の状況のもとでは

$$
F(\tau) 
= \int_{4\pi} \mu I d\Omega 
= 4\pi J(\tau)
$$

より

$$
J(0) 
= \frac{L}{(4\pi)^2 R_0^2} C 
= \frac{F(0)}{4\pi} 
= \frac{1}{4\pi} \frac{L}{4\pi R_0^2} \ \Longrightarrow \ 
C = 1
$$

したがって

$$
J(\tau) 
= \frac{L}{(4\pi)^2 r^2} (\tau + 1) \tag{4.47}
$$

が得られます。LTEを仮定して$$J(\tau) = B(\tau)$$とすると、$$L = 4\pi R^2 \sigma T_{\rm{eff}}^4, B(\tau) = \frac{\sigma T^4}{\pi}$$より

$$
T(\tau)^4 
= \frac{1}{4} T_{\rm{eff}}^4 \left( \frac{R}{r} \right)^2 (\tau + 1) \tag{4.48}
$$

となります。Plane-parallelの場合と異なり、この場合は$$\tau \rightarrow 0 \ (r \rightarrow R_0 \gg R)$$で$$T \rightarrow 0$$となります。