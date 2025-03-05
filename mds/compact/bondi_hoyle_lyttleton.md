---
layout: default
title: ボンディ・ホイル・リットルトン降着
parent: コンパクト天体
math: mathjax3
permalink: /compact/bondi_hoyle_lyttleton
nav_order: 11
---

{: .no_toc }

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

{% include adsense.html %}

# ボンディ・ホイル・リットルトン降着 (Bondi-Hoyle-Lyttleton accretion)

ここでは、コンパクト天体などへの降着機構として知られるボンディ・ホイル・リットルトン降着についてメモしています。

## 導入: ボンディ・ホイル・リットルトン降着とは

天体物理學の教科書などでよく見かけるものに、球対称のガスの降着があります。
中心に存在する太陽などの恒星やブラックホールなどのコンパクト天体に降着するガスにおいて、動径方向の運動・構造を考えるというものです。
解析的に降着率を計算することができるなどの利点があることから、現在でも多くの研究で用いられているモデルでもあります。
しかしみなさんご存知の通り、実際の天体への降着が綺麗な球対称であるということはありません。
例えば、星間空間中を一定速度で運動する単独星には、その運動方向から降り注ぐ星間ガスが多いと考えられるでしょう。
質点がガス雲中を超音速で横切るときに起こる降着流について考察するのが、ボンディ・ホイル・リットルトン降着です。

## ホイルとリットルトンによる解析

ホイルとリットルトンは、無限に広がる星間雲中を一定速度で運動する恒星への降着を考えました。
この問題を考える上での状況設定を、次の図に示します。

![](/assets/images/compact/bondi_hoyle_lyttleton_01.png)

衝突パラメータ$$\zeta$$の流体の流線について考えましょう。
ただし、この系では重力が優勢で、流体の圧力の影響は無視できるものとします。
すると2次元曲座標系の運動方程式より

$$
\ddot{r} - r \dot{\theta}^2 
= - \frac{GM}{r^2} \tag{1}
$$

$$
r^2 \dot{\theta} 
= \zeta v_\infty \tag{2}
$$

を得ます。
ここで$$M$$は運動する天体の質量、そして$$v_\infty$$は流入する流体の無限遠での運動速度です。
(2)式は角運動量保存を表すものです。
$$h = \zeta v_\infty$$とおき、さらに$$u = r^{-1}$$のようにすれば、(1)式は

$$
\frac{d^2 u}{d\theta^2} + u 
= \frac{GM}{h^2} \tag{3}
$$

のように書き換えることができます [(詳しくは二体問題のページを参照。)](/galady/twobody)
この一般解は

$$
u 
= A \cos \theta + B \sin \theta + \frac{GM}{h^2} \tag{4}
$$

のように書くことができます。
境界条件から定数$$A, B$$を求めましょう。
$$u \rightarrow 0 \ (r \rightarrow \infty)$$で$$\theta \rightarrow \pi$$より、(4)式から$$A = - \frac{GM}{h^2}$$と求まります。
速度に関する境界条件を利用するため、次の計算を行いましょう。

$$
\dot{r} 
= \frac{dr}{d\theta} \underbrace{\dot{\theta}}_{(2)} 
= \frac{dr}{du} \frac{du}{d\theta} u^2 h 
= - h \frac{du}{d\theta} 
= -h \left( - \frac{GM}{h^2} \sin \theta + B \cos \theta \right) \tag{5}
$$

そして$$\theta \rightarrow \pi$$では$$\dot{r} \rightarrow -v_\infty$$より、$$B = -\frac{v_\infty}{h}$$となります。
以上から

$$
u 
= \frac{GM}{h^2} (1+\cos \theta) - \frac{v_\infty}{h} \sin \theta \tag{6}
$$

のように求まります。  
次に、流体が天体に降着する条件を考えましょう。
そのために、まず$$\theta = 0$$の軸上を通過する瞬間について考えます。
このとき、(6)式より

$$
\frac{1}{r (\theta = 0)} 
= \frac{2GM}{h^2} \ \Longrightarrow \ 
r (\theta = 0)
= \frac{\zeta^2 v_\infty^2}{2GM} \tag{7}
$$

の関係が成り立ちます。
この流体が降着するためには、重力的に束縛されている必要があります。
よって$$r$$が十分大きい遠方での全エネルギーの式から

$$
\frac{1}{2} v_\infty^2 - \frac{GM}{\underbrace{r}_{(7)}} 
< 0 \ \Longrightarrow \ 
\zeta^2 
< \zeta_\mathrm{HL}^2 \equiv \frac{4G^2M^2}{v_\infty^4} \tag{8}
$$

