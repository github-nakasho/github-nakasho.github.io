---
layout: default
title: ミラ型脈動と質量放出、そしてAGB段階後の進化
parent: 恒星物理学
math: mathjax3
permalink: /stellar/mira_post_agb
nav_order: 40
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

# ミラ型脈動と質量放出

AGB星の光度が十分大きくなると、周期が年のオーダーの大振幅の脈動をするミラ型変光星 (Mira-type variables)となります。
次の図はミラ型脈動星モデルの表面近くでの、脈動に伴う変動を表したものです
(この計算の十分内側でサインカーブ的に変動する境界条件を設定しています。対流との相互作用を取り扱うことができないなどの理由で、現在のところこのような恒星の外層全体をself-consistentに扱った計算はまだされていません。)

![](/assets/images/stellar/mira_post_agb_01.png)  
[Höfner & Dorfi (1997)](https://adsabs.harvard.edu/full/1997A%26A...319..648H)より

このように振幅の大きい脈動では、衝撃波が発生します。
それらが外側に伝搬していき、さらに表面から星間空間へと、脈動運動から離脱して伝搬してゆく様子がわかります。  
星の表面から十分離れた (温度が十分低い) 場所では、衝撃波の背後の密度が高くなっているところでダストが形成されます。
輻射をよく吸収散乱するダストには強い輻射圧が働くため、外側に向かって押し出されます。
ガスとダストとの相互作用が強いので、ガスも一緒に外向きに押し出され、恒星風となります。
このように、脈動する赤色超巨星からの質量放出には、脈動とダスト形成とが深く関わっています。
このことは、ダスト形成を考慮した場合としない場合で同じ計算をすると、星から離れた場所でのガスの流出速度が大きく異なることからわかります。

![](/assets/images/stellar/mira_post_agb_02.png)  
[Willson (2000)](https://www.annualreviews.org/content/journals/10.1146/annurev.astro.38.1.573)より

このように、ミラ型変光星になると大きな質量放出が起こります。
その大きさは$$\dot{M} \sim 10^{-4} M_\odot$$にもなります。
この大きな質量放出により、水素を多く含む外層の質量が$$10^{-2} M_\odot$$程度になると、AGB星段階は終わりを迎えます。
そして星の半径が縮み始め、表面温度が上昇し始めます。

# AGB段階後の進化と後期 (最後の) ヘリウムフラッシュ

AGB星は大きな質量放出により、水素を含む外層の質量が$$10^{-2} \sim 10^{-3} M_\odot$$より小さくなると、外層が重力収縮して表面温度が上昇します。
そのため、星はHR図上ほぼ光度を一定に保ちながら、高温側に進化します。
表面温度が数万度になると、水素を電離するのに十分なエネルギーを持つ紫外線をたくさん放出するようになります。
するとAGB段階で放出したガスで、星の周りにまだ存在しているものを電離します。
電離したガスは、再結合の際に蛍光を発し、惑星状星雲として観測されます。
そして星は惑星状星雲中心星となります。
このpost AGB段階の進化につれて、外層質量は恒星風と外層底部で起きている水素燃焼のためにさらに減少し、十分小さくなった段階で水素燃焼は起こらなくなります。
核融合によるエネルギー発生が起こらず、構造が縮退電子で支えられた白色矮星となります。
白色矮星は内部温度が冷えてゆくにつれて暗くなり、表面温度も下がっていきます。
これを白色矮星の冷却進化 (white dwarf cooling evolution)と呼びます。

![](/assets/images/stellar/mira_post_agb_03.png)  
[Iben (1991)](https://ui.adsabs.harvard.edu/abs/1991ApJS...76...55I/abstract)より

AGB段階を終える時点でのヘリウム層の厚さが十分厚い場合、AGB段階以後に、ヘリウム層の収縮によって恩智が上昇し[ヘリウム殻フラッシュ](/stellar/helium_burning_shell)を起こすことがあります。
この現象を、遅れた(最後の)ヘリウムフラッシュと呼びます。
遅れた熱パルス (late thermal pulse)が起こると、外層が薄いために殻フラッシュの影響が表面に大きく現れます。
そして半径が増大し、星は再びAGB星のサイズとなります。
これを再生 (Born again) AGBとよび、この遅れたフラッシュが終了すると、星は再び白色矮星のサイズに戻ります。
しかし再生AGB段階で外層のほとんどの領域が対流層となり、ヘリウム燃焼の生成物が表面にまで達するようになります。
そうして、異常な表面元素組成をもつ星 (PG1159星) となると考えられています。  
この遅れた熱パルス現象を起こしていると考えられている星として、FG Sgeと桜井天体 (V4334 Sgr)が知られています。
これらの恒星は、短い時間スケールで膨張しつつ増光しています。
また表面元素組成の時間変化も観測され、時にはダスト形成による減光も観測されています。

![](/assets/images/stellar/mira_post_agb_04.png)  
[Iben (1991)](https://ui.adsabs.harvard.edu/abs/1991ApJS...76...55I/abstract)より

## PG1159 星

(とても)遅い熱パルスが起こると、フラッシュに伴ってヘリウム層に発生する対流層が、水素を多く含む最外層まで達して水素を取り込んで燃やしてしまいます。
そのためそのような星の表面は、水素がなく、主にヘリウム・炭素、および酸素からなる組成となります。
このような進化を経た星が、遅い熱パルス終了に伴って高温領域に戻ってきたとき、[WC]-PG1159星になると考えられています。
[WC]星とPG1159星は同様の表面元素組成を持ちますが、[WC]星は強い恒星風のために、大質量星のウォルフ・ライエ星と同じく、スペクトルが主に輝線の集まりからなっているのが特徴です。
一方、PG1159星のスペクトルは吸収線からなります。

![](/assets/images/stellar/mira_post_agb_05.png)
![](/assets/images/stellar/mira_post_agb_06.png)
![](/assets/images/stellar/mira_post_agb_07.png)  
[Werner & Herwig (2006)](https://iopscience.iop.org/article/10.1086/500443)より

{% include adsense.html %}

## RCB 星

PG1159 星とは異なる、水素が欠乏している表面元素組成を持つ星に RCB (R Coronae Borealis) 星と Ehe (Extreme Helium) 星に分類される恒星があります。
それらはほとんど水素が存在せず、主にヘリウムからなり、炭素含有量が太陽に比べて多い大気を持ちます。
これらの星は、進化の進んだ星であることは確かですが、どのような進化を経てきた星であるかはまだ明らかにされていません 
(連星系を成していた2つの白色矮星が合体して生成されたというモデルが有力です。)  
RCB星とEhe星とを分ける主な性質の違いは、RCB星がランダムな間隔で時々$$8 \sim 9$$等におよぶ減光を示すことです。
次の図は、RCB星の光度曲線の例です。
時々大きな減光を示し、減光の度合いはその時々で異なることを示しています。

![](/assets/images/stellar/mira_post_agb_08.png)  
[AAVSOウェブサイト](https://www.aavso.org/vsots_rcrb#:~:text=A%20Look%20at%20the%20Light%20Curve&text=R%20CrB%20spends%20most%20of,magnitudes%20in%20a%20few%20weeks.)より

このようなランダムな減光の原因として、星の表面から放出されたガスから星周辺でダストが形成され、星からの光を遮るモデルがもっともらしいと考えられています。
ダストは色々な方向に放出され、たまたま視線方向に放出された時に大きな減光が起こると説明されます。
しかし、なぜ星からある方向にガス(ダスト)が放出されるかは明らかになっていません。
減光の開始が常に脈動(周期$$\sim 40$$日程度)の位相の時に起こるらしいという観測結果もあるため、その星の脈動が何らかの影響を及ぼしているのではないかとも考えられています。

![](/assets/images/stellar/mira_post_agb_09.png)  
[Clayton (1996)](https://ui.adsabs.harvard.edu/abs/1996PASP..108..225C/abstract)より

### 最近の研究: 白色矮星連星合体のシミュレーションとRCB星の起源

RCB星の起源として有力視されている白色矮星連星合体を、高解像度で流体シミュレーションした研究が Shiber et al. (2024)です。
合体前後の数十周に渡り計算を実行し、これらがRCB星の起源になる可能性を調べました。

![](/assets/images/stellar/mira_post_agb_10.png)

具体的には、主星は炭素と酸素を主成分とする白色矮星、伴星はヘリウム白色矮星として、ヘリウム白色矮星が潮汐破壊されて主星に降り注ぐような状況を計算しました。
すると主星の周囲に高温のヘリウム殻が形成され、この殻によるヘリウム燃焼の結果として炭素が生成され、炭素含有量の多い大気を持つRCB星の様子を再現することに成功したのです。

![](/assets/images/stellar/mira_post_agb_11.png)

# 参考文献

[1] [Höfner & Dorfi, 1997, "Dust formation in winds of long-period variables IV. Atmospheric dynamics and mass loss"](https://adsabs.harvard.edu/full/1997A%26A...319..648H)  
[2] [Willson 2000, "Mass Loss from Cool Stars: Impact on the Evolution of Stars and Stellar Populations"](https://www.annualreviews.org/content/journals/10.1146/annurev.astro.38.1.573)  
[3] [Iben, 1991, "Single and Binary Star Evolution"](https://ui.adsabs.harvard.edu/abs/1991ApJS...76...55I/abstract)  
[4] [Werner & Herwig, 2006, "The Elemental Abundances in Bare Planetary Nebula Central Stars and the Shell Burning in AGB Stars"](https://iopscience.iop.org/article/10.1086/500443)  
[5] [Clayton, 1996, "The R Coronae Borealis Stars"](https://iopscience.iop.org/article/10.1086/133715)  
[6] [Shiber et al., 2024, "Hydrodynamic simulations of white dwarf-white dwarf mergers and the origin of R Coronae Borealis stars"](https://academic.oup.com/mnras/article/535/2/1914/7833571)  
[7] [AAVSOウェブサイト](https://www.aavso.org/vsots_rcrb#:~:text=A%20Look%20at%20the%20Light%20Curve&text=R%20CrB%20spends%20most%20of,magnitudes%20in%20a%20few%20weeks.)  
[8] [Kippenhahn, Weigert & Weiss, "Stellar Structure and Evolution"](https://amzn.to/43pXiva)  
[9] [野本憲一, 定金晃三, 佐藤勝彦, "恒星"](https://amzn.to/4kHBvFv)  

{% include adsense.html %}