---
layout: default
title: リトル・レッド・ドット
parent: コンパクト天体
math: mathjax3
permalink: /compact/little_red_dots
nav_order: 22
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

# リトル・レッド・ドット (Little Red Dots: LRDs)

ここでは、最近観測的に発見されたリトル・レッド・ドット (Little Red Dots: LRDs) についてまとめています。

{: .note}
LRDs の観測と理論についてまだまだ議論されている段階であるため、2026年8月現在の情報であることにご留意ください。今後も進展があれば、随時加筆・修正を行う予定です。

## LRDs の発見とその特徴

後に LRDs と判明する天体を含むサンプルを、別の解釈で報告した論文は多く出版されています。
例えば、[Labbé et al. (2023)](https://www.nature.com/articles/s41586-023-05786-2) は、$$7.4 \leq z \leq 9.1$$ (宇宙誕生後 500-700 Myr) で $$10^{10} M_\odot$$ 以上の恒星質量の大質量銀河の候補を 6 個発見しました。
しかしこの研究は測光データのみを用いたもので、同時期に発表された [Onoue et al. (2023)](https://iopscience.iop.org/article/10.3847/2041-8213/aca9d3) や [Kocevski et al. (2023)](https://iopscience.iop.org/article/10.3847/2041-8213/ace5a0) による分光データを用いた研究では、 $$z \sim 5$$ の AGN であると報告されています。
これらを一つの種族として同定し、LRDs と命名した論文は [Matthee et al. (2024)](https://iopscience.iop.org/article/10.3847/1538-4357/ad2345) です。

![](/assets/images/compact/little_red_dots_01.png)  
[Matthee et al. (2024)](https://iopscience.iop.org/article/10.3847/1538-4357/ad2345) より。
$$z = 4.2 \sim 5.5$$ で同定された 20 個の BL $$\mathrm{H\alpha}$$ エミッター。  

[Matthee et al. (2024)](https://iopscience.iop.org/article/10.3847/1538-4357/ad2345) では、ジェイムズウェッブ宇宙望遠鏡 (JWST) に搭載された NIRCam 装置により、[赤方偏移](/cosmo/redshift)が $$z \approx 4 \sim 6$$ での 広輝線 $$\mathrm{H\alpha}$$ エミッター (BL $$\mathrm{H\alpha}$$ emitter) のスペクトル探査を実施しました。
その[輝線](/atmos/formal_absorption_emission#221-absorption-line-と-emission-line)の広がりから、その線幅を $$1200 \sim 3700 \mathrm{km/s}$$ と見積もるなどしました。

![](/assets/images/compact/little_red_dots_02.png)  
[Matthee et al. (2024)](https://iopscience.iop.org/article/10.3847/1538-4357/ad2345) より。
先ほどの BL $$\mathrm{H\alpha}$$ エミッターを分光したもの。  

ここから、この線幅を作り出すのに必要な超大質量ブラックホール (SMBH) の質量が $$10^7 \sim 10^8 M_\odot$$ であると見積もったのです。
またその大きさが非常にコンパクトであることを示しました。

![](/assets/images/compact/little_red_dots_03.png)  
[Matthee et al. (2024)](https://iopscience.iop.org/article/10.3847/1538-4357/ad2345) より。
高解像度近赤外画像を見ると、特徴的な六角形が見られる。

JWST の主鏡は、六角形の鏡を蜂の巣のように貼り合わせて作られています。
そのため、点広がり関数 (Point Spread Function: PSF) にも六角形の特徴が現れることが知られています。
天体が理想的な点源に近づくほど、この特徴が現れるため、ここから天体がどれくらい小さいかを定性的に判断することができます。  
定量的にそのサイズの上限について算出した論文として、[Furtak et al. (2023)](https://iopscience.iop.org/article/10.3847/1538-4357/acdc9d) が挙げられます (こちらの論文は [Matthee et al. (2024)](https://iopscience.iop.org/article/10.3847/1538-4357/ad2345) より前に発表された論文で、当然ながら LRDs という用語は用いられていません)。
この論文では $$z \sim 7.6$$ にある赤い点源が、[重力レンズ効果](/gr/lensing)により 3 つの像に分離しているのを観測しました。
[重力レンズ効果](/gr/lensing)では、像が分裂するだけでなく、その大きさが拡大される作用もあります。
そして [Furtak et al. (2023)](https://iopscience.iop.org/article/10.3847/1538-4357/acdc9d) では[重力レンズ効果](/gr/lensing)を差し引いた有効半径の上限を、$$r_e \lesssim 35 \mathrm{pc}$$ としました。
LRDs の発見に関する論文は多数発表されており、そのいずれも 100 pc や 300 pc など、非常に小さなものであると結論づけています。  
もう一つ大きな特徴として、LRDs の個数が挙げられます。
$$M_\mathrm{UV} = -21 \sim -18$$ の範囲で、その個数密度がおよそ $$10^{-5} \mathrm{c Mpc}^{-3}$$ と見積もりました。
これはクェーサーの紫外線光度関数から外挿される値より 1 桁大きく、現在の標準宇宙論でのブラックホール成長史では説明できないと騒がれました。  
幅広い周波数でのスペクトルを見ると、LRDs は可視光で赤く、周波数とともに明るさが減少し、UV 側で再び明るくなるような、V 字型の SED となることが知られています ([Setton et al. (2025)](https://iopscience.iop.org/article/10.3847/1538-4357/ae1500) など)。

![](/assets/images/compact/little_red_dots_04.png)  
[Furtak et al. (2025)](https://www.aanda.org/articles/aa/full_html/2025/06/aa54110-25/aa54110-25.html) より。左パネルの $$\lambda_0 = 3645 \mathring{A}$$ で、スペクトルの折れ曲がり (V字) があることがわかる。また右の2つのパネルはそれぞれ $$\mathrm{H\alpha}, \mathrm{H\beta}$$ の輝線部分を拡大したもの。  

この V 字の折り返しは、[バルマー極限 (Balmer limit: バルマー系列の短波長側の極限で束縛-自由遷移と束縛-束縛遷移が切り替わる周波数のこと)](/atmos/spectrum#恒星のスペクトル型) で起こることが知られています。
また LRDs には X 線による放射が付随していません。
[Sacchi & Bogdán (2025)](https://iopscience.iop.org/article/10.3847/2041-8213/adf5c8) では チャンドラ・ディープフィールドに存在する 55 個の LRDs について調査しましたが、その全てで X 線が検出されていないと結論づけました。
これは SMBH における超臨界降着で発生する X 線光度を、説明することができません。
さらに、[Kokubo & Harikane (2025)](https://iopscience.iop.org/article/10.3847/1538-4357/ae119e) では、LRDs には変光が有意に認められないとしています。
[Furtak et al. (2025)](https://www.aanda.org/articles/aa/full_html/2025/06/aa54110-25/aa54110-25.html) では 2.4 年程度の $$\mathrm{H\alpha}, \mathrm{H\beta}$$ の変動を検出しましたが、このような例はほんの少数であり、LRDs には変光がないというのが現在の認識です。

{% include adsense.html %}

## 何が問題か？

### 通常の AGN では説明できない

$$z = 4 \sim 8$$ の高赤方偏移において、100pc 以下のサイズかつ $$10^6 \sim 10^8 M_\odot$$ の質量を持つものといえば、例えば AGN が考えられるでしょう。
V 字型のスペクトルは AGN 周囲にあるダストによる吸収、と理解することができそうです。
しかし、この V 字型のスペクトルの折れ曲がりは[バルマー極限](/atmos/spectrum#恒星のスペクトル型)で起こっており、これはダストによる吸収過程とは相容れません。
そして、もし AGN の連続光が周囲のダストに吸収・再放射される赤化が起こっていると考えると、中間赤外やミリ波などでその対応物が観測されるはずです。
しかし JWST に搭載されている中間赤外観測装置 MIRI では、それが非常に弱いことがわかりました。
[Wang et al. (2025)](https://iopscience.iop.org/article/10.3847/1538-4357/adc1ca) では、$$z \sim 3.1$$ の LRD を発見しました。
そのスペクトルを AGN と銀河を組合せたモデルに当てはめたところ、AGN の兆候が見られるものの、高温のダストトーラスからの放射が欠落していることがわかりました。
LRDs にダストが付随するとしても、これらのダスト放射が低温であると結論づけたのです。
つまり LRDs の名前の元となっている「赤さ」はダスト由来ではなく、その中心天体が元来持つものを反映したもので、その有効温度がおよそ 5000K 程度の光学的に分厚いガスの放射であると示唆しました。  
また X 線の弱さと変動の乏しさも、AGN モデルでは説明できません。
AGN の中心にいる SMBH 周囲には、降着円盤および高温のコロナが存在します。
降着円盤からの光子が高温コロナで[逆コンプトン散乱](/astroelec/inv_compton)を受け、これが X 線放射源となります。
[Inayoshi et al. (2024)](https://arxiv.org/abs/2412.03653v1) では、高密度のコロナに取り囲まれた超臨界降着円盤 ([エディントン降着率](/stellar/radiative_energy_transfer#エディントン光度-eddington-luminosity)を超える質量降着率の降着円盤) の放射スペクトルを研究しました。
降着円盤からの輻射駆動アウトフローによりガスが極方向に運ばれ、効率的に起こる[逆コンプトン散乱](/astroelec/inv_compton)により中程度の光学的厚みの温かい (warm, hot ではない) コロナが形成されるとしたのです。
これにより、従来考えられたものよりもソフトな X 線が発生するとしたのです。
また、超エディントン降着円盤中で光子捕捉 (photon trapping) が起こるため、紫外線や可視光帯域での変光が抑制されることも示唆しました。
X 線の弱さと変光の乏しさの 2 つを説明する魅力的なモデルですが、[Sacchi & Bogán (2025)](https://iopscience.iop.org/article/10.3847/2041-8213/adf5c8) で報告された厳しい X 線スペクトルの上限により、棄却されています。

### 通常の恒星系では説明できない

[バルマーブレイク (バルマー極限で起こるスペクトルの段差、バルマージャンプとも呼ばれる)](/atmos/spectrum#恒星のスペクトル型) 自体は珍しいことではなく、これは恒星のスペクトルでも観測されています。
しかし、これではコンパクトさを説明することができません。
LRDs は極端にコンパクトであるため、多数の恒星を小さな領域に閉じ込める必要があります。
このような高密度の恒星系を $$z \gtrsim 4$$ でどのように作るか、という問題が生じます。

### コンパクトな星形成領域では説明できない

極端に狭い領域で現在進行形で星形成が行われている、という描像が考えられます。
しかし、星形成率が大きいと、超新星爆発や輻射圧によるフィードバックが働き、ガスを系の外に吹き飛ばします。
これによりコンパクトさを維持することができなくなるため、このモデルでも LRDs を説明することはできません。

## 有力候補

ここからは、特に進展があった LRDs の候補天体について説明します。
重要なのは、その中心に何が存在するか、そしてそれを取り囲むガスがどのように支えられているか、ということです。

### ブラックホール星 (Black Hole stars: BH*)

降着を起こしている SMBH が、同じく降着により形成された高密度のガスのまゆ (コクーン) に包まれているような天体です。
中心の SMBH への降着で解放されたエネルギーは、このコクーンに吸収・散乱され、再放射されます。
これにより、あたかも低温の恒星大気のような連続光放射が発生します。
この高密度ガスコクーン内にはダストは存在しませんが、自然に LRDs の赤さを説明することができます。

![](/assets/images/compact/little_red_dots_05.png){: width="50%"}  
BH* の概念図。中心部に降着を起こしている BH があり、その周囲を高密度のガスの大気に囲まれている。

BH* では、これまで AGN で考えられてきたドップラー運動による輝線の広がりではなく、輝線はガスの[電子散乱 (トムソン散乱)](/atmos/absorption_line_coeff) により広がりを持ちます。
また Compton-thick (高密度のガスにより X 線が強く吸収・散乱される状態にあること) なコクーンにより、X 線が弱いことも説明できます。  
最近、この理論を裏付ける重要な論文が 2 つ、ネイチャーから出版されました。
[Rusakov et al. (2026)](https://www.nature.com/articles/s41586-025-09900-4) では JWST の観測データから $$\mathrm{H\alpha}$$ の線幅が広いデータを抽出し、それらを詳細に解析しました。
その中には当然 LRDs も含まれています。
そしてこれらの輝線プロファイルが、指数関数型であるとしたのです。

![](/assets/images/compact/little_red_dots_06.png)  
[Rusakov et al. (2026)](https://www.nature.com/articles/s41586-025-09900-4) より。$$\mathrm{H\alpha}$$ 輝線部分を指数関数型とガウシアンでフィットしたもの。両モデルでは P-Cygni プロファイル成分も考慮されている。  

高密度の電離ガス中で起こる[電子散乱](/atmos/absorption_line_coeff)は、同じ指数関数型のプロファイルを作ることが知られています。
一方、ドップラー運動による広がりは、ガウシアンや中心部が広いプロファイルが生まれます。
よって LRDs を含むこの論文で扱われたサンプルでは、高密度電離ガスでの[電子散乱](/atmos/absorption_line_coeff)が有意に起こっていると結論づけたのです。
実際には、[電子散乱](/atmos/absorption_line_coeff)により広がった成分と、狭い幅のコア成分とを重ね合わせることで、これが再現できると示しました。
[電子散乱](/atmos/absorption_line_coeff)の効果を除外して残った輝線のコア部分は、全輝線プロファイルに対する単純なガウシアンフィットより幅がおよそ 10 倍狭くなります。
これにより、推定される BH 質量が 1/100 倍小さくなります。
高赤方偏移での BH 質量の成長やその BH 質量の個数密度の問題を、やわらげる可能性を示したのです。  
[Naidu et al. (2026)](https://www.nature.com/articles/s41586-026-10846-4) では、$$z \sim 7.8$$ にある天体 MoM-BH\*-1 に注目しました。
これを BH* でモデル化したところ、BH* と近傍の伴銀河を重ね合わせることで、LRD を説明できるとしました。
加えて、$$\mathrm{H\beta}$$ 輝線において、二重ピークを発見しました。

![](/assets/images/compact/little_red_dots_07.png)  
[Naidu et al. (2026)](https://www.nature.com/articles/s41586-026-10846-4) より。下段右パネルが $$\mathrm{H\beta}$$ 輝線部分を表し、二重ピークが見られる。  

高密度ガス中において、$$\mathrm{H\beta}$$ 線は共鳴散乱を起こし、このような二重ピークが起こるとしたのです。
この二重ピークを考慮せず、単一ピークの線幅として見てしまうことで、SMBH 質量を過大評価する可能性を示唆しました。  
またこの論文では、MoM-BH*-1 の[バルマーブレイク強度](/atmos/continuous_spectrum#451-balmer-jump)は 7.7 程度であると報告しています。

![](/assets/images/compact/little_red_dots_07_1.png)  
[Naidu et al. (2026)](https://www.nature.com/articles/s41586-026-10846-4) より。右図は MOM-BH*-1・その他の LRDs・典型的な銀河の[バルマーブレイク強度](/atmos/continuous_spectrum#451-balmer-jump)を比較したもの。
点線は、ダストなし恒星集団での最大強度を表示している。  

典型的な 初期質量関数 (IMF) を仮定したダストなしの恒星系では最大でも 3、[バルマーブレイク](/atmos/spectrum#恒星のスペクトル型)が最も強い A 型星のみの極限的な場合でも 5 であり、これらの値を大きく上回ります。
このような理由から、LRDs は通常の恒星では説明できないことも示したのです。

{: .note}
A 型星の有効温度は 8000 - 10000 K とされており、[バルマー系列](/atmos/spectrum#恒星のスペクトル型)を生み出す $$n=2$$ のエネルギー準位の電子が多く存在する環境です。
これより温度が低い F 型星だと、$$n=2$$ への熱励起が減少し、[バルマーブレイク](/atmos/spectrum#恒星のスペクトル型)が弱くなります。
同様にこれより温度が高い O, B 型星では、水素がほぼ電離するようになるため、やはり[バルマーブレイク](/atmos/spectrum#恒星のスペクトル型)が弱くなります。

上述の通り、BH* は様々な LRDs の観測的特徴を説明できており、LRDs を構成する理論として非常に有力視されています。
その理論も現在、精力的に研究されており、様々な論文が出版され続けています (LRDsのコクーン中での散乱過程を調べた [Chang et al. (2026)](https://academic.oup.com/mnras/article/545/4/staf2131/8362050) や、LRDs のコクーン外層をモデル化した [Kido et al. (2025)](https://academic.oup.com/mnras/article/544/4/3407/8314134) など)。

{% include adsense.html %}

### 準恒星 (quasi-stars)

白色矮星が巨星の中心に落ち込むと、明るい巨星になり、中性子星が巨星中心に存在する場合は、[ソーン・ジトコフ天体](/stellar/thorne_zytkow)と呼ばれます。
これらと同じく、コンパクト天体である BH が 恒星中心に存在するような天体を、準恒星と呼びます。
BH* と違うのは、その内部構造です。
準恒星は、最初に恒星があり、その中心部が直接重力崩壊を起こすことで中心部の BH を形成します。
この準恒星は普通の恒星と同様、[対流層](/stellar/convection)を持つとされています。
これにより素早く物質が中心部に運ばれ、BH への超臨界降着が可能となります。

![](/assets/images/compact/little_red_dots_08.png){: width="50%"}  
準恒星の概念図。中心部が直接重力崩壊を起こし、BH とそれに付随した[対流層](/stellar/convection)が形成される。[対流層](/stellar/convection)の厚さは、進化段階によって変化する。  

BH への効率の良い降着は、BH からの効率の良いエネルギー放出を生み出し、これにより恒星全体が支えられながら輝く、という仕組みです。
式を用いて説明すると、降着光度 $$L_0$$ は天体全体の[エディントン限界 $$L_\mathrm{Edd}$$](/stellar/radiative_energy_transfer#エディントン光度-eddington-luminosity) を用いて、次のように表すことができます。

$$
L_0 
= \alpha L_\mathrm{Edd} 
= \alpha \frac{4\pi c GM_\ast}{\kappa} \tag{1}
$$

ここで $$M_\ast$$ は準恒星の全質量であり、中心の BH 質量 $$M_\mathrm{BH}$$ ではないことに注意しましょう。
そして $$\alpha$$ は、磁場や光子捕捉などの降着率を増加・減少させる効果を、無次元の係数として表したものです ([Santarelli et al. (2026)](https://iopscience.iop.org/article/10.3847/2041-8213/ae3713) では $$\alpha = 1$$ としています)。
$$M_\mathrm{BH} \ll M_\ast$$ のとき、$$L_\mathrm{Edd} (M_\ast) \gg L_\mathrm{Edd} (M_\mathrm{BH})$$ であるため、BH は自分自身の[エディントン限界](/stellar/radiative_energy_transfer#エディントン光度-eddington-luminosity)よりも大幅に大きな降着率で降着することが可能となります。
これに対し、先ほどの BH* では[対流層](/stellar/convection)を持たず、また重力が輻射圧に抗って系をきつく束縛しているわけでもないため、超臨界降着を長時間にわたって維持する機構が不明瞭です。  
[通常の恒星では、中心部の境界条件が $$r = 0$$ で $$m = 0, L = 0$$ のように与えれていた](/stellar/model_computation#境界条件)のが、ある有限の半径 $$r = R_\mathrm{in}$$ で $$m(R_\mathrm{in}) = M_\mathrm{BH}, L = L_\mathrm{BH}$$ のように書き換えられることになります。
この境界条件を用いることで、これまでの恒星の進化理論・計算を適用することができます。
[Santarelli et al. (2026)](https://iopscience.iop.org/article/10.3847/2041-8213/ae3713) では MESA 恒星進化計算コードを用い、準恒星の HR 図上の進化経路を辿りました。
すると全ての進化経路で[林トラック](/stellar/evolution_protostar_premainsequence#前主系列段階-pre-main-sequence-stage)を辿ることが示されたのです。

![](/assets/images/compact/little_red_dots_09.png)  
[Santarelli et al. (2026)](https://iopscience.iop.org/article/10.3847/2041-8213/ae3　713) より。左図は、中心の BH 質量を $$10^4 M_\odot, 10^5 M_\odot, 10^6 M_\odot$$ とした場合の、HR 図上での進化経路。右図は中心 BH の時間変化。図中の星マークは、中心 BH の質量が準恒星全体の質量の 10% 程度に達したときを表す。

初期段階では準恒星全体が収縮し、HR 図上を左方向に水平に移動します。
これはケルビン・ヘルムホルツ時間スケールで起こり、0.1 Myr 程度で後期段階に移行します。
後期段階に入ると、大きな降着に伴う大きな光度と、準恒星外層の高い[不透明度](/stellar/opacity)のために、外層で[対流](/stellar/convection)が発生します。
すると準恒星は低い有効温度へと進化し、残りの生涯を[林トラック](/stellar/evolution_protostar_premainsequence#前主系列段階-pre-main-sequence-stage)上で過ごすことになります。
このときの有効温度は 6000K 程度で、LRDs の赤さを説明するのに適した温度となります。

{: .note}
[林トラックは、前主系列星の進化として考えられたもの](/stellar/evolution_protostar_premainsequence#前主系列段階-pre-main-sequence-stage)です。
しかしその本質は、光学的に厚いために放射でなく対流でエネルギーが輸送される状況にある外層の静水圧平衡です。
中心のエネルギー源が核融合反応か、はたまた BH の降着に伴うエネルギー解放かは関係がありません。

BH* の場合、観測で得られるスペクトルは、AGN 連続光が高密度のガスを通過したもの、という解釈で計算されています。
すなわち、AGN 周囲に存在する高密度のガスは熱平衡状態になっておらず、透過してきた光は、光源である中心 BH やその近傍の降着円盤の温度を反映しています。
しかし準恒星は恒星物理の範疇であり、[放射は完全に熱化されている](/atmos/lte#34-local-thermodynamic-equilibrium-lte)と考えられます。
外部に放出される放射は黒体放射 (あるいは黒体を修正したもの) で、BH 質量などの中心の情報を、直接測定することはできません。
[エディントン近似](/atmos/eddington_app)の仮定や、準恒星の安定性から間接的に推定するしかありません。
代わりに、長年培われてきた恒星大気の理論から、そのスペクトルを得ることができます。
中心 BH の質量の違いやより適切な恒星大気モデルを考慮することで、より柔軟に観測を説明することが可能です。
また、このモデルは LRDs の起源だけでなく、同時に初期 SMBH がどのように作られたかという問題も一挙に解決するものとして、注目を集めています。
準恒星は、超大質量星 (SuperMassive Star: SMS) の中心が重力崩壊することで形成されると考えられており、[Begelman et al. (2006)](https://academic.oup.com/mnras/article/370/1/289/1026607), [Begelman et al. (2008)](https://academic.oup.com/mnras/article/387/4/1649/1091917)などで以前から研究されてきました。
さらに、準恒星はその有効温度によって不安定になる領域が存在し、脈動を起こすことも示唆されています ([Cantiello et al. (2026)](https://iopscience.iop.org/article/10.3847/2041-8213/ae4729))。
これにより 10 - 30 年周期の動径方向振動が起こるとされ、LRDs には稀に変光を示すものもあるとする観測結果に合致します。
このような理由から、準恒星モデルも LRD の有力候補として挙げられています。  
しかし、準恒星モデルにも問題が残ります。
実は LRDs にはヘリウム輝線の存在も観測されており、準恒星だけではこれを説明できません。
これを準恒星で説明しようとすると、太陽コロナのように磁場で加熱された高温コロナを考える必要があることが指摘されています ([Takasao & Inayoshi (2026)](https://arxiv.org/abs/2605.21589))。
また、最近では $$z = 1.7$$ という比較的近傍でも LRD が発見されています ([Torralba et al. (2026)](https://iopscience.iop.org/article/10.3847/2041-8213/ae7bfd))。
$$z > 4$$ にある準恒星が $$z = 1.7$$ までの長期間、どのように生き残ってきたのかが問題となっています。

## その他の候補

現在までに考えられているものを、列挙します。
もちろん、ここで触れられていない理論もあるため、ご自身で確認してみるのが良いでしょう。

### 高密度ガスに埋め込まれた AGN ([Inayoshi & Maiolino (2025)](https://iopscience.iop.org/article/10.3847/2041-8213/adaebd))

BH* と同じような枠組みですが、こちらは光球面のような恒星要素を持ちません。
高密度のガス中で起こる[水素原子](/atmos/hydrogen_atom)の衝突励起により、$$n = 2$$ のエネルギー準位占有率が増加します。
これにより[バルマーブレイク](/atmos/spectrum#恒星のスペクトル型)とバルマー吸収を、同時に説明することができます。

### 超臨界降着流そのものが光球を形成しているモデル ([Liu et al. (2025)](https://iopscience.iop.org/article/10.3847/1538-4357/ae0c19))

BH* と準恒星は BH の周囲に構造が存在することを仮定していましたが、こちらもその存在を仮定せず、降着流それ自体が光球面を成しているとするモデルです。

![](/assets/images/compact/little_red_dots_10.png)  
[Liu et al. (2025)](https://iopscience.iop.org/article/10.3847/1538-4357/ae0c19) より。右側の球形モデルでは乱流的に降着が起こっており、これが LRDs を説明できるとした。  

{% include adsense.html %}

### 拡張されたダスト流 ([Li et al. (2025)](https://iopscience.iop.org/article/10.3847/1538-4357/ada5fb))

減光曲線の波長依存性がほとんどないようなダスト減光を、灰色減光 (gray extinction) と呼びます。
小さいダスト粒子の形が欠けていると、減光曲線の波長依存性が弱くなります。
これにより、平坦な紫外線スペクトルを作ることが可能になると主張しました。

### 連星超大質量ブラックホール ([Inayoshi et al. (2026)](https://iopscience.iop.org/article/10.3847/1538-4357/ae548d))

BH がそれぞれ持つ降着円盤 (ミニディスク) と、BH 連星のさらに外側にできる circum-binary disk (連星系の外側に形成される円盤) とを重ね合わせることで、V 字型の SED を説明したモデルです。
連星 BH による重力波の検出可能性についても言及しています。

![](/assets/images/compact/little_red_dots_11.png)  
[Inayoshi et al. (2026)](https://iopscience.iop.org/article/10.3847/1538-4357/ae548d) より。  

### [脈動](/stellar/mira_post_agb#ミラ型脈動と質量放出)する超大質量星 ([Nandal & Loeb (2026)](https://iopscience.iop.org/article/10.3847/1538-4357/ae32f3), [Nandal et al. (2026)](https://iopscience.iop.org/article/10.3847/2041-8213/ae82f3))

$$10^5 M_\odot$$ 程度の質量をもつ pop-III SMS が[脈動](/stellar/mira_post_agb#ミラ型脈動と質量放出)を起こすことで、それに伴って質量放出を行います。
これによりコンパクトなガス殻を形成することができます。
準恒星は中心部に BH が存在しますが、この SMS は BH をまだ持ちません。

![](/assets/images/compact/little_red_dots_12.png)  
[Nandal et al. (2026)](https://iopscience.iop.org/article/10.3847/2041-8213/ae82f3) より。SMS の脈動によりガス殻が形成されている様子。

### 形成途中の[球状星団](/stellar/horizontan_branch#球状星団) ([Chisholm et al. (2026)](https://iopscience.iop.org/article/10.3847/2041-8213/ae6dae))

明るい LRD のスペクトルが、SMS による星団により説明できるとしました。
また LRD が形成途中の[球状星団](/stellar/horizontan_branch#球状星団)であるとしてこれらが進化した場合に、現在の天の川銀河の[球状星団](/stellar/horizontan_branch#球状星団)の質量関数と良い一致も得られたとしています。

![](/assets/images/compact/little_red_dots_13.png)  
[Chisholm et al. (2026)](https://iopscience.iop.org/article/10.3847/2041-8213/ae6dae) より。LRD の $$z = 0$$ での質量関数を青実線で示し、これが近傍宇宙のものとよく一致している。

### 自己相互作用暗黒物質ハローのコア崩壊 ([Jiang et al. (2025)](https://iopscience.iop.org/article/10.3847/2041-8213/ae247a))

自己相互作用暗黒物質 (SIDM) ハローは重力的・熱的に不安定 (gravothermal collapse) であり、これが BH を形成します。
この崩壊が重い種 BH を作り、LRD に進化するというシナリオです。

## 参考文献

[1] [Begelman et al., 2006, "Formation of supermassive black holes by direct collapse in pre-galactic haloes"](https://academic.oup.com/mnras/article/370/1/289/1026607?login=false)  
[2] [Begelman et al., 2008, "Quasi-stars: accreting black holes inside massive envelopes"](https://academic.oup.com/mnras/article/387/4/1649/1091917?login=false)  
[3] [Begelman & Dexter, 2025, "Little Red Dots as Late-stage Quasi-stars"](https://iopscience.iop.org/article/10.3847/1538-4357/ae274a)  
[4] [Cantiello et al., 2026, "Pulsational Instability of Quasi-stars: Interpreting the Variability of Little Red Dots"](https://iopscience.iop.org/article/10.3847/2041-8213/ae4729)  
[5] [Chang et al., 2026, "Impact of resonance, Raman, and Thomson scattering on hydrogen line formation in Little Red Dots"](https://academic.oup.com/mnras/article/545/4/staf2131/8362050?login=false)  
[6] [Chisholm et al., 2026, "Little Red Dots as Globular Clusters in Formation"](https://iopscience.iop.org/article/10.3847/2041-8213/ae6dae)  
[7] [Furtak et al., 2023, "JWST UNCOVER: Extremely Red and Compact Object at zphot ≃ 7.6 Triply Imaged by A2744"](https://iopscience.iop.org/article/10.3847/1538-4357/acdc9d)  
[8] [Furtak et al., 2025, "Investigating photometric and spectroscopic variability in the multiply imaged little red dot A2744-QSO1"](https://www.aanda.org/articles/aa/full_html/2025/06/aa54110-25/aa54110-25.html)  
[9] [Inayoshi et al., 2024, "Weakness of X-rays and Variability in High-redshift AGNs with Super-Eddington Accretion"](https://arxiv.org/abs/2412.03653v1)  
[10] [Inayoshi & Ho, 2025, "A Critical Evaluation of the Physical Nature of the Little Red Dots"](https://arxiv.org/abs/2512.03130)  
[11] [Inayoshi & Maiolino, 2025, "Extremely Dense Gas around Little Red Dots and High-redshift Active Galactic Nuclei: A Nonstellar Origin of the Balmer Break and Absorption Features"](https://iopscience.iop.org/article/10.3847/2041-8213/adaebd)  
[12] [Inayoshi et al., 2026, "The Emergence of Little Red Dots from Binary Massive Black Holes"](https://iopscience.iop.org/article/10.3847/1538-4357/ae548d)  
[13] [Jiang et al., 2025, "Formation of the Little Red Dots from the Core Collapse of Self-interacting Dark Matter Halos"](https://iopscience.iop.org/article/10.3847/2041-8213/ae247a)  
[14] [Kido et al., 2025, "Black hole envelopes in Little Red Dots"](https://academic.oup.com/mnras/article/544/4/3407/8314134?login=false)  
[15] [Kocevski et al., 2023, "Hidden Little Monsters: Spectroscopic Identification of Low-mass, Broad-line AGNs at z > 5 with CEERS"](https://iopscience.iop.org/article/10.3847/2041-8213/ace5a0)  
[16] [Kokubo & Harikane, 2025, "Challenging the Active Galactic Nucleus Scenario for JWST/NIRSpec Little Red Dot and Non–Little Red Dot Broad Hα Emitters in Light of Nondetection of NIRCam Photometric Variability and X-Ray"](https://iopscience.iop.org/article/10.3847/1538-4357/ae119e)  
[17] [Labbé et al., 2023, "A population of red candidate massive galaxies ~600 Myr after the Big Bang"](https://www.nature.com/articles/s41586-023-05786-2)  
[18] [Li et al., 2025, "Little Red Dots: Rapidly Growing Black Holes Reddened by Extended Dusty Flows"](https://iopscience.iop.org/article/10.3847/1538-4357/ada5fb)  
[19] [Liu et al., 2025, "The Balmer Break and Optical Continuum of Little Red Dots from Super-Eddington Accretion"](https://iopscience.iop.org/article/10.3847/1538-4357/ae0c19)  
[20] [Matthee et al., 2024, "Little Red Dots: An Abundant Population of Faint Active Galactic Nuclei at z ∼ 5 Revealed by the EIGER and FRESCO JWST Surveys"](https://iopscience.iop.org/article/10.3847/1538-4357/ad2345)  
[21] [Naidu et al., 2026, "A gas-enshrouded and gas-reddened black hole at cosmic dawn"](https://www.nature.com/articles/s41586-026-10846-4)  
[22] [Nandal et al., 2026, "Pulsational Mass Loss from Supermassive Stars Creates the Compact Shells of Little Red Dots"](https://iopscience.iop.org/article/10.3847/2041-8213/ae82f3)  
[23] [Nandal & Loeb, 2026, "Supermassive Stars Match the Spectral Signatures of JWST’s Little Red Dots"](https://iopscience.iop.org/article/10.3847/1538-4357/ae32f3)  
[24] [Onoue et al., 2023, "A Candidate for the Least-massive Black Hole in the First 1.1 Billion Years of the Universe"](https://iopscience.iop.org/article/10.3847/2041-8213/aca9d3)  
[25] [Rusakov et al., 2026, "Little red dots as young supermassive black holes in dense ionized cocoons"](https://www.nature.com/articles/s41586-025-09900-4)  
[26] [Sacchi & Bogdán, 2025, "Chandra Rules Out Super-Eddington Accretion Models for Little Red Dots"](https://iopscience.iop.org/article/10.3847/2041-8213/adf5c8)  
[27] [Santarelli et al., 2026, "Evolutionary Tracks and Spectral Properties of Quasi-stars and Their Correlation with Little Red Dots"](https://iopscience.iop.org/article/10.3847/2041-8213/ae3713)  
[28] [Setton et al., 2025, "Little Red Dots at an Inflection Point: Ubiquitous V-shaped Turnover Consistently Occurs at the Balmer Limit"](https://iopscience.iop.org/article/10.3847/1538-4357/ae1500)  
[29] [Takasao & Inayoshi, 2026, "A Magnetized Black Hole Envelope Model for Little Red Dots"](https://arxiv.org/abs/2605.21589)  
[30] [Torralba et al., 2026, "A Black Hole Star at Cosmic Noon: Extreme Balmer Break, Photospheric Continuum, and Broad Absorption by Thick Winds in a Little Red Dot at z = 1.7"](https://iopscience.iop.org/article/10.3847/2041-8213/ae7bfd)  
[31] [Vaida & Farber, 2026, "Little red dots: the assembly of early supermassive black holes in the JWST Era"](https://www.frontiersin.org/journals/astronomy-and-space-sciences/articles/10.3389/fspas.2026.1779045/full)  
[32] [Wang et al., 2025, "RUBIES: JWST/NIRSpec Confirmation of an Infrared-luminous, Broad-line Little Red Dot with an Ionized Outflow"](https://iopscience.iop.org/article/10.3847/1538-4357/adc1ca)  
[33] [播金優一, "JWST を使った最遠方銀河探査"](https://www.asj.or.jp/jp/activities/geppou/item/118-3_144r.pdf)  
[34] [sorae, "初期宇宙の「小さな赤い点」の正体は？　分厚いガスに包まれた巨大なブラックホールか"](https://sorae.info/astronomy/20260616-lrd-glimpse-17775.html)  

{% include adsense.html %}