を得ます。
この$$\zeta_\mathrm{HL}$$をホイル・リットルトン半径とよび、これより内側の衝突パラメータで流入した流体は、天体に降着することがわかります。
$$v_\infty$$が大きいと$$\zeta_\mathrm{HL}$$の値が小さくなり、天体の束縛を振り切ってそのまま下流に流れ去ります。
逆に$$v_\infty$$が小さければ$$\zeta_\mathrm{HL}$$の値が大きくなり、より多くのガスが降着するという直感に一致します。
この半径内を通過する質量流束(すなわち天体への降着率)を計算してみましょう。
無限遠方でのガス密度を$$\rho_\infty$$とすると

$$
\dot{M}_\mathrm{HL} 
= \pi \zeta_\mathrm{HL}^2 \rho_\infty v_\infty 
\underbrace{=}_{(8)} \frac{4\pi G^2 M^2 \rho_\infty}{v_\infty^3} \tag{9} 
$$

と求まります。
これをホイル・リットルトン降着率と呼びます。

{% include adsense.html %}

## ボンディとホイルによる解析

ボンディとホイルは先ほどの解析を拡張し、下図のような降着カラムを考えました。

![](/assets/images/compact/bondi_hoyle_lyttleton_02.png)

そして天体が通過したことで発生する航跡(wake)を考えることで、(9)式の降着率が変化するというものです。
以下ではこれを見ていきましょう。  
(7)式より、$$\theta = 0$$の軸上を通過する流体に関して

$$
dr 
= \frac{v_\infty^2}{GM} \zeta d\zeta \tag{10}
$$

の関係が成り立つのでした。
$$\zeta \sim \zeta + d\zeta$$の領域から流入し、軸上の$$r \sim r + dr$$に到達する流体の質量流束が

$$
2\pi \zeta d\zeta \cdot \rho_\infty v_\infty 
= \frac{2\pi GM \rho_\infty}{v_\infty} dr 
\equiv \Lambda dr \tag{11}
$$

と求まります。
ここで定義した$$\Lambda = \frac{2\pi G M \rho_\infty}{v_\infty}$$は、$$r$$に依存しない量であることに注意が必要です。
$$\theta=0$$を通過する流体による角運動量流束は

$$
J_\mathrm{ang} 
= \frac{\Lambda \cdot v_\theta (\theta = 0)}{2\pi s} \tag{12}
$$

となります。
ここで$$s$$は航跡の半径であり、この面積$$2\pi s$$で割ったものが流束となることに留意しましょう。
$$v_\theta (\theta =0)$$を求めるために、エネルギー保存則を用いましょう。

$$
\frac{1}{2} v_\infty^2 
= \frac{1}{2} (v_r^2 (\theta=0) + v_\theta^2 (\theta)) - \frac{GM}{r(\theta = 0)} \tag{13}
$$

そして

$$
\begin{align}
&\dot{r} 
= \frac{dr}{dt} 
= \frac{dr}{du} \frac{du}{dt} 
\underbrace{=}_{(6)} -\frac{1}{r^2} \left( -\frac{GM}{h^2} \dot{\theta} \sin \theta - \frac{v_\infty}{h} \dot{\theta} \cos \theta \right) \notag \\
& \Longrightarrow \ 
v_r (\theta = 0) 
= \frac{1}{r^2 (\theta=0)} \frac{v_\infty}{h} \dot{\theta} (\theta=0) \tag{14}
\end{align}
$$

$$
\dot{\theta} (\theta = 0)
\underbrace{=}_{(2)} \frac{h}{r^2(\theta = 0)} 
\underbrace{=}_{(7)} \frac{4G^2 M^2}{h^3} \tag{15}
$$

より

$$
v_r(\theta = 0) 
= v_\infty \tag{16} 
$$

と求まるため、これを(14)式に代入すれば

$$
v_\theta 
= \sqrt{ \frac{2GM}{r(\theta =0)} } \tag{17}
$$

のようになります。
これを(12)式に代入すると、求めたかった角運動量流束を得ることができます。

$$
J_\mathrm{ang} 
= \frac{\Lambda}{2\pi s} \sqrt{\frac{2GM}{r(\theta=0)}} \tag{18}
$$

この角運動量流束が、天体の後ろに発生している航跡での圧力(運動量流束と同じ次元)と同程度であるとしましょう。
航跡中の圧力を$$P_s$$とすると
$$x$$方向に働く圧力による力は

$$
d(\pi s^2 P_s) 
= \Lambda \sqrt{\frac{GM}{2}} \cdot d \left( \frac{s}{\sqrt{r}}\right) \tag{19}
$$

