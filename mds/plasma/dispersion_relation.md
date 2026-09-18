---
layout: default
title: プラズマ中の運動論的波動の一般論
parent: プラズマ物理学
math: mathjax3
permalink: /plasma/kinetic_waves_in_plasma
nav_order: 11
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

# プラズマ中の運動論的波動の一般論

## プラズマ固有波動の分散関係式

一様プラズマ中の固有モード波動の性質を知るために、必要となる分散関係式の導出を行いましょう。
プラズマ中の電磁場を記述する方程式は、マクスウェル方程式で与えられます。

$$
\nabla \cdot \mathbf{E} 
= 4\pi \rho \tag{1}
$$

$$
\nabla \cdot \mathbf{B} 
= 0 \tag{2}
$$

$$
\nabla \times \mathbf{E} 
= - \frac{1}{c} \frac{\partial \mathbf{B}}{\partial t} \tag{3}
$$

$$
\nabla \times \mathbf{B}  
= \frac{4\pi}{c} \mathbf{j} + \frac{1}{c} \frac{\partial \mathbf{E}}{\partial t} \tag{4}
$$

電磁場に対するプラズマの応答の様子の情報は、電流密度 $$\mathbf{j}$$ と電荷密度 $$\rho$$ の中に含まれています。
これらは連続の式

$$
\frac{\partial \rho}{\partial t} + \nabla \cdot (\rho \mathbf{j}) 
= 0 \tag{5}
$$

を満たします。  
ここで、一様プラズマ中では物理量が平面波の重ね合わせで表現されることから、電磁場・電流・電荷密度が $$e^{i(\mathbf{k} \cdot \mathbf{x} - \omega t)}$$ の依存性を持つとしましょう。
ここで $$\mathbf{k}$$ は波数ベクトル、$$\omega$$ は波動の角周波数です。
そしてフーリエ係数 (振幅) は、マクスウェル方程式と連続の式から

$$
i \mathbf{k} \cdot \mathbf{E}_k 
= 4\pi \rho_k \tag{6}
$$

$$
i \mathbf{k} \cdot \mathbf{B}_k 
= 0 \tag{7}
$$

$$
i \mathbf{k} \times \mathbf{E}_k 
= \frac{i \omega}{c} \mathbf{B}_k \tag{8}
$$

$$
i \mathbf{k} \times \mathbf{B}_k 
= \frac{4\pi}{c} \mathbf{j}_k - \frac{i\omega}{c} \mathbf{E}_k \tag{9}
$$

$$
-i\omega \rho_k + i \mathbf{k} \cdot \mathbf{j}_k 
= 0 \tag{10}
$$

を満たします。
プラズマ中では、電場 $$\mathbf{E}$$ に対応して電流 $$\mathbf{j}$$ が生じることから、電場が十分小さいときには、電流と電場の関係が電気伝導度テンソル $$\sigma$$ を用いて $$\mathbf{j}_k = \sigma \mathbf{E}_k$$ と表されると考えて良いでしょう (これはオームの法則に他なりません)。
これと (9) 式より

$$
i \mathbf{k} \times \mathbf{B}_k 
= \frac{4\pi \sigma}{c} \mathbf{E}_k - \frac{i\omega}{c} \mathbf{E}_k \ \Longrightarrow \ 
\varepsilon \mathbf{E}_k 
\equiv \left( I + \frac{4\pi i \sigma}{\omega} \right) \mathbf{E}_k 
= - \frac{c}{\omega} \mathbf{k} \times \mathbf{B}_k \tag{11}
$$

を得ます。
ここで、$$I$$ は単位テンソルです。
ここで定義された

$$
\varepsilon (\mathbf{k}, \omega) 
= I + \frac{4\pi i \sigma}{\omega} \tag{12}
$$

を、誘電率テンソル (dielectric tensor) と呼び、プラズマが電磁揺動に対してどのように応答するかの情報が全てここに含まれています。
したがって、誘電率テンソルを詳細に調べることで、プラズマの線形的 (微小振幅の電磁場に対する) 性質を知ることができます。

### 静電波の場合

ここで、特に静電波動 (磁場の変動を伴わず電場のみ振幅をもつプラズマ波動) について考えてみましょう。
(6), (10) 式より

$$
i \mathbf{k} \cdot \mathbf{E}_k - \frac{4\pi \mathbf{k}}{\omega} \cdot \sigma \mathbf{E}_k 
= i \mathbf{k} \cdot \left( I + \frac{4\pi i \sigma}{\omega}\right) \mathbf{E}_k = 0 \ \Longrightarrow \ 
i \mathbf{k} \cdot \varepsilon \mathbf{E}_k 
= 0 \tag{13}
$$

