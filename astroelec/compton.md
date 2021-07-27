# Compton散乱

[Thomson散乱](/astroelec/thomson.md)では電子による電磁波の散乱を男性散乱として扱いました。このとき、散乱前後で運動量が破れていたのでした。古典的には電磁波の運動量を電子に受け渡すのは、Lorentz力によるものです。したがって、電磁波によって加速される電子の速度が非相対論的である限り、電磁波の磁場によるLotentz力は無視できるため、運動量保存が破れた取り扱いでも良い近似で現象を記述することができます。  
しかしながら、電子の速度が相対論的になると、散乱過程での運動量の受け渡しを考慮する必要があります。実際の電磁波は光子の集まりであり、電子と電磁波の散乱の素過程は光子と電子の散乱現象です。光子はエネルギー$$h\nu$$を持つだけでなく、運動量$$h\nu/c$$を持ちます。光子と電子の散乱では、散乱の過程で運動量とエネルギーのやりとりが行われるため、この散乱はもはや弾性散乱ではあり得なくなります。光子から電子へエネルギーが渡される場合をCompton散乱と呼び、逆に電子から光子にエネルギーが渡される場合を逆Compton散乱と呼びます。

## 運動量保存

![Compton散乱の問題設定](/images/astroelec/compton_01.png)

電子が静止しているところに、光子が入射する場合を考えましょう。