と計算されます。
$$\theta =0$$の軸上の距離$$r(\theta =0)$$にある物質が天体に降着するのにかかる時間は、およそ$$r/v_\infty$$と見積もることができます。
ここから、航跡中の単位長さ・単位時間あたりに降着する質量$$m$$を概算できます。
この質量を$$m$$とすると、これは

$$
m 
\simeq \frac{\Lambda}{r(\theta=0)/v_\infty} 
\approx \frac{\Lambda GM}{v_\infty^3} \tag{20} 
$$

のように計算されます。
途中、係数などは省略しました。
よって航跡中の単位長さあたりに働く力は

$$
F_\mathrm{grav} 
= \frac{GMm dr}{r^2} 
\approx \Lambda \frac{G^2 M^2}{v_\infty^3} \frac{dr}{r^2} \tag{21} 
$$

と求まります。
降着するガスに対しては、$$r \simeq GM/v_\infty^2$$と考えることができます。
また航跡が非常に薄く($$s \ll r$$)、その形状はおおよそ円錐形($$ds/s \approx dr /r$$)であるとします。
すると、圧力による力(19)式は重力(21)式よりもだいぶ小さいことがわかります。
よって以下では航跡中のガス圧は無視できると考えましょう。
航跡中の単位長さあたりの質量を$$m$$、そして航跡中の平均速度を$$v$$としましょう。
質量保存(連続の式)と運動量保存の式より

$$
\frac{d}{dr} (mv) 
= \Lambda \tag{22}
$$

$$
\frac{d}{dr} (mv^2) 
= \Lambda v_\infty - \frac{GMm}{r^2} \tag{23}
$$

がわかります。
航跡にもたらされる運動量が$$\Lambda v_\infty$$、そして$$\theta=0$$の軸上での流体の速度が$$\dot{r} = v_\infty$$であることを思い出し、これらを持ちいて方程式を無次元化しましょう。

$$
v = v_\infty \nu, \quad r 
= \frac{GM}{v_\infty^2} \chi, \quad m 
= \frac{\Lambda GM}{v_\infty^3} \mu \tag{24}
$$

(8)式より、$$\chi = 2$$は$$\zeta_\mathrm{HL}$$に対応することがわかります。
これらを用いて(22), (23)式を書き換えると

$$
\frac{d}{d\chi} (\mu \nu) 
= 1 \tag{25}
$$

$$
\frac{d}{d\chi} (\mu \nu^2) 
= 1 - \frac{\mu}{\chi^2} \tag{26}
$$

のようになります。
(25)式を積分すると

$$
\mu \nu 
= \chi - \alpha \quad (\alpha: 定数) \tag{27}
$$

$$\mu$$は無次元化された質量なので、常に正の値です。
すると(27)式から、$$\chi = \alpha$$を境に、無次元化された速度$$\nu$$の符号が変化します。
速度がゼロになる点$$\chi = \alpha$$は、流体のよどみ点 (stagnation point)を表していることがわかります。
そして$$\chi < \alpha$$は天体に降着することから、$$\alpha$$が降着率の情報を持つことがわかります。
$$\chi = \alpha$$に対応する場所を$$r = r_0$$とすると、降着率は$$\Lambda r_0$$と計算されるはずです。
(26)式において$$\mu \nu^2 = \mu \nu \cdot \nu$$と書くと

$$
\frac{d}{d\chi} (\mu \nu \cdot \nu) 
= \nu \underbrace{\frac{d}{d\chi} (\mu \nu)}_{(25)} + \mu \nu \frac{d\nu}{d\chi} 
= \nu + \mu \nu \frac{d\nu}{d\chi} \tag{28}
$$

より

$$
\nu \frac{d\nu}{d\chi} 
= \frac{1-\nu}{\mu} - \frac{1}{\chi^2} 
\underbrace{=}_{(27)} \frac{\nu (1-\nu)}{\chi - \alpha} - \frac{1}{\chi^2} \tag{29}
$$

これを解くことは一筋縄ではありませんが、ここから$$\nu$$の振る舞いを考えることができます。
そのために境界条件を考えてみましょう。

1. $$\chi \rightarrow \infty \ (r \rightarrow \infty)$$では、$$\nu \rightarrow 1 \ (v \rightarrow v_\infty)$$となる。
2. 先程のよどみ点の議論から、$$\chi = \alpha$$では$$\nu =0$$となる。
3. 1, 2から、航跡中の全ての領域においては$$\frac{d\nu}{d\chi} > 0$$のような、単調増加関数である必要がある。

さらに(29)式において、$$\xi = \chi / \alpha$$のような置換を行うと