のように、誘電率テンソルを用いて書くことができます。
この式は、(11) 式の両辺に $$\mathbf{k} \cdot$$ をかけても得られることから、(11) 式の特別な場合と見ることができます。
揺動電場が静電ポテンシャルだけで表される静電波については、$$\mathbf{k} \parallel \mathbf{E}_k$$ であるため、(13) 式は $$\mathbf{k} \cdot \varepsilon \cdot E_k \mathbf{k} =0$$ のように書けます。
したがって、$$E_k \neq 0$$ となるような解、すなわち静電波の固有モードは、分散関係式

$$
\varepsilon_\mathrm{L} ( \mathbf{k}, \omega) 
\equiv \frac{\mathbf{k} \cdot \varepsilon (\mathbf{k}, \omega) \cdot \mathbf{k}}{k^2} 
= 0 \tag{14}
$$

を解くことで得ることができます。
今、粒子種を $$s$$ で表し、その電気感受率を

$$
\chi_s (\mathbf{k}, \omega) 
\equiv \frac{4\pi i}{\omega} \frac{\mathbf{k} \cdot \sigma_s (\mathbf{k}, \omega) \cdot \mathbf{k}}{k^2} \tag{15}
$$

のように定義すると、(10) 式より

$$
\rho_k 
= \frac{1}{\omega} \mathbf{k} \cdot \mathbf{j}_k 
= \frac{1}{\omega} \mathbf{k} \cdot \sum_s \sigma_s \underbrace{\mathbf{E}_k}_{= E_k \mathbf{k}} 
= - \frac{ik}{4\pi} \sum_s \chi_s E_k \tag{16}
$$

のように書けます。
これは、電気感受率が、電荷揺動と電場を結びつける比例定数であることを表しています。
また (14), (15) 式から、縦誘電率は電気感受率を用いて

$$
\varepsilon_\mathrm{L} 
= 1 + \sum_s \chi_s \tag{17}
$$

のように表すことができます。

### 一般的な場合

それでは、話を一般的な場合に戻すことにしましょう。
(8), (11) 式を用い、磁場を消去すると

$$
\varepsilon \mathbf{E}_k + \frac{c}{\omega} \mathbf{k} \times \mathbf{B}_k 
= \varepsilon \mathbf{E}_k + \frac{c^2}{\omega^2} \mathbf{k} \times (\mathbf{k} \times \mathbf{E}_k) 
= \left\{ \varepsilon - \frac{c^2 k^2}{\omega^2} \left( I - \frac{\mathbf{k} \mathbf{k}}{k^2}\right) \right\} \mathbf{E}_k 
= \mathbf{0} \tag{18}
$$

のようになります。
$$\mathbf{E}_k$$ の係数部分を新たに $$D(\mathbf{k}, \omega)$$ とおけば

$$
D(\mathbf{k}, \omega) \mathbf{E}_k 
= \mathbf{0}, \quad D(\mathbf{k}, \omega) 
\equiv \varepsilon (\mathbf{k}, \omega) - \frac{c^2 k^2}{\omega^2} \left( I - \frac{\mathbf{k} \mathbf{k}}{k^2}\right) \tag{19}
$$

のようになります。
自明でない解が存在するためには、$$D(\mathbf{k}, \omega)$$ の行列式がゼロとなること、すなわち

$$
\mathrm{det} D (\mathbf{k}, \omega) 
= \mathrm{det} \left\{ \varepsilon (\mathbf{k}, \omega) - \frac{c^2 k^2}{\omega^2} \left( I - \frac{\mathbf{k} \mathbf{k}}{k^2}\right) \right\} \tag{20}
$$

です。
これが、一様プラズマ中に存在する電磁波動の固有モードを与える分散関係式です。

## 誘電率テンソルによるプラズマの記述

それでは次に、誘電率テンソル $$\varepsilon (\mathbf{k}, \omega)$$ がプラズマの状態とどのように関係づけられるかを考えてみましょう。
誘電率テンソル $$\varepsilon$$ の定義式 (11) において、電流を陽に書き表すと

$$
\varepsilon \mathbf{E}_k 
= \mathbf{E}_k + \frac{4\pi i}{\omega} \sigma \mathbf{E}_k 
= \mathbf{E}_k + \frac{4\pi i}{\omega} \mathbf{j}_k 
= \mathbf{E}_k + \frac{4\pi i}{\omega} \sum_s q_s \int \mathbf{v} f_{s, k} (\mathbf{v}) d^3 \mathbf{v} \tag{21}
$$

のようになります。
ここで、$$f_{s, k} (\mathbf{v})$$ はプラズマを構成する $$s$$ 種の粒子の分布関数 $$f_s (\mathbf{v})$$ のフーリエ振幅です。
これを電場の関数として書き表すことができれば、誘電率テンソルを書き下すことができます。  

### 背景磁場が存在しない場合

ここでは特に、取り扱いが簡単な背景磁場がない場合について見ていきましょう。
まずは、ブラソフ方程式の線形化を考えます。

