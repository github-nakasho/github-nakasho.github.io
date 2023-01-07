---
layout: default
title: 冷たい等方プラズマ中の電磁波の伝播
parent: プラズマ物理学
math: mathjax3
permalink: /plasma/propagation_cold
nav_order: 4
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

# 冷たい等方プラズマ中の電磁波の伝播

ここでは、(熱運動が無視できるような)冷たい一様等方プラズマ中の電磁波の伝播について考察していきましょう。
宇宙空間のプラズマはほとんどの場合、近接する粒子間のクーロンポテンシャルに比べて、粒子の運動エネルギーの方が圧倒的に大きい状態、すなわち[弱結合プラズマ状態](/plasma/parameter)にあります。
任意の電磁波は、2つの直交する[直線偏光](/astroelec/polarization)に分解することができます。
そこで以下では、一つの方向に直線偏光した電磁波の伝播を考えていきましょう。
系には特徴的な方向が存在しないため、任意の電磁波の伝播は、この結果を重ね合わせることで表現できます。

## 方程式の線形化

電子とイオンの数密度は至る場所で$$n$$で等しくなっており、電気的中性が常に成り立っているものとします。
さらにイオンは電子に比べて非常に重いため、常に静止していると考えて良いものとします。  
このようなプラズマ中を電磁波が伝播する様子を調べましょう。
電磁波が入射する前では、電場・磁場・電子の速度・電流・電荷密度はすべてゼロであるとします。
これらは電磁波が入射したことにより発生する摂動量としてのみ有限値を取ります。
このことから、[マクスウェル方程式](/astroelec/em_energy_momentum)そして電子の運動方程式を摂動量の一次まで展開し、線形化して解いていきます。
線形方程式の解は、一次独立な固有解の重ね合わせで表現できます。
よって、一つのフーリエモードを取り出してその性質を調べていけば、線形方程式の解の振る舞いを調べることとしては十分でしょう。
すなわち

$$
\mathbf{E}, \mathbf{B}, \mathbf{v}, \mathbf{j}
\propto e^{-i(\omega t - \mathbf{k} \cdot \mathbf{r})} \tag{1}
$$

のような形として方程式を解いていきます。

### マクスウェル方程式

[マクスウェル方程式](/astroelec/em_energy_momentum)より

$$
\nabla \cdot \mathbf{E} 
= 4\pi \rho 
\underbrace{=}_{電気的中性条件より} 0\tag{2}
$$

$$
\nabla \cdot \mathbf{B} 
= 0 \tag{3}
$$

$$
\nabla \times \mathbf{E} 
= - \frac{1}{c} \frac{\partial \mathbf{B}}{\partial t} \tag{4}
$$

$$
\nabla \times \mathbf{B} 
= \frac{4\pi}{c} \mathbf{j} + \frac{1}{c} \frac{\partial \mathbf{E}}{\partial t} \tag{5}
$$

です。
ここで電子が運動をすることで発生する電流密度は

$$
\mathbf{j} 
= -en\mathbf{v} \tag{6}
$$

と書かれます。
(1)式より、[マクスウェル方程式](/astroelec/em_energy_momentum)はそれぞれ

$$
\nabla \cdot \mathbf{E} 
= i \mathbf{k} \cdot \mathbf{E}, \quad \nabla \times \mathbf{E} 
= i \mathbf{k} \times \mathbf{E}, \quad \frac{\partial \mathbf{E}}{\partial t} 
= -i\omega \mathbf{E} \tag{7}
$$

などより

$$
i \mathbf{k} \cdot \mathbf{E} 
= 0 \tag{8}
$$

$$
i \mathbf{k} \cdot \mathbf{B} 
= 0 \tag{9}
$$

$$
i \mathbf{k} \times \mathbf{E} 
= \frac{i\omega}{c} \mathbf{B} \tag{10}
$$

$$
i \mathbf{k} \times \mathbf{B} 
= - \frac{4\pi en}{c} \mathbf{v} - \frac{i\omega}{c} \mathbf{E} \tag{11}
$$

となります。

### 電子の運動方程式

次に電子の運動方程式を考えましょう。
電磁波の入射により発生する電子の運動は非相対論的であるとして、ローレンツ力を無視すると、電子の運動方程式から

$$
m_e \frac{d\mathbf{v}}{dt} 
= - e\mathbf{E} \ \Longrightarrow \ 
-im_e\omega \mathbf{v} 
= -e \mathbf{E} \ \Longrightarrow \ 
\mathbf{v} 
= \frac{e}{im_e \omega} \mathbf{E} \tag{12}
$$

