---
layout: default
title: 炭素星・s過程・Li生成
parent: 恒星物理学
math: mathjax3
permalink: /stellar/carbon_star_s_process_li_production
nav_order: 39
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

# 炭素星

AGB星内で起こるthird dredge-upにより、酸素よりも炭素の含有量の多い炭素星が作られます。
LMCにある炭素星の光度分布を見ると、$$-6 \lesssim M_\mathrm{bol} \lesssim -4$$となっています。
光度の下限は、third dredge-upが起こるためには、C-Oコアの質量が十分大きく (光度が大きく)、熱パルスが十分強い時に起こることから理解できます。
また光度の上限は、対流層の底での水素燃焼 (hot-bottom burning)に起因するものと考えられています。  
C-Oコアの質量が大きいほど (光度が大きいほど)対流層の底の温度が高くなっているため、CNOサイクルによる水素燃焼率が高く、third dredge-upにより対流層に持ち込まれた$${}^{12} \mathrm{C}$$が$${}^{14} \mathrm{N}$$に変えられてしまうためと考えられています
(酸素も窒素に変えられますが、反応率が小さいので影響は小さい。)
そのような恒星では、$${}^{12} \mathrm{C} / {}^{13} \mathrm{C}$$比が小さくなります。

![](/assets/images/stellar/carbon_star_s_process_li_production_01.png)
[Smith & Lambert (1990)より](https://ui.adsabs.harvard.edu/abs/1990ApJS...72..387S/abstract)

# s過程元素の合成

鉄よりも重い原子核の合成は、主に中性子捕獲反応により起こります (ただしわずかな量のp過程元素も存在し、それらは$$(p, \gamma)$$または$$(\gamma, n)$$により生成されると推測されています。)
中性子捕獲反応には、s過程 (slow process)とr過程 (rapid process)とがあります。
AGB星ではs過程が起こっていることが表面元素組成から知られています (最も決定的な証拠の1つは、半減期 $$2 \times 10^5 \mathrm{yr}$$のテクネシウムがAGB星に観測されたことです。)
s過程では中性子を捕獲してできた原子核が不安定な場合、ベータ崩壊して安定な原子核になってから、次の中性子を捕獲します。
一方、ベータ崩壊する前に次々と中性子を捕獲する場合をr過程と呼び、こちらは超新星爆発に伴って起こると考えられています。
r過程の場合、中性子の照射が続いている期間、原子核はベータ崩壊を起こす暇がなく、$$N$$(中性子数)-$$Z$$(陽子数)の図上で安定な系列からどんどんと離れていきます。
照射が終わった後、ベータ崩壊により安定な原子核になります。
一方s過程では安定な原子核の系列に沿って、重元素が形成されていきます。

![](/assets/images/stellar/carbon_star_s_process_li_production_02.png)  
[Clayton (1968)](https://amzn.to/45BP987)の図を改訂したもの

この図でsのみと書かれたものは、s過程からしか作られない元素を指しています。
またpは、s過程・r過程どちらの合成経路にも入ることなく作られた、レアな陽子過剰元素です。  
一般に、鉄より重い原子核はs過程とr過程の両方で作られますが、$$N-Z$$図の安定核の系列から、neutron-rich (中性子過剰)の側に孤立した安定核はr過程だけで作られます。
またそれらの孤立安定核によりベータ崩壊の経路が遮断されているような原子核は、s過程だけによって作られます。  
s過程で作られる(安定核の系列にある)、質量数$$A$$の原子核の数密度を$$N_A$$、その原子核の中性子捕獲断面積を$$\sigma_A$$、中性子の数密度を$$n_n$$、中性子と原子核の平均相対速度$$v$$のように書きましょう。
質量数$$A$$の原子核は質量数$$A-1$$の原子核が中性子捕獲をして作られ、さらに中性子を捕獲して$$A+1$$の質量数をもつ原子核に変化します。
ここから、$$N_A$$の時間変化は

$$
\frac{dN_A}{dt} 
= \sigma_{A-1} v n_n N_{A-1} - \sigma_A v n_n N_A \tag{1}
$$

のようになります。
初期$$t'=0$$から時刻$$t'=t$$までの中性子の照射量

$$
\tau_n 
= \int_0^t v n_n dt' \tag{2}
$$

を定義すると、(1)式は

$$
\frac{dN_A}{d\tau_n} 
= \sigma_{A-1} N_{A-1} - \sigma_A N_A \tag{3}
$$

となります。
したがって、平衡状態では

$$
\sigma_{A-1} N_{A-1} 
= \sigma_A N_A 
= (定数) \ \Longrightarrow \ 
N_A 
\propto \frac{1}{\sigma_A} \tag{4}
$$

という関係が得られます。
この関係は次の図のように、$$A$$が限られた範囲では近似的に成り立っています。

![](/assets/images/stellar/carbon_star_s_process_li_production_03.png)
[Seeger et al. (1965)](https://adsabs.harvard.edu/full/1965ApJS...11..121S)より。

中性子捕獲断面積は、魔法数と呼ばれる$$N=50, 82, 126$$の場合に極小となっています。
そのためこれに対応して、太陽系の元素組成では、それぞれイットリウムとジルコニウム(Y, Zr)・ランタン (La)・鉛とビスマス(Zn, Bi)の組成がピークとなっています
(中性子過剰な不安定核では、$$N$$が魔法数をとるときの陽子数が安定核の場合に比べて小さいため、r過程のピークはs過程のピークよりも質量数の小さなところに存在ます。)

![](/assets/images/stellar/carbon_star_s_process_li_production_04.png)  
[Dillman et al. (2023)](https://link.springer.com/article/10.1140/epja/s10050-023-01012-9)より。
赤線がs過程元素の組成比を表しており、確かに$$N=50, 82, 126$$のあたりに局所的なピークが見えます。

$${}^{56} \mathrm{Fe}$$を元にして、ある照射量の中性子を当てた場合の組成分布は、太陽系のs過程元素組成分布とは異なる分布となることが知られています。
そのため、太陽系のs過程元素組成分布を説明するためには、照射量の頻度分布

$$
\rho (\tau) d\tau 
= \frac{f N_{56\odot}}{\tau_0} e^{-\tau/ \tau_0} d\tau \tag{5}
$$

を導入する必要があります。
ここで$$\rho (\tau) d\tau$$は、中性子照射が$$(\tau, \tau+d\tau)$$である確率を表します。
実際、AGB星内部における熱パルスでの中性子の照射量の分布は、この形で書けることが知られています。
この場合の中性子源としては

$$
{}^{12} \mathrm{C} (p, \gamma) {}^{13} \mathrm{N} (e^+, \nu) {}^{13} \mathrm{C} (\alpha, n) {}^{16} \mathrm{O}
$$

もしくは

$$
{}^{14} \mathrm{N} (\alpha, \gamma) {}^{18} \mathrm{F} (e^+, \nu) {}^{18} \mathrm{O} (\alpha, \gamma) {}^{22} \mathrm{Ne} (\alpha, n) {}^{25} \mathrm{Mg}
$$

の反応が考えられます。
AGB星の表面元素組成の観測で、s過程元素の超過と$${}^{25} \mathrm{Mg}$$の含有量の相関が見られないことから、前者の反応が有力視されています。　　
またAGB星のs過程元素の超過$$[\mathrm{s/Fe}]$$と$$[{}^{12} \mathrm{C}/\mathrm{Fe}]$$には、次の図のように正の相関があることが知られています。
ここから、s過程元素の合成が熱パルスに付随する現象であることが確認されています。

![](/assets/images/stellar/carbon_star_s_process_li_production_05.png)  
[Smith & Lambert (1986)](https://ui.adsabs.harvard.edu/abs/1986ApJ...311..843S/abstract)より

{% include adsense.html %}

# Li生成

リチウムはとても壊れやすい原子核で、$$\sim 2.5 \times 10^6 \mathrm{K}$$で$${}^{7} \mathrm{Li} (p, \alpha) {}^{4} \mathrm{He}$$の反応でヘリウムに変化します。
そのため、対流外層の底が高音になるとリチウムは破壊されてしまいます。
しかしAGB星には、リチウム含有量が種族Iの星の平均値に比べ、異常に多いものもあります。
このことは、AGB星の中でリチウムが作られて表面に出てきていることを示しています。  
リチウムは水素燃焼のppチェイン反応の中で

$$
{}^{3} \mathrm{He} (\alpha, \gamma) {}^{7} \mathrm{Be} (\mathrm{e}^-, \nu) {}^{7} \mathrm{Li}
$$

によって生成されます。
しかし問題は、このような反応の起こる温度では、できたリチウムはすぐに壊されてしまうことです。  
そこで次のような過程が考えられます。
対流層の底が十分に高温で、ppチェイン反応が起こり (hot-bottom burning)、その中の$${}^{3} \mathrm{He} (\alpha, \gamma) {}^{7} \mathrm{Be}$$反応により$${}^{7} \mathrm{Be}$$が生成されます。
$${}^{7} \mathrm{Be}$$は比較的反応しにくいため、その一部は$${}^{7} \mathrm{Be} (p, \gamma) {}^{8} \mathrm{B}$$または$${}^{7} \mathrm{Be} (\mathrm{e}^-, \nu) {}^{7} \mathrm{Li}$$の反応で壊される前に、対流により温度の低い領域まで運ばれ、そこで後者の反応によりリチウムが作成されます。
対流で物質は常にかき混ぜられているが、混合の時間スケールに比べてリチウムが作られる時間スケールの方が短いと、対流層の中でもリチウム含有量に勾配が作られます。
対流層のそこでは少なくても、表面近くでは非常に多いことが可能となります。

![](/assets/images/stellar/carbon_star_s_process_li_production_06.png)  
[Forestini & Charbonnel (1997)](https://aas.aanda.org/articles/aas/abs/1997/08/ds5232/ds5232.html)より

対流層底の温度が下がるなどの理由で底でのリチウム生成が止まると、混合により対流層の中のリチウムは壊されてしまいます。
表面のリチウム含有量過剰が観測されている星では、現在対流層の底でhot-bottom burningが起きるほど高温になっており、対流層内でリチウムが生成されていることを表しています。
この段階での質量放出により作られたリチウムが外に放出され、星間ガスのリチウム含有量を増加させることが考えられます。  
次の図は、表面元素組成の特徴 (C/O, Li組成比)で分類した長周期変光星の全放射等級 ($$M_\mathrm{bol}$$)と周期の関係を表した図です。
Li-richの星の光度は、AGB星の光度限界よりも暗い星に限られています。
これは、リチウム合成がAGB星で起こっていることを示しています。
またLi-rich星はC/O>1である場合が多いのは、hot-bottom burningにより炭素が窒素に変えられてしまったことを示唆しています。

![](/assets/images/stellar/carbon_star_s_process_li_production_07.png)  
[Smith et al. (1995)](https://adsabs.harvard.edu/full/1995ApJ...441..735S)より

# 参考文献

[1] [Smith & Lambert, 1990, "The Chemical Composition of Red Giants. III. Further CNO Isotopic and s-Process Abundances in Thermally Pulsing Asymptotic Giant Branch Stars"](https://ui.adsabs.harvard.edu/abs/1990ApJS...72..387S/abstract)  
[2] [Seeger et al., 1965, "Nucleosynthesis of Heavy Elements by Neutron Capture"](https://adsabs.harvard.edu/full/1965ApJS...11..121S)  
[3] [Dillmann et al., 2023, "Measuring neutron capture cross sections of radioactive nuclei"](https://link.springer.com/article/10.1140/epja/s10050-023-01012-9)  
[4] [Smith & Lambert, 1986, "The Chemical Composition of Red Giants. II. Helium Burning and the s-Process in the MS and S Stars"](https://ui.adsabs.harvard.edu/abs/1986ApJ...311..843S/abstract)  
[5] [Forestini & Charbonnel, 1997, "Nucleosynthesis of light elements inside thermally pulsing AGB stars"](https://aas.aanda.org/articles/aas/abs/1997/08/ds5232/ds5232.html)  
[6] [Smith et al., 1995, A survey of lithium in the red giants of the magellanic clouds](https://adsabs.harvard.edu/full/1995ApJ...441..735S)  
[7] [Clayton, "Principles of Stellar Evolution and Nucleosynthesis"](https://amzn.to/45BP987)  
[8] [Kippenhahn, Weigert & Weiss, "Stellar Structure and Evolution"](https://amzn.to/43pXiva)  
[9] [野本憲一, 定金晃三, 佐藤勝彦, "恒星"](https://amzn.to/4kHBvFv)  

{% include adsense.html %}