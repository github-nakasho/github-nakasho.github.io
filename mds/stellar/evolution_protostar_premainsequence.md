---
layout: default
title: 恒星進化についての概説 -原始星、前主系列段階-
parent: 恒星物理学
math: mathjax3
permalink: /stellar/evolution_protostar_premainsequence
nav_order: 6
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

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4535607273&linkId=1cea0e65f198098664e273dc87bb11aa"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4769916434&linkId=bcd899a3fcbddde6902d952cfbcb362d"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254131178&linkId=df352ef9ddcb1ed7bd7daf1d11bb2ff7"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254137796&linkId=fbe4a9946970c35d3676fad8f7c7d872"></iframe>

# 原始星 (Protostars)

分子雲中において、ジーンズ質量程度の質量をもつ塊が重力崩壊を起こし、恒星の形成が始まります。
この過程は力学平衡の崩れから生じるため、自由落下時間スケールで起こります。
この時間スケールは$$1/\sqrt{G\rho}$$で与えられ、密度の高い中心部ほど重力崩壊が速く進みます。
最初に、中心に静水圧平衡となった高温の核が形成されます。
それを原始星と呼びます。
その後も周囲からガスが降着するため、原始星の質量は増加していきます。
この段階では、質量降着に伴う重力エネルギーの開放により、大きなエネルギーが放出されます。
原始星質量を$$M_\ast$$、半径を$$R_\ast$$のときの光度$$L$$は、質量降着率を$$\dot{M}$$と書くと

$$
\begin{align}
L 
&= - \int_\infty^{R_\ast} \frac{GM_\ast \dot{M}}{r^2} dr 
= \frac{GM_\ast \dot{M}}{R_\ast} \notag \\
&\simeq 3 \times 10^2 \left( \frac{M_\ast}{M_\odot} \right) \left( \frac{\dot{M}}{10^{-5} M_\odot \mathrm{yr}^{-1}}\right) \left( \frac{R_\ast}{R_\odot} \right)^{-1} L_\odot \tag{2.2.1}
\end{align}
$$

のように表現されます。
原始星からは大きなエネルギーが放出されますが、原始星周囲にはダスト(固体微粒子)層が存在するため、放出されるエネルギーのほとんど全てが赤外線としてダスト層の外側に出ていきます。
そのため、原始星の観測には赤外線や電波による観測が適しています。
原始星はある時点で強い恒星風を生み出し、周囲のガスやダストを吹き飛ばします。
原始星からの恒星風は、双極流として赤外線および電波で観測されます。
原始星に降り積もるガスは角運動量を持っているため、球対称に降着が起こるのでなく、降着円盤(accretion disk)ができていると想像されます。
そのため、恒星風が円盤と垂直な方向に流出する、双極流となると考えられています。

![](/assets/images/stellar/protostars_01.png)

強い恒星風により、周囲のガス・ダストが吹き飛ばされると、質量降着が停止します。
つまり、全体で静水圧平衡が成り立っている構造に落ち着き、その時点で恒星の質量が決まります。
この段階で星は、可視光で光る前主系列星 (pre-main-sequence star)として現れてきます。

![](/assets/images/stellar/protostars_02.png)

# 前主系列段階 (Pre-main-sequence stage)

前主系列星のHR図上での分布には、左上から右下に走る境界が存在します。
これよりも明るく、表面温度の低い星は存在しないことが知られており、この境界線は星の誕生線 (birthline)と呼ばれています。
原始星への質量降着が具体的にいつ停止するのかは理解されていませんが、誕生線は次のようなモデルで再現することができます。
質量降着率を一定とし、質量降着が長く続くほど質量の大きな原始星に成長していくと仮定しましょう。
質量降着の止まった段階が前主系列星の誕生で、その質量はそれまでに降り積もった質量であるとします。
ある質量降着率を仮定し、質量が増大しつつある原始星のモデル計算を行えば、原始星質量に対してその半径を得ることができます。
その質量と半径の関係は、前主系列星の誕生時のHR上の位置、すなわち誕生線を与えます。

![](/assets/images/stellar/protostars_03.png)

上図の理論的モデルは質量降着率を適切に選択して得られたものです。
1970年代以前は、全ての前主系列星は、内部全体が対流平衡となっている表面温度の低い状態(林フェーズ)から始まると考えられていましたが、質量の大きな恒星は表面温度の高い状態で誕生することが明らかになっています。
さらに上の理論が正しいとすると、質量が$$8 \sim 10 M_\odot$$より大きな星は、その中心で水素がヘリウムに変わる核融合反応が起こるまで質量降着が止まることはありません。
このような恒星の場合、前主系列段階が存在せず、主系列星として誕生します。  
前主系列星は静水圧平衡を保ちながら、ケルビン-ヘルムホルツ時間スケール$$\tau_g (\gg \mathrm{free-fall \ time})$$でゆっくりと重力収縮していきます。
収縮により開放された重力エネルギーの一部が恒星内部の温度を上昇させるのに使われ、残りのエネルギーが恒星の光となります。
前主系列星の比較的小さいものは、T Tauri型星として観測されます。
また質量が比較的大きく$$(2M_\odot \sim 8-10 M_\odot)$$、表面温度が高い天体はHerbig Ae, Be星などと呼ばれます。
これらの前主系列星はclumpy (塊状)な星周物質の降着や、掩蔽などによるものと思われる、さまざまな時間スケールでの変光が観測されています。

## 参考文献

[1] [野本憲一, 佐藤勝彦, 定金晃三, "シリーズ現代の天文学 恒星"](https://amzn.to/3tithNI)  
[2] [Aidelman et al., 2022, "BCD spectrophotometry for massive stars in transition phases"](https://www.aanda.org/articles/aa/full_html/2023/10/aa44938-22/aa44938-22.html)  
[3] [Haemmerlé et al., 2019, "Stellar models and isochrones from low-mass to massive stars including pre-main sequence phase with accretion"](https://www.aanda.org/articles/aa/full_html/2019/04/aa35051-19/aa35051-19.html)  

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4535607273&linkId=1cea0e65f198098664e273dc87bb11aa"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4769916434&linkId=bcd899a3fcbddde6902d952cfbcb362d"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254131178&linkId=df352ef9ddcb1ed7bd7daf1d11bb2ff7"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254137796&linkId=fbe4a9946970c35d3676fad8f7c7d872"></iframe>