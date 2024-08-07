---
layout: default
title: 恒星のスペクトル
parent: 恒星大気の物理学
math: mathjax3
permalink: /atmos/spectrum
nav_order: 3
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

# 1.3 恒星のスペクトル

## スペクトル形成

恒星のスペクトルは、恒星からの光を分光して光の強さを波長(or 振動数)の関数として表現したものです。
色指数よりも正確な表面輝度の情報を持っていることに加えて、恒星大気の元素組成や速度などの情報も持っています。
恒星のスペクトルから有益な情報を取り出すことが、恒星大気の研究の最も重要な目的の一つです。
恒星のスペクトルは連続スペクトル・吸収線・輝線からなります。それぞれがどのように形成されるかを示したのが、下図です。

![スペクトル形成の概略図。](/assets/images/atmos/spectra_formulation.png)

恒星の光球からはほぼ黒体放射の連続スペクトルが放出され、光球よりも温度の低い恒星大気の吸収により吸収線が作られます。
大気で吸収された光はすぐ四方八方に放出されるため、光球からわずかに外れた方向を見ると輝線が観測されます(ただし、輝線の光は非常に弱いので輝線が実際に観測されるのは、恒星の周りに比較的密度の高い星周ガスが存在するときだけです)。

## 恒星のスペクトル型

恒星光球の温度の違いによって連続スペクトルが変わることの他に、吸収線の強さと種類が異なります。よって表面温度の系列として、スペクトル型O, B, A, F, G, K, Mが定められています。
さらに各型は0~9までに細分され、例えばA0, A1, A2, ...のように分類されます。

以下に各スペクトル型とその特製をまとめました。

* O: 最も高温の青白色星でスペクトル線は少ないです。強いHe II吸収線(ときには輝線)を持ちます。He I吸収戦が強くなってきます。
* B: 高温の青白色星です。B2でHe I吸収戦が最も強くなります。H I(バルマー)吸収線が強くなります。
* A: 白っぽい星です。A0でバルマー吸収線が最も強くなります。Ca II吸収戦が強くなります。
* F: 黄白色星です。バルマー吸収線が弱くなると共にCa II吸収線が強くなります。中性金属(Fe I, Cr Iなど)の吸収線が現れます。
* G: 黄色星です。太陽型のスペクトルを持ちます。Ca II吸収戦がさらに強くなります。Fe I やその他の中性金属の吸収線が強くなります。
* K: オレンジ色星です。K0でCa IIのH, K線が最も強くなります。スペクトルは金属の吸収線で覆われます。
* M: 低音の赤色星です。スペクトルには分子吸収帯(特にTiO)が目立ちます。中性金属の吸収線も強いです。

![各スペクトル型における恒星のスペクトル。](/assets/images/atmos/rel_spectrum.png)

吸収線は原子orイオンの、あるエネルギーレベルにある電子が光を吸収してより高いレベルに遷移することによって形成されます。

![水素原子に束縛されている電子のエネルギー遷移。](/assets/images/atmos/lyman_balmer_paschen.png)

量子数$$n$$のエネルギーレベルにある原子(orイオン)の数$$N_n$$は、$$g_n \exp(-\chi_n/(k_B T))$$に比例します。ここで$$g_n$$はエネルギーレベルの統計的重率、$$\chi_n$$はそのエネルギーレベルの励起エネルギー、そして$$k_B$$はボルツマン定数を表します。したがって、2つのエネルギーレベルにある原子の数の比は

$$
\frac{N_n}{N_m} = \frac{g_n}{g_m} \exp \left( -\frac{\Delta \chi}{k_B T}\right), \ \Delta \chi \equiv \chi_n - \chi_m
$$

のように表されます。また、ある種類の原子に対して、エネルギーレベル$$n$$にある原子数の全体に対する比率は

$$
\frac{N_n}{N} 
= \frac{g_n \exp (-\chi_n/(k_B T))}{g_1 + g_2 \exp(-\chi_2/(k_B T)) + \cdots} 
= \frac{g_n}{u(T)} \exp\left(-\frac{\chi_n}{k_B T}\right)
$$

のように表されます。ここで$$u(T) = \sum_i g_i \exp(-\chi_i/(k_B T))$$は分配関数と呼ばれます。  
水素原子の$$n=2$$の主量子数を持つ電子がそれよりも上のエネルギーレベルに遷移する際の吸収によってできるバルマー吸収線はA型の星(表面温度$$\sim 10^4{\rm K}$$)で最も強くなります。その理由は、A型よりも温度が高くなると、電離が進んで中性の水素原子の数が減少するからです。逆に温度が低くなると$$n=2$$のエネルギーレベルにある電子を持つ水素原子が少なくなる($$n=1$$の基底状態に落ちてしまう)ためです。

![どの吸収線がどの温度で強くなるかを表す図。](/assets/images/atmos/absorb_strength.png)

A型星よりも温度の低い(晩期型, Late typeという伝統的な言葉が使われることがあります)星で目立つ吸収線は、一回電離したカルシウムCa IIが$$4000 \unicode{x212B}$$付近に作るK H吸収線です。このK H線はK型の星で最も強くなります。  
またF, G, K型になるにつれて、中性金属(Fe I, Cr Iなど)の吸収線が強くなります。  
M型スペクトルでは分子(特にTiO)が作る吸収バンドが目立ちます。

## 参考文献

[1] [CliffsNotes](https://www.cliffsnotes.com/study-guides/astronomy/observational-properties-of-stars/spectral-types)  

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4535607273&linkId=b5c6d87bee5053e66e1f67aae2658933"></iframe><iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B0856R87K3&linkId=ff4bd53ab264b014984649e016726e99"></iframe><iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B09P7ZBC11&linkId=61b3f219a32f207d2970bf791b0e26b4"></iframe><iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B07MJ9D486&linkId=add924e9b1e61636cbfe3f8da91ea727"></iframe>