---
layout: default
title: 大質量星の進化
parent: 恒星進化についての概説
grand_parent: 恒星物理学
math: mathjax3
permalink: /stellar/evolution_massive
nav_order: 5
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

# 質量が非常に大きな恒星 $$(M \gtrsim 40 M_\odot)$$ の進化

## 恒星風の影響と Wolf-Rayet 星

O 型の主系列星以上の表面温度と明るさを持つ恒星では、輻射の力により表面近くのガスが吹き飛ばされる恒星風の勢力が強くなってきます。
恒星風の存在は、そのスペクトル線において短波長側が吸収線・長波長側が輝線、という P Cygni プロファイルと呼ばれる特徴的な形態を持つことが知られています。  

![](/assets/images/stellar/evolution_massive_01.png)  
["Stellar Atmospheres"](https://link.amazon/B0htfPVhx) より。P Cygni プロファイルの例。$$\lambda = 1176, 1239 \mathring{A}$$ の部分に、顕著な P Cygni プロファイルが見られる。  

この場合、主系列進化の間に失う質量が、初期質量に比べて無視できないほどになります。
特に、強い恒星風の特徴を示す O 型星を、Of 型星と記載します。
このような星では進化が進むにつれて外層を失っていき、水素が全てヘリウムに変わってしまっている部分が表面に露出しているような、Wolf-Rayet (WR) 星へと進化していきます。
しかし、このような恒星風による質量放出率を定量的に導出できる理論はまだ確立されていないため、進化モデルの計算を行う場合には、経験的な式を用いています。

## 高光度青色変光星

さらに質量が大きな星では、輻射が優勢になりすぎて外層が不安定となり、不規則な変光と噴出現象を起こす高光度青色変光星 (Luminous Blue Variables: LBV) となります。
その代表的な例として、$$\eta \ \mathrm{Car}$$ があります。

![](/assets/images/stellar/luminous_blue_variables_02.png){: width="50%"}  
[NASAのウェブサイト](https://science.nasa.gov/asset/hubble/the-doomed-star-eta-carinae/#:~:text=Estimated%20to%20be%20100%20times,Hubble%20images%20raise%20further%20puzzles.)より  

$$\eta \ \mathrm{Car}$$ は 19 世紀半ばに大噴出を起こし、そのときに放出された物質が写真のような特徴的な形状を形成しています。
LBV の現象の物理機構については、まだ完全には理解されていません。

## V838 Mon

2002 年 1 月、V838 Mon という星が突然増光を開始し、3 度にわたる急激な変化により、9 等も増光したことが発見されました。
増光時のスペクトルには幅広い P Cygni プロファイルが見られ、質量放出があったことを示しています。
また急激に増光した光が、星の周囲の物質に散乱されて私たちに届くことによって起こるライトエコー (light echoes) と呼ばれる珍しい現象も観測されています。

![](/assets/images/stellar/evolution_massive_03.png)  
[Munari et al. (2002)](https://www.aanda.org/articles/aa/abs/2002/26/aaed123/aaed123.html) より。横軸は、最初の増光があった 2002 年 1 月 1 日を 0 としている。3 度の増光の様子が伺える。  

![](/assets/images/stellar/evolution_massive_04.png)  
[Munari et al. (2002)](https://www.aanda.org/articles/aa/abs/2002/26/aaed123/aaed123.html) より。V838 Mon の周囲にライトエコーが広がっていく様子を観測したもの。  

V838 Mon と同様に突然増光した恒星に V1309 Sco があります。
V1309 Sco は 2008 年 9 月に突然増光しましたが、OGLE プロジェクトによる 2001 年からの測光データを解析したところ、増光前の前駆体は接触型連星 (contact binary) であることがわかりました。
その軌道周期は 1.4 日と非常に短く、その軌道周期が徐々に短くなっていたことも判明しました。
ついには連星が合体し、巨星内部に小さな伴星が飲み込まれることで、このような増光が発生したと結論づけられたのです ([Tylenda et al. (2011)](https://www.aanda.org/articles/aa/full_html/2011/04/aa16221-10/aa16221-10.html))。
このように恒星合体を経て突如として増光する天体を、高輝度赤色新星 (Luminous Red Nova: LRN) と分類するようになりました。
小さな伴星が共通外層の中心に落ち込むことで、ジェットが発生し、これが急激な光度上昇を説明できるとしています。
実際に、ジェットにより生まれた非対称構造が最近、[Mobeen et al. (2024)](https://www.aanda.org/articles/aa/full_html/2024/06/aa47322-23/aa47322-23.html) で観測されました。

## 参考文献

[1] [Mihalas, "Stellar Atmospheres"](https://link.amazon/B0htfPVhx)  
[2] [Munari et al., 2002, "The mysterious eruption of V838 Mon"](https://www.aanda.org/articles/aa/abs/2002/26/aaed123/aaed123.html)  
[3] [Tylenda et al., 2011, "V1309 Scorpii: merger of a contact binary"](https://www.aanda.org/articles/aa/full_html/2011/04/aa16221-10/aa16221-10.html)  
[4] [Mobeen et al., 2024, "Reconstructing the near- to mid-infrared environment in the stellar merger remnant V838 Monocerotis"](https://www.aanda.org/articles/aa/full_html/2024/06/aa47322-23/aa47322-23.html)  

{% include adsense.html %}