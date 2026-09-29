---
layout: default
title: ラングミュア波とランダウ減衰
parent: プラズマ物理学
math: mathjax3
permalink: /plasma/langmuir_landau_damping
nav_order: 12
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

# ラングミュア波

[一般論のページ](/plasma/kinetic_waves_in_plasma)を参考に、具体的な分布関数などから誘電率テンソルを計算し、固有モードを求めてみましょう。
ここでは、背景磁場が存在しない一様プラズマ中での線形波動を考えることにします。
また電子に比べてイオンは質量がとても大きいため、イオンは電荷を中和する不動の背景の働きをするとして、波動を伝えるのは電子だけの 1 成分からなるプラズマであるとします。

## ボーム・グロスの分散関係式

平衡状態の分布関数として、等方的なボルツマン分布を用いることにします。

$$
f_0 (v) 
= \frac{n_0}{\sqrt{\pi} v_e} e^{-v^2 / v_e^2} \tag{1}
$$

ここで $$v_e = \sqrt{\frac{2 T_e}{m_e}}$$ は、熱速度です。
これを縦誘電率の式に代入すると

$$
\begin{align}
\varepsilon_\mathrm{L} (k, \omega) 
&= 1 + \frac{4\pi e^2 }{m_e k^2} \int_{-\infty}^\infty \frac{k}{\omega - kv} \frac{\partial f_0}{\partial v} dv 
= 1 - \frac{2\omega_{pe}^2}{k^2} \int_{-\infty}^\infty \frac{k}{\omega - kv} \frac{v}{\sqrt{\pi} v_e^3} e^{-v^2 / v_e^2} dv \notag \\
&\underbrace{=}_{z = v / v_e} 1 - \frac{2\omega_{pe}^2}{k^2} \frac{1}{\sqrt{\pi}} \int_{-\infty}^\infty \frac{k}{\omega - k v_e z} \frac{v_e z}{v_e^3} e^{-z^2} v_e dz 
= 1 - \frac{2\omega_{pe}^2}{k^2 v_e^2} \frac{1}{\sqrt{\pi}} \int_{-\infty}^\infty \frac{z}{\frac{\omega}{k v_e} - z} e^{-z^2} dz \notag \\
&\underbrace{=}_{\zeta \equiv \omega / k V_e} 1 + \frac{2\omega_{pe}^2}{k^2 v_e^2} \frac{1}{\sqrt{\pi}} \int_{-\infty}^\infty \frac{z}{z - \zeta} e^{-z^2} dz \tag{2}
\end{align}
$$

(2) 式に出現した被積分関数において、$$\frac{z}{z-\zeta} = 1 + \frac{\zeta}{z - \zeta}$$ のように分解すれば

$$
\varepsilon_\mathrm{L} (k, \omega) 
= 1 + \frac{2\omega_{pe}^2}{k^2 v_e^2} \{1 + \zeta Z(\zeta)\} \tag{3}
$$

