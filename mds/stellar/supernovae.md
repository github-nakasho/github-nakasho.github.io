---
layout: default
title: 超新星
parent: 恒星物理学
math: mathjax3
permalink: /stellar/supernovae
nav_order: 46
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

# 超新星

## 超新星のスペクトルと分類

超新星のスペクトルは、大きく分けてI型とII型に分けられます。
I型超新星は、そのスペクトルに水素の輝線が見られないのに対し、II型超新星のスペクトルには、強い水素輝線が見られます。
I型は、さらにIa, Ib, Icと細分類されています。

![](/assets/images/stellar/supernovae_01.png)

Ia型超新星はあらゆるタイプの銀河に出現しますが、渦巻銀河の渦状腕部分には出現しない傾向があります。
これはIa型超新星にある親星が、(渦状腕部分で)生まれてからIa型超新星になるまでに(1.5Gyr程度)時間がかかるため、それまでに渦状腕部分から出てしまうことを示唆しています。
一方、他のタイプの超新星は楕円銀河には出現せず、渦巻銀河の渦状腕部分に出現する傾向があります。これは、II・Ib・Ic型超新星の親星が生まれてから、数千万年以内に超新星となることを表しています。
Ia型超新星は$$\sim 1.4 M_\odot$$の質量を持つ白色矮星の中心部での、炭素の爆発的燃焼による爆発で発生します。
一方、II・Ib・Ic型超新星は、大質量星 $$(\gtrsim 8 M_\odot)$$の鉄中心核の重力崩壊で中心部に中性子星が形成され、解放された重力エネルギーにより外層が吹き飛ばされる現象です。
Ib・Ic型超新星で水素が観測されない (Ic型のスペクトルにはHeの輝線も見られない)のは、爆発を起こす段階に至るまでに強い恒星風または連星系中での質量交換により、水素を多く含む外層 (およびIc型ではヘリウムを含む層まで)を失ったものと説明されます。  
超新星の初期(~1週間)のスペクトル線は幅が広いことが知られています。
これは高速で飛び散るガスのドップラー効果によるものです。
そしてほとんどの線はP Cygniプロファイルを示しています。
水素輝線が観測されないI型超新星の中で、Ia型超新星のスペクトルは波長$$\sim 6200 \mathring{A}$$のSi IIの深い吸収線を持ちますが、Ib・Ic型には見られません。
Ib型は強いヘリウムのスペクトル線 (He I $$\lambda 5846$$)を持つことが、Ic型と異なる特徴です。  
II型超新星の最大光度付近でのスペクトルは、種族Iの星の通常の元素組成を示します。  
Late-time ($$\gtrsim 4$$ months) スペクトルでのIa型の特徴は、たくさんの鉄輝線が存在することです。
それに対しIb・Ic型では、酸素やCaなどの中質量原子の輝線の存在が特徴です。
この時期、II型超新星のスペクトルには、強い$$\mathrm{H} \alpha$$線が見られます。

