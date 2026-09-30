---
layout: default
title: 磁場なしプラズマ中の電磁波
parent: プラズマ物理学
math: mathjax3
permalink: /plasma/em_waves_with_no_B
nav_order: 14
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

# 磁場なしプラズマ中の電磁波

## 横誘電率の計算

等方的な一様プラズマ中では、波動を縦波と横波に分離できます。
そのため、[ラングミュア波](/plasma/langmuir_landau_damping)や[イオン音波](/plasma/ion_acoustic_wave)では、縦波について考えてきました。
そこで以降では、横波について調べてみましょう。

誘電率と縦誘電率・横誘電率との関係は

$$
\varepsilon_\mathrm{T} (\mathbf{k}, \omega) 
= \frac{1}{2} (\mathrm{Tr} \ \varepsilon - \varepsilon_\mathrm{L}) \tag{1}
$$

にあるのでした。
そして誘電率と縦誘電率はそれぞれ

$$
\varepsilon 
= \left( 1 - \frac{\omega_p^2}{\omega^2} \right) I + \sum_s \frac{4\pi q_s^2}{m_s \omega^2} \int \frac{\mathbf{v} \mathbf{v}}{\omega - \mathbf{k} \cdot \mathbf{v}} (\mathbf{k} \cdot \nabla_v f_{0, s}) d^3 \mathbf{v} \tag{2}
$$

$$
\varepsilon_\mathrm{L}
= \frac{\mathbf{k} \varepsilon \mathbf{k}}{k^2} 
= \left( 1 - \frac{\omega_p^2}{\omega^2} \right) + \sum_s \frac{4\pi q_s^2}{m_s \omega^2} \int \frac{\mathbf{k} \cdot \mathbf{v} \mathbf{v} \cdot \mathbf{k}}{k^2} \frac{\mathbf{k} \cdot \nabla_v f_{0, s}}{\omega - \mathbf{k} \cdot \mathbf{v}} d^3 \mathbf{v}\tag{3}
$$

で与えられることから、横誘電率は

$$
\begin{align}
\varepsilon_\mathrm{T} 
&= \frac{3}{2} \left( 1 - \frac{\omega_p^2}{\omega^2} \right) + \sum_s \frac{2\pi q_s^2}{m_s \omega^2} \int \frac{v_x^2 + v_y^2 + v_z^2}{\omega - \mathbf{k} \cdot \mathbf{v}} (\mathbf{k} \cdot \nabla_v f_{0, s}) d^3 \mathbf{v} \notag \\
& \qquad - \frac{1}{2} \left( 1 - \frac{\omega_p^2}{\omega^2} \right) - \sum_s \frac{2\pi q_s^2}{m_s \omega^2} \frac{\mathbf{k} \cdot \mathbf{v} \mathbf{v} \cdot \mathbf{k}}{k^2} \frac{\mathbf{k} \cdot \nabla_v f_{0, s}}{\omega - \mathbf{k} \cdot \mathbf{v}} d^3 \mathbf{v} \notag \\ 
&= \left( 1 - \frac{\omega_p^2}{\omega^2} \right) + \sum_s \frac{4\pi q_s^2}{m_s \omega^2} \int \frac{1}{2} \left( v^2 - \frac{\mathbf{k} \cdot \mathbf{v} \mathbf{v} \cdot \mathbf{k}}{k^2} \right) \frac{\mathbf{k} \cdot \nabla_v f_{0, s}}{\omega - \mathbf{k} \cdot \mathbf{v}} d^3 \mathbf{v} \tag{4}
\end{align}
$$

となります。
ここで、等方的なプラズマを考えているため、伝播する波の波数ベクトルを $$x$$ 軸の方向にとっても問題はありません。
すると $$\mathbf{k} = k (1, 0, 0)$$ より

