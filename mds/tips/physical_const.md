---
layout: default
title: 物理定数
parent: Tips
math: mathjax3
permalink: /tips/physical_const
nav_order: 1
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

# 物理定数

自分が忘れたときのために、物理定数の値をまとめておきます。

```
宇宙物理ではcgs単位系が好んで使用されます。ご注意ください。
```

光速度 $$c: 3.00 \times 10^{10}$$ [cm/s]  
陽子質量 $$m_p: 1.67 \times 10^{-24}$$ [g]  
陽子質量(エネルギー単位) $$m_p c^2: 938$$ [MeV]  
電子質量 $$m_e: 9.11 \times 10^{-28}$$ [g]  
電子質量(エネルギー単位) $$m_e c^2: 511$$ [keV]  
ボルツマン定数 $$k_B: 1.38 \times 10^{-16}$$ [erg/K]  
プランク定数 $$h: 6.63 \times 10^{-27}$$ [erg s]  
万有引力定数 $$G: 6.67 \times 10^{-8}$$ [$${\rm cm}^3/{\rm g}/{\rm s}^2$$]  
太陽質量 $$M_\odot: 2.00 \times 10^{33}$$ [g]  
太陽半径 $$R_\odot: 6.96 \times 10^{10}$$ [cm]  
太陽光度 $$L_\odot: 3.85 \times 10^{33}$$ [erg/s]  
ハッブル定数 $$H_0$$: 67.4 [km/s/Mpc]

# 単位

電子ボルト $$1 {\rm eV}: 1.6 \times 10^{-12}$$ [erg]  
天文単位 $$1 {\rm au}: 1.50 \times 10^{13}$$ [cm]  
パーセク $$1 {\rm pc}: 3.09 \times 10^{18}$$ [cm]  
年 $$1 {\rm yr}: 3.15 \times 10^7$$ [s]

# 覚えておくと便利な典型的スケール

銀河の大きさ: 10 kpc  
銀河の質量: $$10^{12} M_\odot$$  
星間空間温度: $$10^4$$ K  
星間空間の陽子個数密度: $$1 {\rm cm}^{-3}$$  
星間空間の磁場強度: $$1 \mu {\rm G}$$  
銀河団の大きさ: 1 Mpc  
銀河団の質量: $$10^{14}-10^{15} M_\odot$$  
銀河団プラズマ温度: $$10^8$$ K  
銀河団プラズマの陽子個数密度: $$10^{-3} {\rm cm}^{-3}$$  
銀河団磁場強度: $$1 \mu {\rm G}$$  
$$z=0$$での宇宙マイクロ波背景放射(CMB)の温度: $$T_\mathrm{CMB} \sim 2.7 \mathrm{K}$$  
$$z=0$$でのCMB光子の個数密度: $$n_\gamma \sim 412 \mathrm{cm}^{-3}$$  

# 覚えておくと便利な単位変換

## 微細構造定数を用いた変換

$$
\alpha 
\equiv \frac{e^2}{\hbar c} 
\sim \frac{1}{137}
$$

## $$\hbar c$$を用いた変換

$$
\hbar c 
\sim 197 {\rm MeV} \cdot {\rm fm}
$$

ここで1fm=$$10^{-13}$$cmです。

## $$k_B T$$を用いた変換

$$
\frac{k_B T}{1 {\rm eV}} 
\simeq \frac{1.38 \times 10^{-16} \times 11600}{1 {\rm eV}} \left( \frac{T}{11600 {\rm K}}\right)
\simeq \frac{T}{11600 {\rm K}}
$$

1eV$$\sim 10^4$$Kと覚えておくと便利です。

## シュバルツシルト半径を用いた変換

$$
R_g 
= \frac{2GM}{c^2} 
= \frac{2 \times 6.6 \times 10^{-8}}{9 \times 10^{20}} \times 2 \times 10^{33} \left(\frac{M}{1M_\odot} \right) 
\simeq 3\times 10^5 \left(\frac{M}{1M_\odot} \right) \ [{\rm cm}]
$$

$$1M_\odot$$のときのシュバルツシルト半径が3kmと覚えておくと便利です。

{% include adsense.html %}

# 練習問題

上で紹介した変換を用いて、以下の数値のおおよその値を見積もってみましょう。

## 古典電子半径

$$
\frac{e^2}{m_e c^2} 
= \frac{e^2}{\hbar c} \frac{\hbar c}{m_e c^2} 
= \frac{1}{137} \frac{197 {\rm MeV} \ {\rm fm}}{511 {\rm keV}} 
\sim \frac{1}{140} \frac{200 \times 10^3 {\rm fm}}{500} 
\sim \frac{10^3}{350} [{\rm fm}]
\sim 3 [{\rm fm}]
$$

関数電卓を用いて詳細に計算するとおよそ2.82fmとなり、大体の値を求めることができています。

## 相対論的熱力学の取り扱いが必要となる電子気体の温度

ここに電子ガスがあるとします。電子ガスは超高温で、ほとんどの電子が超相対論的速度で運動しているとしましょう。するとエネルギー等分配から

$$
\frac{1}{2} m_e c^2 \simeq k_B T \ \Longrightarrow \ 
\frac{511 \times 10^6 {\rm eV}}{2} \simeq \frac{T}{10^4{\rm K}} {\rm eV} \ \Longrightarrow \ 
T \sim 2.5 \times 10^9 [{\rm K}]
$$

およそ$$10^9$$K以上の温度になると、相対論的熱力学の取り扱いが必要となります。

## 相対論的熱力学の取り扱いが必要となる電子気体の質量密度

電子が1cmの辺の中に$$n$$個整列しているような立方体を考えましょう。電子が占有する長さは$$\Delta x \simeq 1/n$$となります。不確定性原理から