![](/assets/images/stellar/supernovae_02.png)  
![](/assets/images/stellar/supernovae_03.png)  
[Filippenko (1997)](https://www.annualreviews.org/content/journals/10.1146/annurev.astro.35.1.309)より  


### 光度曲線 (light curve)

I型超新星の光度曲線 (光度の時間変化を表す曲線) はどれも似ていますが、II型超新星の光度曲線は多様です。
それらは光度曲線の形から、II-L (linear), II-P (plateau) に分類されます。

![](/assets/images/stellar/supernovae_04.png)  
[Branch & Wheeler, "Supernova Explosions"](https://amzn.to/40oTKqr)より  

超新星爆発の膨張は超音速 ($$\sim 10^4 \mathrm{km/s}$$)であるため、衝撃波が内部で発生します。
その衝撃波が表面に現れたとき、爆発による光が初めて発せられます。
衝撃波により高音になった表面の温度は膨張により下がり、光度も減少します。
しかしその後、衝撃波によって高温になったガスのエネルギーが出てくる効果と、爆発的元素合成により作られた$${}^{56} \mathrm{Ni}$$ (半減期 6.1日)の$${}^{56} \mathrm{Co}$$ (半減期 77.3日), $${}^{56} \mathrm{Fe}$$への遷移によるエネルギー発生により、光度が増加し極大となります。
1987年に大マゼラン雲に出現が観測された SN1987A で、衝撃波が表面に現れた後に起こる減光が初めて観測されました (SN1987Aは近代的な観測が始まって以来、初めて近傍で起こった超新星で、ニュートリノ観測や多波長による詳細な観測が行われています。)  
Plateau部分の形成には、水素の再結合が関わっています。
温度が5500K以下になると、水素が再結合し中性になります。
膨張が進むにつれて、この再結合面 (recombination front)は質量に対して中に入っていきます (半径に対しては初期では大きくなります。)
中性水素は透明なので、光球面は再結合面と一致しています。
つまり、この間、有効温度がほぼ一定 (約5500K)に推移し、光度は光球の半径の2乗に比例して変化します。
比較的小さい半径を持つ星が爆発した場合、衝撃波が表面に達してから、再結合の温度になるまでにする膨張が大きいため、断熱膨張によるエネルギーの消費が大きく、plateauは暗くなります。  
Linear部分では、放出されたガス全体が光学的に薄く (星雲)となり、$${}^{56} \mathrm{Co}$$が電子(K殻)捕獲か陽電子放出により半減期 77.3日で$${}^{56} \mathrm{Fe}$$に遷移する際に放出されるγ線により、ガスが温められて光っています。  
II-P型の光度曲線のplateauの継続期間は多様で、また極大光度も多様です。
このことは、II-P超新星となるもとの星の半径が様々であることを反映しているためと考えられています (半径が小さいと膨張にエネルギーが使われるため、極大光度が暗くなります。)
SN1987Aが特別暗いのは、もとの星が青色超巨星であり、赤色超巨星よりも半径が小さかったのが原因と考えられています。  
II-L型超新星は(放出されたガスが少ないか、水素含有量が少ないためplateauが小さい)光度曲線の形は、I型超新星光度曲線に似ています。
その極大光度もほぼ一定ですが、Ia型超新星の極大光度に比べて~2.5等暗い (重力崩壊型超新星では、放出される$${}^{56} \mathrm{Ni}$$がIa型の場合より少ないため)のが特徴です。  
次の図は、SN1987Aのモデルで、中心核が重力崩壊してから3時間経過するまでの有効温度と光度の変化を表します。

![](/assets/images/stellar/supernovae_05.png)  
[Branch & Wheeler, "Supernova Explosions"](https://amzn.to/40oTKqr)より  

衝撃波が表面に達することにより、有効温度と光度がピークになります。
その後、膨張により有効温度は減少し続けます。
一方、光度はほとんど一定となります。  
そして次の図は、SN1987Aの光球面の温度と半径の変化を表したものです。
衝撃波面の通過後、膨張によって温度が下がり、ある程度膨張したあとは、水素再結合によって光球の位置が内側に進みます。
この図のFast, Slowは、再結合面が内側に進む速さがradiative diffusion timescale (放射拡散時間スケール) に比べて速い・遅いと仮定した場合の理論的な光度曲線を表します。  

![](/assets/images/stellar/supernovae_06.png)  
[Branch & Wheeler, "Supernova Explosions"](https://amzn.to/40oTKqr)より  

Ia型超新星の光度曲線は、どれも類似していることが知られています。
波長の長いR, Iバンドでは、Ia型超新星でもかなりの多様性を示すことが知られています。

![](/assets/images/stellar/supernovae_07.png)  
[Filippenko (1997)](https://www.annualreviews.org/content/journals/10.1146/annurev.astro.35.1.309)より  

最近までIa型超新星の極大絶対光度は、どの場合でも一定であると考えられていました。
しかし最近では、減光率にバラツキがあり、速く減光するものほど極大光度が暗い傾向があることが知られています。
減光率は、極大から15日間で減光する等級$$\Delta m_{15}$$で表され、$$\Delta m_{15}$$と最大光度とには、良い相関があります。
この相関を考慮したIa型超新星の最大光度を用いて得られた (Ia型超新星がこれまでに観測された) 系外銀河ままでの距離と後退速度をプロットしたハッブル図 (Hubble diagram)を作成すると、分散の少ない関係が得られ、ハッブル定数が$$67 \mathrm{km/s/Mpc}$$程度となります。

![](/assets/images/stellar/supernovae_08.png)  
![](/assets/images/stellar/supernovae_09.png)  
[Riess et al. (1995)](https://ui.adsabs.harvard.edu/abs/1995ApJ...438L..17R/abstract)より  

### 極超新星 (hypernovae)

超新星爆発の運動エネルギーは、一般に$$\sim 10^{51} \mathrm{erg}$$とされています。
しかし最近になり、その10倍以上のエネルギーを持つ超新星爆発の存在が明らかになりました。
それらは極超新星 (hypernovae)と呼ばれています (代表例: SN1998bw。)
それらの初期スペクトルはIc型のものと似ていますが、スペクトル線幅が非常に大きいことが特徴です。
極大光度は10倍程度明るく、光度曲線は極大付近で平坦となり、また減光がゆっくりとなります。
これらは、主系列時代の質量が数十太陽質量以上の大質量星の最終段階で起こると考えられています。
極超新星には、γ線バースト (GRB) とほとんど同位置・同時刻に観測されているものがあるため、GRBの起源の候補ともなっています。
また非球対称的な爆発で、たまたま軸方向を見ているために明るいという説もあります。

![](/assets/images/stellar/supernovae_10.png)  
![](/assets/images/stellar/supernovae_11.png)  
[Nomoto et al. (2000)](https://arxiv.org/abs/astro-ph/0003077v3)より  

### 対不安定型超新星 (Pair-Instability超新星: PISN)

電子-陽電子対生成による対不安定型超新星 (PISN)は、さらに大きなエネルギーの爆発を起こします。
このタイプの超新星は、質量が$$140 M_\odot$$の大質量星 (酸素中心核の大きさが$$50 M_\odot$$以上)の中心部で、高温$$(T \sim 2 \times 10^9 \mathrm{K})$$かつ比較的低密度$$(\rho < 10^6 \mathrm{g/cm^3})$$の中心核で、光子から電子-陽電子対が生成され、内部エネルギー(圧力)を失い中心核が崩壊します。
それにより高温度に達し、酸素燃焼が爆発的に起こることで全エネルギーが正となり、星は超新星爆発を起こして全てのガスが飛び散ります。  
このような超新星爆発では多く$$(>3M_\odot)$$の$${}^{56} \mathrm{Ni}$$が合成され、鉄の中心核崩壊型の超新星爆発よりも10倍以上明るいことが予想されています。
しかし$$140 M_\odot$$より質量の大きい恒星が現在存在するかどうか不明なため、PISNが観測されるかどうかは疑問視されていました。
ですが最近、有力な候補 SN 2007biが見つかりました。  
この超新星は、スペクトルに水素・ヘリウムのスペクトル線が見られないため、Ic型に分類されます。
モデルとの比較によると、約$$100M_\odot$$のヘリウム中心核が爆発し、$$\sim 5 M_\odot$$の$${}^{56} \mathrm{Ni}$$が合成されたようです。
爆発した恒星の初期質量は$$\sim 200 M_\odot$$であると推測されています (この質量は仮定した質量放出率に依存します。)

![](/assets/images/stellar/supernovae_12.png)  
[Gal-Yam et al. (2009)](https://www.nature.com/articles/nature08579)より  

## 超新星爆発による元素合成

超新星爆発により、ヘリウムより重い元素が作られ、星間空間に放出されます。
放出された物質は星間物質と混合し、それから新しい星が形成されます。
この過程の繰り返しにより、銀河内の重元素量が増加していきます。
これを銀河の化学進化と呼びます。  
Ia型超新星とそれ以外のタイプの超新星では、合成され放出される元素は大きく異なります。
鉄は主にIa型超新星で作られ、酸素・マグネシウム・ネオンなどは主にIa型以外の超新星爆発で作られます。

|元素名|SN I|SN II|
|:--|:--|:--|
|C|0.020|0.067| 
|O|0.130|1.369| 
|Ne|0.004|0.295| 
|Mg|0.016|0.082| 
|Si|0.150|0.052| 
|S|0.083|0.020| 
|Ar|0.018|0.004| 
|Ca|0.015|0.003| 
|Fe|0.742|0.038| 

限界質量に達した白色矮星の爆発によるIa型超新星は、大質量星の鉄の中心核の重力崩壊による超新星に比べ、星が生まれてから超新星になるまで時間がかかります。
よって銀河の星間物質中の鉄の含有量の増加は、酸素・マグネシウムなどの含有量の増加よりも遅れて起こります。
次の図は、我々の銀河系内の小質量星に対する[O/Fe]と[Fe/H]の相関を表しているものです。
小質量星表面の元素組成は、おおよそその星が生まれた時の星間物質の組成を反映しています。
よって、[Fe/H]の値が小さいほど、古い星であることを表しています。
[Fe/H]<-1で[O/Fe]~0.4の一定になっているのは、この間は銀河が形成されて時間が十分に経過していないこと、またIa型超新星は現れず大質量星が起こす超新星による重元素の合成の影響だけを受けているためです。
[Fe/H]>-1で[O/Fe]が減少しているのは、Ia型超新星からの鉄の生成の効果によるものです
(ここで、たとえば[O/Fe]は$$[\mathrm{O/Fe}] = \log_{10} [(N_\mathrm{O}/N_\mathrm{O \odot}) / (N_\mathrm{Fe}/N_\mathrm{Fe \odot})]$$を表しています。)

![](/assets/images/stellar/supernovae_13.png)  
[Yoshii et al. (1996)](https://ui.adsabs.harvard.edu/abs/1996ApJ...462..266Y/abstract)より。横軸は[Fe/H]。  

## 余談: Ia型超新星を用いたハッブル定数の精密検証

先程紹介した[Riess et al. (1995)](https://ui.adsabs.harvard.edu/abs/1995ApJ...438L..17R/abstract)では、ハッブル定数は$$H_0 = 67 \pm 7 \ \mathrm{km/s/Mpc}$$のように求まりました。
そして最近の[Planck衛星](https://www.cosmos.esa.int/web/planck)による宇宙マイクロ波背景放射(CMB)観測からも、その値は$$H_0 = 67.3 \pm 1.2 \ \mathrm{km/s/Mpc}$$と求まりました ([Planck Collaboration (2014)](https://www.aanda.org/articles/aa/abs/2014/11/aa21591-13/aa21591-13.html)。)
しかし、近傍宇宙におけるIa型超新星爆発やセファイド変光星のさらなる観測・データ解析を重ねた結果、$$H_0 \sim 73 \ \mathrm{km/s/Mpc}$$という結果となったのです ([Riess et al. (2022)](https://iopscience.iop.org/article/10.3847/2041-8213/ac5c5b)。)

![](/assets/images/stellar/supernovae_14.png)  
[Riess et al. (2022)](https://iopscience.iop.org/article/10.3847/2041-8213/ac5c5b)より  

この食い違いは以前から知られており、これは Hubble tension (ハッブル定数の緊張)と呼ばれています。

![](/assets/images/stellar/supernovae_15.png)  
[Di Valentino et al. (2021)](https://iopscience.iop.org/article/10.1088/1361-6382/ac086d)より  

$$z \lesssim 0.01$$の近傍宇宙で直接観測されたIa型超新星から求めたものと、$$z \sim 1100$$のCMBから間接的に求められた値の食い違いには、未解明の物理が隠れているのかも知れません。

## 参考文献

[1] [Filippenko, 1997, "Optical Spectra of Supernovae"](https://www.annualreviews.org/content/journals/10.1146/annurev.astro.35.1.309)  
[2] [Riess et al., 1995, "Using Type IA Supernova Light Curve Shapes to Measure the Hubble Constant"](https://ui.adsabs.harvard.edu/abs/1995ApJ...438L..17R/abstract)  
[3] [Nomoto et al., 2000, "The Properties of Hypernovae: SNe Ic 1998bw, 1997ef, and SN IIn 1997cy"](https://arxiv.org/abs/astro-ph/0003077v3)  
[4] [Gal-Yam et al., 2009, "Supernova 2007bi as a pair-instability explosion")](https://www.nature.com/articles/nature08579)  
[5] [Yoshii et al., 1996, "The Lifetime of Type Ia Supernova Progenitors Deduced from the Chemical Evolution in the Solar Neighborhood"](https://ui.adsabs.harvard.edu/abs/1996ApJ...462..266Y/abstract)  
[6] [Planck Collaboration, 2014, "Planck 2013 results. XVI. Cosmological parameters"](https://www.aanda.org/articles/aa/abs/2014/11/aa21591-13/aa21591-13.html)  
[7] [Riess et al., 2022, "A Comprehensive Measurement of the Local Value of the Hubble Constant with $$1 \mathrm{km \ s^{-1} \ Mpc^{-1}}$$ Uncertainty from the Hubble Space Telescope and the SH0ES Team"](https://iopscience.iop.org/article/10.3847/2041-8213/ac5c5b)  
[8] [Di Valentino et al., 2021, "In the realm of the Hubble tension - a review of solutions"](https://iopscience.iop.org/article/10.1088/1361-6382/ac086d)  
[9] [Planck](https://www.cosmos.esa.int/web/planck)  
[10] [Branch & Wheeler, "Supernova Explosions"](https://amzn.to/40oTKqr)  
[11] [Kippenhahn, Weigert & Weiss, "Stellar Structure and Evolution"](https://amzn.to/43pXiva)  
[12] [野本憲一, 定金晃三, 佐藤勝彦, "恒星"](https://amzn.to/4kHBvFv)  

{% include adsense.html %}