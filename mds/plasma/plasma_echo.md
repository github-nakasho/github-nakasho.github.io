---
layout: default
title: プラズマエコー
parent: プラズマ物理学
math: mathjax3
permalink: /plasma/plasma_echo
nav_order: 15
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

# プラズマエコー

ここでは、[ランダウ減衰・逆ランダウ減衰 (ランダウ増幅)](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰) の重要な応用例である、プラズマエコーについてまとめています。

## 線形化されたブラソフ方程式の形式解

[線形化されたブラソフ方程式 (リンク先の(37)式)](/plasma/kinetic_waves_in_plasma_with_no_B#プラズマ系の初期値と固有モードの関係)は、次のように書かれるのでした。

$$
\frac{\partial f_k}{\partial t} + ikv f_k - \frac{e}{m_e} E_k (t) \frac{\partial f_0}{\partial t} 
= 0 \tag{1}
$$

この方程式は

$$
\frac{\partial f_k}{\partial t} + ikv f_k 
= S(t), \quad \left( S(t) \equiv \frac{e}{m_e} E_k(t) \frac{\partial f_0}{\partial v} \right) \tag{2}
$$

のように書き直すことができます。
するとこれは、外力 $$S(t)$$ の影響下にある固有周波数 $$kv$$ で振動する振動子、と見ることができます。
この式の両辺に、$$e^{ikvt}$$ をかけて整理を行いましょう。

$$
e^{ikvt} \left( \frac{\partial f_k}{\partial t} + ikv f_k\right) 
= \frac{\partial}{\partial t} \{e^{ikvt} f_k \} 
= \frac{e}{m_e} e^{ikvt} E_k (t) \frac{\partial f_0}{\partial v} \tag{3}
$$

この両辺を、$$t$$ で積分します。
積分範囲を$$[0, t]$$ とすると

$$
\begin{align}
&e^{ikvt} f_k(v, t) - f_k(v, 0) 
= \frac{e}{m_e} \int_0^t e^{ikvt'} E_k(t') \frac{\partial f_0}{\partial v} dt' \notag \\
&\Longrightarrow \ 
f_k(v, t) 
= e^{-ikvt} \left( f_k(v, 0) + \frac{e}{m_e} \int_0^t e^{ikvt'} E_k(t') \frac{\partial f_e (v)}{\partial v} dt' \right) \tag{4}
\end{align}
$$

のように書かれます。
この式を見ると、分布関数の摂動成分は時間とともに際限なく振動を続け、初期分布に関する情報を伝播させます。
もちろん、これを $$v$$ について積分して得られる密度 $$n_k (t)$$ や、それから計算される電場 $$E_k(t)$$ には、(初期分布が滑らかな関数である限り) この振動は残りません。
ラングミュア波やイオン音波などの部分で見たように、通常これらの積分量は、[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)により初期分布に関係なく時間とともに減衰していきます。
分布関数の摂動成分のこの振動を通した初期状態の記憶は、無衝突系においては、個々の粒子がその初期速度をいつまでも記憶していることを反映しています。
したがって、仮にわずかでも衝突があれば、この振動は減衰し、初期状態に対する記憶は忘れ去られてしまいます。
言い換えると、[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)が本質的に無衝突な物理系での減衰であることを表しています。  
この分布関数の振動という形で残されている、初期状態に対する記憶を実際に観測する方法はないのでしょうか？
また (4) 式を $$v$$ で積分したものは、本当にいつも[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)してしまうのでしょうか？
このような問題は、1960 年代に Q 装置 (Q-machine) と呼ばれる装置を用いて調べられてきました。
低温・低密度のプラズマ中に電子プラズマ波やイオン音波などの波動を励起し、静電プローブを用いてその伝播特性を調べ、[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)と思われる現象を賢章する実験が行われた頃から興味を持たれてきたのです。
そして 1967 年に、次に説明するプラズマエコー (plasma echo) と呼ばれる現象を通じて、これが確認されました。  
最初に、(4) 式の初期分布がどのように作られるかを考えてみましょう。
一つは、プラズマがもともと個々の粒子から離散的になっているという効果 (discreteness effect) が考えられます。
各プラズマ粒子の周りには電場ができ、また粒子の運動に伴って電流が流れます。
これらの微視的な電場・電流に対する分布関数の線形応答をフーリエ分解すると、常にこのような初期摂動分布が形成されます。
これがプラズマ中のノイズ源となり、これにより生成される電磁場のゆらぎは、揺動散逸定理により決定されます。
外部から波数 $$k$$ の電磁場をプラズマ中に印加する実験手法について考えましょう。
外部電場を

$$
E_\mathrm{ext} (x, t) 
= E_0 \cos kx \delta (\omega_p t) \tag{5}
$$

のように表すことにします。
ここで $$\omega_p$$ はプラズマ振動数です。
(4) 式の電場の部分にこの外部電場を代入し、$$t = -0$$ から $$+0$$ まで積分すると

$$
f_k(v, t=+0) 
= \frac{eE_0}{2m_e \omega_p} \frac{\partial f_0(v)}{\partial v} \tag{6}
$$

を得ます。
これが後の $$f_k(v, t)$$ を決める初期分布になります。
これは速度 $$v$$ の滑らかな関数であることから、それを $$v$$ で積分したものには、分布関数の振動の効果は現れません。
したがって、$$E_k(t)$$ は[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)します。

## プラズマエコー

これに対し、プラズマエコーは次のような外部電場で励起された分布関数に関する情報を引き出そうとするものです。

$$
E_\mathrm{ext} (x, t) 
= E_1 \cos k_1 x \delta (\omega_p t) + E_2 \cos k_2 x \delta (\omega_p(t-\tau)), \quad 
(\gamma \tau \gg 1, k_2 > k_1 > 0) \tag{7}
$$

ただし、$$\gamma$$ は典型的な[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)率です。
まず $$0 < t < \tau$$ では $$f_{\pm k_1} (v, t)$$ のみが作られます。
これを (4) 式に代入して

$$
f_{\pm k_1} (v, t) 
= e^{\mp i k_1 vt} \frac{e}{m_e} \left( \frac{E_1}{2\omega_p} \frac{\partial f_0}{\partial v} + \int_0^t e^{\mp ik_1 vt} E_{k_1} (t') \frac{\partial f_0}{\partial v} dt' \right) \tag{8}
$$

次に、$$t = \tau + 0$$ では、$$f_{\pm k_2}$$ と $$f_{\pm (k_2 \pm k_1)}$$ が作られます。
全て考えるのは面倒なので、ここではこのうちの $$f_{k_3} \ (k_3 = k_2 - k_1)$$ に注目することにしましょう。
これは、非線形モード間結合

$$
f_{k_3} (v, \tau+0) 
= \frac{eE_2}{2m_e \omega_p} \frac{\partial f_{-k_1} (v, \tau)}{\partial v} \tag{9}
$$

により作られます。
この初期分布は、(8) 式に代入すればわかるように、$$v$$ に依存する激しい振動を行います。
そして、その後の時間発展は

$$
f_{k_3} (v, t) 
= e^{-ik_3 v (t - \tau)} f_{k_3} (v, \tau+0) \tag{10}
$$

のように表されます。
しかし、これは $$k_3 (t - \tau) = k_1 \tau$$、すなわち

$$
t 
= t_0 
\equiv \frac{k_2}{k_2 - k_1} \tau \tag{11}
$$

という時刻に速度に依存する振動項がちょうど打ち消しあって、振動を示さなくなります。
したがって、これを速度について積分したものも、ゼロにならず有限となり、観測にかかる応答を生じるはずです。
これが、プラズマエコーと呼ばれるものです。
このような結果が得られたのは、$$v$$ に強く依存する初期分布が作られたためです。
これは波数 $$-k_1$$ の分布関数の摂動成分に記憶された初期分布の効果に他なりません。  
そこで、次にプラズマエコーの波形を求めてみましょう。
まず、波数 $$k_3$$ の電場は[縦誘電率 $$\varepsilon_\mathrm{L}$$ を用いた表記 (リンク先の (44) 式)](/plasma/kinetic_waves_in_plasma_with_no_B#プラズマ系の初期値と固有モードの関係)より

$$
\tilde{E} (k_3, \omega) 
= \frac{4\pi e}{k_3^2 \varepsilon_\mathrm{L}} \int_{-\infty}^\infty \frac{f_{k_3} (v, \tau+0)}{v - \frac{\omega}{k_3}} dv \tag{12}
$$

$$
E_{k_3} (t) 
= \frac{1}{2\pi} \int \tilde{E} (k_3, \omega) e^{-i\omega t} d\omega \tag{13}
$$

となります。

{: .note}
フーリエ変換のページと異なり、$$1/2\pi$$ の係数が異なることに注意が必要です。

{% include adsense.html %}

今、$$t \simeq t_0 \gg 1/\gamma$$ なので、(13) 式の $$\omega$$ 積分を実行するにあたっては $$\varepsilon_\mathrm{L} (k_3, \omega) = 0$$ の寄与は[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)するために無視して良いでしょう。
よって $$\omega = k_3 v$$ の寄与だけ考えれば十分でしょう。
すると

$$
E_{k_3} (t) 
= \int_{-\infty}^\infty e^{-i k_3 v (t-\tau)} \frac{4\pi e}{k_3^2 \varepsilon_\mathrm{L} (k_3, k_3 v)} f_{k_3} (v, \tau+0) dv \tag{14}
$$

のようになります。
ここで初期分布 $$f_{k_3} (v, \tau+0)$$ を計算するためには、(9) 式より $$f_{-k_1} (v, t)$$ を計算する必要があります。
これは (8) 式から求めますが、簡単のためこの式で初期値の寄与を無視すると

$$
f_{-k_1} (v, t) 
= \frac{e}{m_e} e^{ik_1 v \tau} \int_0^\tau e^{-ik_1 vt'} E_{-k_1} (t') \frac{\partial f_0 (v)}{\partial v} dt' \tag{15}
$$

のように表されます。
今、$$\tau$$ は[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)時間より遥に長いため

$$
\int_0^\tau e^{-ik_1 vt} E_{k_1} (t') dt' 
\approx E(k_1, -k_1 v) 
= \frac{4\pi e}{k_1^2 \varepsilon_\mathrm{L} (-k_1, -k_1 v)} \int \frac{f_{-k_1} (v', 0)}{v' - v + i\delta} dv' \quad (\delta \rightarrow +0) \tag{16}
$$

のように近似できます。
最後の等式では、(12) 式の表記を用いました。
また、右辺の初期分布は (6) 式にならって

$$
f_{-k_1} (v', 0) 
= \frac{e E_1}{2m_e \omega_p} \frac{\partial f_0 (v')}{\partial v'} \tag{17}
$$

のように書かれます。
これを (16), (15) 式に代入し、それを (9) 式に用いて、そして (14) 式に代入すると次の結果を得ます。

$$
E_{k_3} (t) 
= A \int_{-\infty}^\infty \frac{e^{-ik_3 v (t-t_0)}}{\varepsilon_\mathrm{L}(k_3, k_3v) \varepsilon_\mathrm{L}(-k_1, -k_1v)} \varPsi (v) dv \tag{18}
$$

$$
A 
= \left( \frac{e}{m_e} \right)^3 \left( \frac{2\pi e}{k_1 k_3 \omega_p}\right)^2 E_1 E_2 ik_1 \tau, \quad
\varPsi (v) 
= \int \frac{\frac{\partial f_0 (v')}{\partial v'}}{v' - v + i\delta} dv' \tag{19}
$$

また、(9) 式で $$v$$ に関する微分は、$$e^{ik_1 v \tau}$$ の微分が大きく効くため、その項のみを残しました。  
さて、(18) 式の積分を実行するにあたり、積分路を $$v$$ の複素空間で上半平面 ($$t < t_0$$ のとき) または下半平面 ($$t > t_0$$ のとき) に大きく回して閉じさせ、コーシーの留数定理を用いて計算します。
これができるのは、$$\varPhi (v)$$ の特異点が $$\varepsilon_\mathrm{L} (k_3, k_3 v)$$ または $$\varepsilon_\mathrm{L} (-k_1, -k_1 v)$$ の特異点とちょうど相殺するためです。
すると $$t < t_0$$ では、$$\varepsilon_\mathrm{L} (-k_1, -k_1 v) = 0$$ の極である

$$
-k_1 v 
= - \omega_{k_1} - i \gamma_{k_1}, \quad (\gamma_{k_1} > 0) \tag{20}
$$

が寄与し

$$
E_{k_3} (t) 
\approx \exp \left( - i \frac{k_3}{k_1} \omega_{k_1} t + \frac{k_3}{k_1} \gamma_{k_1} t\right) \tag{21}
$$

という振る舞いをします。
$$t > t_0$$ では $$\varepsilon_\mathrm{L} (k_3, k_3 v) = 0$$ の極である

$$
k_3 v 
= \omega_{k_3} - i \gamma_{k_3}, \quad (\gamma_{k_3} > 0) \tag{22}
$$

が寄与し

$$
E_{k_3} (t) 
\approx \exp (-i \omega_{k_3} t - \gamma_{k_3} t) \tag{23}
$$

のような振る舞いをします。  
ここまでの話は、次の図にまとめることができます。

![](/assets/images/plasma/plasma_echo_01.png)  
プラズマエコーの様子をまとめたもの。$$t = 0$$ と $$t = \tau$$ に印加されたパルスにより生み出された分布関数のゆらぎがそれぞれ減衰したのち、$$t = k_2 \tau / (k_2 - k_1)$$ に $$k_3 = k_2 - k_1$$ の波が現れる。  

時刻 $$t = 0$$ で波数 $$k_1$$ の波動が励起され、[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)します。
その後、$$t = \tau$$ で波数 $$k_2$$ の波が励起されます。
これも[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)したのち、時刻 $$t = t_0 = k_2 \tau / (k_2 - k_1)$$ において、 思い出したように波数 $$k_3$$ の波が自然に現れて消えていきます。
音が反響して返ってくるこだまのようなので、これをプラズマエコーと呼びます。
プラズマエコーの基本的な性質は、その振幅が $$E_1 E_2$$ および 2 つのパルス外部電場の間隔 $$\tau$$ に比例することです。
ここまでの議論から明らかなように、同様の現象が、一般に波数 $$(nk_2 - mk_1)$$ の波が時刻 $$t = nk_2 \tau / (nk_2 - mk_1)$$ に、$$E_1^n E_2^m$$ に比例する振幅で出現します。  
1967年、プラズマエコーの可能性が理論的に予言され ([Gould et al. (1967)](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.19.219))、その半年後にはその予言通りの現象が実験で確認されています ([Malmberg et al. (1968)](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.20.95))。
ただし、実験では時間的に現象を追うのが困難なため、空間的に波の生成・減衰を観測しました。
これは、ここまでの話で $$t \rightarrow x, k \rightarrow \omega$$ と対応づければわかります。
すなわち、$$x = 0$$ の場所に角周波数 $$\omega_1$$ の波動を励起し、そこから[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)距離に比べて十分離れた距離 $$\ell$$ の場所に角周波数 $$\omega_2 \ (> \omega_1)$$ の波を励起します。
すると、そこからさらに十分離れた場所にある $$x = n \omega_2 \ell / (n\omega_2 - m \omega_1)$$ の箇所に、角周波数 $$\omega_3 = n \omega_2 - m \omega_1$$ という波動が自然に現れて消える、という現象を観測したのです。
加えて、その振幅に関する比例則を理論通りに確認しました。
ただし電子プラズマ波の場合には、上述の $$n = 2, m=1$$ の場合のエコーを、またイオン音波の場合には $$n = m = 1$$ の場合をそれぞれ観測しました。
このような組合せが選ばれた理由は、それらの波の分散特性によるものです。  
最後に、プラズマエコーに対するクーロン衝突の効果について触れておきましょう。
クーロン衝突の効果は、[フォッカー・プランク方程式](/plasma/kinetic_eqs#フォッカープランク方程式) で表されます。
このうちの拡散項は、速度に激しく依存する分布に対して極めて効果的に働きます。
実際、分布関数の摂動成分において、初期分布の記憶を伝える項である $$\exp (-ikvt) \ (t \gg 1/\gamma)$$ に拡散項 $$D \frac{\partial^2}{\partial v^2}$$ を作用させると、$$-k^2 t^2$$ に比例する効果が出現します。
これは、時間が経てばたとえ小角度散乱であっても、初期分布の記憶が失われていくことに対応します。
このように、エコーの振幅はクーロン衝突に強く影響されるため、2 つの外部励起電場の距離を変えてその振幅の変化の様子を調べることによって、わずかなクーロン衝突を観測することができないかとも考えられました。
しかし現実の実験では、プラズマの作り方や波動の励起方法が複雑で、この点について理論と実験の対応をつけることはできませんでした。  
[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)により失われた情報が、プラズマエコーとして別の角周波数で現れるため、[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)が可逆過程であることがわかります。
プラズマエコーと同様の現象として、イオン音波の空間エコーを観測した研究が同時期に発表されました ([Ikezi & Takahashi (1968)](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.20.140))。
また、これらよりプラズマ中のエコー現象として、サイクロトロン共鳴エコーが [Hill & Kaplan (1965)](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.14.1062) により、プラズマエコーより先に報告されています。
1960 年代後半は、[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)およびそこから発生するプラズマエコーの理解の進展が大きく動いた時代だったと伺えます。

{% include adsense.html %}

## 応用

以降では、プラズマエコーおよびその考え方が応用されている研究について触れていきます。

### 太陽風でのプラズマエコー

太陽風では、密度などの圧縮性のゆらぎが、広い波数範囲にわたりべき乗則のスペクトルを持つことが観測されています。
しかし、これらのゆらぎは本来ならば[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)を強く受けるはずと考えられてきました。
[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)で消えるはずのゆらぎが、なぜ乱流として生き残るのかが長年の問題でした。  
[Barnes (1966)](https://pubs.aip.org/aip/pfl/article-abstract/9/8/1483/806729/Collisionless-Damping-of-Hydromagnetic-Waves?redirectedFrom=fulltext) では、無衝突プラズマ中の MHD 波の分散関係を数値計算しました。
するとシアアルヴェーン波以外の全ての MHD 波動が、中程度以上のプラズマベータで強く減衰することを示しました。
その後、この結果は太陽風に適用され、圧縮性の波動は強く減衰して太陽風の加熱源になりうると議論されるようになったのです。
しかし、実際に観測された太陽風の密度ゆらぎはほぼコルモゴロフ則に従うスペクトルを持つことがわかり、これはアルヴェーン乱流によるものであると言われるようになりました。
太陽風は本質的に無衝突であり、圧縮性のゆらぎは[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)を受けるという先ほどの説明と矛盾します。  
最近になり、この問題をプラズマエコーで解決する試みが考え出されました。
[Adkins & Schekochihin (2018)](https://www.cambridge.org/core/journals/journal-of-plasma-physics/article/abs/solvable-model-of-vlasovkinetic-plasma-turbulence-in-fourierhermite-phase-space/000E7BCAA305329FD131F8A9245ABB6C) では、確率的な電場を仮定することで、解析的に解くことが可能なブラソフ運動論的乱流モデルを作りました。
そのモデルの解では、低次から高次のエルミートモーメントへの自由エネルギーの流れが抑制され、位相混合が平均的に反位相混合 (これを確率的プラズマエコーと呼びます) で打ち消されることを、フーリエ・エルミート空間で示しました。
このモデルにおいては、[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)が散逸に至る有効な道ではないことを示したのです。
[Meyrand et al. (2019)](https://www.pnas.org/doi/full/10.1073/pnas.1813913116) は、このモデルを太陽風に直接適用した研究です。
先ほどと同様に、無衝突プラズマ乱流では乱流運動による粒子分布の非線形な移流が生まれ、[ランダウ減衰](/plasma/langmuir_landau_damping#ラングミュア波の減衰-ランダウ減衰)による位相混合が強く抑制されることを示しました。
乱流中では、他のゆらぎが絶えず 2 回目のパルスの役割を果たし、小スケールに運ばれた自由エネルギーが、エコーにより大きなスケールへと再び戻されることを議論しました。
これはコルモゴロフ的な描像、すなわち流体的な散逸が起こる「無衝突プラズマの流体化」と呼ばれています。

### 天の川銀河円盤中のエコーの可能性

恒星とガスからなる銀河円盤の進化は、銀河中心の棒状構造や円盤全体に広がる渦状腕、そして伴銀河からの影響を受けます。
中でも伴銀河の円盤への衝突や近傍の通過は、外部からの摂動として重要な役割を果たします。
具体的には、銀河円盤の力学的な加熱・円盤内の円環状構造の形成・恒星の速度成分の相関構造、などをもたらします。
[Antoja et al. (2018)](https://www.nature.com/articles/s41586-018-0510-7) では Gaia DR2 データの中から、太陽近傍 1 kpc 以内にある天の川銀河円盤中の 600 万個以上の恒星データを用い、$$(z, v_z)$$ 位相空間での恒星分布を調査しました ($$z$$: 銀河円盤鉛直方向の座標、$$v_z$$: 銀河円盤鉛直方向の速度成分)。
そして、位相空間内にカタツムリの殻のような渦巻き模様を発見しました。
この渦巻きは、銀河円盤が摂動を受けたのち、位相混合が完了していない状態を表しています。
[恒星からなる重力多体系もブラソフ方程式により表現できる](/galady/vlasov)ことが知られており、プラズマと同様のエコー現象・摂動を受けたことの記憶の保持が起こると類推した研究が [Chiba et al. (2025)](https://academic.oup.com/mnras/article/543/1/190/8246655) です。
この論文では、位相空間エコーの可能性を検討しました。
角度-作用変数 (angle-action variables) を用いてプラズマーエコーの理論の恒星系バージョンを導出し、それを天の川銀河における鉛直運動の一次元モデルに適用しました。
残念ながら、[Antoja et al. (2018)](https://www.nature.com/articles/s41586-018-0510-7) で観測されたカタツムリの殻構造そのものが (純粋な) エコーの効果である可能性は低いとしました。
しかし、この位相空間エコーは普遍的に起こる現象であると結論づけており、円盤銀河内で一般的に見られる現象として今後観測されるかもしれません。

![](/assets/images/plasma/plasma_echo_02.png)  
[Chiba et al. (2025)](https://academic.oup.com/mnras/article/543/1/190/8246655) より、$$(z, v_z)$$ 位相空間内での渦巻き模様の進化の様子。
$$t_1 = 0.2 \mathrm{Gyr}$$ (青枠) で一回目の摂動が加えられ、$$t = 0.8 \mathrm{Gyr}$$ (緑枠) で二回目の摂動が加えられる。その結果、$$t = 1.4 \mathrm{Gyr}$$ (赤枠) でエコーが発生する。

## 参考文献

[1] [Gould et al., 1967, "Plasma Wave Echo"](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.19.219)  
[2] [Malmberg et al., 1968, "Plasma Wave Echo Experiment"](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.20.95)  
[3] [Ikezi & Takahashi, 1968, "Observation of Spatial Ion-Wave Echoes"](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.20.140)  
[4] [Hill & Kaplan, 1965, "Cyclotron Resonance Echo"](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.14.1062)  
[5] [Barnes, 1966, "Collisionless Damping of Hydromagnetic Waves"](https://pubs.aip.org/aip/pfl/article-abstract/9/8/1483/806729/Collisionless-Damping-of-Hydromagnetic-Waves?redirectedFrom=fulltext)  
[6] [Adkins & Schekochihin, 2018, "A solvable model of Vlasov-kinetic plasma turbulence in Fourier-Hermite phase space"](https://www.cambridge.org/core/journals/journal-of-plasma-physics/article/abs/solvable-model-of-vlasovkinetic-plasma-turbulence-in-fourierhermite-phase-space/000E7BCAA305329FD131F8A9245ABB6C)  
[7] [Meyrand et al., 2019, "Fluidization of collisionless plasma turbulence"](https://www.pnas.org/doi/full/10.1073/pnas.1813913116)  
[8] [Antoja et al., 2018, "A dynamically young and perturbed Milky Way disk"](https://www.nature.com/articles/s41586-018-0510-7)  
[9] [Chiba et al., 2025, "Galacic echoes"](https://academic.oup.com/mnras/article/543/1/190/8246655)  
[10] [田中基彦, 西川恭治, "高温プラズマの物理学"](https://amzn.to/3PHKTdK)  

{% include adsense.html %}