$$
\Delta p \simeq n \hbar
$$

電子の運動が超相対論的であるとすると、$$\Delta p \simeq m_e c$$となります。これらより

$$
n \simeq \frac{m_e c}{\hbar}
= \frac{m_e c^2}{\hbar c} 
\sim \frac{500 {\rm keV}}{200 {\rm MeV} \ {\rm fm}} 
\sim 2.5 \times 10^{10} [/{\rm cm}]
$$

このガスの質量密度を考えます。電子が存在するということは、少なくともそれを放出した陽子が存在するはずです。よってこの系の全質量(質量密度)は

$$
\rho 
\simeq m_p n^3 
\sim 1.6 \times 10^{-24} \times \frac{5^3}{2^3} \times 10^{30} 
\sim 2.5 \times 10^7 [{\rm g/cm}^{-3}]
$$

少しオーダーがズレますが、厳密に考えるとおよそ$$10^6$$程度になると相対論的熱力学の取り扱いが必要となります。

## Event Horizon Telescope の分解能

シュバルツシルト半径$$r_g = \frac{2GM}{c^2}$$を用いて、十分遠く離れた超巨大質量ブラックホール(SMBH)の見かけの大きさとそれを観測したEHTの角度分解能を見積もってみましょう。SMBHが存在することによって見える黒い穴(ブラックホールシャドウ)の大きさは簡単のため$$2 r_g$$とします。

### 天の川銀河中心にあるSMBHの見かけの大きさ

見かけの大きさを$$\Delta \theta$$、SMBHまでの距離を$$D$$と置きます。これらは

$$
\Delta \theta D \simeq 2r_g
$$

という関係があります。よって

$$
\Delta \theta \simeq \frac{4G}{c^2} \frac{M}{D}
$$

ここで$$G \sim 6.6 \times 10^{-8} [{\rm cm^{3} g^{-1} s^{-2}}], c \sim 3 \times 10^{10} [{\rm cm s^{-1}}]$$より

$$
\frac{4G}{c^2} \sim \frac{4 \times 6.6 }{9} \times 10^{-28} \sim 3 \times 10^{-28}
$$

さらに太陽質量$$M_\odot \sim 2 \times 10^{33} [{\rm g}], 1[{\rm kpc}] \sim 3 \times 10^{21} [{\rm cm}]$$より

$$
\begin{align}
\Delta \theta 
&\simeq 3 \times 10^{-28} \left( \frac{M}{4 \times 10^6 M_\odot} \right) \left( \frac{D}{8{\rm kpc}} \right)^{-1} 4 \times 10^{6} \times 2 \times 10^{33} \times (8 \times 3 \times 10^{21})^{-1} \notag \\
&\simeq 10^{-10} \left( \frac{M}{4 \times 10^6 M_\odot} \right) \left( \frac{D}{8{\rm kpc}} \right)^{-1} \ [{\rm rad}]
\simeq 2 \times 10^{-5} \left( \frac{M}{4 \times 10^6 M_\odot} \right) \left( \frac{D}{8{\rm kpc}} \right)^{-1} \ ["] \tag{1.1}
\end{align}
$$

ここで$$1[{\rm rad}] = \frac{180}{\pi} [{}^\circ]$$、さらに$$1[{}^\circ] = 3600["]$$であることを用いました。途中で現れた$$4\times 10^6 M_\odot, 8{\rm kpc}$$は、我々の住む天の川銀河中心にいるSMBHの質量と距離です。このことから天の川銀河中心のSMBHを直接撮像したい場合には、$$2\times 10^{-5} "$$よりも小さい角度分解能を持つ必要があります。

### M87中心にあるSMBHの見かけの大きさ

次にM87のSMBHの場合を考えましょう。このとき$$M \sim 6.5 \times 10^{9} M_\odot, D \sim 18 {\rm Mpc}$$を(1.1)式に代入します。

$$
\Delta \theta \sim 2 \times 10^{-5} \left( \frac{6.5 \times 10^9 M_\odot}{4 \times 10^6 M_\odot} \right) \left( \frac{16 {\rm Mpc}}{8{\rm kpc}} \right)^{-1} 
\sim 1.6 \times 10^{-5} \ ["]
$$

この値から、天の川銀河中心にあるSMBHよりも少し小さく見えるくらいであることがわかります。

### M31(アンドロメダ銀河)中心にあるSMBHの見かけの大きさ

M87よりも近くにある、お隣のアンドロメダ銀河の場合はどうでしょうか。$$M \sim 3 \times 10^{7} M_\odot, D \sim 770 {\rm kpc}$$を(1.1)式に代入します。

$$
\Delta \theta \sim 2 \times 10^{-5} \left( \frac{3 \times 10^7 M_\odot}{4 \times 10^6 M_\odot} \right) \left( \frac{770 {\rm kpc}}{8{\rm kpc}} \right)^{-1} 
\sim 1.5 \times 10^{-6} \ ["]
$$

よって、M87中心にあるSMBHよりも一桁小さな大きさであることがわかります。

### なぜM87中心のSMBHが直接撮像観測に選ばれたのか？

上述の簡単な見積もりからでも、M87中心のSMBHよりも天の川銀河中心のそれの方が僅かに大きく見えることがわかりました。ではなぜM87が選ばれたのでしょうか。  
それは天の川銀河中心のSMBH周辺の環境により、M87のそれよりも時間変動が素早いためです。また地球と天の川銀河中心との間にある別の星間ガスが引き起こす電磁波の散乱により、解析と画像化が困難であることが理由として挙げられます。

参考資料: [イベント・ホライズン・テレスコープ よくある質問](https://www.nao.ac.jp/news/sp/20190410-eht/faq.pdf)

{% include adsense.html %}
