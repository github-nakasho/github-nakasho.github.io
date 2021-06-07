# シンクロトロン放射

$$z$$軸方向を向いた一様磁場$$B$$中を運動する相対論的電子からの放射の周波数分布の厳密な形を導きましょう。簡単のため、電子は$$xy$$平面内で円運動しているものとします。$$\gamma = 1/\sqrt{1-\beta^2}$$は電子のローレンツ因子です。観測者の視線方向と$$z$$軸方向のなす角を$$\theta$$とすると、軸対称な系なので一般性を失うことなく観測者の視線方向を$$yz$$平面内に設定できます。よって観測者方向の単位ベクトルを$$\mathbf{n} = (0, \sin \theta, \cos \theta)$$のように書くことができます。以下の計算では長時間平均を行うため、部分積分することで出現する振動項の寄与は無視できるとします。

## 輻射場のフーリエスペクトル

[輻射場のフーリエスペクトル](/astroelec/rad_fourier.md)より

$$
\hat{\mathbf{E}}(\mathbf{r}, \omega) 
= - \frac{i \omega (-e)}{2\pi cR} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}} \int_{T'_1}^{T'_2} \mathbf{n} \times (\mathbf{n} \times \boldsymbol{\beta})e^{i \omega (t'-\frac{\mathbf{r}_0(t') \cdot \mathbf{n}}{c})} dt'
$$

です。これを具体的に計算するために、今後必要となるものを用意しましょう。電子の円運動の半径はラーモア半径$$a_L = \frac{v_0}{\omega_\mathrm{se}}$$より

$$
\mathbf{r}_0 (t') 
= a_L (\cos \omega_\mathrm{se} t', \sin \omega_\mathrm{se} t', 0) 
$$

$$
\boldsymbol{\beta} (t') 
= \frac{1}{c} \frac{d \mathbf{r}_0(t')}{dt'} 
= \frac{a_L \omega_\mathrm{se}}{c} (- \sin \omega_\mathrm{se} t ' , \cos \omega_\mathrm{se} t', 0) 
= \frac{v_0}{c} (- \sin \omega_\mathrm{se} t ' , \cos \omega_\mathrm{se} t', 0) 
$$

$$
\begin{align}
\mathbf{n} \times (\mathbf{n} \times \boldsymbol{\beta}) 
&= (\mathbf{n} \cdot \boldsymbol{\beta}) \mathbf{n}- (\mathbf{n} \cdot \mathbf{n}) \boldsymbol{\beta} 
= (\mathbf{n} \cdot \boldsymbol{\beta}) \mathbf{n}- \boldsymbol{\beta} \\
&= \frac{v_0}{c} \sin \theta \cos \omega_\mathrm{se} t'
\left( \begin{array}{c} 
0 \\
\sin \theta \\
\cos \theta 
\end{array} \right) - \frac{v_0}{c} 
\left( \begin{array}{c}
 - \sin \omega_\mathrm{se} t' \\
\cos \omega_\mathrm{se} t' \\
0
\end{array} \right)
= \beta
\left( \begin{array}{c} 
\sin \omega_\mathrm{se} t' \\
 - \cos^2 \theta \cos \omega_\mathrm{se} t' \\
\sin \theta \cos \theta \cos \omega_\mathrm{se} t'
\end{array} \right) \tag{1}
\end{align}
$$

これらから、具体的に成分ごとの計算を行いましょう。まずは$$x$$成分からです。

$$
\hat{E}_x (\mathbf{r} , \omega) 
= \frac{i e \omega \beta }{2\pi c R} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}} \int_{T_1'}^{T_2'} \sin \omega_\mathrm{se} t' e^{i\omega t'} e^{-i \frac{\omega}{c} a_L \sin \theta \sin \omega_\mathrm{se} t' } dt'
$$

ここで$$\lambda \equiv \frac{\omega}{c} a_L \sin \theta = \frac{\omega \beta}{\omega_\mathrm{se}} \sin \theta$$とおくと

$$
\hat{E}_x (\mathbf{r} , \omega) 
= \frac{i e \omega \beta }{2\pi c R} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}} \int_{T_1'}^{T_2'} \sin \omega_\mathrm{se} t' e^{-i \lambda \sin \omega_\mathrm{se} t' } dt'  
$$

[ベッセル関数のフーリエ級数展開](/math/bessel.md)より