$$
\frac{\partial f_s}{\partial t} + \mathbf{v} \cdot \nabla_x f_s + \frac{q_s}{m_s} \left( \mathbf{E} + \frac{\mathbf{v}}{c} \times \mathbf{B} \right) \cdot \nabla_v f_s 
= 0 \tag{22}
$$

分布関数を $$f = f_0  + \delta f$$ のように、平衡量 (0 次の量) とそこからの微小変動量 (1 次の量) に分離します。
背景磁場がないことから、電磁場には 0 次の量が存在しません。
よって $$\mathbf{E}, \mathbf{B}$$ を 1 次の電磁場として

$$
\frac{\partial \delta f}{\partial t} + \mathbf{v} \cdot \nabla_x \delta f 
= - \frac{q}{m} \left( \mathbf{E} + \frac{\mathbf{v}}{c} \times \mathbf{B} \right) \cdot \nabla_v f_0 \tag{23}
$$

のようになります。
(23) 式の左辺は、ラグランジュ微分の形をしています。
プラズマが一様であることから、(23) 式における電磁場を平面波の重ね合わせ $$\mathbf{E} = \mathbf{E}_k e^{i(\mathbf{k} \cdot \mathbf{x} - \omega t)}$$ で表すことができます。
よって 1 次の分布関数を求める式は

$$
\frac{d \delta f}{d t} 
= - \frac{q}{m} \left( \mathbf{E}_k + \frac{\mathbf{v}}{c} \times \mathbf{B}_k\right) \cdot \nabla_v f_0 e^{i (\mathbf{k} \cdot \mathbf{x} - \omega t)} \tag{24}
$$

となります。
この式の $$(\cdots)$$ の部分に、(8) 式を用いて $$\mathbf{B}_k$$ を消去すると

$$
\begin{align}
\mathbf{E}_k + \frac{\mathbf{v}}{c} \times \mathbf{B}_k 
&= \mathbf{E}_k + \frac{1}{\omega} \mathbf{v} \times (\mathbf{k} \times \mathbf{E}_k) 
= \mathbf{E}_k + \frac{1}{\omega} \{(\mathbf{v} \cdot \mathbf{E}_k) \mathbf{k} - (\mathbf{v} \cdot \mathbf{k}) \mathbf{E}_k\} \notag \\
&= \left( 1 - \frac{\mathbf{k} \cdot \mathbf{v}}{\omega} \right) \mathbf{E}_k + \frac{\mathbf{v} \cdot \mathbf{E}_k}{\omega} \mathbf{k} \tag{25}
\end{align}
$$

のようになります。
しかし最右辺の第二項において、その $$i$$ 成分のみを書き出すと

$$
[(\mathbf{v} \cdot \mathbf{E}_k) \mathbf{k}]_i
= (v_j E_{k, j}) k_i 
= (k_i v_j) E_{k, j}  
= [(\mathbf{k} \mathbf{v}) \mathbf{E}_k]_i \tag{26}
$$

のように、$$\mathbf{k} \mathbf{v}$$ のようなテンソルを使って書き表すことができます。
ここで

$$
\mathbf{k} \mathbf{v} 
= \left( \begin{array}{ccc}
k_x v_x & k_x v_y & k_x v_z \\
k_y v_x & k_y v_y & k_y v_z \\
k_z v_x & k_z v_y & k_z v_z 
\end{array} \right) \tag{27}
$$

です。
以上より

$$
\frac{d\delta f}{dt} 
= - \frac{q}{m} \left\{ \left( 1 - \frac{\mathbf{k} \cdot \mathbf{v}}{\omega} \right) I + \frac{\mathbf{k} \mathbf{v}}{\omega} \right\} \mathbf{E}_k \cdot \nabla_v f_0 e^{i (\mathbf{k} \cdot \mathbf{x} - \omega t)} \tag{28}
$$

を得ます。  
摂動がない場合の軌道 $$\mathbf{x}' = \mathbf{x} + \mathbf{v} \tau, t' = t + \tau$$ に沿って位相を評価することにしましょう。
この $$\tau$$ は時間を表すパラメータとして新たに導入され、$$\tau = 0$$ なら $$t'$$ は現在時刻 $$t$$ に一致します。

$$
\mathbf{k} \cdot \mathbf{x}' - \omega t' 
= (\mathbf{k} \cdot \mathbf{x} - \omega t) + (\mathbf{k} \cdot \mathbf{v} - \omega) \tau \tag{29}
$$

のようになります。
すなわち摂動がない場合、軌道に沿った位相の変化率が $$\mathbf{k} \cdot \mathbf{v} - \omega$$ と表されます。
(28) 式の左辺はラグランジュ時間微分であることから、軌道に沿った $$\delta f$$ の変化率を表すものです。
そこで、この式を $$\tau = -\infty$$ (無限の過去) から $$\tau = 0$$ まで積分することで、現在の $$\delta f$$ を得ることができます。