$$
\nu \frac{d\nu}{d\xi} 
= \frac{\nu (1-\nu)}{\xi - 1} - \frac{1}{\alpha \xi^2} \tag{30}
$$

のようになります。
今、左辺の微分がゼロであるとすると

$$
\nu^2 - \nu + \frac{\xi - 1}{\alpha \xi^2} 
= 0 \tag{31}
$$

この2次方程式の解は

$$
\nu 
= \frac{1}{2} \pm \sqrt{\frac{1}{4} - \frac{\xi-1}{\alpha \xi^2}} \tag{32}
$$

$$\nu$$は速度を無次元化したものであるため、実数でなければなりません。
つまり、(32)式の平方根部分の中身は正の値である必要があります。
平方根の中身がゼロとした時に、さらに2次方程式を考えることができます。
その解は

$$
\xi 
= \frac{2}{\alpha} (1 \pm \sqrt{1-\alpha}) \tag{33}
$$

次の図は$$\frac{d\nu}{d\xi}$$の符号により領域分けをしたものです。
$$\alpha>1$$と$$\alpha<1$$の場合で図を分けています。
青色の影をつけた領域が、$$\frac{d\nu}{d\xi}>0$$となります。

![](/assets/images/compact/bondi_hoyle_lyttleton_03.png)

$$\alpha<1$$では、すべての$$\xi$$ (すなわち$$\chi$$)でとなる$$\nu$$が存在しないため、先程の3番目の条件を満たしません。
よってよどみ点の位置を表す$$\alpha$$が1より大きいの場合のみ、この流れに対する解となり得ることがわかります。
$$\chi = 2$$が$$\zeta_\mathrm{HL}$$に対応していることから分かるように、この値はよどみ点がその半分の位置より遠くなければならないことがわかります。
すなわち、$$0.5\dot{M}_\mathrm{HL}$$が航跡を考慮した場合の降着率の最小値であるとわかります。

{% include adsense.html %}

## ボンディ降着との接続

冒頭でも触れた、宇宙流体力学の教科書などでよく触れられているボンディ降着との接続についても議論しておきましょう。
ボンディ降着は、中心天体への球対称定常降着流を扱ったものです。
降着率を与える有効半径として、ボンディ半径が

$$
r_s
= \frac{GM}{c_s^2(r_s)} \tag{34}
$$

と与えられます。
ここで$$c_s$$はガスの音速です。
ボンディ降着では、ボンディ半径より外側のガスは亜音速で運動し、ガス密度波ほぼ一定であるとされています。
そしてガスが中心天体に落下するにつれて、ガスの運動は超音速となります。
この場合の質量降着率は

$$
\dot{M}_\mathrm{B} 
\approx \frac{4\pi (GM)^2 \rho_\infty}{c_{s, \infty}^3} \tag{35}
$$

のように与えられます。  
この式と(9)式を見比べてみましょう。
すると分母が$$v_\infty$$であるか$$c_s$$であるかの違いのみであることがわかります。
よって球対称降着とボンディ・ホイル・リットルトン降着との中間、すなわち降着を起こす天体の運動が音速と同じ程度の大きさの場合の降着率を次のように定義しましょう。

$$
\dot{M}_\mathrm{BH} 
\equiv \frac{4\pi (GM)^2 \rho_\infty}{(c_{s, \infty}^2 + v_\infty^2)^{3/2}} \tag{36}
$$

これはしばしばボンディ・ホイル降着率と呼ばれます。
しかし、この降着率は(9)式と(35)式を単純に内挿したものであるため、厳密なものでないことに注意が必要です。

## 降着流の分類

先程の説明から分かるように、$$v_\infty$$と$$c_{s, \infty}$$の大きさによって、降着率が変化します。
$$v_\infty$$が$$c_{s, \infty}$$より大きな場合、ガスはその運動の途中で衝撃波を発生させます。
このことから、以下のように形態分類することができます。

![](/assets/images/compact/bondi_hoyle_lyttleton_04.png)

$$v_\infty \ll c_{s, \infty}$$の場合は、降着流は球対称のボンディ降着と近似することができます。
$$v_\infty$$が$$c_{s, \infty}$$より大きいと、弧状衝撃波(バウショック)が生じ、流れの様子が変化します。

{% include adsense.html %}

## 最近の関連研究