$$
\mathbf{v}^2 - \frac{\mathbf{k} \cdot \mathbf{v}\mathbf{v} \cdot \mathbf{k}}{k^2} 
= v_x^2 + v_y^2 + v_z^2 - \frac{v_x^2 k^2}{k^2} 
= v_y^2 + v_z^2 \tag{5}
$$

となります。
そして電子のみからなる 1 成分プラズマを考え、分布関数 $$f_{0, e}$$ にボルツマン分布関数を仮定しましょう。

$$
f_{0, e} 
= \frac{n_0}{(\pi v_e^2)^{3/2}} e^{-\frac{v^2}{v_e^2}} \tag{6}
$$

$$
\mathbf{k} \cdot \nabla_v f_{0, e} 
= k \frac{\partial}{\partial v_x} \frac{n_0}{(\pi v_e^2)^{3/2}} e^{-\frac{v^2}{v_e^2}} 
= \frac{n_0 k}{(\pi v_e^2)^{3/2}} \left( - \frac{2 v_x}{v_e^2}\right) e^{-\frac{v^2}{v_e^2}} \tag{7}
$$

$$
\begin{align}
\varepsilon_\mathrm{T} 
&= \left( 1 - \frac{\omega_{pe}^2}{\omega^2}\right) + \frac{4\pi e^2}{m_e \omega^2} \frac{n_0}{(\pi v_e^2)^{3/2} v_e^2} \int (v_y^2 + v_z^2) \frac{k v_x}{k v_x - \omega} e^{-\frac{v^2}{v_e^2}} d^3 \mathbf{v} \notag \\
&= \left( 1 - \frac{\omega_{pe}^2}{\omega^2}\right) + \frac{\omega_{pe}^2}{\omega^2} \frac{1}{(\pi v_e^2)^{3/2} v_e^2} \int_{-\infty}^\infty \frac{k v_x}{k v_x - \omega} e^{-\frac{v_x^2}{v_e^2}} dv_x \iint_{-\infty}^\infty (v_y^2 + v_z^2) e^{-\frac{v_y^2 + v_z^2}{v_e^2}} dv_y dv_z \tag{8}
\end{align}
$$

