---
layout: default
title: 密度波理論
parent: 銀河のダイナミクス
math: mathjax3
permalink: /galady/density_wave
nav_order: 13
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

# 密度波理論 (density wave theory)   工事中、近日中にちゃんと公開する予定。

ここでは、銀河の渦巻構造を形成する理論として提唱された、密度波理論についてメモしています。

## 巻き込み困難 (winding dillemma)

渦巻構造を持つ円盤銀河の回転速度は、円盤内では$$v_c \sim (定数)$$のようなflat rotationと呼ばれる特徴を持ちます。
しかしこの場合、角速度は$$\Omega \propto r^{-1}$$となります。
これは渦巻銀河の内側ほど、角速度が大きいことを意味します。
もし、渦巻を形成しているのが実体を持ったものの場合、内側ほど早く回転し、巻き込みが時間とともにきつくなってしまいます。
天の川銀河の場合には200-300万年ほどで円盤が一回転すると考えられており、数億年も時間が経てば、渦巻がきつく巻いてしまいます。
そのような巻き込みがきつい渦巻銀河は見つかっていないことから、これは巻き込み困難と呼ばれています。

![](/assets/images/galady/density_wave_01.png)

渦状腕部分がガスや恒星の自己重力により形成されたものとし、そのようにしてできた密度超過領域が差動回転で引き延ばされた構造の場合、これは巻き込み困難の問題を受けることになります。  
この問題を解消するために提案されたものが、密度波理論です。
この理論では、渦状腕の構成要素は入れ替わり立ち替わり変化します。
渦状腕の部分は波動のある位相の部分を表しているため、渦状腕の角速度(以降ではパターン速度と呼びます)とそれを形成する媒質の速度は同じではありません。
そのため、渦状腕は巻き込まれることなく、波動として同じ構造を維持し続けることが可能となります。

## 運動学的な密度波 (kinematic density waves)

ここでは、銀河円盤内を運動する一つの恒星の運動に着目してみましょう。
この恒星は銀河中心の周りを角速度$$\Omega$$で円運動しながら、[エピサイクリック運動](/galady/epicyclic_motion)により動径方向に振動数$$\kappa$$で振動します。
静止系では、その軌道は一般にバラの花形(rosette)軌道を描き、閉じることはありません。
しかし、この恒星の運動を、角速度$$\Omega_p \equiv \Omega - \kappa /2$$で回転する座標系から見てみましょう。
この回転系から見ると、恒星は回転方向には角速度$$\Omega - \Omega_p = \kappa / 2$$で回転(公転)することになります。
$$(公転角振動数):(動径方向角振動数)=1:2$$より、この回転系で公転運動を1回する間に、動径方向には2回振動を行うことになります。
つまりこの軌道は楕円を描いて閉じることになります。
この楕円を静止系から見ると、楕円の軸が角速度$$\Omega_p$$で回転して見えることになります。

![](/assets/images/galady/density_wave_02.png)

様々な半径を運動する恒星に対してこの楕円軌道を考えると、上図のようになります。
この楕円の長軸が全て揃っている場合、上左図のように特別な変化は見られません。
しかし、長軸が少しずつづれていると、上右図のような軌道の密な場所が渦巻状に現れます。
この渦巻構造は、静止系では角速度$$\Omega_p$$で回転しているように見えます。  
ここまでは$$\Omega_p = \Omega - \kappa / 2$$の場合のみを考えてきましたが、一般には軌道が閉じる条件は

$$
\Delta \phi_p 
= \Delta \phi - \Omega_p \frac{2\pi}{\kappa}
= 2 \pi \frac{n}{m} \tag{1}
$$

のように書けます。
ここで$$\Delta \varphi_p$$と$$\Delta \varphi$$はそれぞれ、$$\Omega_p$$で回転する系と静止系での動径方向振動1回後の方位角方向の角度変化分、$$2\pi / \kappa$$はエピサイクリック運動による動径方向の振動周期、$$m, n$$は整数です。

![](/assets/images/galady/density_wave_03.png)

先程の例では$$n=\pm 1, m=2$$としていました。
ここから、$$m$$が1周期の軌道運動中の動径方向振動回数であることもわかります。
$$\Delta \varphi$$の定義から

$$
\Delta \varphi
= \frac{2\pi}{\kappa} \Omega \tag{2}
$$

のように計算されるため

$$
\Omega_p = \Omega - \frac{n}{m} \kappa \tag{3}
$$

を得ます。

![](/assets/images/galady/density_wave_04.png)

上図は$$\Omega - \kappa / 2, \Omega, \Omega + \kappa / 2$$をプロットしたものです。
上図に対して$$\Omega_p=(一定)$$の直線に対し、$$\Omega_p = \Omega - \kappa / 2, \Omega_p = \Omega, \Omega_p = \Omega + \kappa / 2$$の3つの交点があることが分かります。
$$\Omega_p = \Omega$$を共回転、$$\Omega_p = \Omega \pm \kappa / 2$$をリンドブラッド共鳴点と呼びます。  

この考え方には、運動する恒星どうしの重力相互作用が含まれておらず、また渦状腕ができたことによる非軸対称性が考慮されていません。
このことから恒星の軌道運動から作られた密度波を、運動学的密度波と呼びます。
また、ここでは$$\Omega_p$$を半径によらずに一定としています。
実際の銀河では$$\Omega_p$$が半径に依存し、楕円軌道の長軸方向は時事刻々とその向きを変えていくため、渦状腕が崩れていきます。
このことからもこの説明は完全ではないことが分かりますが、密度波理論がどういうものか、その特徴を良く捉えていることから、良く引き合いに出されます。

## 密度波理論

