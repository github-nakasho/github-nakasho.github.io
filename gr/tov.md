# TOV方程式

星が重力崩壊しブラックホールを形成する条件を調べるには、相対論的な静水圧平衡の式を導出する必要があります。これをトールマン・オッペンハイマー・ボルコフ方程式(Tolman-Oppenheimer-Volkoff equation, TOV方程式)と呼びます。以下ではそれを導出してみましょう。

## 球対称時空の計量

球対称な星が作る時空を以下のように定義します。

$$
ds^2 = -e^{2\Phi(r)} c^2 dt^2 + e^{2\Lambda(r)} dr^2 + r^2 (d\theta^2 + \sin^2 \theta d\varphi^2)
$$

孤立系を考えて$$\lim_{r\rightarrow \infty} \Phi = \lim_{r\rightarrow \infty} \Lambda = 0$$の境界条件のもとでこの$$\Phi, \Lambda$$を求めてみましょう。計量テンソルは

$$
(g_{\mu \nu}) = \left( \begin{array}{cccc}
-e^{2\Phi} & & & {\bf 0} \\
& e^{2\Lambda} & & \\
& & r^2 & \\
{\bf 0} & & & r^2 \sin^2 \theta 
\end{array}
\right), \ 
(g^{\mu \nu}) = \left( \begin{array}{cccc}
-e^{-2\Phi} & & & {\bf 0} \\
& e^{-2\Lambda} & & \\
& & \frac{1}{r^2} & \\
{\bf 0} & & & \frac{1}{r^2 \sin^2 \theta} 
\end{array}
\right)
$$

です。

## クリストッフェル記号の計算

計量テンソルよりクリストッフェル記号を全て計算すると以下のようになります。

$$
\Gamma^0_{0r} = \Gamma^0_{r0}= \Phi', \ \Gamma^r_{00} = \Phi' e^{2\Phi-2\Lambda}, \ 
\Gamma^r_{rr} = \Lambda', \ \Gamma^r_{\theta \theta} = -r e^{-2\Lambda}, \ 
\Gamma^r_{\varphi \varphi} = -e^{-2\Lambda} r \sin^2 \theta, \ 
\Gamma^\theta_{r \theta} = \Gamma^\theta_{\theta r} = \frac{1}{r}, \\
\Gamma^\theta_{\varphi \varphi} = -\sin \theta \cos \theta, \ 
\Gamma^\varphi_{r \varphi} = \Gamma^\varphi_{\varphi r} = \frac{1}{r} , \ 
\Gamma^\varphi_{\theta \varphi} = \Gamma^\varphi_{\varphi \theta} = \frac{\cos \theta}{\sin \theta}  
$$

これ以外の成分は0となります。

## リッチテンソルとリッチスカラーの計算

続いてリッチテンソルです。

$$
R_{00} 
= \partial_\alpha \Gamma^\alpha_{00} - \partial_0 \Gamma^\alpha_{\alpha 0} + \Gamma^\alpha_{\alpha \sigma} \Gamma^\sigma_{00} - \Gamma^\alpha_{0\sigma} \Gamma^\sigma_{\alpha 0} 
= e^{2\Phi - 2\Lambda} (\Phi'' - \Phi' \Lambda' + \Phi'^2 + \frac{2}{r} \Phi') 
$$

$$
R_{rr} 
= \partial_\alpha \Gamma^\alpha_{rr} - \partial_r \Gamma^\alpha_{\alpha r} + \Gamma^\alpha_{\alpha \sigma} \Gamma^\sigma_{rr} - \Gamma^\alpha_{r\sigma} \Gamma^\sigma_{\alpha r} 
= - \Phi'' + \Phi' \Lambda' - \Phi'^2 + \frac{2}{r} \Lambda'  
$$

$$
R_{\theta \theta} 
= \partial_\alpha \Gamma^\alpha_{\theta \theta} - \partial_\theta \Gamma^\alpha_{\alpha \theta} + \Gamma^\alpha_{\alpha \sigma} \Gamma^\sigma_{\theta\theta} - \Gamma^\alpha_{\theta\sigma} \Gamma^\sigma_{\alpha \theta} 
= e^{- 2\Lambda} (r \Lambda' - r\Phi' - 1) + 1 
$$

$$
R_{\varphi \varphi} 
= \partial_\alpha \Gamma^\alpha_{\varphi \varphi} - \partial_\varphi \Gamma^\alpha_{\alpha \varphi} + \Gamma^\alpha_{\alpha \sigma} \Gamma^\sigma_{\varphi \varphi} - \Gamma^\alpha_{\varphi \sigma} \Gamma^\sigma_{\alpha \varphi} 
= e^{- 2\Lambda} \sin^2 \theta (r \Lambda' - r\Phi' - 1) + \sin^2 \theta 
$$

そしてリッチスカラーは次のように計算されます。

