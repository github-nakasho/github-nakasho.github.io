---
layout: default
title: イオン音波
parent: プラズマ物理学
math: mathjax3
permalink: /plasma/ion_acoustic_wave
nav_order: 13
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

# イオン音波

ここでは、電子とイオンの双方が応答する 2 成分の一様プラズマを考えましょう。
この場合、[電子による高周波のラングミュア波](/plasma/langmuir_landau_damping)に加えて、質量の大きいイオンが静電的に応答するために生じるイオン音波 (ion acoustic wave) が出現します。

## 前提条件

イオン音波が[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)せずに存在するには、次の 2 つを満たす必要があります。

* 波動の位相速度と同じ速度を持つ共鳴粒子の数が少ない (共鳴粒子数が少ないため減衰が強く起こらない)
* 波動の位相速度付近での分布関数の傾きがゼロ (位相速度よりわずかに遅い粒子とわずかに速い粒子が同数ならば減衰と増幅が釣り合う)

よって、波が電子とイオンの両方とあまり強く相互作用しないためには、位相速度が

$$
v_i \equiv \sqrt{\frac{2 T_i}{m_i}} 
\ll \frac{\vert \omega \vert}{k} 
\ll v_e \equiv \sqrt{\frac{2 T_e}{m_e}} \tag{1}
$$

の間にある必要があります。
このときの分布関数を見ると、上の条件が満たされていることがわかります。

![](/assets/images/plasma/ion_acoustic_wave_01.png)  
電子とイオンの速度分布関数。イオン音波の位相速度を縦線で表したとき、共鳴粒子数が少ないことと、分布関数の傾きがゼロに近いことが求められる。  