$$
\begin{align}
\delta f (\mathbf{x}, \mathbf{v}, t) 
&= \int_{-\infty}^0 \frac{d\delta f}{d\tau} d\tau \notag \\
&= - \int_{-\infty}^0 \frac{q}{m} \left\{ \left( 1 - \frac{\mathbf{k} \cdot \mathbf{v}}{\omega}\right) I + \frac{\mathbf{k} \mathbf{v}}{\omega}\right\} \mathbf{E}_k \cdot \nabla_v f_0 e^{i(\mathbf{k} \cdot \mathbf{x} - \omega t)} e^{i (\mathbf{k} \cdot \mathbf{v} - \omega) \tau} d\tau \tag{30}
\end{align}
$$

$$\delta f = \delta f_k e^{i(\mathbf{k} \cdot \mathbf{x} - \omega t)}$$ のように、フーリエ振幅を考えることにすると

$$
\delta f_k 
= - \int_{-\infty}^0 \frac{q}{m} \left\{ \left( 1 - \frac{\mathbf{k} \cdot \mathbf{v}}{\omega}\right) I + \frac{\mathbf{k} \mathbf{v}}{\omega}\right\} \mathbf{E}_k \cdot \nabla_v f_0 e^{i (\mathbf{k} \cdot \mathbf{v} - \omega) \tau} d\tau \tag{31}
$$

となります。
今、ゼロ次の電磁場が存在しない場合の計算を行なっているため、軌道に沿って速度は変化しないと考えることができます。
すなわち $$\mathbf{k}, \mathbf{v}, \mathbf{E}_k, \nabla_v f_0, $$ は全て $$\tau$$ に依存しないことがわかります。
また積分において、無限の過去には摂動が存在しない ($$\tau = -\infty$$ で $$\delta f = 0$$) であるとすると、$$\mathrm{Im} (\mathbf{k} \cdot \mathbf{v} - \omega) < 0$$ であることが要請されます。
以上から

$$
\begin{align}
\delta f_k 
&= - \frac{q}{m} \left\{ \left( 1 - \frac{\mathbf{k} \cdot \mathbf{v}}{\omega}\right) I + \frac{\mathbf{k} \mathbf{v}}{\omega}\right\} \mathbf{E}_k \cdot \nabla_v f_0 \left[ \frac{e^{i(\mathbf{k} \cdot \mathbf{v} - \omega) \tau}}{i (\mathbf{k} \cdot \mathbf{v} - \omega) }\right]_{-\infty}^0 \notag \\
&= - \frac{q}{m} \left\{ \left( 1 - \frac{\mathbf{k} \cdot \mathbf{v}}{\omega}\right) I + \frac{\mathbf{k} \mathbf{v}}{\omega}\right\} \mathbf{E}_k \cdot \frac{\nabla_v f_0}{i (\mathbf{k} \cdot \mathbf{v} - \omega)} \notag \\
&= \frac{q}{im\omega} \left\{ I- \frac{\mathbf{k} \mathbf{v}}{\mathbf{k} \cdot \mathbf{v} - \omega} \right\} \mathbf{E}_k \cdot \nabla_v f_0 
\underbrace{=}_{(26)} \frac{q}{im\omega} \left[ \mathbf{E}_k \cdot (\nabla_v f_0) - \frac{(\mathbf{v} \cdot \mathbf{E}_k) (\mathbf{k} \cdot \nabla_v f_0)}{\mathbf{k} \cdot \mathbf{v} - \omega}\right] \tag{32} 
\end{align}
$$

のようになります。
(32) 式でゆらぎの分布関数が分母に $$\mathbf{k} \cdot \mathbf{v} - \omega$$ を含んでいます。
これは速度 $$\mathbf{v} = \frac{\omega}{k} \frac{\mathbf{k}}{k}$$ で波動とともに運動する粒子 (共鳴粒子) が、波の成長・減衰に大きく寄与することを示唆しています (詳細はランダウ減衰などのページをご覧ください)。  
電流密度のゆらぎは、$$\delta f_k$$ に $$q\mathbf{v}$$ をかけ、速度空間で積分することで得られます。
$$\mathbf{E}_k$$ はフーリエ係数であり、$$\mathbf{k}, \omega$$ の関数であることから、積分の外に出すと

$$
\begin{align}
(第一項) 
&= \int \{\mathbf{E}_k \cdot (\nabla_v f_0) \} \mathbf{v} d^3 \mathbf{v}
= \int E_{k, j} (\nabla_{v_j} f_0) v_i d^3 \mathbf{v} 
= E_{k, j} \int (\nabla_{v_j} f_0) v_i d^3 \mathbf{v} \notag \\
&\underbrace{=}_{部分積分} E_{k, j} \left( \left[ f_0 v_i \right]_{-\infty}^\infty - \int f_0 \nabla_{v_j} v_i d^3 \mathbf{v} \right) 
= - E_{k, j} \int f_0 \delta_{ij} d^3 \mathbf{v} 
= - \mathbf{E}_k n_0 \tag{33}
\end{align}
$$