最近ではボンディ・ホイル・リットルトン降着に関する様々な流体シミュレーションが活発に行われるようになりました。
主星が進化を遂げて赤色巨星となった連星系では、主星から伴星に恒星風が降り注ぎます。
この伴星が中性子星の場合、巨星を伴うX線で明るく輝く連星(Supergiant X-ray Binaries: SgXBs)となります。
この中で伴星が軌道運動を行うことで、伴星は先ほどの図の$$v_\infty \gg c_{s, \infty}$$のようなボンディ・ホイル・リットルトン降着を起こします。
この様子を高解像度の2次元・3次元流体シミュレーションを行ったのが、[Xu & Stone (2019)](https://academic.oup.com/mnras/article/488/4/5162/5538856)です。
上流から流れ込む流体に速度勾配を与えると、流れが不安定となり乱流的になることを示しました。
この乱流的な流れは円盤のような構造を持ちますが、この乱流場は不安定になりやすく、円盤が形成されにくいことが判明しました。
観測されているほとんどのSgXBsのパラメータでは、降着流が乱流的で、円盤は持たないだろうことがわかったのです。

![](/assets/images/compact/bondi_hoyle_lyttleton_05.png)

連星系が星間ガス内を運動することで起こるボンディ・ホイル・リットルトン降着も調べられています。
[Comerford et al. (2019)](https://academic.oup.com/mnras/article/490/4/5196/5610233?)では、連星のパラメータ(連星間の距離や降着流に対する連星軌道面の傾きなど)を様々に変えて流体シミュレーションを行いました。
軌道面がほぼ横向きになった場合、連星系中の恒星はお互いの航跡を通過することで、降着率が変化することを示したのです。
降着に伴う軌道角運動量の変化も調べるなどし、このボンディ・ホイル・リットルトン降着は、連星軌道を収縮させるのには十分でないことも判明しました。

![](/assets/images/compact/bondi_hoyle_lyttleton_06.png)

[Kaaz et al. (2023)](https://iopscience.iop.org/article/10.3847/1538-4357/acc7a1)では3次元の一般相対論的磁気流体(GRMHD)計算を行い、カーブラックホールへのボンディ・ホイル・リットルトン降着を計算しました。
この研究では、磁場を持つ星間ガスがブラックホールに降着を起こすだけでなく、ブラックホールからジェットが噴出することが示されました。
そのジェットは衝撃波面の下流に位置する降着流を跳ね除けて噴出するほど、十分なパワーを持つことが判明したのです。
星間ガスの磁場の大きさを変えてシミュレーションを実施したところ、磁場が強い場合は常にジェットが形成されますが、磁場が弱くなるにつれて間欠的に噴出することも示されました。  

![](/assets/images/compact/bondi_hoyle_lyttleton_07.png)

ボンディ・ホイル・リットルトン降着では、ガスが天体へ与える影響を無視していました。
ガスが天体の横を通り過ぎ航跡を形成すると、[恒星系における動的摩擦](/galady/dynamical_friction)と同じ原理で、天体の運動を妨げる方向に重力が働きます。
これをガス中における動的摩擦と呼びます。
これに対してはすでに解析的な公式が導かれていますが、この公式は線形解析から得られたもので、非線形領域については調べられていませんでした。
そこで[Suzuguchi et al. (2024)](https://iopscience.iop.org/article/10.3847/1538-4357/ad34af)では、高解像度数値シミュレーションからガスの力学的摩擦を調べました。
するとボンディ・ホイル・リットルトン半径より内側のガスは降着するため、それより外側を通過するガスが動的摩擦に寄与することなどが判明しました。

## 参考文献

[1] [Edgar, 2004, "A Review of Bondi-Hoyle-Lyttleton Accretion"](https://www.sciencedirect.com/science/article/abs/pii/S1387647304000739?via%3Dihub)  
[2] [Xu & Stone, 2019, "Bondi-Hoyle-Lyttleton accretion in supergiant X-ray binaries: stability and disc formation"](https://academic.oup.com/mnras/article/488/4/5162/5538856)  
[3] [Kaaz et al., 2023, "Jet Formation in 3D GRMHD Simulations of Bondi-Hoyle-Lyttleton Accretion"](https://iopscience.iop.org/article/10.3847/1538-4357/acc7a1)  
[4] [Suzuguchi et al., 2024, "Gas Dynamical Friction on Accreting Objects"](https://iopscience.iop.org/article/10.3847/1538-4357/ad34af)  
[5] [Godet & Belmont, "Compact objects and Accretion Part II."](http://userpages.irap.omp.eu/~rbelmont/mypage/accretion/cours.pdf)  
[6] [鈴口智也, 修士論文 "連星種ブラックホールへのガス降着と軌道進化"](https://www-tap.scphys.kyoto-u.ac.jp/~suzuguchitm/note/master_thesis.pdf)  

{% include adsense.html %}