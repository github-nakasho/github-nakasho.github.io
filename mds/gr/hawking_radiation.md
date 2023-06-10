---
layout: default
title: ホーキング放射とブラックホール熱力学
parent: 一般相対性理論
math: mathjax3
permalink: /gr/hawking_radiation
nav_order: 34
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

# ホーキング放射とブラックホール熱力学

実はブラックホールが放射を出しており、真に黒いわけではというのをホーキングが示したのは1974年のことです。
ここでは一般相対論を用いて定量的に、しかしながら場の理論までは持ち出さずに直感的に理解に従って、これを導いてみましょう。

## ホーキング放射とブラックホールの温度

以下では[シュバルツシルトブラックホール](/gr/schwarzschild)について考えます。
[ISCO](/gr/isco)の部分で導出した、粒子のエネルギーと軌道に関する式より

$$
\left( \frac{dr}{d\tau}\right)^2 
= E^2 - \left(1-\frac{r_g}{r} \right) \left(c^2 + \frac{\ell^2}{r^2}\right) \tag{2}
$$

ここで$$\tau$$は固有時間、$$r_g$$はシュバルツシルト半径、そして$$\ell$$は粒子の単位質量あたりの角運動量です。
以降では、簡単のため$$\ell = 0$$と考え、粒子がブラックホールに向かって一直線に落ちていく$$(dr < 0)$$問題設定とします。
すると

$$
d\tau 
= -\frac{dr}{\sqrt{E^2 - (1-r_g/ r)c^2}} \tag{3}
$$

となります。
ここで、(2)式から$$\frac{dr}{d\tau} = 0$$、すなわち$$r$$が一定で、ブラックホールから一定の距離に留まるような粒子について考えましょう。
この粒子のエネルギーは

$$
E = c\sqrt{1-\frac{r_g}{r}} \tag{4}
$$

と直ちに求まります。
さらに$$r=r_g$$の粒子について考え、この粒子の位置が$$r = r_g + \epsilon \quad (\epsilon \ll r_g)$$のように摂動を受けたとします。

```
この摂動の起源は量子的なゆらぎだったりするのですが、ここでは深くは触れません。
```

すると

$$
E 
= c\sqrt{1-\frac{r_g}{r_g + \epsilon}} 
= c\sqrt{1-\frac{1}{1+\epsilon / r_g}} 
\simeq c\sqrt{\frac{\epsilon}{r_g}} \tag{5}
$$

と計算されます。
元々$$r=r_g$$に静止していた粒子が$$\epsilon$$だけ外側に移動したので、この粒子は内側に移動を始めます。
再び$$r=r_g$$に落ちるまでにかかる固有時間$$\Delta \tau$$は、(3)式の積分計算から得ることができます。

$$
\Delta \tau 
= - \int_{r_g + \epsilon}^{r_g} \frac{dr}{c \sqrt{1 - \frac{r_g}{r_g + \epsilon} - \left( 1 - \frac{r_g}{r} \right)}} 
= - \int_{r_g + \epsilon}^{r_g} \frac{dr}{c \sqrt{\frac{r_g}{r} - \frac{r_g}{r_g + \epsilon}}} \tag{6}
$$

$$x = r / r_g$$のように置換を行うと

$$
\begin{align}
\Delta \tau 
&= - \int_{1+\epsilon/r_g}^1 \left( \frac{1}{x} -\frac{1}{1+\epsilon/r_g}\right)^{-1/2} \frac{r_g}{c} dx 
= \frac{r_g}{c} \int_1^{1+\epsilon / r_g} (-2x^2) \frac{d}{dx} \left( \frac{1}{x} -\frac{1}{1+\epsilon/r_g}\right)^{1/2} dx \notag \\
&\underbrace{=}_{部分積分} \frac{r_g}{c} \left[ (-2x^2) \left( \frac{1}{x} -\frac{1}{1+\epsilon/r_g}\right)^{1/2}\right] - \frac{r_g}{c} \int_1^{1+\epsilon/r_g} (-4x) \left( \frac{1}{x} - \frac{1}{1+\epsilon / r_g}\right)^{1/2} dx \tag{7}
\end{align}
$$

$$\epsilon$$の一次までの見るために、最初の項のみを整理すると

$$
\Delta \tau 
\simeq \frac{2r_g}{c} \left( 1 - \frac{1}{1+\epsilon / r_g}\right)^{1/2} 
\simeq \frac{2r_g}{c} \sqrt{\frac{\epsilon}{r_g}} 
= \frac{2 \sqrt{r_g \epsilon}}{c} \tag{8}
$$