$$
\begin{align}
e^{i \lambda \sin \omega_\mathrm{se} t' } 
= \sum_{n=0}^\infty J_n(\lambda) e^{in \omega_\mathrm{se} t'} 
&\underbrace{\Longrightarrow}_{\omega_\mathrm{se} \rightarrow - \omega_\mathrm{se}} e^{- i \lambda \sin \omega_\mathrm{se} t' } 
= \sum_{n=-\infty}^\infty J_n(\lambda) e^{- in \omega_\mathrm{se} t'} \\
& \underbrace{\Longrightarrow}_{\times d/d\lambda}
 - i \sin \omega_\mathrm{se} t' e^{- i\lambda \sin \omega_\mathrm{se} t' } 
= \sum_{n=-\infty}^\infty J_n' (\lambda) e^{-in \omega_\mathrm{se} t'}
\end{align}
$$

よって

$$
\begin{align}
\hat{E}_x (\mathbf{r} , \omega) 
&= - \frac{e \omega \beta }{2\pi c R} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}} \int_{T_1'}^{T_2'} e^{i\omega t'} \sum_{n=-\infty}^\infty J_n' (\lambda) e^{- in \omega_\mathrm{se} t' } dt'
= - \frac{e \omega \beta }{2\pi c R} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}} \sum_{n=-\infty}^\infty J_n' (\lambda) \int_{T_1'}^{T_2'} e^{i (\omega - in \omega_{\rm se} ) t' }  dt' \\
&= - \frac{e \omega \beta }{2\pi c R} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}} \sum_{n=-\infty}^\infty J_n' (\lambda) \frac{1}{i(\omega - n \omega_\mathrm{se})} \left[ e^{i (\omega - in\omega_\mathrm{se} ) t' } \right]_{T_1'}^{T_2'}
\end{align}
$$

ここで$$\varphi_0 \equiv \omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}$$とし、さらに以降の計算では$$T_1'=-\frac{T'}{2}, T_2'=\frac{T'}{2}$$とすると

