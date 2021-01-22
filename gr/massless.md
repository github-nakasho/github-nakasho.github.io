# 質量のない粒子の測地線方程式

$$m \rightarrow 0$$の粒子の運動方程式はどうなるのか、それを質量0の粒子の測地線方程式から導出します。

## 導出

質量のない粒子(例えば光子など)の4現運動量を

$$
p^\mu \equiv m \frac{dx^\mu}{d\tau} 
= mu^\mu
$$

と定義しましょう。運動量は有限なので、$$m\rightarrow 0$$で$$d\tau \rightarrow 0$$となり、$$\frac{d\tau}{m} \neq 0$$でなければなりません。  
ここで$$d\lambda \equiv d\tau /m$$をアフィンパラメータと定義します。4元運動量はこのパラメータを用いて

$$
p^\mu = \frac{dx^\mu}{d\lambda}
$$

となります。測地線方程式より

$$
m^2 \frac{du^\mu}{d\tau} = -m^2 \Gamma^\mu_{\alpha \nu} u^\alpha u^\nu
$$

$$
(左辺) 
= m \frac{d}{d\tau} (m\frac{dx^\mu}{d\tau}) 
= \frac{dp^\mu}{d\lambda}
$$

$$
(右辺) 
= -\Gamma^\mu_{\alpha \nu} p^\alpha p^\nu
$$

両辺を$$p^0 = dx^0 / d\lambda = cdt/d\lambda$$で割ると

$$
\frac{1}{p^0}\frac{dp^\mu}{d\lambda} 
= \frac{d\lambda}{cdt} \frac{dp^\mu}{d\lambda} 
= \frac{1}{c} \frac{dp^\mu}{dt}
$$

より

$$
\frac{dp^\mu}{dt} 
= -\frac{c}{p^0} \Gamma^\mu_{\alpha \nu} p^\alpha p^\nu
$$

これが質量のない粒子の測地線方程式となります。

## 軌跡に沿った微分

理解を深めるために、途中の部分で以下のような変形を行います。

$$
\frac{dp^\mu}{d\lambda} + p^\alpha p^\beta \Gamma^\mu_{\alpha \beta} 
= \frac{dx^\alpha}{d\lambda} \frac{\partial p^\mu}{\partial x^\alpha} + p^\alpha p^\beta \Gamma^\mu_{\alpha \beta} 
= p^\alpha (\frac{\partial p^\mu}{\partial x^\alpha} + p^\beta \Gamma^\mu_{\alpha \beta} ) 
= p^\alpha \nabla_\alpha p^\mu = 0
$$

最後に出現した$$p^\alpha \nabla_\alpha p^\mu$$は4次元時空中で光の軌跡に沿った勾配を表しています。測地線方程式は光が地震の軌跡に沿った4元運動量の勾配が0になる経路を進むことを意味しています。

## さらに変形

下付き4元運動量ベクトルを使った方程式にしておくと便利なので、それをここで導出しておきましょう。メトリックの共偏微分は0より

$$
0 
= p^\mu \nabla_\alpha (g^{\mu \nu} p_\nu) 
= g^{\mu \nu} p^\alpha \nabla_\alpha p_\nu 
$$

任意のメトリックテンソルについてこれが成り立つので、以下の方程式を得ます。

$$
p^\mu \nabla_\mu p_\nu 
= p^\mu \partial_\mu p_\nu - p^\mu p_\alpha \Gamma^\alpha_{\mu \nu} 
= 0
$$

ここで

$$
p^\mu p_\alpha \Gamma^\alpha_{\mu \nu} 
= p^\mu p_\alpha \frac{1}{2} g^{\alpha \beta} (g_{\beta \mu, \nu} + g_{\beta \nu, \mu} - g_{\mu \nu, \beta} )
= \frac{1}{2} p^\mu p^\beta(g_{\beta \mu, \nu} + g_{\beta \nu, \mu} - g_{\mu \nu, \beta} )
= \frac{1}{2} p^\mu p^\beta g_{\beta \mu, \nu}
$$

また

$$
p^\mu \frac{\partial p_\nu}{\partial x^\mu} 
= \frac{dx^\mu}{d\lambda} \frac{\partial p_\nu}{\partial x^\mu} 
= \frac{dp_\nu}{d\lambda} 
= \frac{dx^0}{d\lambda} \frac{dp_\nu}{dx^0} 
= p^0 \frac{dp_\nu}{dx^0}
$$

となるので、求める方程式は以下のようになります。

$$
\frac{dp_\nu}{dx^0} 
= \frac{1}{2p^0} p^\mu p^\beta g_{\beta \mu, \nu}
$$
