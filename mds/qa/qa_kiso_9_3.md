---
layout: default
title: 量子アニーリングの基礎 9.3
parent: 量子アニーリング
math: mathjax3
permalink: /qa/qa_kiso_9_3
nav_order: 10
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

# 量子アニーリングの基礎 9.3

ここでは [西森 & 大関, "量子アニーリングの基礎"](https://amzn.to/3KVuaoR)の9.3章の式変形や行間を埋めた際のメモを掲載しています。

## 横磁場イジング模型の古典シミュレーション

量子ゆらぎを含む横磁場イジング模型のシミュレーション (モンテカルロ法) について学びましょう。
横磁場イジング模型のハミルトニアン

$$
\hat{H}(t) 
= \hat{H}_0 - \Gamma(t) \sum_{i=1}^N \hat{\sigma}_i^x = \hat{H}_0 + \hat{H}_\mathrm{TF}(t) \tag{7.1}
$$

の分配関数$$Z$$を、対応する古典イジング模型の分配関数で表す、というのが基本的な発想です。
横磁場イジング模型のハミルトニアン演算子に対し、対応する古典イジング模型のハミルトニアンを$$H_c (\boldsymbol{\sigma})$$として

$$
Z 
= \mathrm{Tr} [e^{-\hat{H}}] \simeq \sum_{\boldsymbol{\sigma}} e^{-H_c (\boldsymbol{\sigma})} \tag{9.12}
$$

となる$$H_c(\boldsymbol{\sigma})$$を探します。
表記を簡単化するために、左辺の指数関数の肩に本来入っている$$\beta$$が$$\hat{H}$$の中に含まれるように$$\hat{H}$$を再定義してあります。
すなわち$$\beta \hat{H} \rightarrow \hat{H}$$です。
右辺の和は$$H_c(\boldsymbol{\sigma})$$の引数である古典的なイジング変数の全ての可能な和についてとります。
上式の対応関係を根拠に、左辺で規定される量子系の平衡状態における性質を、右辺の古典系のマルコフ連鎖モンテカルロ法で調べてみましょう。
これが量子モンテカルロ法の基本的な思想です。　　
横磁場イジング模型ハミルトニアンを、古典イジング模型を表す部分と横磁場項に分けて取り扱うと便利です。
簡単のために、前者を$$\hat{H}_z$$、後者を$$\hat{H}_x$$と書き表すことにします。

$$
\hat{H} 
= \hat{H}_z + \hat{H}_x \tag{9.13}
$$

これらは非可換です($$[\hat{H}_z, \hat{H}_x] \neq 0$$)。
よって

$$
e^{-\hat{H}} 
\neq e^{-\hat{H}_z} e^{-\hat{H}_x} \tag{9.14}
$$

のように、この指数関数は分割することができません。
この非可換性が量子系の直接的なシミュレーションを困難にしています。
これはボルツマン因子$$e^{-\hat{H}}$$を局所的なボルツマン因子の積に分解することができないためです。
この問題をを解決するために、鈴木・トロッター分解 (Suzuki-Trotter decomposition) を適用します。

$$
e^{-(\hat{H}_z + \hat{H}_x)}
= \lim_{M\rightarrow \infty} (e^{-\frac{\hat{H}_z}{M}}e^{-\frac{\hat{H}_x}{M}})^M = \lim_{M \rightarrow \infty} (e^{-\frac{\hat{H}_x}{M}}e^{-\frac{\hat{H}_z}{M}})^M \tag{9.15}
$$

この公式導出には、指数関数を$$1/M$$で展開したとき2次以上の項は$$M \rightarrow \infty$$の極限では効かないことを用います。

$$
\lim_{µ \rightarrow \infty} (e^{-\frac{\hat{H}_x}{M}}e^{-\frac{\hat{H}_z}{M}})^M = \lim_{M \rightarrow \infty} \left(1-\frac{\hat{H}_z}{M} - \frac{\hat{H}_x}{M} + \mathcal{O}(1/M^2) \right)^M 
= e^{-(\hat{H}_z + \hat{H}_x)} \tag{9.16}
$$

(9.12)式の左辺を右辺に置き換えるために、(9.15)式を適用してそこに現れる$$M$$個の積を具体的に書き下します。
さらに恒等演算子$$\mathbb{1}$$を挟み込んでそれを古典イジング変数($$\hat{\sigma}_z$$の固有値)の全ての可能な値について和を取るという完全系で展開します。

$$
\mathbb{1}
= \sum_{\sigma_\ell} | \sigma_\ell \rangle \langle \sigma_\ell | \quad (\ell = 1, 2, \dots, M) \tag{9.17}
$$

これを用いると

$$
\begin{align}
\mathrm{Tr} [e^{-\hat{H}}] 
&= \sum_{\sigma_1} \langle \sigma_1 | e^{-\hat{H}} | \sigma_1 \rangle 
= \lim_{M \rightarrow \infty} \sum_{\sigma_1} \langle \sigma_1 | \left( e^{-\frac{\hat{H}_x}{M}} e^{-\frac{\hat{H}_z}{M}} \right)^M| \sigma_1 \rangle \notag \\
&= \lim_{M \rightarrow \infty} \sum_{\sigma_1}\langle \sigma_1 | e^{-\frac{\hat{H}_x}{M}} e^{-\frac{\hat{H}_z}{M}} \cdot \mathbb{1} \cdot e^{-\frac{\hat{H}_x}{M}} e^{-\frac{\hat{H}_z}{M}} \cdot \mathbb{1} \cdots e^{-\frac{\hat{H}_x}{M}} e^{-\frac{\hat{H}_z}{M}}| \sigma_1 \rangle \notag \\
&= \lim_{M \rightarrow \infty} \sum_{\sigma_1}\langle \sigma_1 | e^{-\frac{\hat{H}_x}{M}} e^{-\frac{\hat{H}_z}{M}} \sum_{\sigma_2} | \sigma_2 \rangle \langle \sigma_2 | e^{-\frac{\hat{H}_x}{M}} e^{-\frac{\hat{H}_z}{M}} \sum_{\sigma_3} | \sigma_3 \rangle \langle \sigma_3 | \cdots \sum_{\sigma_M} | \sigma_M \rangle \langle \sigma_M | e^{-\frac{\hat{H}_x}{M}} e^{-\frac{\hat{H}_z}{M}}| \sigma_1 \rangle \notag 
\end{align}
$$

となります。
そして$$\hat{H}_z | \sigma_\ell \rangle = H_z(\sigma_\ell)$$より

$$
\mathrm{Tr}[e^{-\hat{H}}] 
= \lim_{M \rightarrow \infty} \sum_{\sigma_1, \sigma_2, \dots \sigma_M} \langle \sigma_1 | e^{-\frac{\hat{H}_x}{M}} | \sigma_2 \rangle e^{-\frac{H_z(\sigma_2)}{M}} \langle \sigma_2 | e^{-\frac{\hat{H}_x}{M}} | \sigma_3 \rangle e^{-\frac{H_z(\sigma_3)}{M}}\langle \sigma_3| \cdots | \sigma_M \rangle e^{-\frac{H_z(\sigma_M)}{M}} \langle  \sigma_M | e^{-\frac{\hat{H}_x}{M}}| \sigma_1 \rangle e^{-\frac{H_z(\sigma_1)}{M}} \tag{9.18}
$$

という表現が得られます。
各$$\sigma_\ell$$は古典イジング模型$$\hat{H}_z$$が持つ変数で、それが$M$セット導入されています。
各$$\sigma_\ell$$は$$2^N$$個の状態をとります。
$$\ell = 1, 2, \dots, M$$は元の問題を持つ変数が定義された空間とは別の独立な変数の添字で、トロッタ-方向あるいは量子力学の経路積分による定式化との対比から虚時間方向とも呼ばれています。
なお(9.18)式右辺を見ると$$\sigma_1$$で左右から挟む形になっているので、虚時間方向には周期境界条件が課されていると解釈することができます。  
$$\hat{\sigma}^z$$が対角化された表示での和が$$\sigma_\ell$$についての和なので、$$\hat{H}_z$$については対角要素のみ残ることは(9.18)式の最後の表式を導く際にすでに使ってあります。
より具体的に局所的な相互作用について書くと

$$
\langle \sigma_\ell | e^{\frac{\beta J \hat{\sigma}_i^z \hat{\sigma}_j^z}{M}} | \sigma_\ell \rangle 
= e^{\frac{\beta J}{M} \sigma_{i, \ell} \sigma_{j, \ell}} \tag{9.19}
$$

となります。ここで$$\sigma_{i, \ell}$$は$$\pm 1$$の値をとる古典イジング変数です。  

{% include adsense.html %}

$$\hat{H}_x$$の中には$$\hat{\sigma}_1^x, \hat{\sigma}_2^x, \dots$$だけしか現れないため、各項の間に非可換性は存在しません。
したがって(9.18)式の$$e^{-\frac{\hat{H}_x}{M}}$$の行列要素の計算は$$\hat{H}_x$$の中の和$$\sum_j \hat{\sigma}_j^x$$の各項に分けて行うことができます。
$$\hat{H}_x$$の中で$$j$$番目のスピンに関する項の行列要素は次の通りです。
ここで$$\beta \Gamma/M = h$$と書くと

$$
\langle \sigma_{\ell} | e^{h \hat{\sigma}_j^x}|\sigma_{\ell+1} \rangle = \langle \sigma_{\ell} | (\cosh h + \hat{\sigma}_j^x \sinh h )|\sigma_{\ell+1} \rangle
$$

となります。
ここで、双曲線関数の公式

$$
\cosh x = \left( \frac{1}{2} \sinh 2x\right)^{1/2} e^{-\frac{1}{2} \ln (\tanh x)}, \quad \sinh x = \left( \frac{1}{2} \sinh 2x\right)^{1/2} e^{\frac{1}{2} \ln (\tanh x)}
$$

を用いると

$$
\langle \sigma_{\ell} | e^{h \hat{\sigma}_j^x}|\sigma_{\ell+1} \rangle = \left( \frac{1}{2} \sinh 2h\right)^{1/2} \langle \sigma_\ell | (e^{-\frac{1}{2} \ln (\tanh h)} + e^{\frac{1}{2} \ln (\tanh h)} \hat{\sigma}_j^x)| \sigma_{\ell+1} \rangle
$$

$$\hat{\sigma}_j^x$$は古典イジング変数(スピン)を反転させる演算子です。
よって$$\sigma_{\ell + 1} = \sigma_\ell$$のときは

$$
\langle \sigma_{\ell} | e^{h \hat{\sigma}_j^x}|\sigma_{\ell+1} \rangle = \left( \frac{1}{2} \sinh 2h\right)^{1/2} e^{-\frac{1}{2} \ln (\tanh h)}
$$

$$\sigma_{\ell + 1} = - \sigma_\ell$$のときは

$$
\langle \sigma_{\ell} | e^{h \hat{\sigma}_j^x}|\sigma_{\ell+1} \rangle = \left( \frac{1}{2} \sinh 2h\right)^{1/2} e^{\frac{1}{2} \ln (\tanh h)}
$$

のように書くことができます。よってこの2つの場合を1つの式にまとめると

$$
\langle \sigma_{\ell} | e^{h \hat{\sigma}_j^x}|\sigma_{\ell+1} \rangle = \underbrace{\left( \frac{1}{2} \sinh 2h\right)^{1/2}}_{=A(h)} e^{\overbrace{-\frac{1}{2} \ln (\tanh h)}^{= K^x(h)} \sigma_{j, \ell} \sigma_{j, \ell+1}}
$$

となります。
よって

$$
\begin{align}
\langle \sigma_\ell | e^{-\frac{\hat{H}_x}{M}} | \sigma_{\ell + 1} \rangle 
&= \langle \sigma_\ell | e^{-h \sum_{j=1}^N \hat{\sigma}_j^x} | \sigma_{\ell + 1} \rangle 
= \prod_{j=1}^N A(h) e^{K^x(h) \sigma_{j, \ell} \sigma_{j, \ell+1}} 
= A(h)^N \prod_{j=1}^N e^{K^x(h) \sigma_{j, \ell} \sigma_{j, \ell+1}} \notag \\
&= A(h)^N e^{ \sum_{j=1}^N K^x(h) \sigma_{j, \ell} \sigma_{j, \ell+1}} \notag
\end{align}
$$

から

$$
\begin{align}
\mathrm{Tr} [e^{-\hat{H}}] 
&= \lim_{M \rightarrow \infty} \sum_{\sigma_1, \sigma_2, \dots, \sigma_M} \prod_{\ell=1}^M A(h)^N e^{ \sum_{j=1}^N K^x(h) \sigma_{j, \ell} \sigma_{j, \ell+1}} e^{-\frac{\hat{H}_z(\sigma_\ell)}{M}} \notag \\
&= \lim_{M \rightarrow \infty}  A(h)^{MN} \sum_{\boldsymbol{\sigma}} e^{ \sum_{\ell =1}^M \sum_{j=1}^N K^x(h) \sigma_{j, \ell} \sigma_{j, \ell+1}} e^{-\sum_{\ell =1}^M \frac{\hat{H}_z(\sigma_\ell)}{M}} \notag \\
&= \lim_{M \rightarrow \infty}  A(h)^{MN} \sum_{\boldsymbol{\sigma}} e^{-H_c(\boldsymbol{\sigma})} \tag{9.22}
\end{align}
$$

となります。ここで

$$
H_c(\boldsymbol{\sigma}) 
= \sum_{\ell=1}^M \left( \frac{\hat{H}_z (\sigma_\ell)}{M} - \sum_{j=1}^N K^x(h) \sigma_{j, \ell} \sigma_{j, \ell+1} \right)
$$

です。
具体的に、$$\hat{H}_z(\boldsymbol{\sigma}) = -\beta J \sum_{j=1}^{N-1} \sigma_j \sigma_{j+1}$$のような$$N$$個の1次元イジング鎖を考えると

$$
H_c(\boldsymbol{\sigma}) = - \sum_{\ell=1}^M \sum_{j=1}^{N-1} \left( \frac{\beta J}{M} \sigma_{j, \ell} \sigma_{j+1, \ell} +  K^x(h) \sigma_{j, \ell} \sigma_{j, \ell+1} \right) \tag{9.23}
$$

のように、2次元における古典イジング模型と同じ形となります。

```
Mが無限大の極限をとって虚時間方向の添字\ell=1, 2, ..., Mを連続化するという方法もあります。
連続化しないとデータのサイズ依存性が正しく得られないという指摘もあります。
量子モンテカルロ法を量子アニーリングの研究に使う際には慎重さが必要です。
```

先述したように、横磁場ではなく任意符号の$$XX$$項を持つような場合については不符号問題が生じるために、一般に量子モンテカルロ法によるシミュレーションは困難となります。
ただし理論的な解析が進んでいる全結合の$$XX$$項を持つような場合は、量子モンテカルロ法の効率の良い実行が可能であることが知られています。
このように、正の符号を持つ全結合の$$XX$$項は古典的にシミュレートすることができることから、定義上は非擬似古典的ではあるものの、それほど強い量子性を持つわけではないことがわかります。
ただ多様な量子ゆらぎによる量子アニーリングの効果を調べるために、有効な方向性の一つであることに変わりはありません。
今後の研究の発展に注目しましょう。

# 参考文献

[1] [西森秀稔 & 大関真之, "量子アニーリングの基礎"](https://amzn.to/3KVuaoR)  

{% include adsense.html %}