と計算されます。
この粒子が落ちるまでの間に、量子的なゆらぎから光子が生成されたとしましょう。
不確定性関係から、この光子のエネルギー$$\mathcal{E}$$と$$\Delta \tau$$の間に$$\mathcal{E} \Delta \tau \simeq \hbar /2$$が成り立ちます。
よって

$$
\mathcal{E} 
\simeq \frac{\hbar c}{4\sqrt{r_g \epsilon}} \tag{9}
$$

を得ます。
しかし光子のエネルギーは、エネルギー保存より粒子の4元運動量と4元速度を用いて

$$
\mathcal{E} 
= - g^{\mu \nu} p_\mu U_\nu \tag{10}
$$

のように計算されるのでした。
ここで$$-U_0 = E = c \sqrt{\epsilon / r_g}$$です。
$$g^{00}$$は[シュバルツシルト計量](/gr/schwarzschild)より

$$
g^{00} 
\underbrace{=}_{r = r_g + \epsilon} \frac{1}{1 - \frac{r_g}{r_g + \epsilon}}
= \frac{1}{1 - \frac{1}{1+\epsilon / r_g}} 
\simeq \frac{1}{1 - \left( 1-\frac{\epsilon}{r_g} \right)}
\simeq \frac{r_g}{\epsilon} \tag{11}
$$

光子が無限遠に到達したときのエネルギーを$$E_\infty$$のように書くと、(8)式と$$cp_0 = E_\infty$$から

$$
\mathcal{E} 
= -\frac{U_0}{c} g^{00} E_\infty \tag{12}
$$

のようになります。
ここでは、粒子の元々の4元速度と4元運動量の空間成分は、半径$$r=r_g$$で一定の場所に留まっていることからゼロとしました。
(9), (11), (12)式より

$$
E_\infty 
\simeq \mathcal{E} \sqrt{\frac{\epsilon}{r_g}}
= \frac{\hbar c^3}{8 G M} \tag{13}
$$

と求まります。
(13)式から、このようなエネルギーを持つ光子がシュバルツシルトブラックホールから放射されていることがわかります。
ではこの放射が黒体であると仮定した場合、この黒体放射を出すブラックホールの温度$$T_H$$はどれほどなのでしょうか。
黒体放射における周波数の最大値において成り立つ式

$$
\frac{h \nu_\mathrm{max}}{k_B T_H} \simeq 2.82 \tag{14}
$$

そして$$E_\infty \simeq h \nu_\mathrm{max}$$と大雑把に考え、(13)式を用いれば

$$
T_H 
\simeq \underbrace{\frac{\pi}{2.82}}_{\sim 1.1} \frac{\hbar c^3}{8 \pi k_B G M} \tag{15}
$$

のように求まります。
実は曲がった時空での場の理論計算などの厳密な計算を行うと、$$T_H = \hbar c^3 / 8\pi k_B GM$$になることが知られています。
これをホーキング温度と呼びます。
この温度は、例えば$$M = M_\odot$$の場合

$$
k_B T_H 
= \frac{1}{4\pi} \underbrace{\hbar c}_{200 \mathrm{MeV \cdot fm}} (3 \mathrm{km})^{-1} \left( \frac{M}{M_\odot}\right)^{-1} 
\simeq 10^{-11} \left( \frac{M}{M_\odot}\right)^{-1} \quad [\mathrm{eV}] \tag{16}
$$

のように、その温度は$$10^{-7}$$Kととても低くなります。
例えば、もし$$10^9$$gの小さいブラックホールが存在したとすれば、(13)式からその温度は$$10^{17}$$Kにも達し、ガンマ線で輝くことになります。
しかしこのような発光現象は、未だ検出されてはいません。
またのそのような低質量のブラックホールの起源については、様々な議論がなされています。
宇宙初期に何らかの物理機構でこのような小粒のブラックホールが生まれるのではないか、とする理論もあります。
このようなブラックホールを原始ブラックホール (Primordial Black Hole: PBH)と呼び、暗黒物質の候補の一つとして考えられています。
またもしPBHが存在し今も宇宙空間に漂っているなら、ホーキング放射以外の様々な天体物理現象を引き起こすのではないかとも言われています。

{% include adsense.html %}

### 定性的な導出

もっと大雑把な導出を考えることができます。
不確定性関係より

$$
\Delta E \Delta t 
\simeq \frac{\hbar}{2} \tag{17}
$$

そしてブラックホールの時間スケールとして、ブラックホール直径を光が横断する時間を考えると

$$
\Delta t 
\simeq \frac{2 r_g}{c} 
= \frac{4GM}{c^3} \tag{18}
$$

ここにエネルギーと温度の関係式

$$
E 
\simeq k_B T \tag{19}
$$

を用います。
このとき、$$\Delta E \simeq E$$のようにさらに大雑把に考えることで