のように整理できます。
ここで、$$n_0 = \int f_0 d^3 \mathbf{v}$$ は、粒子数密度です。
以上から、プラズマが複数の粒子種から構成されている場合、電流密度のゆらぎは

$$
\mathbf{j}_k 
= - \sum_s \frac{q_s^2}{im_s \omega} \left\{ n_{0, s} \mathbf{E}_k - \int \frac{(\mathbf{v} \cdot \mathbf{E}_k) (\mathbf{k} \cdot \nabla_v f_{0, s}) \mathbf{v} }{\omega - \mathbf{k} \cdot \mathbf{v} \mathbf{v}} d^3 \right\} \tag{34}
$$

のようになります。
同様に、(11) 式は

$$
\begin{align}
\varepsilon \mathbf{E}_k 
&= \mathbf{E}_k + \frac{4\pi i \overbrace{\sigma \mathbf{E}_k}^{=\mathbf{j}_k}}{\omega} 
= \mathbf{E}_k + \frac{4\pi i}{\omega} \left( - \sum_s \frac{q_s^2}{im_s \omega} \left\{ n_{s, 0} \mathbf{E}_k - \int \frac{(\mathbf{v} \cdot \mathbf{E}_k) (\mathbf{k} \cdot \nabla_v f_{0, s}) \mathbf{v}}{\omega - \mathbf{k} \cdot \mathbf{v} } d^3 \mathbf{v}\right\} \right) \notag \\
&= \left( 1 - \sum_s \frac{4\pi q_s^2 n_{0, s}}{m_s \omega^2} \right) \mathbf{E}_k + \sum_s \frac{4\pi q_s^2}{m_s \omega^2} \int \frac{(\mathbf{v} \cdot \mathbf{E}_k) (\mathbf{k} \cdot \nabla_v f_{0, s}) \mathbf{v} }{\omega - \mathbf{k} \cdot \mathbf{v} } d^3 \mathbf{v} \tag{35}
\end{align}
$$