途中、[電子プラズマ振動数 $$\omega_{pe} = \sqrt{\frac{4\pi e^2 n_0}{m_e}}$$](/plasma/propagation_cold#分散関係式の導出) を用いました。
$$v_y, v_z$$ の積分部分において、$$v_y = R \cos \varphi, v_z = R \sin \varphi$$ のように変数変換をすると、$$dv_y dv_z = R dR d\varphi$$ のようになります。
また積分範囲は $$v_y, v_z \in [-\infty, \infty]$$ から $$R \in [0, \infty], \varphi \in [0, 2\pi]$$ のようになります。
すると

$$
\begin{align}
(v_y, v_z の積分) 
&= \int_0^\infty R^3 e^{-\frac{R^2}{v_e^2}} dR \int_0^{2\pi} d\varphi 
= - \pi \int_0^\infty R^2 v_e^2 \underbrace{\left( - \frac{2R}{v_e^2} e^{-\frac{R^2}{v_e^2}} \right)}_{=\frac{d}{dR} e^{-\frac{R^2}{v_e^2}}} dR \notag \\
&\underbrace{=}_{部分積分} - \pi v_e^2 \left( \left[ R^2 e^{-\frac{R^2}{v_e^2}}\right]_0^\infty - 2 \int_0^\infty R e^{-\frac{R^2}{v_e^2}} dR \right) 
= - \pi v_e^4 \int_0^\infty \left( - \frac{2R}{v_e^2} \right) e^{-\frac{R^2}{v_e^2}} dR \notag \\
&= - \pi v_e^4 \left[ e^{-\frac{R^2}{v_e^2}} \right]_0^\infty 
= \pi v_e^4 \tag{9}
\end{align}
$$

のように計算されます。
以上より

$$
\begin{align}
\varepsilon_\mathrm{T} 
&= \left( 1 - \frac{\omega_{pe}^2}{\omega^2}\right) + \frac{\omega_{pe}^2}{\omega^2} \frac{1}{\sqrt{\pi} v_e} \int_{-\infty}^\infty \frac{k v_x}{k v_x - \omega} e^{-\frac{v_x^2}{v_e^2}} dv_x \notag \\
&= \left( 1 - \frac{\omega_{pe}^2}{\omega^2}\right) + \frac{\omega_{pe}^2}{\omega^2} \frac{1}{\sqrt{\pi} v_e} \int_{-\infty}^\infty \frac{\frac{v_x}{v_e}}{\frac{v_x}{v_e} - \frac{\omega}{k v_e}} e^{-\frac{v_x^2}{v_e^2}} dv_x \notag \\
&\underbrace{=}_{z = v_x / v_e, \zeta = \omega / k v_e} \left( 1 - \frac{\omega_{pe}^2}{\omega^2}\right) + \frac{\omega_{pe}^2}{\omega^2} \frac{1}{\sqrt{\pi}} \int_{-\infty}^\infty \frac{z}{z - \zeta} e^{-z^2} dz \notag \\
&= \left( 1 - \frac{\omega_{pe}^2}{\omega^2}\right) + \frac{\omega_{pe}^2}{\omega^2} \frac{1}{\sqrt{\pi}} \int_{-\infty}^\infty \left( \frac{z- \zeta}{z - \zeta} + \frac{\zeta}{z - \zeta} \right)e^{-z^2} dz \notag \\
&= \left( 1 - \frac{\omega_{pe}^2}{\omega^2}\right) + \frac{\omega_{pe}^2}{\omega^2} \{1 + \zeta Z(\zeta) \} 
= 1 + \frac{\omega_{pe}^2}{\omega^2} \zeta Z(\zeta) \tag{10}
\end{align}
$$

のように、[プラズマ分散関数 $$Z(\zeta)$$](/math/plasma_dispersion_function)を用いて表現することができます。

## 電磁波

ここで考えている波動は電磁波であるとし、波動の位相速度は電子の熱速度より十分速いとしましょう。
すなわち $$\zeta = \frac{\omega}{k v_e} \gg 1$$ です。
すると[プラズマ分散関数の $$\zeta \gg 1$$ の場合の級数展開](/math/plasma_dispersion_function#級数展開)と、[横波の分散関係式 $$\varepsilon_\mathrm{T} = c^2 k^2 / \omega^2$$](/plasma/kinetic_waves_in_plasma_with_no_B#縦横モードの分離)より

$$
\varepsilon_\mathrm{T} 
\approx 1 + \frac{\omega_{pe}^2}{\omega^2} \zeta \left( i \sigma \sqrt{\pi} e^{-\zeta^2} - \frac{1}{\zeta} \right)
= 1 - \frac{\omega_{pe}^2}{\omega^2} + i \sigma \sqrt{\pi} \frac{\omega_{pe}^2}{\omega^2} \zeta e^{-\zeta^2} 
= \frac{c^2 k^2}{\omega^2} \tag{11}
$$

実部のみを考えると

$$
1 - \frac{\omega_{pe}^2}{\omega^2} - \frac{c^2 k^2}{\omega^2} 
= 0 \ \Longrightarrow \ \omega^2 
= \omega_{pe}^2 + c^2 k^2 \tag{12}
$$

のように、分散関係式を得ることができます。
この式は、[ラングミュア波の分散関係式](/plasma/langmuir_landau_damping#ボームグロスの分散関係式)と良く似た形をしています。
そして、$$\omega_{pe}^2$$ は (変位電流を打ち消すための) 電子の伝導電流による復元力が働いていることを示しています。
真空中の電磁波が、プラズマ中においては変形されることがわかります。  
この分散関係式から、プラズマ中ではある臨界密度よりも低い密度のところでのみ、電磁波の伝搬が可能であることがわかります。
実際、プラズマ中に入射した電磁波の角周波数 $$\omega_0$$ がプラズマ振動数より大きなところで、波数 $$k$$ が実数となる伝搬解が得られます。
逆に $$\omega_0 < \omega_{pe}$$ の角周波数では、波数 $$k$$ が虚数となり、減衰長 $$c / \sqrt{\omega_{pe}^2 - \omega_0^2}$$ をもつ空間的な減衰解となります。
この現象を電磁波のカットオフ (cutoff) と呼びます。
この臨界点では、波数が $$k \rightarrow 0$$ となり、電磁場は時間的には振動しますが、空間的にはあまり変化せず、電磁場は伝搬可能領域に向けて反射されます。
電磁波が $$\omega_0 < \omega_{pe}$$ において減衰する距離の目安 $$c/ \omega_{pe}$$ を表皮長 (skin depth) と呼びます。
波の位相速度については

$$
\frac{\omega}{ck} 
= \sqrt{1 + \frac{\omega_{pe}^2}{c^2 k^2}} \tag{13}
$$

のように、カットオフにおいて位相速度が無限大となります。
電磁波のカットオフは、電離層でのラジオ波の透過・反射、慣性核融合における燃料ペレットへのレーザー光の効率的な照射など、工学分野で重要なものです。

{: .note}
磁場なしプラズマ中の電磁波の伝搬および反射については、プラズマ運動論的な導出だけでなく、マクロな見地から導出することもできます。
詳しくは[こちらのページ](/plasma/propagation_cold)もぜひご覧ください。

## カットオフの応用

### 電離層による電波の反射と月面電波天文台

これまでの説明から、磁場のないプラズマ中では、電磁波が反射される角周波数があることが示されました。
地球大気上空には電離層が存在し、そのプラズマ周波数は 10 MHz とされています。
すなわち、10 MHz 以下の電波が宇宙から飛来しても、電離層で跳ね返されてしまい、地上からは観測することができません。
宇宙の腫れ上がり (再結合期) のあと、初代星が形成されるまでの間、宇宙は暗黒時代を迎えます。
暗黒時代には電離光子が存在せず、宇宙は中性水素で満たされています。
そのため、暗黒時代の構造形成を調べたければ、中性水素から出る放射である 21 cm 線を観測しなければなりません。
21 cm 線は 1420 MHz の周波数ですが、宇宙膨張に伴う赤方偏移により、周波数がさらに下がります。
よってこれを地球上から観測するのは、電離層による電波の反射やその他のノイズにより、困難です。
そこで考えられているのが、電離層のない月面に電波望遠鏡を建設しようという試みです。
アメリカが主導となっている [Lunar Surface Electromagnetics Experiment (LuSEE) - Night](https://arxiv.org/abs/2301.10345) などが計画されいます。

### 金属の光沢

金属中の伝導電子をプラズマのようにモデル化したものを、ドルーデ模型 (Drude model) と呼びます。
一般的な金属の場合、金属のプラズマ周波数は紫外線領域になることが知られています。
鉄などの金属の表面で可視光が反射され、光沢を帯びて見えるのは、電磁波のカットオフによる反射によるものです。

### 大気圏突入時の通信遮断

宇宙船が大気圏に再突入すると、周囲の空気が圧縮され、高温・高密度のプラズマが発生します。
そのプラズマ周波数が通信電波の周波数を超えることで、通信電波のカットオフが起こり、この間は交信ができません。

## 参考文献

[1] [Bale et al., 2023, "LuSEE 'Night': The Lunar Surface Electromagnetics Experiment"](https://arxiv.org/abs/2301.10345)  
[2] [田中基彦, 西川恭治, "高温プラズマの物理学"](https://amzn.to/3PHKTdK)  
[3] [Chen, 内田 岱二郎(訳), "プラズマ物理入門"](https://amzn.to/4akfJ5T)  
[4] [観山正見, 野本憲一, 二間瀬敏史, "天体物理学の基礎 II"](https://link.amazon/B0gEgpr2t)  

{% include adsense.html %}