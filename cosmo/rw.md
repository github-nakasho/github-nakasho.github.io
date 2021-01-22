# ロバートソン・ウォーカー計量

宇宙論・天体物理学・天文学でよく知られている一様等方宇宙モデルの計量です。

## メトリックとクリストッフェル記号

3次元の微小線素の2乗を

$$
d\ell^2 = e^{\lambda (r)} dr^2 + r^2 (d\theta^2 + \sin^2 \theta d\varphi^2)
$$

とします。このとき

$$
g_{rr} = e^{\lambda}, \ g_{\theta \theta} = r^2, \ g_{\varphi \varphi} = r^2 \sin^2 \theta, \ g_{ij} = 0 \ (i\neq j)
$$

より

$$
g^{rr} = e^{-\lambda}, \ g^{\theta \theta} = r^{-2}, \ g^{\varphi \varphi} = 1/ (r^2 \sin^2 \theta), \ g^{ij} = 0 \ (i\neq j)
$$

です。この計量からクリストッフェル記号を計算しましょう。すると

$$
\Gamma^{r}_{rr} 
= \frac{1}{2} \frac{d\lambda}{dr}, \ 
\Gamma^{r}_{\theta \theta} = -r e^{-\lambda}, \ 
\Gamma^{r}_{\varphi \varphi} = -r e^{-\lambda} \sin^2 \theta
$$

$$
\Gamma^{\theta}_{r\theta} 
= \frac{1}{r} , \ 
\Gamma^{\theta}_{\theta r} = \frac{1}{r}, \ 
\Gamma^{\theta}_{\varphi \varphi} = -\sin \theta \cos \theta
$$

$$
\Gamma^{\varphi}_{r\varphi} 
= \frac{1}{r} , \ 
\Gamma^{\varphi}_{\varphi r} = \frac{1}{r}, \ 
\Gamma^{\varphi}_{\varphi \theta} = \frac{\cos \theta}{\sin \theta}, \ 
\Gamma^{\varphi}_{\theta \varphi} = \frac{\cos \theta}{\sin \theta}
$$

のようになります。上述のもの以外の成分は0です。

## リーマンテンソルとリッチテンソル

これらから、リッチテンソルを求めるためのリーマンテンソルは

$$
R^{r}_{\ rrr} = 0, \ 
R^{\theta}_{\ r\theta r} = \frac{1}{2r} \frac{d\lambda}{dr}, \ 
R^{\varphi}_{\ r\varphi r} = \frac{1}{2r} \frac{d\lambda}{dr} 
$$

$$
R^{\theta}_{\ \theta \theta \theta} = 0, \ 
R^{r}_{\ \theta r \theta} = \frac{1}{2} r e^{-\lambda} \frac{d\lambda}{dr}, \ 
R^{\varphi}_{\ \theta \varphi \theta} = -e^{-\lambda} + 1  
$$

よってリッチテンソルは

$$
R_{rr} = \frac{1}{r} \frac{d\lambda}{dr}, \ 
R_{\theta \theta} = 1- e^{\lambda} + \frac{1}{2} r e^{-\lambda} \frac{d\lambda}{dr}
$$

## アインシュタイン方程式

アインシュタイン方程式より$$R_{ij} = 2Kg_{ij}$$から

$$
R_{rr} = \frac{1}{r} \frac{d\lambda}{dr} = 2Ke^{\lambda} \ \Longrightarrow  \
\frac{d\lambda}{dr} = 2rKe^{\lambda} 
$$

$$
R_{\theta \theta} = 1-e^{-\lambda} + \frac{1}{2} r e^{-\lambda} 2rKe^{\lambda} = 2Kr^2 \ \Longrightarrow \ 
e^{-\lambda} = 1-Kr^2
$$

$$
\therefore \ d\ell^2 
= \frac{dr^2}{1-Kr^2} + r^2 (d\theta^2 + \sin^2 \theta d\varphi^2)
$$

となります。

## Kの意味

ここで$$\theta = \pi/2$$での半径$$r={\rm Const}$$, $$\varphi = 0-2\pi$$の長さを考えてみましょう。

$$
\ell = \int_0^{2\pi} ds (r={\rm Const})
= \int_0^{2\pi} r d\varphi = 2\pi r
$$

よって$$\theta = \pi/2$$での$$\varphi={\rm Const}$$, $$0-r$$までの距離は

$$
D = \int_0^r ds(\varphi = {\rm Const}) 
= \int_0^r \frac{dr}{\sqrt{1-Kr^2}} = \left\{ \begin{array}{lc}
\sin^{-1} r & (K=1) \\
r & (K=0) \\
\sinh^{-1} r & (K=-1) \\
\end{array} \right.
$$

以上より

$$
\ell = 2\pi r = \left\{ \begin{array}{lc}
2\pi \sin D < 2\pi D & (closed \ space) \\
2\pi D & (flat \ space) \\
2\pi \sinh D > 2\pi D & (open \ space) \\
\end{array} \right.
$$

のようになっていることから、$$K$$は空間の曲率を表していることがわかります。

## ロバートソン・ウォーカー計量

共動座標を$$x^i$$(ただし$$i=1, 2, 3$$)で、宇宙空間にいる各銀河は$$x^i = {\rm Const}(dx^i = 0)$$で動かないとします。$$t$$を固有時間$$\tau$$にとると

$$
ds^2 = -c^2 d\tau^2 = g_{00} dt^2
$$

となるので$$g_{00} = -1$$とわかります。  
そして各銀河の測地線方程式から

$$
\frac{d^2 x^{i}}{d\tau^2} + \Gamma^i_{\alpha \beta} \frac{dx^\alpha}{d\tau} \frac{dx^\beta}{d^\tau} = 0 \ \Longrightarrow \ \Gamma^{i}_{00} = 0
$$

とわかるので

$$
\Gamma^{i}_{00} =\frac{1}{2} g^{i\alpha} (2g_{\alpha 0, 0} - g_{00, \alpha}) = g^{ij} g_{j0, 0} 
= 0 \ \Longrightarrow \ g_{i0} = 0
$$

よって最終的に求めたかったロバートソン・ウォーカー計量は

$$
ds^2 = -c^2 dt^2 + a^2(t) \left( \frac{dr^2}{1-Kr^2} + r^2 (d\theta^2 + \sin^2 \theta d\varphi^2) \right)
$$