ここからは、実際に密度波の分散関係式を求めることを考えましょう。
しかし一般的な銀河円盤の動力学には、数値計算が必要となります。
そこで、ここでは銀河円盤中を運動する恒星群を流体のように扱い、そのガスの分散関係式を求めます。
ガスの運動方程式は

$$
\frac{\partial \mathbf{v}}{\partial t} + (\mathbf{v} \cdot \nabla) \mathbf{v} 
= - \frac{1}{\Sigma} \nabla P - \nabla \Phi \tag{4}
$$

のように書かれます。
ここで$$\mathbf{v} = (v_R, v_\varphi)$$は速度ベクトル、$$\Sigma$$は質量面密度、$$P$$は恒星円盤をガスと見立てた場合の熱運動による圧力、$$\Phi$$は重力ポテンシャルです。
この式の$$R$$成分は

$$
\frac{\partial v_R}{\partial t} + v_R \frac{\partial v_R}{\partial R} + \frac{v_\varphi}{R} \frac{\partial v_R}{\partial \varphi} - \frac{v_\varphi^2}{R} 
= - \frac{\partial \Phi}{\partial R} - \frac{1}{\Sigma} \frac{\partial P}{\partial R} 
= - \frac{\partial}{\partial R} (\Phi + h) \tag{5}
$$

となります。
途中、$$P = K \Sigma^\gamma$$をのように状態方程式はポリトロープであるとし、さらにエンタルピー$$h$$を

$$
h 
\equiv \int \frac{dP}{\Sigma (P)} 
\underbrace{=}_{dP = K\gamma \Sigma^{\gamma -1} d\Sigma} K \gamma \int \Sigma^{\gamma -2} d\Sigma 
= \frac{K\gamma}{\gamma -1} \Sigma^{\gamma -1} \tag{6}
$$

のように定義しました。
同様に$$\varphi$$成分は

$$
\frac{\partial v_\varphi}{\partial t} + v_R \frac{\partial v_\varphi}{\partial R} + \frac{v_\varphi}{R} \frac{\partial v_\varphi}{\partial \varphi} + \frac{v_R v_\varphi}{R} 
= - \frac{1}{R} \frac{\partial \Phi}{\partial \varphi} - \frac{1}{\Sigma R} \frac{\partial P}{\partial \varphi} 
= - \frac{1}{R} \frac{\partial}{\partial \varphi} (\Phi + h) \tag{7}
$$

です。
さらに銀河円盤が無限に薄いと仮定すると、ポアソン方程式から

$$
\nabla^2 \Phi 
= 4\pi G \Sigma \delta(z) \tag{8}
$$

の関係が成り立ちます。  
ここで定常軸対称な平衡状態を0次とし、そこに摂動を加えた場合の応答を考えましょう。
定常軸対称より＄$$\frac{\partial}{\partial t} = \frac{\partial}{\partial \varphi} =0$$のように考えることができます。
そしてこの平衡状態では、簡単のため円運動$$v_R =0$$であるとします。
平衡状態の物理量には0の添え字をつけることにすると、(5), (6), (8)式より

$$
-\frac{v_\varphi^2}{R} 
= -\frac{\partial}{\partial R} (\Phi_0 + h_0) \tag{9}
$$

$$
h_0 
= \frac{K\gamma}{\gamma -1} \Sigma_0^{\gamma -1} \tag{10}
$$

$$
\frac{\partial^2 \Phi_0}{\partial R^2} 
= 4\pi G \Sigma_0 \delta (z) \tag{11}
$$

次に、摂動量に1次の添字をつけることにしましょう。

$$
v_R 
= v_{R, 1} (R, \varphi, t), \quad
v_\varphi 
= v_{\varphi, 0} + v_{\varphi, 1}, \quad
h 
= h_0 + h_1, \quad
\Phi 
= \Phi_0 + \Phi_1, \quad
\Sigma 
= \Sigma_0 + \Sigma_1 \tag{12}
$$

より、(5), (9)式から

$$
\frac{\partial v_{R, 1}}{\partial t} + v_{R, 1} \frac{\partial v_{R, 1}}{\partial R} + \frac{v_{\varphi, 0}+v_{\varphi, 1}}{R} \frac{\partial v_{\varphi, 1}}{\partial \varphi} - \frac{(v_{\varphi, 0} + v_{\varphi, 1})^2}{R} 
= -\frac{\partial}{\partial R} (\Phi_0 + h_0 + \Phi_1 + h_1) 
$$

ですが、摂動量は微小なので、その2乗を無視します。
そして(9)-(11)式より

$$
\frac{\partial v_{R, 1}}{\partial t} + \Omega \frac{\partial v_{\varphi, 1}}{\partial \varphi} - 2\Omega v_{\varphi, 1} 
= - \frac{\partial}{\partial R} (\Phi_1 + h_1) \tag{13}
$$

のように整理されます。
途中、$$\Omega = v_{\varphi, 0} / R$$としました。
同様に(7)式は

$$
\frac{\partial v_{\varphi, 1}}{\partial t} + v_{R, 1} \left\{ \frac{\partial}{\partial R} (R \Omega) + \Omega \right\} + \Omega \frac{\partial v_{\varphi, 1}}{\partial \varphi} 
= - \frac{1}{R} \frac{\partial}{\partial \varphi} (\Phi_1 + h_1) \tag{14}
$$

## 参考文献

[1] [Binney & Tremaine, "Galactic Dynamics: Second Edition"](https://amzn.to/46lnQNv)  
[2] [Bovy, "Dyanmics and Astrophysics of Galxies"](https://galaxiesbook.org/index.html)  
[3] [祖父江義明, 有本信雄, 家正則, "シリーズ現代の天文学5 銀河II"](https://amzn.to/4hYzROm)  

{% include adsense.html %} 