{: .note}
電子とイオンの間の熱緩和時間は、[イオン間の緩和時間に比べて $$\sqrt{\frac{m_i}{m_e}}$$ 倍長い](/astroelec/spitzer_thermal#4つの場合の衝突頻度)ため、平衡状態の電子温度とイオン温度は一般に異なっていても差し支えありません。

## 分散関係式

それでは、イオン音波の分散関係式を導出していきましょう。
電子とイオンの両方についてボルツマン分布を仮定すると、[ラングミュア波](/plasma/langmuir_landau_damping#ボームグロスの分散関係式)のときと同様にして

$$
\varepsilon_\mathrm{L} (k, \omega) 
= 1 + \frac{2\omega_{pe}^2}{k^2 v_e^2} \{1 + \zeta_e Z (\zeta_e)\} + \frac{2\omega_{pi}^2}{k^2 v_i^2} \{1 + \zeta_i Z (\zeta_i)\} \tag{2}
$$

を得ます。
ここで $$\zeta_e = \frac{\omega}{k v_e}, \zeta_i = \frac{\omega}{k v_i}$$ です。
位相速度の条件 (1) 式から、[$$Z(\zeta_i)$$ は $$\vert \zeta_i \vert \gg 1$$ で展開し、$$Z(\zeta_e)$$ は $$\vert \zeta_e \vert \ll 1$$ で展開した漸近式](/math/plasma_dispersion_function)を用いることにしましょう。
すると 

$$
\zeta_e Z(\zeta_e) 
\approx i \sqrt{\pi} \zeta e^{-\zeta_e^2} - 2 \zeta_e^2 
\underbrace{\approx}_{\zeta^2 \sim 0} i \sqrt{\pi} \zeta_e \tag{3}
$$

$$
\zeta_i Z(\zeta_i) 
\approx i \sqrt{\pi} \zeta_i e^{-\zeta_i^2} - 1 - \frac{1}{2 \zeta_i^2} - \frac{3}{4 \zeta_i^4} \tag{4}
$$

より、(2) 式は

$$
\begin{align}
\varepsilon_\mathrm{L} (k, \omega) 
&\approx 1 + \frac{2\omega_{pe}^2}{k^2 v_e^2} (1 + i \sqrt{\pi} \zeta_e) + \frac{2 \omega_{pi}^2}{k^2 v_i^2} \left( i \sqrt{\pi} \zeta_i e^{-\zeta_i^2} - \frac{1}{2 \zeta_i^2} - \frac{3}{4 \zeta_i^4} \right) \notag \\
&= 1 + \frac{2\omega_{pe}^2}{k^2 v_e^2} - \frac{\omega_{pi}^2}{k^2 v_i^2 \zeta_i^2} \left( 1 + \frac{3}{2\zeta_i^2} \right) + i\sqrt{\pi} \left( \frac{2\omega_{pe}^2}{k^2 v_e^2} \zeta_e + \frac{2\omega_{pi}^2}{k^2 v_i^2} \zeta_i e^{-\zeta_i^2}\right) \notag \\
&\underbrace{=}_{\zeta = \omega / k v} 1 + \frac{2\omega_{pe}^2}{k^2 v_e^2} - \frac{\omega_{pi}^2}{\omega^2} \left( 1 + \frac{3 k^2 v_i^2}{2\omega^2} \right) + i\sqrt{\pi} \left( \frac{2\omega_{pe}^2}{k^2 v_e^2} \frac{\omega}{k v_e} + \frac{2\omega_{pi}^2}{k^2 v_i^2} \frac{\omega}{k v_i} e^{-\frac{\omega^2}{k^2 v_i^2}}\right) \tag{5}
\end{align}
$$

すると角周波数の実部は、$$\mathrm{Re} (\varepsilon_\mathrm{L} (k, \omega_\mathrm{r})) = 0$$ を解くことで得られます。

$$
1 + \frac{2\omega_{pe}^2}{k^2 v_e^2} - \frac{\omega_{pi}^2}{\omega_\mathrm{r}^2} \left( 1 + \frac{3 k^2 v_i^2}{2\omega_\mathrm{r}^2} \right) 
= 0 \ \Longrightarrow \ \omega_\mathrm{r}^2 
= \frac{1 + \frac{3}{2} \frac{k^2 v_i^2}{\omega_\mathrm{r}^2}}{1 + \frac{2 \omega_{pe}^2}{k^2 v_e^2}} \omega_{pi}^2 \tag{6}
$$

ここで、イオンにおいては $$\frac{k^2 v_i^2}{\omega_\mathrm{r}^2} \ll 1$$ であることに注意すると

$$
\omega_\mathrm{r}^2 
\approx \frac{1}{1 + \frac{2\omega_{pe}^2}{k^2 v_e^2}} \omega_{pi}^2 
= \frac{k^2}{k^2 + \frac{2\omega_{pe}^2}{v_e^2}} \omega_{pi}^2 \tag{7}
$$

のようになります。
さらに[電子のデバイ長 $$\lambda_{De}^2 = v_e^2 / (2\omega_{pe}^2)$$](/plasma/debye_huckel#デバイ長-debye-length)、そして[電子のデバイ長](/plasma/debye_huckel#デバイ長-debye-length)の逆数をデバイ波数として $$k_{De} \equiv 1 / \lambda_{De}$$ のように定義すれば

$$
\omega_\mathrm{r}^2 
\approx \frac{k^2}{k^2 + k_{De}^2} \omega_{pi}^2 \tag{8}
$$

のように整理されます。
[ラングミュア波](/plasma/langmuir_landau_damping)と比較すると、イオン音波では $$\frac{k^2}{k^2} \rightarrow \frac{k^2}{k^2 + k_{De}^2}$$ のように、分母が置き換わっています。
これは、イオンが感じる電気的な復元力のうち、何割かが電子によって遮蔽されるためです。
実際、(8) 式は長波長極限 $$k^2 \ll k_{De}^2$$ において

$$
\omega_\mathrm{r}^2 
\approx \frac{k^2}{k_{De}^2} \omega_{pi}^2 
= k^2 \lambda_{De}^2 \omega_{pi}^2 
= k^2 \frac{k_B T_e}{4 \pi e^2 n_e} \frac{4\pi e^2 n_i}{m_i} 
\underbrace{=}_{n_e = n_i} k^2 \frac{k_B T_e}{m_i} 
= k^2 c_s^2 \quad \left( c_s \equiv \sqrt{\frac{k_B T_e}{m_i}}\right) \tag{9}
$$

のようになります。
途中、水素の完全電離プラズマを仮定して電子と陽子の電荷の大きさを同じとし、電気的中性条件から $$n_e = n_i$$ としました。
また $$c_s$$ は音速です。
[デバイ長 $$\lambda_{De}$$](/plasma/debye_huckel#デバイ長-debye-length) よりも波長が長いため、電気的な復元力が完全に遮蔽され、熱的な圧力による普通の音波になっていることがわかります。
一方、短波長極限 $$k^2 \gg k_{De}^2$$ では、$$\omega_\mathrm{r}^2 \approx \omega_{pi}^2$$ のようになります。
これは短波長 (すなわち高周波) では、電子がイオン振動についていけず、負の一様な背景電荷とみなすことができるためです。
この場合、[電子によるデバイ遮蔽](/plasma/debye_huckel#デバイ遮蔽-debye-shielding)は効かず、イオンだけの純粋な[プラズマ振動](/plasma/propagation_cold#分散関係式の導出)に一致します。

## イオン音波のランダウ減衰

位相速度に関する条件式 (1) が成り立ち、イオンによる波動のランダウ減衰が起こらないためには

$$
\frac{\omega_\mathrm{r}}{k} 
\approx c_s \gg v_i \ \Longrightarrow \ 
T_e \gg T_i \tag{10}
$$

の温度条件が必要であるとわかります。
角周波数の虚部 $$\omega_\mathrm{i}$$ から、この波動の成長率 (減衰率) を計算してみましょう。
(5) 式の実部より

$$
\frac{\partial \varepsilon_\mathrm{r}}{\partial \omega_\mathrm{r}} 
= \frac{2 \omega_{pi}^2}{\omega_\mathrm{r}^3} + \frac{6 k^2 v_i^2 \omega_{pi}^2}{\omega_\mathrm{r}^5} 
= \frac{2 \omega_{pi}^2}{\omega_\mathrm{r}^3} \left( 1 + \frac{3 k^2 v_i^2}{\omega_\mathrm{r}^2} \right) 
\underbrace{\approx}_{k^2 v_i^2 / \omega_\mathrm{r}^2 \ll 1} \frac{2 \omega_{pi}^2}{\omega_\mathrm{r}^3} \tag{11}
$$

です。
そして (5) 式の虚部から

$$
\begin{align}
\omega_\mathrm{i} 
&= - \frac{\varepsilon_\mathrm{i}}{\frac{\partial \varepsilon_\mathrm{r}}{\partial \omega_\mathrm{r}}} 
= - \sqrt{\pi} \left( \frac{2\omega_{pe}^2}{k^2 v_e^2} \frac{\omega_\mathrm{r}}{k v_e} + \frac{2\omega_{pi}^2}{k^2 v_i^2} \frac{\omega_\mathrm{r}}{k v_i} e^{-\frac{\omega^2}{k^2 v_i^2}}\right) \frac{\omega_\mathrm{r}^3}{2 \omega_{pi}^2} \notag \\
&= - \sqrt{\pi} \omega_\mathrm{r} \left\{ \left( \frac{\omega_\mathrm{r}}{k v_e} \right)^3 \frac{\omega_{pe}^2}{\omega_{pi}^2} + \left(\frac{\omega_\mathrm{r}}{k v_i} \right)^3 e^{-\frac{\omega_\mathrm{r}^2}{k^2 v_i^2}}\right\} \tag{12}
\end{align}
$$

となります。
指数部分の肩において $$\frac{\omega_\mathrm{r}}{k v_i} \approx \frac{c_s}{v_i} \ll 1$$ であることから、第二項は無視できるほど小さいことがわかります。
さらに

$$
\frac{\omega_\mathrm{r}}{k v_e} 
\approx \frac{c_s}{v_e} 
= \sqrt{\frac{k_B T_e}{m_i}} \sqrt{\frac{m_e}{2 k_B T_e}} 
= \sqrt{\frac{m_e}{2m_i}}, \quad \frac{\omega_{pe}^2}{\omega_{pi}^2} 
= \frac{m_i}{m_e} \tag{13}
$$

であることを用いれば、(12) 式は

$$
\omega_\mathrm{i} 
= - \sqrt{\frac{\pi m_e}{8 m_i}} \tag{14}
$$

のように整理されます。
すなわちイオン音波は、長波長 $$k \ll k_{De}$$ において、$$\omega_\mathrm{r} \approx k c_s$$ を満たす低周波の減衰波です。
イオン温度が上昇し、$$T_i \sim T_e$$ となると、波動の位相速度がイオンの熱速度に近くなるため、イオンのランダウ減衰のためにイオン音波は強く減衰されます。

## 参考文献

[] [田中基彦, 西川恭治, "高温プラズマの物理学"](https://amzn.to/3PHKTdK)  
[] [Chen, 内田 岱二郎(訳), "プラズマ物理入門"](https://amzn.to/4akfJ5T)  
[] [物理学のフィロソフィア、"電子プラズマ波 (ラングミュア波)"](https://physics.thick.jp/Plasma_Physics/Section4/4-10.html)  

{% include adsense.html %}