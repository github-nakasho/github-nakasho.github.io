# 物理量の大きさ概算

ここでは大雑把な計算から物理量(大きさや質量など)をざっくり見積もる練習を行います。

{% hint style='tip' %}
以下の計算は関数電卓などを用いることなく計算を行っています。詳細な計算とは若干答えが異なることにご注意ください。
{% endhint %}

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
&\simeq 3 \times 10^{-28} \left( \frac{M}{4 \times 10^6 M_\odot} \right) \left( \frac{D}{8{\rm kpc}} \right)^{-1} 4 \times 10^{6} \times 2 \times 10^{33} \times (8 \times 3 \times 10^{21})^{-1} \\
&\simeq 10^{-10} \left( \frac{M}{4 \times 10^6 M_\odot} \right) \left( \frac{D}{8{\rm kpc}} \right)^{-1} \ [{\rm rad}]
\simeq 2 \times 10^{-5} \left( \frac{M}{4 \times 10^6 M_\odot} \right) \left( \frac{D}{8{\rm kpc}} \right)^{-1} \ ["] \tag{1.1}
\end{align}
$$

ここで$$1[{\rm rad}] = \frac{180}{\pi} [{}^\circ]$$、さらに$$1[{}^\circ] = 3600["]$$であることを用いました。途中で現れた$$4\times 10^6 M_\odot, 8{\rm kpc}$$は、我々の住む天の川銀河中心にいるSMBHの質量と距離です。このことから天の川銀河中心のSMBHを直接撮像したい場合には、$$2\times 10^{-5} "$$よりも小さい角度分解能を持つ必要があります。

### M87中心にあるSMBHの見かけの大きさ

次にM87のSMBHの場合を考えましょう。このとき$$M \sim 6.5 \times 10^{9} M_\odot, D \sim 18 {\rm Mpc}$$を代入します。

$$
\Delta \theta \sim 2 \times 10^{-5} \left( \frac{6.5 \times 10^9 M_\odot}{4 \times 10^6 M_\odot} \right) \left( \frac{16 {\rm Mpc}}{8{\rm kpc}} \right)^{-1} 
\sim 1.6 \times 10^{-5} \ ["]
$$

この値から、天の川銀河中心にあるSMBHよりも少し小さく見えるくらいであることがわかります。

### M31(アンドロメダ銀河)中心にあるSMBHの見かけの大きさ

M87よりも近くにある、お隣のアンドロメダ銀河の場合はどうでしょうか。$$M \sim 3 \times 10^{7} M_\odot, D \sim 770 {\rm kpc}$$を代入します。

$$
\Delta \theta \sim 2 \times 10^{-5} \left( \frac{3 \times 10^7 M_\odot}{4 \times 10^6 M_\odot} \right) \left( \frac{770 {\rm kpc}}{8{\rm kpc}} \right)^{-1} 
\sim 1.5 \times 10^{-6} \ ["]
$$

よって、M87中心にあるSMBHよりも一桁小さな大きさであることがわかります。

### なぜM87中心のSMBHが直接撮像観測に選ばれたのか？

上述の簡単な見積もりからでも、M87中心のSMBHよりも天の川銀河中心のそれの方が大きく見えることがわかりました。ではなぜM87が選ばれたのでしょうか。  
それは天の川銀河中心のSMBH周辺の環境により、M87のそれよりも時間変動が素早いためです。また地球と天の川銀河中心との間にある別の星間ガスが引き起こす電磁波の散乱により、解析と画像化が困難であることが理由として挙げられます。

参考資料: [イベント・ホライズン・テレスコープ　よくある質問](https://www.nao.ac.jp/news/sp/20190410-eht/faq.pdf)