のようになります。
ここで[プラズマ振動数 $$\omega_p^2 = \sum_s \omega_{p, s}^2 = \sum_s \frac{4\pi q_s^2 n_{0, s}}{m_s}$$](/plasma/propagation_cold#分散関係式の導出) を用いると、最終的に

$$
\varepsilon 
= \left( 1 - \frac{\omega_p^2}{\omega^2} \right) I + \sum_s \frac{4\pi q_s^2}{m_s \omega^2} \int \frac{(\mathbf{k} \cdot \nabla_v f_{s, 0}) \mathbf{v}\mathbf{v} }{\omega - \mathbf{k} \cdot \mathbf{v} } d^3 \mathbf{v} \tag{36}
$$

を得ます。

## プラズマ系の初期値と固有モードの関係

一般に、物理現象には必ずどこかに始まり (開始時刻) があります。
プラズマ系においては、プラズマが生成されたときが始まりです。
あるいは、定常状態にある静かなプラズマ中に、外部から粒子ビームなどが入射したときも、始まりの一つと考えられるでしょう。
あsらに、プラズマ中のゆらぎについて考えた場合、プラズマを構成する個々の粒子の運動に伴う微視的な電流や電荷が、物理現象開始のトリガーとなります。
物理量を平面波 $$e^{i(kx - \omega t)}$$ で展開するときには、すでにプラズマ系が初期状態から十分に緩和され、定常状態に近いことを暗黙のうちに仮定しています。
それでは、ここまで議論してきた固有モードの話は、プラズマ現象を初期値問題として考えたとき、どこに現れるのでしょうか。  
簡単な例として、1 次元の電子プラズマ中の静電波について考察しましょう。
平衡状態が空間的に一様であると仮定し、分布関数を 0 次 (平衡) の $$f_0$$ と 1 次 (摂動) 部分の $$f_k$$ に分け、$$f(x, v, t) = f_0 (v) + f_k (v, t) e^{ikx}$$ のようにします。
このとき、線形化されたブラソフ方程式は、$$E_k$$ が 1 次量であることから

$$
\frac{\partial f_k}{\partial t} + i k v f_k - \frac{e}{m_e} E_k \frac{\partial f_0}{\partial v} 
= 0 \tag{37}
$$

で与えられます。
初期値問題を扱うためのラプラス変換は

$$
f(t) 
= \frac{1}{2\pi} \int_\mathrm{L} \tilde{f} (\omega) e^{-i\omega t} d\omega \tag{38}
$$

$$
\tilde{f} (\omega) 
= \int_0^\infty f(t) e^{i\omega t} dt \tag{39}
$$

で定義されます。
積分 $$\int_\mathrm{L}$$ は複素数 $$\omega$$ の平面上で、$$\tilde{f}(\omega)$$ の極を全て下に見るような、$$\mathrm{Im} (\omega) > 0$$ の値をもつ横軸に平行な直線 L に沿って行います。
積分経路をこのようにすることで、因果律を満たす初期値問題の正しい解を得ることができます。
線形化したブラソフ方程式をラプラス変換するために、両辺に $$\int_0^\infty dt e^{i\omega t}$$ を作用させましょう。

$$
\begin{align}
(第一項) 
&= \int_0^\infty \frac{\partial f_k}{\partial t} e^{i\omega t} dt 
= [f_k e^{i\omega t}]_0^\infty - i\omega \int_0^\infty f_k e^{i\omega t} dt \notag \\
&= - f_k(v, t=0) - i \omega \tilde{f}_k (v, \omega) \tag{40}
\end{align}
$$

より、(37) 式は

$$
\begin{align}
&-i\omega \tilde{f}_k (v, \omega) + ik v \tilde{f}_k - \frac{e}{m_e} \tilde{E}_k \frac{\partial v_0}{\partial v} 
= f_k(v, t=0) \notag \\
&\Longrightarrow \ \tilde{f}_k (v, \omega) 
= i \frac{\frac{e}{m_e} \tilde{E}_k (\omega) \frac{\partial f_0}{\partial v} + f_k (, t = 0)}{\omega - kv} \tag{41}
\end{align}
$$

のようになります。
マクスウェル方程式 (6) から

$$
ik \tilde{E}_k (\omega) 
= - 4\pi e \int \tilde{f}_k (v, \omega) dv \tag{42}
$$

です。
これに (41) 式を代入して

$$
\begin{align}
&ik \tilde{E}_k 
= - 4\pi i e \int \frac{\frac{e}{m_e} \tilde{E}_k \frac{\partial f_0}{\partial v} + f_k (v, t=0)}{\omega - kv} dv \notag \\
&\Longrightarrow \ 
i k \tilde{E}_k \left( 1 + \frac{4\pi e^2}{m_e k^2} \int \frac{k \frac{\partial f_0}{\partial v}}{\omega - v k} dv \right) 
= \frac{4\pi i e}{k} \int \frac{f_k (v, t=0)}{v - \frac{\omega}{k}} dv \tag{43}
\end{align}
$$

のようになります。
左辺の $$(\cdots )$$ は後述するように、縦誘電率 $$\varepsilon_\mathrm{L} (k, \omega)$$ であり

$$
\tilde{E}_k(\omega) 
= \frac{4\pi e}{k^2 \varepsilon_\mathrm{L}} \int \frac{f_k(v, t=0)}{v - \frac{\omega}{k}} dv \tag{44}
$$

のように書き表されます。  
これにラプラス逆変換を行うわけですが、その際、積分経路に沿って $$\mathrm{Im}(\omega) > 0$$ が要請されます。
よって、(44) 式の積分の経路についても条件が課されます。
(43) 式の左辺に現れる、誘電率の速度空間での積分における $$\mathrm{Im} (\omega) > 0$$ の条件は、極 $$v = \omega / k$$ が複素数 $$v$$ の平面の上半面にあることを強制します。
したがって、$$\mathrm{Im} (\omega) < 0$$ となり、極が下半面に存在する場合には、積分値に不連続が生じないように解析接続をする必要があります。
このために、極を上に見るように積分経路を変形する必要があります。
これは、ランダウの積分路 (Landau contour) と呼ばれ、初期値問題に正しい物理解を与える条件となっています (この部分の詳しい議論については、プラズマ分散関数のページをご覧ください)。  
初期値 $$f_k (v, t=0)$$ に対応する電場 $$E_k (t)$$ の振る舞いは、(44) 式をラプラス逆変換することにより計算できます。
このとき、(44) 式は、$$\varepsilon_\mathrm{L} (k, \omega) = 0 \ (\omega = \omega_\mathrm{r} + i \omega_\mathrm{i})$$ において極を持ちます。
よって、ラプラス逆変換の積分計算のために、複素数 $$\omega$$ の平面上での積分路を次図のように変形させます。

![](/assets/images/dispersion_relation_01.png)  
ラプラス逆変換のための積分経路。P は極の位置を表す。  

すると積分は

$$
E_k (t) 
= \frac{1}{2\pi} \int_\mathrm{L} \tilde{E}_k (\omega) e^{-i\omega t} d\omega \tag{45}
$$

に対し、留数定理から、$$\varepsilon_\mathrm{L} (k, \omega) = 0$$ は因子 $$e^{(-i\omega_\mathrm{r} + \omega_\mathrm{i}) t}$$ を含むような振動しながら振幅が成長 (または減衰) するような解を与えます。
一方、積分経路の残りの部分については $$L_3$$ からの寄与は $$e^{-\omega_{\mathrm{i}, 1} t}$$ を含み、$$L_2$$ からは $$1/ \omega_{\mathrm{r}, 1}$$ の寄与が生まれます。
$$L_1$$ 部分については被積分関数が激しく振動するため、$$\omega_{\mathrm{r}, 1}, \omega_{\mathrm{i}, 1} \rightarrow \infty$$ となると、積分の寄与が急速に消滅します。
したがって、初期状態の影響が残る過渡的な時期が終わると、プラズマ内では $$\varepsilon_\mathrm{L} (k, \omega) =0$$ から決定される固有モードが支配的となります。
ここまでの議論から固有モードとは、初期条件に依存せず与えられた、プラズマに固有の波動であると言えます。

## 縦・横モードの分離

背景磁場を持たない一様なプラズマは等方的で、このときの唯一の方向は、波の伝搬方向です。
このため誘電率テンソルは、波数ベクトル $$\mathbf{k}$$ に関して二つの互いに独立なスカラー部分に分離することができます。

$$
\varepsilon (\mathbf{k}, \omega) 
= \varepsilon_\mathrm{L}(\mathbf{k}, \omega) \frac{\mathbf{k}\mathbf{k}}{k^2} + \varepsilon_\mathrm{T} (\mathbf{k}, \omega) \left( I - \frac{\mathbf{k}\mathbf{k}}{k^2}\right) \tag{46}
$$

のように書けます。
第一項は電場のゆらぎが波数ベクトルと同じ方向である場合、第二項は電場が波数ベクトルと垂直な場合に対応します。
電場のゆらぎが波の進行方向と平行 $$\mathbf{k} \parallel \mathbf{E}_k$$ であるような縦波 (longitudinal wave) の場合、波は静電的となります (マクスウェル方程式のファラデーの法則から $$\mathbf{B}_k \propto \mathbf{k} \times \mathbf{E}_k = \mathbf{0}$$ となり、磁場のゆらぎはゼロとなります)。
一方、電場のゆらぎが波の進行方向と垂直 $$\mathbf{k} \perp \mathbf{E}_k$$ であるような横波 (transverse wave) の場合、空間電荷は生じません (マクスウェル方程式のガウスの法則から $$\rho_k \propto \mathbf{k} \cdot \mathbf{E}_k = 0$$ であり、波に伴う電荷密度変動は生まれません)。  
(46) 式で定義された 2 つのスカラー誘電率は、誘電率テンソルの定義から

$$
\varepsilon_\mathrm{L} (\mathbf{k}, \omega) 
= \frac{\mathbf{k} \varepsilon (\mathbf{k}, \omega) \mathbf{k}}{k^2} \tag{47}
$$

$$
\varepsilon_\mathrm{T} (\mathbf{k}, \omega) 
= \frac{1}{2} \{ \mathrm{Tr} \varepsilon (\mathbf{k}, \omega) - \varepsilon_\mathrm{L} (\mathbf{k}, \omega) \} \tag{48}
$$

のように求められ、これらをそれぞれ縦誘電率・横誘電率と呼びます。
電場も同様に

$$
\mathbf{E} 
= \frac{\mathbf{k} \mathbf{k}}{k^2} \mathbf{E} + \left( I - \frac{\mathbf{k} \mathbf{k}}{k^2}\right) \mathbf{E} 
= \mathbf{E}_\mathrm{L} + \mathbf{E}_\mathrm{T} \tag{49}
$$

$$
\mathbf{E}_\mathrm{L} 
= \left( \mathbf{E} \cdot \frac{\mathbf{k}}{k} \right) \frac{\mathbf{k}}{k}, \quad \mathbf{k} \cdot \mathbf{E}_\mathrm{T} 
= 0 \tag{50}
$$

のように分離できます。
固有モードの分散関係式は、(19) 式に (46), (49) 式を代入することで

$$
\begin{align}
D (\mathbf{k}, \omega) \mathbf{E}_k 
&= \varepsilon_\mathrm{L} (\mathbf{k}, \omega) \frac{\mathbf{k} \mathbf{k}}{k^2} \mathbf{E}_k + \varepsilon_\mathrm{T} (\mathbf{k}, \omega) \left(I - \frac{\mathbf{k}\mathbf{k}}{k^2}\right) \mathbf{E}_k - \frac{c^2 k ^2}{\omega^2} \left( I - \frac{\mathbf{k}\mathbf{k}}{k^2} \right) \mathbf{E}_k \notag \\
&= \varepsilon_\mathrm{L} \mathbf{E}_\mathrm{L} + \left( \varepsilon_\mathrm{T} - \frac{c^2 k^2}{\omega^2} \right) \mathbf{E}_\mathrm{T} 
= \mathbf{0} \tag{51}
\end{align}
$$

となります。
縦方向と横方向の電場 $$\mathbf{E}_\mathrm{L}, \mathbf{E}_\mathrm{T}$$ は互いに独立であるため

$$
\left\{ \begin{array}{ll}
\varepsilon_\mathrm{L} (\mathbf{k}, \omega) = 0 & (縦波) \\
\varepsilon_\mathrm{T} (\mathbf{k}, \omega) = c^2 k^2 / \omega^2 & (横波) 
\end{array} \right. \tag{52}
$$

の 2 つに分離されます。
これらが、背景磁場を持たない一様プラズマ中での固有モードを決定する分散関係式です。  
まずは、縦誘電率を具体的に求めてみましょう。
(36) 式に (47) 式を代入すると

$$
\varepsilon_\mathrm{L} (\mathbf{k}, \omega) 
= \left( 1 - \frac{\omega_p^2}{\omega^2} \right) + \sum_s \frac{4\pi q_s^2}{m_s \omega^2} \int \frac{\mathbf{k} \cdot \mathbf{v}\mathbf{v} \cdot \mathbf{k}}{k^2} \frac{\mathbf{k} \cdot \nabla_v f_{0, s}}{\omega - \mathbf{k} \cdot \mathbf{v}} d^3 \mathbf{v} \tag{53}
$$

が得られます。
一様かつ等方的なプラズマの場合、一般性を失うことなく座標の $$x$$ 軸を波数ベクトル $$\mathbf{k}$$ の方向に取ることができます。
被積分関数において

$$
\frac{v_x^2}{\omega - kv_x} 
= \frac{1}{k} \left( - v_x - \frac{\omega}{k} + \frac{\omega^2}{k^2} \frac{k}{\omega - k v_x} \right) \tag{54}
$$

のように分解し、計算を進めましょう。

$$
(第一項) 
= - \int_{- \infty}^\infty v_x \frac{ \partial f_{0, s}}{\partial v_x} dv_x 
= - [v_x f_{0, s}]_{-\infty}^\infty + \int_{-\infty}^\infty f_{0, s} dv_x 
= n_{0, s} \tag{55}
$$

$$
(第二項)
= - \frac{\omega}{k} \int_{- \infty}^\infty \frac{\partial f_{0, s}}{\partial v_x} dv_x 
= - \frac{\omega}{k} [f_{0, s}]_{-\infty}^\infty 
= 0  \tag{56}
$$

より、背景磁場をもたない一様プラズマ中の静電波 (縦波) を記述する縦誘電率は

$$
\begin{align}
\varepsilon_\mathrm{L} (k, \omega) 
&= \left( 1 - \frac{\omega_p^2}{\omega^2} \right) + \sum_s \frac{4\pi q_s^2}{m_s \omega^2} \left( n_{0, s} + \frac{\omega^2}{k^2} \int_{-\infty}^\infty \frac{k}{\omega - k v_x} \frac{\partial f_{0, s}}{\partial v_x} dv_x \right) \notag \\
&= 1 + \sum_s \frac{4\pi q_s^2}{m_s k^2} \int_{-\infty}^\infty \frac{k}{\omega - k v_x} \frac{\partial f_{0, s}}{\partial v_x} dv_x \tag{57} 
\end{align}
$$

のようになります。
右辺第二項は、電気感受率を用いて $$4\pi \sum_s \chi_s (k, \omega)$$ のように書くこともできます。  
一般に静電波に関しては、複素振動数 $$\omega = \omega_\mathrm{r} + i \omega_\mathrm{i}$$ が $$\vert \omega_\mathrm{i} / \omega_\mathrm{r} \vert \ll 1$$ を満たすとき、振動数とその成長率を縦誘電率から次のように求めることができます。
分散関係式 $$\varepsilon_\mathrm{L} (k, \omega) = 0$$ を $$\omega = \omega_\mathrm{r}$$ の周りでテイラー展開すると

$$
\varepsilon_\mathrm{L} (k, \omega) 
\equiv \varepsilon_\mathrm{r} + i\varepsilon_\mathrm{i} 
\simeq \varepsilon_\mathrm{r} (k, \omega_\mathrm{r}) + i\varepsilon_\mathrm{i} (k, \omega_\mathrm{r}) + i \omega_\mathrm{i} \frac{\partial \varepsilon_\mathrm{r}}{\partial \omega} (k, \omega_\mathrm{r}) 
= 0 \tag{58}
$$

のようになります。
ここから

$$
\varepsilon_\mathrm{r} (k, \omega_\mathrm{r}) 
= 0 \tag{59}
$$

$$
\omega_\mathrm{i} 
= - \frac{\varepsilon_\mathrm{i} (k, \omega_\mathrm{r})}{\frac{\partial \varepsilon_\mathrm{r}}{\partial \omega} (k, \omega_\mathrm{r})} \tag{60}
$$

が導かれます。
振動数 $$\omega_\mathrm{r}$$ は (59) 式を解くことにより計算できます。
また成長 (あるいは減衰) 率 $$\omega_\mathrm{i}$$ は、(60) 式から得られることがわかります。

## 参考文献

[1] [田中基彦, 西川恭治, "高温プラズマの物理学"](https://amzn.to/3PHKTdK)  
[2] [Chen, 内田 岱二郎(訳), "プラズマ物理入門"](https://amzn.to/4akfJ5T)  

{% include adsense.html %}