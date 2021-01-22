# 重力崩壊

TOV方程式から星が重力崩壊する条件を導いてみましょう。

## 圧力

以下では密度一定

$$
\rho = \rho_0 \ (r \leq R)
$$

を仮定します。これより半径$$r$$より内側の質量は

$$
M (r) 
= \frac{4\pi}{3} r^3 \rho_0
$$

となります。  
TOV方程式より

$$
\frac{dp}{dr} 
= -\frac{\rho_0 c^2 + p}{r (r - \frac{2G}{c^2} \frac{4\pi }{3} r^3 \rho_0)} (\frac{G}{c^2} \frac{4\pi}{3} r^3 \rho_0 + \frac{4\pi G}{c^4} p r^3) \ \Longrightarrow \ 
\frac{1}{(\rho_0 c^2 + p)^2} \frac{dp}{dr} 
= -\frac{4\pi G}{3c^4} r \frac{\rho_0 c^2 + 3p}{ (\rho_0 c^2 + p) (1-\frac{8\pi G}{3c^2} \rho_0 r^2)}
$$

ここで

$$
\frac{d}{dr} (\frac{\rho_0 c^2 + 3p}{\rho_0 c^2 + p}) = \frac{2 \rho_0 c^2 \frac{dp}{dr}}{(\rho_0 c^2 + p)^2}
$$

より

$$
\frac{1}{2 \rho_0 c^2} \frac{d}{dr} (\frac{\rho_0 c^2 + 3p}{\rho_0 c^2 + p}) 
= -\frac{4\pi G}{3 c^4} r \frac{\rho_0 c^2 + 3p}{\rho_0 c^2 + p} \frac{1}{1-\frac{8\pi G}{3c^2} \rho_0 r^2}
$$

積分を行うと

$$
\ln (\frac{\rho_0 c^2 + 3p}{\rho_0 c^2 + p}) 
= \frac{1}{2} \ln (1-\frac{8\pi G}{3c^2} \rho_0 r^2) \ \Longrightarrow \ 
\frac{\rho_0 c^2 + 3p}{\rho_0 c^2 + p} = C (1-\frac{8\pi G}{3c^2} \rho_0 r^2)^{1/2}
$$

星の表面$$r = R$$で$$p = 0$$という境界条件より

$$
C = \frac{1}{\sqrt{1-\frac{8\pi G}{3c^2} \rho_0 R^2}}
$$

と求まるので

$$
\frac{\rho_0 c^2 + 3p}{\rho_0 c^2 + p} = \sqrt{\frac{1-\frac{8 \pi G}{3c^2} \rho_0 r^2}{1-\frac{8\pi G}{3c^2} \rho_0 R^2}}
$$

となります。これを整理すると

$$
p = \frac{\sqrt{1-\frac{r_g}{R} \frac{r^2}{R^2}} - \sqrt{1-\frac{r_g}{R}}}{3 \sqrt{1-\frac{r_g}{R}} - \sqrt{1-\frac{r_g}{R} \frac{r^2}{R^2}}} \rho_0 c^2
$$

と求まります。途中、星の全質量$$M$$を用いて$$M (r)= \frac{r^3}{R^3} M$$として整理を行いました。また$$r_g \equiv 2GM/c^2$$はシュバルツシルト半径です。

## 中心圧力と重力崩壊

中心$$r = 0$$での圧力$$p_c$$が無限大となる条件を求めてみましょう。

$$
p_c = \frac{1-\sqrt{1 - r_g / R}}{3 \sqrt{1 - r_g / R} -1} \rho_0 c^2
$$

これが無限大に発散するには$$3 \sqrt{1 - r_g / R} -1 = 0$$となれば良いので、これを整理すると

$$
9 (1- \frac{r_g}{R} ) = 1 \ \Longrightarrow \ 
R = \frac{9}{8} r_g = R_c 
$$

と求まります。$$R \rightarrow R_c$$のとき、$$p_c \rightarrow \infty$$となります。よって有限の圧力でこの星を支えるには、星はこの半径より大きくなくてはいけません。逆を言えば、質量$$M$$の物質をこの半径以内に詰め込むと、重力崩壊を起こして原点へと収縮し、ブラックホールを形成することがわかります。

## 本当にブラックホールが形成されるのか？因果律の計算

ニュートン力学より

$$
\frac{d^2 r}{dt^2} 
= -\frac{GM}{r^2} 
= -\frac{4\pi G}{3} \rho_0 r \ \Longrightarrow \ 
\frac{R}{\tau_{\rm dyn}^2} 
= \frac{4\pi G}{3} \rho_0 R \ \Longrightarrow \ 
\tau_{\rm dyn} \simeq \sqrt{\frac{3}{4\pi G \rho_0}}
$$

のように力学的タイムスケール(半径$$R$$の物質が重力収縮するのにかかるおよその時間)が求まります。先ほどの式より

$$
R < R_c 
= \frac{9}{8} \frac{2GM}{c^2} 
= \frac{3 \pi G \rho_0}{c^2} R^3 \ \Longrightarrow \ R > \frac{c}{\sqrt{3\pi G \rho_0}} \simeq c \tau_{\rm dyn} 
$$

よって星の中心$$r = 0$$から星表面$$r = R$$までの距離は、$$\tau_{\rm dyn}$$の時間内では光の速度でも到達できない距離となっています。そのため、因果的に星内部の圧力を上げても、重力収縮を止めることはできないことがわかります。因果的に孤立したものになるので、これはブラックホールの形成を意味することもわかります。