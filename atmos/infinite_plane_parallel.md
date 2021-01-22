# 2.2.2 深さが無限大のPlane-parallel atmosphere

(2.16')式を、深さが無限大のPlane-parallel atmosphereに適用しましょう。上向き($$0\leq \mu \leq 1$$；星から出て行く方向)の光に対して任意の場所の$$\tau_\nu$$での Intensity $$I^+_\nu (\tau_\nu, \mu)$$は、(2.16')式で$$\tau_{0\nu} = \infty$$として

$$
I_\nu^+ (\tau_\nu, \mu) 
= \int_{\tau_\nu}^\infty S_\nu (t) e^{-\frac{t-\tau_\nu}{\mu}} \frac{dt}{\mu} \ (0 \leq \mu \leq 1) \tag{2.19}
$$

のように表されます。また下向き($$-1 \leq \mu \leq 0$$)の光に対しては、(2.16')式で$$\tau_{0\nu} = 0$$とします。さらに星の表面で内向きに向かう光は無いので$$I_\nu^- (0, \nu)=0$$として

$$
I_\nu^- (\tau_\nu, \mu) 
= \int_{\tau_\nu}^0 S_\nu (t) e^{-\frac{t-\tau_\nu}{\mu}} \frac{dt}{\mu} 
= - \int_0^{\tau_\nu} S_\nu (t) e^{-\frac{t-\tau_\nu}{\mu}} \frac{dt}{\mu} \ (-1 \leq \mu \leq 0) \tag{2.20} 
$$

のように表現されます。このように、源泉関数 $$S_\nu$$が深さの関数として与えられていれば、任意の場所での光のIntensityが(2.19)(2.20)式によって与えられます。しかし、散乱が重要となっているような状況では$$S_\nu$$が各場所でのMean intensityの関数となっているため((2.14)式参照)、このような簡単な形に表すことができません。  

星の外に出てくる光のIntensity (Emergent intensity)は(2.19)式で$$\tau_\nu = 0$$として

$$
I_\nu^+ (0, \mu) 
= \int_0^\infty S_\nu (t) e^{-\frac{t}{\mu}} \frac{dt}{\mu} \ (0\leq \mu \leq 1) \tag{2.21}
$$

のように表されます。この式は、星の外に出てくる光が各層で放出された光を吸収補正した後に足し合わせたものであることを表しています。また数学的にはこれはSource functionのラプラス変換の形です。このことは、Emergent intensityの角度依存性を知ることと、Source functionの深さに対する依存性を知ることは同等であることを意味しています。