$$
\begin{align}
\hat{E}_x (\mathbf{r} , \omega) 
&= - \frac{e \omega \beta }{2\pi c R} e^{i\varphi_0}\sum_{n=-\infty}^\infty J_n' (\lambda) \frac{1}{i(\omega - n \omega_\mathrm{se})} 2 i \sin \left\{ (\omega- n \omega_\mathrm{se} ) \frac{T'}{2} \right\} \\
&= - \frac{e \omega \beta }{\pi c R} e^{i\varphi_0} \sum_{n=-\infty}^\infty J_n' (\lambda) \underbrace{\frac{\sin \left\{ (\omega- n \omega_\mathrm{se} ) \frac{T'}{2} \right\} }{(\omega - n \omega_\mathrm{se})\frac{T'}{2}}}_{\mathrm{sinc}} \frac{T'}{2} \\
&= - \frac{e \omega \beta }{2\pi c R} e^{i \varphi_0} T' \sum_{n=-\infty}^\infty J_n' (\lambda) \mathrm{sinc} \left\{ (\omega- n \omega_\mathrm{se} ) \frac{T'}{2} \right\} \tag{2}
\end{align}
$$

同様に$$y$$成分を計算しましょう。

$$
\begin{align}
\hat{E}_y (\mathbf{r}, \omega) 
&= - \frac{i e \omega \beta}{2\pi c R} e^{i \varphi_0} \cos^2 \theta \int_{-T'/2}^{T'/2} \cos \omega_\mathrm{se} t' e^{i\omega t'} e^{- i \lambda \sin \omega_\mathrm{se} t' } dt' \\
&= - \frac{i e \omega \beta}{2\pi c R} e^{i \varphi_0} \cos^2 \theta \int_{-T'/2}^{T'/2} e^{i\omega t'} \frac{1}{- i \lambda \omega_\mathrm{se}}\frac{d}{dt'} \left( e^{- i \lambda \sin \omega_\mathrm{se} t' } \right) dt' \\
&= \frac{e \omega \beta}{2\pi c R} \frac{1}{\lambda \omega_\mathrm{se}} e^{i \varphi_0} \cos^2 \theta \left\{ \left[ e^{i\omega t'} e^{- i \lambda \sin \omega_\mathrm{se} t' } \right]_{-T'/2}^{T'/2} - \int_{-T'/2}^{T'/2} i\omega e^{i\omega t'} e^{- i \lambda \sin \omega_\mathrm{se} t' }dt'\right\} 
\end{align}
$$

長時間平均をとり、振動項である第一項は無視します。

$$
\begin{align}
\hat{E}_y (\mathbf{r}, \omega) 
&= - \frac{e \omega \beta}{2\pi c R} \frac{1}{\lambda \omega_\mathrm{se}} e^{i \varphi_0} \cos^2 \theta  \int_{-T'/2}^{T'/2} i\omega e^{i\omega t'} e^{- i \lambda \sin \omega_\mathrm{se} t' }dt' \\
&= - \frac{e \omega \beta}{2\pi c R} \frac{1}{\omega_\mathrm{se} \frac{\omega \beta}{\omega_\mathrm{se}}\sin \theta} e^{i \varphi_0} \cos^2 \theta \int_{-T'/2}^{T'/2} i\omega e^{i\omega t'} \sum_{n=-\infty}^\infty J_n (\lambda) e^{- in\omega_\mathrm{se} t' }dt' \\
&= - \frac{i e \omega}{2\pi c R} \frac{\cos^2 \theta}{\sin \theta} e^{i \varphi_0} \sum_{n=-\infty}^\infty J_n (\lambda) \frac{1}{i (\omega - n \omega_\mathrm{se})} \left[ e^{i(\omega - n\omega_\mathrm{se})t'} \right]_{-T'/2}^{T'/2} \\
&= - \frac{i e \omega}{2\pi c R} \frac{\cos^2 \theta}{\sin \theta} e^{i \varphi_0} \sum_{n=-\infty}^\infty J_n (\lambda) \frac{1}{i (\omega - n \omega_\mathrm{se})} 2i \sin \left\{ (\omega- n \omega_\mathrm{se}) \frac{T'}{2} \right\} \\
&= - \frac{i e \omega}{\pi c R} \frac{\cos^2 \theta}{\sin \theta} e^{i \varphi_0} \sum_{n=-\infty}^\infty J_n (\lambda) \underbrace{\frac{\sin \left\{ (\omega- n \omega_\mathrm{se}) \frac{T'}{2} \right\}}{(\omega - n \omega_\mathrm{se}) \frac{T'}{2}}}_\mathrm{sinc} \frac{T'}{2} \\
&= - \frac{i e \omega}{2 \pi c R} \frac{\cos^2 \theta}{\sin \theta} e^{i \varphi_0} T' \sum_{n=-\infty}^\infty J_n (\lambda) \mathrm{sinc} \left\{ (\omega- n \omega_\mathrm{se}) \frac{T'}{2} \right\} \tag{3}
\end{align}
$$

最後に$$z$$成分の計算を行いますが、これは(1)式の$$y, z$$成分を見比べてみると、その違いは$$\theta$$依存性のみであることがわかります。よって(3)式で$$- \cos^2 \theta \rightarrow \sin \theta \cos \theta$$に置き換えたものが$$\hat{E}_z(\mathbf{r}, \omega)$$となります。

$$
\therefore \ \hat{E}_z (\mathbf{r}, \omega) 
= \frac{i e \omega}{2 \pi c R} \cos \theta e^{i \varphi_0} T' \sum_{n=-\infty}^\infty J_n (\lambda) {\rm sinc} \left\{ (\omega- n \omega_\mathrm{se}) \frac{T'}{2} \right\} \tag{4}
$$

## 単位立体角あたりの放射強度

視線方向と磁場が作る平面内、及びその平面に垂直な方向に偏光した成分の単位時間・単位周波数・単位立体角あたりの放射強度を計算しましょう。これらは今の問題設定から、それぞれ以下のように与えられます。

$$
\frac{d W_\perp}{d\omega d\Omega dt'} 
= \frac{c R^2}{T'} \left| {\hat E}_x \right|^2 
$$

$$
\frac{d W_{\parallel}}{d\omega d\Omega dt'} 
= \frac{c R^2}{T'} \left( \left| {\hat E}_y \right|^2 + \left| {\hat E}_z \right|^2 \right) 
$$

(2)式より

$$
\frac{d W_{\perp}}{d\omega d\Omega dt'} 
= \frac{e^2 \beta^2 }{4\pi^2 c} T' \omega^2 \left( \sum_{n=-\infty}^\infty J_n' (\lambda) \mathrm{sinc} \left\{ (\omega - n \omega_\mathrm{se}) \frac{T'}{2} \right\}\right) \left( \sum_{m=-\infty}^\infty J_m' (\lambda) \mathrm{sinc} \left\{ (\omega - m \omega_\mathrm{se}) \frac{T'}{2} \right\}\right)
$$

この式を角周波数で積分します。ここで積分時間$$T'$$は観測時間であり、長時間平均していたことを思い出しましょう。すると$$T' \rightarrow \infty$$より、2つのsinc関数は$$\omega \simeq n \omega_\mathrm{se}, \omega \simeq m \omega_\mathrm{se}$$以外の$$\omega$$でほぼ0であるような、デルタ関数的な振る舞いをしていると考えて良いでしょう。よって上式を$$\omega$$で積分するときには、異なる次数$$n, m$$が掛け合わさった項は0とします。

$$
\frac{d W_{\perp}}{d\Omega dt'} 
= \lim_{T' \rightarrow \infty} \frac{e^2 \beta^2}{4\pi^2 c} T' \int_0^\infty \omega^2  \sum_{n=-\infty}^\infty J_n' (\lambda)^2 \mathrm{sinc}^2 \left\{ (\omega - n \omega_\mathrm{se}) \frac{T'}{2} \right\} d\omega
$$

この積分を計算するために、[sincの2乗の積分公式](/math/sinc2.md)

$$
\int_{-\infty}^\infty {\rm sinc}^2 x \ dx 
= \pi
$$

を考えます。$$x = \frac{\omega - n\omega_\mathrm{se}}{2} T' \ (dx = \frac{1}{2} T'd\omega)$$と置換すると

$$
\int_{-\infty}^\infty T' \mathrm{sinc}^2 \left\{ (\omega - n \omega_\mathrm{se}) \frac{T'}{2} \right\} d\omega 
=2 \pi 
$$

です。先ほどの議論から$$T' \rightarrow \infty$$では、このsinc関数はデルタ関数と近似して良いとして

$$
\lim_{T' \rightarrow \infty}T' \mathrm{sinc}^2 \left\{ (\omega - n \omega_\mathrm{se}) \frac{T'}{2} \right\} 
= 2\pi \delta (\omega - n \omega_\mathrm{se})
$$

以上より

$$
\frac{d W_\perp}{d\Omega dt'} 
= \frac{e^2 \beta^2}{2\pi c} \int_{0}^\infty \sum_{n=-\infty}^\infty \omega^2 J_n'(\lambda)^2 \delta (\omega- n \omega_\mathrm{se}) d\omega
$$

$$\omega_n \equiv n \omega_\mathrm{se}, \lambda_n \equiv \lambda(\omega=\omega_n)=\frac{n \omega_\mathrm{se} \beta}{\omega_\mathrm{se}} \sin \theta = n \beta \sin \theta$$と定義します。さらに$$\omega>0$$より、\sum_{n= -\infty}^{\infty}において、$$n$$が負の部分の和は寄与しない(0になる)ことを用いると

$$
\frac{d W_\perp}{d\Omega dt'} 
= \frac{e^2 \beta^2}{2\pi c} \sum_{n=0}^\infty  \omega_n^2 J_n'(\lambda_n)^2 \tag{5}
$$

と求まります。同様の計算を、もう一つにも行っていきましょう。

$$
\begin{align}
\frac{dW_\parallel}{d\Omega dt'} 
&= \lim_{T' \rightarrow \infty} \frac{e^2 }{4\pi^2 c} \int_0^\infty \omega^2 \left[ \frac{\cos^4 \theta}{\sin^2 \theta} T' \left(\sum_{n=-\infty}^\infty J_n (\lambda) \mathrm{sinc} \left\{ (\omega- \omega_n) \frac{T'}{2} \right\} \right)^2 \right. \\
& \quad \left. + \cos^2 \theta \ T' \left( \sum_{n=-\infty}^\infty J_n (\lambda) \mathrm{sinc} \left\{ (\omega- \omega_n) \frac{T'}{2} \right\} \right)^2 \right] d\omega \\
&=\lim_{T' \rightarrow \infty} \frac{e^2}{4\pi^2 c} \frac{\cos^2 \theta}{\sin^2 \theta} \int_0^\infty  \omega^2 T' \left(\sum_{n=-\infty}^\infty J_n (\lambda) \mathrm{sinc} \left\{ (\omega- \omega_n) \frac{T'}{2} \right\} \right)^2 d\omega \\
&= \lim_{T' \rightarrow \infty} \frac{e^2}{4\pi^2 c} \frac{\cos^2 \theta}{\sin^2 \theta} \int_0^\infty  \omega^2 T' \sum_{n=-\infty}^\infty J_n (\lambda)^2 \mathrm{sinc}^2 \left\{ (\omega- \omega_n) \frac{T'}{2} \right\} d\omega \\
&= \frac{e^2}{4\pi^2 c} \frac{\cos^2 \theta}{\sin^2 \theta} \int_0^\infty \underbrace{\sum_{n=-\infty}^\infty}_{=\sum_{n=0}^\infty} \omega^2 J_n (\lambda)^2 \underbrace{\lim_{T' \rightarrow \infty} T' \mathrm{sinc}^2 \left\{ (\omega- \omega_n) \frac{T'}{2} \right\}}_{=2\pi \delta (\omega- \omega_n)} d\omega \\
&= \frac{e^2}{2\pi c} \frac{\cos^2 \theta}{\sin^2 \theta} \sum_{n=0}^\infty \omega_n^2  J_n (\lambda_n)^2 \tag{6}
\end{align}
$$

## 全放射強度

## 単位角周波数あたりの放射強度

## 関数$$F$$の振る舞い

## べき乗の電子分布からの放射スペクトル