$$
\mathrm{before} \ \left\{ \begin{array}{ll}
\mathrm{photon} & P_1^\mu 
= \left( \frac{\epsilon}{c}, \frac{\epsilon}{c} \mathbf{e}_x \right)\\
\mathrm{electron} &  P_2^\mu 
= \left( \frac{E_2}{c}, \mathbf{0} \right)
\end{array} \right. 
\quad 
\mathrm{after} \ \left\{ \begin{array}{ll}
\mathrm{photon} & P_3^\mu 
= \left( \frac{\epsilon_1}{c}, \mathbf{p}_3 \right)\\
{\rm electron} &  P_4^\mu 
= \left( \frac{E_4}{c}, \mathbf{p}_4 \right)
\end{array} \right.
$$

衝突前、電子は静止していたので

$$
c^2 P_2^\mu P_{2\mu} 
= E_2^2
= m_e^2 c^4 \ \Longrightarrow \
\frac{E_2}{c} 
= m_e c 
$$

光子は質量0なので

$$
c^2 P_{3\mu} P_3^\mu 
= \epsilon_1^2 - c^2 p_3^2 
= 0 \ \Longrightarrow \ 
p_3 
= \frac{\epsilon_1}{c}
$$

よって光子が$$\theta$$方向に散乱されたとすると

$$
\mathbf{p}_3 
= \left( \frac{\epsilon_1}{c} \cos \theta, \frac{\epsilon_1}{c} \sin \theta, 0 \right)
$$

以上をまとめると

$$
\mathrm{before} \ \left\{ \begin{array}{ll}
\mathrm{photon} & P_1^\mu 
= \left( \frac{\epsilon}{c}, \frac{\epsilon}{c} \mathbf{e}_x \right) \\
\mathrm{electron} &  P_2^\mu 
= \left( m_e c, \mathbf{0} \right)
\end{array} \right. \quad
\mathrm{after} \ \left\{ \begin{array}{ll}
\mathrm{photon} & P_3^\mu 
= \left( \frac{\epsilon_1}{c}, \frac{\epsilon_1}{c} \cos \theta, \frac{\epsilon_1}{c} \sin \theta, 0 \right) \\
\mathrm{electron} & P_4^\mu 
= \left( \frac{E_4}{c}, \mathbf{p}_4 \right)
\end{array} \right.
$$

4元運動量の保存より

$$
P_4^\mu 
= P_1^\mu + P_2^\mu - P_3^\mu
$$

両辺の内積を取ると

$$
\begin{align}
&\underbrace{c^2 P_4^\mu P_{4\mu}}_{=m_e^2 c^4} 
= \underbrace{c^2 P_1^\mu P_{1\mu}}_{=0} + \underbrace{c^2 P_2^\mu P_{2\mu}}_{=m_e^2 c^4} + \underbrace{ c^2 P_3^\mu P_{3\mu}}_{=0} + 2 \underbrace{c^2 P_1^\mu P_{2\mu}}_{ = m_e c^2 \epsilon} - 2 \underbrace{c^2 P_2^\mu P_{3\mu}}_{= m_e c^2 \epsilon_1} - 2 \underbrace{c^2 P_3^\mu P_{1\mu}}_{ = \epsilon \epsilon_1 - \epsilon \epsilon_1 \cos \theta} \\
&\Longrightarrow \ 
\epsilon_1 (m_e c^2  + \epsilon - \epsilon \cos \theta) - m_e c^2 \epsilon 
= 0
\end{align}
$$

以上より

$$
\epsilon_1 
 = \frac{\epsilon}{1+ \frac{\epsilon}{m_e c^2} (1- \cos \theta)} \tag{1}
$$

この関係を波長に書き換えてみましょう。$$\epsilon = h \nu = \frac{hc}{\lambda}$$より

$$
\begin{align}
&\frac{hc}{\lambda_1} 
= \frac{\frac{hc}{\lambda}}{1+ \frac{1}{m_ec^2} \frac{hc}{\lambda} (1- \cos \theta)} 
= \frac{hc}{\lambda} \frac{1}{1+\frac{\lambda_c}{\lambda} (1- \cos \theta)} 
= \frac{hc}{\lambda + \lambda_c (1 -\cos \theta)} \\
&\Longrightarrow \ \lambda_1 - \lambda 
= \lambda_c (1- \cos \theta) \tag{2}
\end{align}
$$

ここで途中で定義した電子Compton波長$$\lambda_c$$は

$$
\lambda_c \equiv \frac{h}{m_e c} 
= 2\pi \frac{\hbar c}{m_e c^2} 
\sim 6 \frac{200 \ {\rm MeV \cdot fm}}{0.5 \ {\rm MeV} } 
\sim 2400 ({\rm fm}) 
= 2.4 \times 10^{-10} ({\rm cm}) 
= 2.4 \times 10^{-2} (\mathring{A}) \tag{3}
$$

となります。よって散乱前後で$$\lambda_c$$程度、波長が変化することがわかります。この過程では光子の波長が散乱後に長くなるため、光子はエネルギーを失っている(電子はエネルギーを得ている)ことがわかります。  
$$\lambda \gg \lambda_c \ (h\nu \ll m_e c^2)$$のとき、波長の変化が無視できることから、散乱はほぼ弾性的な[Thomson散乱](/astroelec/thomson.md)の扱いで十分であることがわかります。逆に波長が$$\lambda_c$$と同程度かそれ以下のときは、散乱前後の光子のエネルギー変化が無視できなくなります。このとき、不確定性原理から電子の位置が光の波長程度で不確定であるから、古典的には取り扱えずに量子力学的な取り扱いが必要となります。さらに光子のエネルギーが電子の静止質量エネルギー程度かそれ以上であるため、1回の散乱で散乱後の電子が相対論的速度を持つ可能性があります。したがって、相対論的な扱いも必要となるでしょう。  

![古典の取り扱いで十分な場合とそうでない場合](/images/astroelec/compton_02.png)

このように、光子の波長が電子Compton波長程度かそれより短い場合の電子との散乱を取り扱うには、相対論的量子力学を用いる必要があります。相対論的量子力学の扱いからCompton散乱の散乱断面積は

$$
\frac{d\sigma}{d\Omega} 
= \frac{r_0^2}{2} \frac{\epsilon_1^2}{\epsilon^2} \left( \frac{\epsilon}{\epsilon_1} + \frac{\epsilon_1}{\epsilon} - \sin^2 \theta \right) \tag{4}
$$

のように与えられます。これをKlein-Nishinaの公式と呼びます。$$\lambda \gg \lambda_c$$の極限で、これは[Thomson散乱](/astroelec/thomson.md)の微分散乱断面積に一致します。逆に$$\lambda \ll \lambda_c$$の相対論的極限では、断面積はThomson散乱の断面積より入射光子のエネルギーに反比例して小さくなります。