$$
R = g^{00} R_{00} + g^{rr} R_{rr} + g^{\theta \theta} R_{\theta \theta} + g^{\varphi \varphi} R_{\varphi \varphi} 
= e^{-2\Lambda} (- 2\Phi'' + 2\Phi' \Lambda' -2\Phi'^2 -\frac{4}{r}\Phi' + \frac{4}{r} \Lambda' - \frac{2}{r^2}) + \frac{2}{r^2}
$$

## アインシュタインテンソルの計算

これらよりアインシュタインテンソルの$$00$$, $$rr$$, $$\theta \theta$$成分は以下のようになります。

$$
G_{00} = R_{00} - \frac{1}{2} g_{00} R 
= e^{2\Phi -2\Lambda} (\frac{2}{r} \Lambda' -\frac{1}{r^2}) + \frac{e^{2\Phi}}{r^2} 
= \frac{e^{2\Phi}}{r^2} \frac{d}{dr} (r(1-e^{-2\Lambda}))
$$

$$
G_{rr} = R_{rr} - \frac{1}{2} g_{rr} R 
= -\frac{e^{2\Lambda}}{r^2 } (1-e^{-2\Lambda}) + \frac{2}{r} \Phi'
$$

$$
G_{\theta \theta} = R_{\theta \theta} - \frac{1}{2} g_{\theta \theta} R 
= r^2 e^{-2\Lambda} (\Phi'' - \Phi' \Lambda' + \Phi'^2 + \frac{\Phi'}{r}- \frac{\Lambda'}{r})
$$

## エネルギー運動量テンソルの計算

アインシュタイン方程式を書くために、エネルギー運動量テンソルの$$00, rr, \theta\theta$$成分を計算しましょう。

$$
T^{\alpha \beta} 
= (\rho c^2 + p) \frac{u^\alpha}{c} \frac{u^\beta}{c} + p g^{\alpha \beta}
$$

星は静水圧平衡を保っていると考えて、流体の3次元の運動ベクトルは$${\bf 0}$$とします。すなわち

$$
u^\alpha = (u^0, {\bf 0})
$$

です。これより

$$
-c^2 = g_{\alpha \beta} u^\alpha u^\beta 
= g_{00} u^0 u^0 
= e^{-2\Phi} u^{02} \ \Longrightarrow \ 
u^0 = c e^{-\Phi}
$$

$$
\therefore \ u_0 
= g_{00} u^0 
= -c e^\Phi
$$

これより

$$
T_{00} 
= (\rho c^2 + p) e^{2\Phi} + p(- e^{2\Phi}) 
= \rho c^2 e^{2\Phi}
$$

$$
T_{rr} 
= pe^{2\Lambda}
$$

$$
T_{\theta \theta} 
= p r^2
$$

## アインシュタイン方程式

00成分より

$$
G_{00} = \frac{8\pi G}{c^4} T_{00} \ \Longrightarrow \ 
e^{-2\Lambda} = 1- \frac{2GM}{c^2 r}
$$

途中、$$M = \frac{4\pi }{3} r^3 \rho$$と置換しました。

$$rr$$成分より

$$
\Phi' 
= \frac{1}{r(r-\frac{2GM}{c^2})} \left( \frac{GM}{c^2} + \frac{4\pi G}{c^4} p r^3 \right)
$$

## エネルギー運動量保存則

$$
T^\mu_{\ \nu ; \mu} = 0
$$

から$$r$$方向の静水圧平衡の式を導出します。$$r$$方向のエネルギー運動量保存

$$
\frac{1}{\sqrt{-g} }\frac{\partial}{\partial x^\mu} (\sqrt{-g} T^\mu_{\ r}) - \frac{1}{2} g_{\mu \alpha, r} T^{\mu \alpha} = 0
$$

ここでエネルギー運動量テンソルから

$$
T^\alpha_{\ \beta} = (\rho c^2 + p) \frac{u^\alpha}{c} \frac{u_\beta}{c} + p\delta^\alpha_\beta
$$

より

$$
T^r_{\ r} = p
$$

これと

$$
\sqrt{-g} = e^{\Phi + \Lambda } r^2 \sin \theta, \ 
g_{00, r} = -2 \Phi' e^{2\Phi}, \ g_{rr, r} = 2\Lambda' e^{2\Lambda}, \ 
g_{\theta \theta, r} = 2r, \ 
g_{\varphi \varphi, r} = 2r \sin^2 \theta 
$$

などを用います。以降の方程式では、球対称より$$\theta = \pi/2$$における式変形を行うと

$$
\begin{align}
&\frac{\partial}{\partial r} (e^{\Phi+ \Lambda} r^2 p) - \frac{e^{\Phi+\Lambda} r^2}{2} (g_{00, r} T^{00} + g_{rr, r} T^{rr} + g_{\theta \theta, r} T^{\theta \theta} + g_{\varphi \varphi, r} T^{\varphi \varphi}) 
= \frac{\partial }{\partial r} (e^{\Phi+ \Lambda} r^2 p) - e^{\Phi + \Lambda} r^2 (-\Phi' \rho c^2 + \Lambda' p + \frac{2p}{r}) 
= 0 \\ 
&\Longrightarrow \ \frac{dp}{dr} 
= -(\rho c^2 + p) \Phi'
\end{align}
$$

よって求めたかった相対論的な静水圧平衡を表す式、TOV方程式は

$$
\frac{dp}{dr} 
= -\frac{\rho c^2 + p}{r \left(r- \frac{2GM}{c^2}\right) } \left( \frac{GM}{c^2} + \frac{4\pi G}{c^4} p r^3 \right)
$$

と求まります。

## 非相対論的極限

非相対論的極限では$$\rho c^2 \gg p, r \gg 2GM/c^2, Mc^2 \gg p$$より

$$
\frac{dp}{dr} = - \frac{GM}{r^2} \rho 
$$

となり、ニュートン引力と圧力勾配による力の釣り合いの式が得られます。