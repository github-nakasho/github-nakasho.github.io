# シンクロトロン星雲の逆コンプトン放射によるエネルギー急暴落 (Synchrotron-Compton Catastroph)

$$\eta$$を逆コンプトン散乱放射によるエネルギー損失率とシンクロトロン放射によるエネルギー損失率の比と定義します。すると

$$
\eta 
\equiv \frac{U_\mathrm{ph}}{U_B} 
= \frac{8\pi U_\mathrm{ph}}{B^2}
$$

以下、黒体放射の長波長側(電波側)であるレイリー・ジーンズ極限で物事を考えましょう。つまり観測対象は電波で明るく輝いており、その放射強度は

$$
I_\nu 
= \frac{2k_B T \nu^2}{c^2}
$$

で与えられます。我々が観測する天体からのエネルギーフラックスは、天体を見込む立体角$$\Omega$$を用いて

$$
S_\nu 
= I_\nu \Omega 
\simeq \frac{2k_B T \nu^2}{c^2} \frac{r^2}{D^2}
$$

ここで$$r$$は天体の大きさ、そして$$D$$は天体までの距離です。これより単位周波数あたりの輝度は

$$
L_\nu 
= 4\pi D^2 S_\nu 
\simeq \frac{8\pi k_B T}{c^2} \nu^2 r^2
$$

よって観測される光子のエネルギーは、ボロメトリック輝度$$(\simeq \nu L_\nu)$$を用いて

$$
U_\mathrm{ph} 
\simeq \frac{L_\nu}{4\pi r^2}\frac{\nu}{c} 
= \frac{2k_B T \nu^3}{c^3}
$$

です。以上より

$$
\eta 
\simeq \frac{16 \pi k_B T \nu^2}{c^3 B^2}
$$

となります。ここで、この$$\nu$$はシンクロトロン放射からくる電磁波の振動数なので

$$
\nu 
\simeq \gamma^2 \nu_\mathrm{ce} 
= \gamma^2 \frac{eB}{2\pi m_e c}
\simeq \left( \frac{3k_B T}{m_e c^2}\right)^2 \frac{eB}{2\pi m_e c} \ \Longrightarrow \ 
B = \frac{2\pi m_e c}{e} \left( \frac{m_e c^2}{3k_B T}\right)^2 \nu
$$

ここで$$\gamma^2$$はドップラー効果と相対論的ビーミングからくる係数です。そして途中の式変形では、黒体放射の最大値から$$3k_B T \simeq m_e c^2 \gamma$$を用いました。これより

$$
\eta 
\simeq \frac{16 \pi k_B T}{c^3} \nu \frac{e^2}{4\pi^2 m_e^2 c^2} \frac{(3k_B T)^4}{(m_e c^2)^4} 
\simeq 4 \cdot 27 \frac{e^2}{m_e c^3} \left( \frac{k_B T}{m_e c^2} \right)^5 \nu
$$

ここで

$$
\frac{e^2}{m_e c^3} 
= \frac{e^2}{\hbar c} \frac{\hbar c}{m_e c^2} \frac{1}{c} 
\sim \frac{1}{140} \frac{200 \mathrm{MeV \cdot fm}}{500 \mathrm{keV}} \frac{1}{3 \cdot 10^{10} \mathrm{cm\cdot s^{-1}}} 
\sim \frac{10^{-20}}{1050} \mathrm{s}
$$

$$
\left( \frac{k_B T}{m_e c^2} \right)^5 
\simeq \left( \frac{\frac{T}{10^4} 1 \mathrm{eV}}{500\mathrm{keV}}\right)^5 
\simeq \frac{10^{-45}}{5^5} T^5
$$

などを用いて具体的な計算を行います。$$\eta > 1$$、すなわち逆コンプトン散乱によるエネルギー損失が大きいとき

$$
\eta 
\simeq \frac{4 \cdot 27}{1050} \left( \frac{10^{-13}}{5} T \right)^5 \nu > 1 \ \Longrightarrow \ 
T > \left( \frac{350}{36} \right)^{1/5} 5 \cdot 10^{13} \nu^{-1/5} 
\simeq 10^{12} \left( \frac{\nu}{1\mathrm{GHz}}\right)^{-1/5} [\mathrm{K}]
$$

となります。この式から、$$10^{12}$$K以上の温度を持ち1GHz程度で明るく輝くシンクロトロン星雲を作ろうとしても、この星雲は逆コンプトン散乱による放射で急速に冷えてしまうことがわかります。言い換えれば、現在の宇宙に存在するシンクロトロン放射で輝いて見える星雲は、この温度以下であると言えるでしょう。

# 参考文献

* [1] Rybicki, Lightman, "Radiative Processes in Astrophysics"
* [2] Longair, "High Energy Astrophysics"