を得ます。
ここで $$Z(\zeta)$$ は[プラズマ分散関数](/math/plasma_dispersion_function)です。  
一つの極限として、波の位相速度が粒子の熱速度に比べて十分大きいとき、すなわち $$\zeta = \frac{\omega}{k v_e} \gg 1$$ を考えてみましょう。
すると[$$\zeta \gg 1$$ の場合の $$Z(\zeta)$$ の漸近形](/math/plasma_dispersion_function#級数展開)を代入することで

$$
\begin{align}
\varepsilon_\mathrm{L} (k, \omega) 
&\approx 1 + \frac{2\omega_{pe}^2}{k^2 v_e^2} \left\{ 1 + \zeta \left( i\sqrt{\pi} e^{-\zeta^2} - \frac{1}{\zeta} - \frac{1}{2\zeta^3} - \frac{3}{4\zeta^5} \right)\right\} \notag \\
&= 1 - \frac{2\omega_{pe}^2}{k^2 v_e^2} \left( \frac{1}{2\zeta^2} + \frac{3}{4} \zeta^4 \right) + \frac{2\omega_{pe}^2}{k^2 v_e^2} i \sqrt{pi} \zeta e^{-\zeta^2} \notag \\
&= 1 - \frac{\omega_{pe}^2}{\omega^2} \left( 1 + \frac{3}{2} \frac{k^2 v_e^2}{\omega^2}\right) + 2i \sqrt{\pi} \frac{\omega_{pe}^2 \omega}{k^3 v_e^3} e^{-\frac{\omega^2}{k^2 v_e^2}} \tag{4} 
\end{align}
$$

となります。
$$e^{-\frac{\omega^2}{k^2 v_e^2}} \ll 1$$ であることから、虚部は実部より十分小さいことがわかります。
よって[縦・横モードに分離して考えた時の (59), (60) 式](/plasma/kinetic_waves_in_plasma#縦横モードの分離)を用いることが可能です。
すると

$$
\varepsilon_\mathrm{r} (k, \omega) 
= 1 - \frac{\omega_{pe}^2}{\omega_\mathrm{r}^2} \left( 1 + \frac{3}{2} \frac{k^2 v_e^2}{\omega_\mathrm{r}^2}\right) 
= 0 \ \Longrightarrow \ \omega_\mathrm{r}^2 
= \omega_{pe}^2 \left( 1 + \frac{3}{2} \frac{k^2 v_e^2}{\omega_\mathrm{r}^2} \right) \tag{5}
$$

から、伝播する波動の振動数を求めることができます。
$$(\cdots )$$ の第二項は十分小さいことから $$\omega_\mathrm{r}^2 \approx \omega_{pe}^2$$ です。
これを再び (5) 式に代入することで、近似の精度を上げることにしましょう。
すると

$$
\omega_\mathrm{r}^2 
\approx \omega_{pe}^2 \left( 1 + \frac{3}{2} \frac{k^2 v_e^2}{\omega_{pe}^2} \right) 
\underbrace{=}_{\lambda_D^2 = v_e^2 / (2\omega_{pe}^2)} \omega_{pe}^2 (1 + 3 k^2 \lambda_D^2) \tag{6} 
$$

を得ます。
ここで [$$\lambda_D$$ はデバイ長](/plasma/debye_huckel)です。
(6) 式を、ボーム・グロスの分散関係式 (Bohm-Gross dispersion relation) と呼びます。
これがプラズマにおけるラングミュア振動 (Langmuir oscillation)、あるいは単にプラズマ振動と呼ばれる高周波の縦波です。
(6) 式から、振動の復元力は主に電子の空間電荷ですが、それに温度の効果 (圧力) による補正が加わったものになっています。

## ラングミュア波の減衰 (ランダウ減衰)

角周波数の虚部 $$\omega_\mathrm{i}$$ から、この波動の成長率を計算してみましょう。

$$
\frac{\partial \varepsilon_\mathrm{r}}{\partial \omega_\mathrm{r}} 
= \frac{2 \omega_{pe}^2}{\omega_\mathrm{r}^3} + \frac{6 \omega_{pe}^2 k^2 v_e^2}{\omega_\mathrm{r}^5} 
\underbrace{\approx}_{\omega_\mathrm{r} / k v_e \gg 1} \frac{2 \omega_{pe}^2}{\omega_\mathrm{r}^3} \tag{7}
$$

すると、$$\omega_\mathrm{i}$$ は

$$
\omega_\mathrm{i} 
= - \frac{\varepsilon_\mathrm{i} (k, \omega_\mathrm{r})}{\frac{\partial \varepsilon_\mathrm{r}}{\partial \omega_\mathrm{r}}} 
= - \frac{\omega_\mathrm{r}^3}{2\omega_{pe}^2} 2 \sqrt{\pi} \frac{\omega_{pe}^2 \omega_\mathrm{r}}{k^3 v_e^3} e^{-\frac{\omega_\mathrm{r}^2}{k^2 v_e^2}} 
= - \frac{\sqrt{\pi} \omega_\mathrm{r}^4}{k^3 v_e^3} e^{-\frac{\omega_\mathrm{r}^2}{k^2 v_e^2}} \tag{8}
$$

(8) 式の係数部分において

$$
\omega_\mathrm{r}^4 
\underbrace{\approx}_{(6)} \omega_{pe}^4 \left( 1 + \frac{k^2 v_e^2}{\omega_{pe}^2}\right)^2 
\approx \omega_{pe}^4 \tag{9}
$$

のように近似し、さらに指数の肩では

$$
\frac{\omega_\mathrm{r}^2}{k^2 v_e^2} 
\underbrace{\approx}_{(6)} \frac{\omega_{pe}^2}{k^2 v_e^2} + \frac{3}{2} \tag{10} 
$$

のように近似すれば、最終的に

$$
\frac{\omega_\mathrm{i}}{\omega_{pe}} 
\approx - \frac{\sqrt{\pi} \omega_{pe}^3}{k^3 v_e^3} \exp \left( - \frac{\omega_{pe}^2}{k^2 v_e^2} - \frac{3}{2} \right) 
\underbrace{=}_{\lambda_D^2 = v_e^2 / (2 \omega_{pe}^2)} - \sqrt{\frac{\pi}{8}} \frac{1}{k^3 \lambda_D^3} \exp \left( - \frac{1}{2 k^2 \lambda_D^2} - \frac{3}{2} \right) \tag{11}
$$

を得ます。
虚部がマイナスであるため、$$e^{-i\omega t} = e^{-i\omega_\mathrm{r} t} e^{\omega_\mathrm{i} t}$$ は時間とともに減衰する波動を表すことがわかります。 
下図は、(11) 式の概形を図示したものです。

![](/assets/images/plasma/langmuir_landau_damping_01.png)  
$$\frac{1}{(k \lambda_D)^3} \exp(-\frac{1}{2(k\lambda_D)^2})$$ をプロットしたもの。  

{% include adsense.html %}  

これを見ると、$$x = k \lambda_D \sim 1/\sqrt{2}$$ のあたりで値が大きくなり、強い減衰が起こることがわかります。
このとき

$$
k \lambda_D 
= k \frac{v_e}{\sqrt{2} \omega_{pe}} 
\underbrace{=}_{v_\mathrm{ph} = \omega_{pe} / k} \frac{v_e}{\sqrt{2} v_\mathrm{ph}} 
\sim \frac{1}{\sqrt{2}} \ \Longrightarrow \ 
v_\mathrm{ph} 
\simeq v_e \tag{12}
$$

のように、粒子の速度とラングミュア波の位相速度が同程度であることがわかります。
ある時間間隔を考えたとき、波の位相速度と大きく異なる速さで運動する粒子は、波の数周期にわたる長さを横断することになります。
このため、この粒子は波の電場による加速・減速を同じ回数だけ受けることになり、波と粒子の間で正味のエネルギーのやり取りは生じません。
しかし、波の位相速度と同程度の速度で運動する共鳴粒子は、長時間にわたって加速・減速を受け続けることができます。
波の位相速度よりわずかに遅い速度で運動する共鳴粒子は波により加速されやすく、平均すると波から正味のエネルギーをもらうことになります。
逆に、波よりもわずかに速く運動する共鳴粒子は減速されやすく、平均すると波にエネルギーを与えることになります。
このとき、もし波より遅く運動する粒子数が、波より速く運動する粒子数に比べて多ければ、全体としてはエネルギーが波から粒子へと移り、波動は減衰することになります。
粒子どうしの衝突を考慮していないにも関わらず減衰が起こるこの現象を、ランダウ減衰と呼びます。

{: .note}
[プラズマ物理入門](https://amzn.to/4akfJ5T)では、このランダウ減衰を「応用数学の勝利」と称えています。

下図のように、波乗りするサーファーの例に例えてみましょう (もちろんこれは厳密な描像ではありません)。
簡単のため、最初にサーファーは波の一番高い位置にいるものとします。

![](/assets/images/plasma/langmuir_landau_damping_02.png)  
波動と粒子の相互作用の物理的解釈を説明したもの。サーファーの速度が (a): 波よりわずかに遅い場合、(b): 波よりわずかに速い場合。左から右に時間が流れている。  

サーファーの速度が波の位相速度よりわずかに遅い場合、サーフボードは徐々に波の後ろに移動していきます。
波の山から谷に移るときには、エネルギーのやり取りは発生しません。
しかし波の谷から山に移るとき、波の方が速度が速いためにサーフボードが波から押され、サーファーは加速されます。
すなわち、波からサーファーにエネルギーが渡されることになります。
逆に、サーファーの速度が波の位相速度よりもわずかに速い場合を考えましょう。
このとき、サーフボードは徐々に波の前へと移動していきます。
波が山から谷に移るとき、ここでもエネルギーのやり取りは発生しません。
しかし波の谷から山に移るとき、波の速度が遅いために今度はサーフボードが波を押し、波がエネルギーを得ます。  

## 一般の分布関数の場合

ここまでの説明では、電子の分布関数としてマクスウェル・ボルツマン分布 (1) 式を仮定しています。
すると、遅い速度の粒子数の方が多くなるため、波動が減衰する結果が得られています。
ここでは、マクスウェル・ボルツマン分布を仮定せず、ラングミュア波の成長率を求めてみましょう。
背景磁場を持たない一様プラズマ中の静電波 (縦波) を記述する縦誘電率は

$$
\varepsilon_\mathrm{L} (k, \omega) 
= 1 + \frac{4\pi e^2}{m_e k^2} \int_{-\infty}^\infty \frac{k}{\omega - k v} \frac{\partial f_0}{\partial v} dv
= 1 - \frac{4\pi e^2}{m_e k^2} \int_{-\infty}^\infty \frac{1}{v - \frac{\omega}{k}} \frac{\partial f_0}{\partial v} dv \tag{13}
$$

のように与えられるのでした。
ここで $$\mathrm{Im} (\omega) \sim 0$$ に対し、ソホツキー・プレメリの公式 (Sokhotski-Plemeli theorem) より

$$
\frac{1}{v - \frac{\omega}{k}} 
= \mathcal{P} \frac{1}{v - \frac{\omega}{k}} + i \pi \delta(v - \frac{\omega}{k}) \tag{14}
$$

のように書くことができます。
ここで $$\mathcal{P}$$ は、主値積分です。
すると

$$
\varepsilon_\mathrm{L} (k, \omega) 
= 1 - \frac{4\pi e^2}{m_e k^2} \left( \mathcal{P} \int_{-\infty}^\infty \frac{1}{v - \frac{\omega}{k}} \frac{\partial f_0}{\partial v} dv + i \pi \left. \frac{\partial f_0}{\partial v} \right\vert_{v = \omega/ k} \right) \tag{15}
$$

のように書かれます。
共鳴粒子の数は全粒子数の中で少ないとして、主値積分が $$\lvert \frac{kv}{\omega} \rvert \ll 1$$ からの寄与のみでほぼ決定されるとしましょう。
すると $$\frac{1}{v - \omega / k}$$ の部分をテイラー展開して

$$
\begin{align}
\varepsilon_\mathrm{r} 
&= \mathrm{Re}(\varepsilon_\mathrm{L} (k, \omega)) 
= 1 - \frac{4\pi e^2}{m_e k^2} \mathcal{P} \int_{-\infty}^\infty \frac{\partial f_0}{\partial v} \frac{1}{v - \frac{\omega}{k}} dv \notag \\
&= 1 + \frac{4\pi e^2}{m_e k^2} \mathcal{P} \int_{-\infty}^\infty \frac{\partial f_0}{\partial v} \frac{1}{1 - \frac{k v}{\omega}} dv 
\approx 1 + \frac{4\pi e^2}{m_e k^2} \int_{-\infty}^\infty \frac{\partial f_0}{\partial v} \left( - \frac{k}{\omega} \right) \left( 1 + \frac{kv}{\omega} \right) dv \tag{16}
\end{align}
$$

$$
\int_{-\infty}^\infty \frac{\partial f_0}{\partial v} dv 
= \int_{v = -\infty}^{v = \infty} d f_0 
= f_0(v = \infty) - f_0 (v = - \infty) 
= 0 \tag{17}
$$

$$
\int_{-\infty}^\infty \frac{\partial f_0}{\partial v} v dv 
= [f_0 v]_{-\infty}^\infty - \int_{-\infty}^\infty f_0 dv 
= - n_0 \tag{18}
$$

以上より

$$
\mathrm{Re}(\varepsilon_\mathrm{L} (k, \omega)) 
\approx 1 - \frac{4\pi e^2 n_0}{m_e \omega^2} 
= 1 - \frac{\omega_{pe}^2}{\omega^2} \tag{19}
$$

のようになります。
一方、縦誘電率の虚部は

$$
\varepsilon_\mathrm{i} 
= \mathrm{Im} (\varepsilon_\mathrm{L} (k, \omega)) 
= - \frac{4\pi^2 e^2}{m_e k^2} \left. \frac{\partial f_0}{\partial v} \right\vert_{v=\omega / k} \tag{20}
$$

であり、さらに

$$
\frac{\partial \varepsilon_\mathrm{r}}{\partial \omega} 
\approx \frac{2 \omega_{pe}^2}{\omega^3} \tag{21}
$$

から、角周波数の虚部 $$\omega_\mathrm{i}$$ が

$$
\omega_\mathrm{i} 
\approx - \frac{\varepsilon_\mathrm{i}}{\frac{\partial \varepsilon_\mathrm{r}}{\partial \omega}} 
= \frac{4\pi^2 e^2}{m_e k^2} \frac{\omega^3}{2 \omega_{pe}^2} \left. \frac{\partial f_0}{\partial v} \right\vert_{v=\omega / k} 
\underbrace{=}_{4\pi e^2/m_e = \omega_{pe}^2 / n_0} \frac{\pi}{2} \frac{\omega^3}{n_0 k^2} \left. \frac{\partial f_0}{\partial v} \right\vert_{v=\omega / k} \tag{22} 
$$

ここで、ラングミュア波においては $$\omega^2 \approx \omega_{pe}^2$$ であること、そして共鳴粒子の場合について考えるとして $$\frac{\omega}{k} \approx v$$ であることを用いると

$$
\omega_\mathrm{i} 
\approx \frac{\pi}{2} \frac{\omega_{pe}^2}{n_0 k} v \left. \frac{\partial f_0}{\partial v} \right\vert_{v=\omega / k} \tag{23}
$$

のように求まります。
これは、波の成長率が波の位相速度付近における粒子数分布の勾配 (波の位相速度よりも速度が大きい粒子の数が多いか少ないか) に比例していることを表しています。
ボルツマン分布に対しては $$v \left. \frac{\partial f_0}{\partial v} \right\vert_{v=\omega / k}$$ は至るところで負であるため、$$\omega_\mathrm{i}$$ も常に負の値となります。
よって、無衝突プラズマにおいて、電子の縦波振動が減衰することがわかります。
これらの結果は、イオンの応答を取り入れても、ほとんど変化しません。

## ラングミュア波の観測

ラングミュア波は、太陽や地球磁気圏で実際に観測されています。
どのような場面で観測されているか、実際に見ていきましょう。

### 太陽のメートル波電波バースト

メートル波帯の電波では、様々な種類の電波バーストが観測されており、放射される電波の周波数の時間変化などで分類がされています。

* I 型: 黒点 (強磁場領域) 上空で短時間 (数秒) 放射される電波放射です。発生機構はよくわかっていません。
* II 型: フレアに伴って放出されるコロナ質量放出が生み出した衝撃波が、コロナや惑星間空間を伝播する際に発生します。
* III 型: 太陽フレアと良い相関を持ち、加速された高エネルギー電子が磁力線に沿ってコロナ下部から上部に移動する際に起こる放射です。
* IV 型: コロナ中の磁場に閉じ込められた高エネルギー電子による放射です。

中でも、III 型バーストは、コロナ下層から惑星間空間へ開いた磁力線に沿って外向きに伝播する電子ビームによるものです。
電子の高速な成分は磁力線を我先にと走り抜けていくため、局所的にみると、次のように分布関数のすそ部分にコブがあるのような分布を形成します。
$$\frac{\partial f}{\partial v} > 0$$ となる部分があるため、逆ランダウ減衰 (ランダウ増幅) が起こり、ラングミュア波が励起されます。
この電子ビームの速度は $$0.3 c$$ にも達します。

![](/assets/images/plasma/langmuir_landau_damping_03.png){: width="50%"}  
すそ部分にコブがあるような速度分布関数。バンプ・オン・テイル分布などとも呼ぶ。  

さらに励起されたラングミュア波がイオン音波などと結合し (非線形過程)、電波に変換されていると考えられています。  
電子密度は太陽から離れるにつれて減少するため、それに伴ってプラズマ振動数も減少します。
そして III 型バーストも同様に、コロナ下層で約 1 GHz だった周波数が、1 au では　20 kHz まで減少します。  
最近では、2018 年に打ち上げられたパーカー・ソーラー・プローブ (PSP) による、その場での太陽風・太陽フレア観測結果が、注目を集めています。
[Clarkson & Kontar (2026)](https://iopscience.iop.org/article/10.3847/1538-4357/ae3dae) では、III 型バーストによる電波周波数の変化が磁力線に沿って起こることから、磁力線形状を診断できることを示しました。

![](/assets/images/plasma/langmuir_landau_damping_04.png)  
[Clarkson & Kontar (2026)](https://iopscience.iop.org/article/10.3847/1538-4357/ae3dae) より。
(a): 磁力線がループ上になっている場合、(b): 衝撃波などにより磁力線に 90 度の折れ曲がりがある場合 (スイッチバックのような S 次形状を意識したもの)。
III 型バーストを起こす電子ビームは磁力線に沿って進むため、(a) のようなループ上の場合には電子密度が高 -> 低 -> 高を経験する。
そのため、一度減少した周波数は、再び増加に転じる。
一方 (b) のような折れ曲がりがある場合、同程度の電子密度の位置に滞在する時間が長くなるため、周波数変化が鈍くなるような時間帯が存在します。
磁力線に沿って不自然な密度変化を仮定することなく、実際に PSP で観測された III 型 バーストの周波数変化を説明できるとしました。

![](/assets/images/plasma/langmuir_landau_damping_05.png)  
[Clarkson & Kontar (2026)](https://iopscience.iop.org/article/10.3847/1538-4357/ae3dae) より、PSP で観測された 2024 年 10 月発生の III 型バーストの周波数の時間変化を表したもの。
白丸が各時間での周波数のピーク位置に対応するが、特に 01:40 のあたりで大きな不連続な変化が見られる。  

実は PSP はこれより前の 2020 年 5 月に、5回目の近日点通過中に、局所プラズマ周波数まで伸びる III 型バーストを観測しました ([Larosa et al. (2022)](https://iopscience.iop.org/article/10.3847/1538-4357/ac4e85))。
すなわち、これは PSP が電波源の中を航行したことを意味し、まさにその場での観測を行ったのです。
このとき PSP は、外向きの電子ビームが探査機に到達するのと同時に、ラングミュア波の波束を観測することに成功しました。
より詳しくは、ここで観測されたのは磁場を持つプラズマ中でのラングミュア波で、有限の磁場中における電場・磁場を伴う波動成分 (Zモードや遅い異常モードと呼ばれます) につながることを示しました。

{% include adsense.html %}  

### 地球磁気圏の電子フォアショック

惑星間空間には、太陽コロナからのプラズマが超音速で流れています。
同時に、太陽磁場も太陽風プラズマに凍結して、惑星間空間を満たしています。
太陽風の磁力線が太陽表面上で凍結されていると、太陽の自転のために、太陽風の磁力線はあたかもクルクルと回転する庭のスプリンクラーの放水のように、螺旋構造を持ちます。
実際、地球軌道 1 AU での惑星間磁場の衛星観測を行うと、動径方向に対して 45 度もしくは 225 度の方向を向いていることがわかっています (下左図)。
太陽風の向きは、太陽を中心として動径方向を向いているため、バウショックは太陽方向に向いた弓形構造をしています。
それに対し、磁力線は斜め 45 度に走っているため、下右図のようにバウショックに接する磁力線・交わる磁力線が存在することがわかります。

![](/assets/images/plasma/langmuir_landau_damping_06.png)  
左: 動径方向に進む太陽風プラズマと、磁場の凍結によるパーカースパイラル。右: 45 度の傾きをもつ磁力線と、地球が形成するバウショックの方向関係。  

右側の磁力線とバウショックが交わる上流領域部分を、電子フォアショックと呼びます。
この領域では、電子は磁力線に沿って運動し、バウショックに到達します。
バウショックでは磁場が急激に強くなるため、この部分では[磁気ミラー](/plasma/mirror)により、一部の電子が反射されます。
速度の大きな電子成分が先にバウショックに到達し、これが反射されるため、電子フォアショック領域には遅れて到達した速度の遅い成分とこの反射成分が混在することになります。
これにより、太陽メートル波電波バーストのときと同様の速度分布関数が形成されます。
$$\frac{\partial f}{\partial v} > 0$$ となる部分が存在することから、先ほどと同じ理屈でラングミュア波が励起されます。
[Graham et al. (2026)](https://arxiv.org/abs/2606.12741) では、Magnetospheric MultiScale (MMS) ミッションでの観測結果から、電子フォアショック領域でのラングミュア波を報告しました。

![](/assets/images/plasma/langmuir_landau_damping_07.png)  
[Graham et al. (2026)](https://arxiv.org/abs/2606.12741) より、MMS で観測された 4 つの大振幅ラングミュア波を可視化したもの。

またこれらのラングミュア波は、バウショックと磁力線が交わらない領域の太陽風 (pristine solar wind: 原始的な手付かずの太陽風) では見られないとしています ([Graham et al. (2023)](https://agupubs.onlinelibrary.wiley.com/doi/10.1029/2023JA031900))。

## ランダウ減衰の観測

[Chen et al. (2019)](https://www.nature.com/articles/s41467-019-08435-3) では、磁気圏シース (バウショックの下流領域) でのプラズマを観測し、ランダウ減衰が起こっている証拠を直接検出することに成功しました。
この論文では MMS ミッション観測衛星を用い、70 秒間の磁気圏シース通過中のデータを解析しました。
電場が粒子にする正味の仕事 $$C_{E_\parallel}' (\mathbf{v}) = \langle q v_\parallel E_\parallel f$$ を定義し、それを観測から測定しました。
波の位相速度 $$v_\mathrm{ph}$$ よりわずかに速い粒子に対しては、波の電場が粒子に負の仕事をし (粒子が減速し波がエネルギーを得る)、逆にわずかに遅い粒子に対しては、波の電場が粒子に正の仕事をします (粒子が加速され波がエネルギーを失う) 。
このように、電場が粒子にする正味の仕事を観測し、それが $$v_\mathrm{ph}$$ 付近で符号が反転していることを確認できれば、それはランダウ減衰が発生していることに他なりません。

![](/assets/images/plasma/langmuir_landau_damping_08.png)  
[Chen et al. (2019)](https://www.nature.com/articles/s41467-019-08435-3) での観測結果の模式図。
実際に論文で観測しているのは粒子のエネルギー輸送率であり、先ほどの $$C_{E_\parallel}' (\mathbf{v})$$ にマイナス符号をつけたものが図示されている。  

[Chen et al. (2019)](https://www.nature.com/articles/s41467-019-08435-3) で提案された手法は field-particle correlation technique (場と粒子の相関手法) と呼ばれています。
別の区間での MMS 観測にこの手法を適用し、同様に電子ランダウ減衰が観測されています ([Afshari et al. (2021)](https://agupubs.onlinelibrary.wiley.com/doi/abs/10.1029/2021JA029578))。

## 参考文献

[1] [Clarkson & Kontar, 2026, "Signatures of Large-scale Magnetic Field Disturbances and Switchbacks in Interplanetary Type III Radio Bursts"](https://iopscience.iop.org/article/10.3847/1538-4357/ae3dae)  
[2] [Larosa et al., 2022, "Langmuir-Slow Extraordinary Mode Magnetic Signature Observations with Parker Solar Probe"](https://iopscience.iop.org/article/10.3847/1538-4357/ac4e85)  
[3] [Graham et al., 2026, "Plasma frequency waves in Earth's electron foreshock"](https://arxiv.org/abs/2606.12741)  
[4] [Graham et al., 2023, "Langmuir and Upper Hybrid Waves in Earth's Magnetotail"](https://agupubs.onlinelibrary.wiley.com/doi/10.1029/2023JA031900)  
[5] [Chen et al., 2019, "Evidence for electron Landau damping in space plasma turbulence"](https://www.nature.com/articles/s41467-019-08435-3)  
[6] [Afshari et al., 2021, "The Importance of Electron Landau Damping for the Dissipation of Turbulent Energy in Terrestrial Magnetosheath Plasma"](https://agupubs.onlinelibrary.wiley.com/doi/abs/10.1029/2021JA029578)  
[7] [田中基彦, 西川恭治, "高温プラズマの物理学"](https://amzn.to/3PHKTdK)  
[8] [Chen, 内田 岱二郎(訳), "プラズマ物理入門"](https://amzn.to/4akfJ5T)  
[9] [小野高幸, 三好由純, "太陽地球圏"](https://link.amazon/B04cHtvB5)  
[10] [物理学のフィロソフィア、"電子プラズマ波 (ラングミュア波)"](https://physics.thick.jp/Plasma_Physics/Section4/4-10.html)  
[11] [中村匡, "ランダウ減衰"](https://note.com/tadas_nakamura/n/nc69a1a9f618b)  
[12] [天文学辞典, "電波バースト (太陽の)"](https://astro-dic.jp/solar-radio-burst/)  

{% include adsense.html %}