を得ます。

## 分散関係式の導出

ここまで得られた結果を用いて$$\mathbf{B}, \mathbf{v}$$を消去し、一つの式にまとめましょう。
(11), (12)式より

$$
i \mathbf{k} \times \mathbf{B} 
= i \frac{4\pi e^2 n}{m_e} \frac{1}{c \omega} \mathbf{E} - \frac{i\omega}{c} \mathbf{E} 
= i \left( \frac{\omega_\mathrm{pe}^2}{c \omega} - \frac{\omega}{c} \right) \mathbf{E}\tag{13}
$$

途中

$$
\omega_\mathrm{pe} 
\equiv \sqrt{\frac{4\pi e^2 n}{m_e}} \tag{14}
$$

を定義しました。
これは電子プラズマ振動数と呼ばれるもので、電磁波の入射により生じた電荷分布の偏りから発生した電場を復元力とする振動の振動数です。
$$\omega_\mathrm{pe}$$は、入射してきた電磁波の振動数には依存せず、プラズマの電子数密度のみに依存することが特徴です。
さらに(10)式より

$$
\mathbf{B} 
= \frac{c}{\omega} \mathbf{k} \times \mathbf{E} \tag{15}
$$

(15)式より、(13)式の左辺は

$$
\frac{ic}{\omega} \mathbf{k} \times (\mathbf{k} \times \mathbf{E}) 
= \frac{ic}{\omega} \{ \underbrace{(\mathbf{k} \cdot \mathbf{E})}_{(8)} \mathbf{k} - (\mathbf{k} \cdot \mathbf{k}) \mathbf{E} \} 
= - \frac{ick^2}{\omega} \mathbf{E} \tag{16}
$$

となります。
以上から

$$
\left( \frac{c}{\omega} k^2 + \frac{\omega_\mathrm{pe}^2}{c\omega} - \frac{\omega}{c} \right) \mathbf{E} 
= \mathbf{0} \tag{17}
$$

$$\mathbf{E} \neq \mathbf{0}$$より、(17)式が恒等的に成り立つには

$$
\frac{c}{\omega} k^2 + \frac{\omega_\mathrm{pe}^2}{c\omega} - \frac{\omega}{c} 
= 0 \ \Longrightarrow \
\omega^2 
= \omega_\mathrm{pe}^2 + c^2 k^2 \tag{18}
$$

である必要があります。
このようにしてプラズマ中を伝播する電磁波の分散関係式を得ることができました。

## 伝播する電磁波の位相速度と進入長

(18)式から、この系を伝播する電磁波の[位相速度](/mhd/sound_wave)を求めてみましょう。

$$
k^2 
= \frac{\omega^2 - \omega_\mathrm{pe}^2}{c^2} 
= \frac{\omega^2}{c^2} \left\{ 1 - \left(\frac{\omega_\mathrm{pe}}{\omega} \right)^2 \right\} \tag{19}
$$

より

$$
v_p 
= \frac{\omega}{k} 
= \frac{c}{\sqrt{1 - \left(\frac{\omega_\mathrm{pe}}{\omega} \right)^2}} 
= \frac{c}{n} \tag{20}
$$

(20)式より、プラズマは屈折率$$n = \sqrt{ 1 - \left(\frac{\omega_\mathrm{pe}}{\omega} \right)^2 }$$の媒質と見ることができます。
この屈折率の表記から、プラズマは屈折率が常に1以下で、位相速度は光速度を超える媒質です。  
$$\omega < \omega_\mathrm{pe}$$の低周波数の場合、$$k$$が虚数になります。
つまりこのような低周波電磁波はプラズマ中を伝播することができず、外部からプラズマに入射する場合には、表面で反射されることになります。
$$\omega \ll \omega_\mathrm{pe}$$のときには

$$
k 
= \frac{i\omega}{c} \sqrt{\left( \frac{\omega_\mathrm{pe}}{\omega}\right)^2 - 1} 
\simeq \frac{i\omega}{c} \frac{\omega_\mathrm{pe}}{\omega} 
= i \frac{\omega_\mathrm{pe}}{c} \tag{21}
$$