$$
T 
\simeq \frac{\Delta E}{k_B} 
\simeq \frac{\hbar}{2k_B \Delta t} 
\simeq \frac{\hbar c^3}{8k_B G M} \tag{20}
$$

を得ます。
このようなかなり大雑把な導出でも、厳密解と$$1/\pi$$のファクターを除いて一致します。

## ブラックホールの寿命

(13)式を見ればわかるように、ホーキング温度は$$M^{-1}$$に比例します。
黒体放射により、ブラックホールから無限遠に持ち去られる単位時間あたりの全エネルギー(光度)は、シュテファン・ボルツマン則から$$A T_H^4$$に比例します。
ここで$$A$$はブラックホールの表面積です。
ブラックホールの場合、地平面の表面積に相当します。
[カーブラックホールの地平面の面積](/gr/feature_kerr)において$$a \rightarrow 0$$とすれば、それはシュバルツシルトブラックホールの地平面の面積となります。
よって

$$
A 
= 4\pi (r_+(a=0))^2 
= 4\pi r_g^2 
= \frac{16 \pi G^2 M^2}{c^4} \tag{21}
$$

これらより、$$A T_H^4 \propto M^{-2}$$とわかります。
この放射はブラックホールの質量を源にしていることを考えると、大雑把に以下のように考えることができるはずです。

$$
\frac{dM}{dt} 
\simeq M^{-2} \ \Longrightarrow \ 
M^2 dM 
\simeq dt \tag{22}
$$

両辺を積分すれば、おおよそのブラックホールの寿命が

$$
\tau 
\simeq M^3 \tag{23}
$$

のように書けることがわかります。
質量が大きいブラックホールほど寿命が長く、また(14)式からより冷たいことがわかります。
様々な研究から、実はブラックホール質量が$$10^{12}$$kgのとき、その寿命が$$10^{10}$$年、すなわち宇宙年齢程度になるとされています。
これより質量の小さいブラックホールは寿命が宇宙年齢より短いことから、現在まで生き残ることができないと考えられます。

## ブラックホールの熱力学

(21)式より、ブラックホールの面積において

$$
dA 
= \frac{32 \pi G^2 M}{c^4} dM \ \Longrightarrow \ 
dM 
= \frac{c^4}{32\pi G^2 M} dA 
= \frac{\hbar c^3}{8\pi k_B G M} d\left( \frac{c k_B A}{4\hbar G}\right)\tag{24}
$$

のように書くことができます。
両辺に$$c^2$$をかけ、左辺を$$dE \equiv c^2 dM$$、すなわちブラックホールの持つ全エネルギーの変化分としましょう。
するとこの式は

$$
dE = T_H dS_H \tag{25}
$$

のように表記することができます。
ここで

$$
S_H 
= \frac{c^3 k_B A}{4\hbar G} 
= \frac{k_B A}{4 \ell_p^2} \tag{26}
$$

は、ブラックホールのエントロピーと考えることができます。
途中、プランク長$$\ell_p = \sqrt{G\hbar /c^3}$$を用いました。
このようにして、ブラックホールと熱力学を結びつけるような式を導出することができました。  
しかし、これには疑問が残ります。
エントロピーと呼ばれる量である以上、ブラックホールのエントロピーは常に増大していなければなりません。
これまでの議論ではそのような話は出てきませんでしたが、自然界ではこれが成り立っていることをケーススタディから見てみましょう。
ブラックホール連星を考えましょう。
2つのブラックホールの質量はそれぞれ$$M_1, M_2$$、そして表面積はそれぞれ$$A_1, A_2$$とします。
これらが衝突し、1つの大きなブラックホールが形成されたとしましょう。
衝突後に形成されたブラックホールの質量は$$M = M_1 + M_2$$です。
すると(21)式より、衝突後のブラックホールの面積$$A$$は

$$
A 
= \frac{16 \pi G^2 M^2}{c^4} 
= \frac{16 \pi G^2}{c^4} (M_1 + M_2)^2 
\geq \frac{16 \pi G^2}{c^4} (M_1^2 + M_2^2) 
= A_1 + A_2 \tag{27}
$$

のように計算されます。
ここから、ブラックホールの表面積は合体後の方が常に大きく、この系では$$dA \geq 0$$が成り立っていることがわかります。
よって(26)式で表現されるブラックホールのエントロピーは、少なくともこの系では$$dS_H \geq 0$$を満たすことが確かめられました。

## 参考文献

[1] Schutz, "A First Course in General Relativity"  
[2] [本間希樹, 東京大学教養学部 "宇宙科学 II" 講義資料](https://www.miz.nao.ac.jp/staffs/MarekiHonma/lecture/komaba2012-13.pdf)  

{% include adsense.html %}