から、電磁波は表面から$$c/\omega_\mathrm{pe}$$程度の深さだけ進入して反射されます。
この$$c/\omega_\mathrm{pe}$$を進入長(penetration length)と呼びます。
先程のプラズマ振動数$$\omega_\mathrm{pe}$$が電磁波の振動数に依存しないことからわかるように、プラズマは摂動を与えると固有のプラズマ振動数で振動します。
それよりゆっくり振動することはできず、プラズマ振動数以下の振動数の電磁波はプラズマ中を伝播することができないことを示しています。

![](/assets/images/plasma/propagation_cold_01.png)

例えば、地球高層大気に存在する電離層の電子数密度$$n = 10^5 \mathrm{cm}^{-3}$$を代入すると、プラズマ振動数は3MHz程度になります。
したがって、3MHz以下の低周波電磁波を宇宙に向けて放射すると、電離層の表面で反射されます。
地球の裏側との交信に、この物理現象を利用していたこともあります。

![](/assets/images/plasma/propagation_cold_02.png)

## 分散量度 (Dispersion Measure: DM)

最後に、プラズマ中の電磁波による情報伝搬について議論していきましょう。
先程までは位相速度を考えていましたが、情報伝搬の速度は[群速度](/mhd/sound_wave)で与えられます。
(19)式より

$$
v_g 
= \frac{d\omega}{dk} 
= c \sqrt{1 - \frac{\omega_\mathrm{pe}^2}{\omega^2}} 
\underbrace{\simeq}_{\omega \gg \omega_\mathrm{pe}} c \left( 1- \frac{\omega_\mathrm{pe}^2}{2 \omega^2}\right) < c \tag{22}
$$

を得ます。
ここから、天体から放射されたパルスが観測者に到達するまでにかかる時間$$t_p$$を計算しましょう。
天体から観測者までの距離を$$d$$とすると

$$
t_p 
= \int_0^d \frac{ds}{v_p} 
\simeq \frac{d}{c} + \frac{1}{2c\omega^2} \int_0^d \omega_\mathrm{pe}^2 ds 
= \frac{d}{c} + \frac{2\pi e^2}{m_e c\omega^2} \int_0^d n_e ds \tag{23}
$$

のように計算されます。
第一項の$$d/c$$は距離$$d$$を光の速度で伝搬した場合にかかる時間です。
第二項は電子密度$$n_e$$のプラズマが存在することによるパルスの到達の遅れを表します。
そこで、この部分を以下のように表記しましょう。

$$
\Delta t_p 
= \frac{2\pi e^2}{m_e c \omega^2} \mathrm{DM}
\left( \mathrm{DM} 
\equiv \int_0^d n_e ds \right) \tag{24}
$$

このDMは、宇宙物理研究では通常$$\mathrm{pc} \ \mathrm{cm}^{-2}$$という単位で表され、これを分散量度 (Dispersion Measure: DM)と呼びます。
これは$$1 \mathrm{cm}^{-3}$$のプラズマ中をDM pcだけ伝搬してきたことを表す量です。
プラズマの電子数密度が既知である場合、時間の遅れを測定することでDMを求め、天体までの距離$$d$$の測定を行うことができます。
(24)式から、時間の遅れは電磁波の周波数の2乗に逆比例しています。
これを利用し、複数の周波数でパルス放射の到達時間を測定すれば、DMを測定することが可能です。  
最近、高速電波バースト(Fast Radio Burst: FRB)が多数報告されるようになりました。
この現象の発生原因は未だ解明されていませんが、この電波パルスを用いてDMを測定することで、FRBが発生した周囲のプラズマの情報を得る研究がされています。
FRBが生まれる天体はどのような姿をしているのか、その発生源を探るためにも、その周囲の環境について精査することは非常に重要な研究と位置付けられています。

## プラズマの屈折率に関する話題

星間物質の電子数密度のゆらぎにより、伝播する電磁波の屈折角にもゆらぎが生じます。
天体の大きさが非常に小さい(点源)ときは、天体から異なる方向に放出された光線が観測者の位置で再び交差し、干渉縞を形成します。
この干渉縞中を地球の公転運動などにより地球が運動することで、天体の見かけの明るさが強くなったり弱くなったりして見えることがあります。
この現象をシンチレーション(scintillation, きらめきの意味)と呼びます。
この現象は非常に小さな天体の大きさを制限する方法として有効です。
最近では星間物質のシンチレーションを利用し、γ線バーストの膨張速度や、FRB発生源と周辺物質との相対距離などの情報を得る研究がなされています。

![](/assets/images/plasma/propagation_cold_03.png)

{% include adsense.html %} 

