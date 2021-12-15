---
layout: default
title: Quantum Native Dojo, 1
parent: 量子回路
math: mathjax3
permalink: /qc/qnd1
nav_order: 2
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

# 量子情報の基礎

## 量子ビット

量子力学では異なる2つの状態の**重ね合わせ状態**が許されているので、量子の世界の情報の最小単位である**量子ビット**は$$\alpha, \beta$$という2つの複素数を用いた複素ベクトルを用いて

$$
\left( \begin{array}{c}
\alpha \\
\beta
\end{array}
\right)
$$

のようにその量子状態が記述される。$$\alpha, \beta$$はどの程度の重みで0状態と1状態が重ね合わさっているかを表現しており、**複素確率振幅**と呼ばれる。$$\alpha, \beta$$が複素数になっているのは、量子の世界では0状態, 1状態といった離散的な量も並みの性質を持ち、互いに干渉しあうため。

古典ビットの0に対応する状態

$$
\left|0 \right> = \left( \begin{array}{c}
1 \\
0
\end{array}
\right)
$$

1に対応する状態は

$$
\left|1 \right> = \left( \begin{array}{c}
0 \\
1
\end{array}
\right)
$$

この表記を用いて量子ビットは

$$
\left| \psi \right> 
= \alpha \left|0 \right> + \beta \left|1 \right>
$$

### 複素確率振幅の意味

実は量子力学では観測者は直接、複素確率振幅にはアクセスすることができず、**測定という操作をしたときに初めて0か1かが確率的に決定する**。測定結果の確率分ぴに影響を及ぼすのが、複素確率振幅。測定結果が0状態になる確率$$p_0$$、1状態になる確率$$p_1$$は

$$
p_0 = |\alpha|^2, \ 
p_1 = |\beta|^2
$$

のように、複素確率振幅の絶対値の2乗で表現される。  
**測定を行うと量子状態は測定結果に対応する状態に変化する**。具体的には、測定結果が0状態の場合には$$\left| 0 \right>$$、1状態の場合には$$\left| 1 \right>$$に変化する。この測定を**正規直交規定$$\left| 0 \right>$$, $$\left| 1 \right>$$での射影測定**と呼ぶ($$\left| 0 \right>, \left| 1 \right>$$以外の正規直交規定での射影測定やより一般の測定も存在する)。

### 0と1が同じ重みで重ね合わさった状態

$$
\frac{1}{\sqrt{2}} (\left| 0\right> + \left| 1\right>) 
= \left( \begin{array}{c}
\frac{1}{\sqrt{2}} \\
\frac{1}{\sqrt{2}}
\end{array}
\right)
$$

### 位相

複素確率振幅は複素数なので

$$
\frac{1}{\sqrt{2}} (\left| 0\right> + i \left| 1\right>) 
= \left( \begin{array}{c}
\frac{1}{\sqrt{2}} \\
\frac{i }{\sqrt{2}}
\end{array}
\right)
$$

といった状態も許される。より一般に

$$
\frac{1}{\sqrt{2}} (\left| 0\right> + e^{i\phi } \left| 1\right>) 
$$

なども許される。この状態の場合、状態0に対する確率振幅$$1/\sqrt{2}$$が正の実数であるのに対して、状態1に対する確率振幅$$e^{i\phi}/\sqrt{2}$$は複素平面乗で$$\phi$$回転している。このような重ね合わせ状態における確率振幅間の相対的は偏角のことを**位相**と呼ぶ。

## 量子ビットに対する基本演算

### 線型性

量子ビット(状態)の時間変化は常に(状態の重ね合わせに対して)線型になっている。すなわち、**量子コンピュータ上で許された操作は状態ベクトルに対する線型変換**ということになる。1つの量子ビットの量子状態は企画化された2次元複素ベクトルとして表現されるので、1つの量子ビットに対する操作(線型演算)は$$2\times 2$$の複素行列で表現される。

### ユニタリ性

確率の合計は常に1に規格化されているという条件から、量子操作に施す量子演算(線型演算)に対してさらなる制限を導くことができる。

$$
|\alpha|^2 + |\beta|^2 = (\alpha^\ast, \beta^\ast)
\left( \begin{array}{c} 
\alpha \\
\beta
\end{array} \right) = 1
$$

ここでアスタリスク$$\ast$$は複素共役。  
量子コンピュータで操作した後の状態を、量子演算に対応する行列(線型変換)を$$U$$とすると

$$
U \left( \begin{array}{c} 
\alpha \\
\beta
\end{array}\right)
$$

と書ける。この状態の規格化条件より

$$
(\alpha^\ast, \beta^\ast) U^\dagger U \left( \begin{array}{c} 
\alpha \\
\beta
\end{array}\right) = 1
$$

ここでダガー$`\dagger`$は行列転置と複素共役の両方を適用した$`エルミート共役`$。  
任意の$`\alpha, \beta`$について成立。よって量子演算$`U`$は

$$
U^\dagger U = U U^\dagger = I
$$

の条件を満たすユニタリ行列に対応する。

### 用語の定義

状態に対する量子演算(線型変換)のことを**演算子(Operator)**。単に演算子というと、ユニタリとは限らない任意の線型変換を指す。それに対してユニタリ性を満たす線型変換のことを**量子演算(Quantum gate)** と呼ぶ。量子演算は量子状態に対する演算子のうち、**(少なくとも理論的には)物理的に実現可能なもの**と考えることができる。

### 1量子ビットの演算例: パウリ演算子

$$
I = \left( \begin{array}{cc}
1 & 0 \\
0 & 1
\end{array}
\right), \ 
X = \left( \begin{array}{cc}
0 & 1 \\
1 & 0
\end{array}
\right), \ 
Y = \left( \begin{array}{cc}
0 & -i \\
i & 0
\end{array}
\right), \ 
Z = \left( \begin{array}{cc}
1 & 0 \\
0 & -1
\end{array}
\right)
$$

#### I: 恒等演算子

何もしない。

#### X: 反転演算子

古典ビットの反転(NOT)に対応。

$$
X \left| 0\right> = \left| 1 \right>, \ 
X \left| 1 \right> = \left| 0\right>
$$

#### Z: 位相反転演算子

$$
Z \left| 0\right> = \left| 0 \right>, \ 
Z \left| 1 \right> = - \left| 1 \right>
$$

これは$$\left| 0\right>, \left| 1\right>$$を重ね合わせるのときの位相情報を保持できる量子コンピュータ特有の演算。

#### Y演算子

$$
Y = i XZ
$$

と書けるので、位相の反転とビットの反転を組み合わせたものと考えることができる。

### コラム: ブラケット記法

ケット

$$
\left| \psi \right> = \left( \begin{array}{c}
\alpha \\
\beta
\end{array}
\right)
$$

ブラ

$$
\left< \psi \right| 
= \left| \psi \right>^\dagger 
= (\alpha^\ast, \beta^\ast)
$$

これを用いるとX演算子は

$$
X = \left( \begin{array}{cc}
0 & 1\\
1 & 0
\end{array}
\right) 
= \left| 0\right> \left<1 \right| + \left| 1\right> \left<0 \right|
$$

$$
\therefore \ 
X  \left| 0\right> 
= \left| 0\right> \left<1 | 0\right>  + \left| 1\right> \left<0 | 0\right>  
= \left| 1\right>
$$

**量子情報の解析計算においては、このようにブラケット気泡を用いて形式的に書いて計算してしまうことが多い**。

同様に

$$
I = \left| 0\right> \left<0 \right| + \left| 1\right> \left<1 \right|, \ 
Z = \left| 0\right> \left<0 \right| - \left| 1\right> \left<1 \right|
$$

と書ける。

## 複数量子ビットの記述

$$n$$個の古典ビットの状態は$$n$$個の0, 1によって表現され、そのパターンの総数は$$2^n$$個。$$n$$個の量子ビットの状態$$\left| \psi \right>$$はどのビット列がどのような重みで重ね合わせになってるかという$$2^n$$個の複素確率振幅で記述される。

$$
\left| \psi \right> = c_{00\cdots 0} \left| 00\cdots 0 \right> + c_{00\cdots 1} \left| 00\cdots 1 \right> + \cdots + 
c_{11\cdots 1} \left| 11\cdots 1 \right> 
= \left( \begin{array}{c} 
c_{00\cdots 0} \\
c_{00 \cdots 1} \\
\vdots \\
c_{11\cdots 1}
\end{array}\right)
$$

ただし複素確率振幅は規格化$$\sum_{i_1, i_2, \cdots, i_n} |c_{i_1, i_2, \cdots, i_n} |^2 = 1$$されているものとする。この$$n$$量子ビットの量子状態を測定するとビット列$$i_1, \cdots, i_n$$が確率

$$
p_{i_1, \cdots, i_n} = |c_{i_1, \cdots, i_n}|^2
$$

で得られる。測定後の状態は$$\left| i_1 \cdots i_n \right>$$となる。  

**このように$$n$$量子ビットの状態は$$n$$に対して指数的に大きい$$2^n$$次元の複素ベクトルで記述する必要があり、ここに古典ビットと量子ビットの違いが顕著に現れる**。そして$$n$$量子ビット系に対する操作は$$2^n \times 2^n$$次元のユニタリ行列として表される。

**量子コンピュータとは量子ビット数に対して指数的なサイズの複素ベクトルを、物理法則にしたがってユニタリ変換するコンピュータのこと**。

表記に注意。$$i$$番目の量子ビットは$$n$$桁の2進数表記の$$n-i+1$$桁目に対応する。

#### 2量子ビットの場合

$$
\left| \psi \right> = c_{00} \left| 0 0 \right> + c_{01} \left| 01 \right> + c_{10} \left| 10 \right>+ c_{11} \left| 11 \right> 
= \left( \begin{array}{c} 
c_{00} \\
c_{0 1} \\
c_{10} \\
c_{1 1} 
\end{array}\right)
$$

2量子ビットに対する演算は4$$\times$$4行列出かける。各列と各行はそれぞれ$$\left< 00 \right|, \left< 01 \right|, \left< 10 \right|, \left< 1 1\right|, \left| 00 \right>, \left| 01 \right>, \left| 10 \right>, \left| 11 \right>$$に対応する。

#### ２量子ビットの制御NOT演算(CNOT)

$$
\Lambda (X) = \left( \begin{array}{cccc} 
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0 
\end{array}\right)
$$

1つ目の量子ビットが$$\left| 0 \right>$$のとき$$c_{10} = c_{11} = 0$$より

$$
\Lambda (X) \left( \begin{array}{c} 
c_{00} \\
c_{01} \\
0 \\
0
\end{array}
\right) = \left( \begin{array}{c} 
c_{00} \\
c_{01} \\
0 \\
0
\end{array}
\right) 
$$

しかし、一つ目の量子ビットが$$\left| 1 \right>$$のとき$$c_{00} = c_{01} = 0$$より

$$
\Lambda (X) \left( \begin{array}{c} 
0 \\
0 \\
c_{10} \\
c_{11}
\end{array}
\right) = \left( \begin{array}{c} 
0 \\
0 \\
c_{11} \\
c_{10}
\end{array}
\right) 
$$

となり、$$\left| 10\right>$$と$$\left| 11\right>$$の確率振幅が入れ替わる。よってこれは1つ目の量子ビットはそのまま変えず、2つ目の量子ビットを反転させる。そこで1つ目の量子ビットを**制御量子ビット**、2つ目の量子ビットをターゲット量子ビットと呼ぶ。

CNOT演算の作用は$$\oplus$$をmod 2の足し算、すなわち古典計算における排他的論理和(XOR)とすると

$$
\Lambda (X) \left| ij\right> 
= \left| i (i \oplus j) \right> \ (i, j = 0, 1)
$$

CNOT演算は古典計算でのXORを可逆にしたものとみなせる。例えば、1つ目の量子ビットを$$\left| 0\right>, \left| 1\right>$$の重ね合わせ状態、そして2つ目の量子ビットを$$\left| 0\right>$$として

$$
\frac{1}{\sqrt{2}} (\left| 0\right> + \left| 1\right>) \otimes \left| 0\right> 
= \frac{1}{\sqrt{2}} (\left| 00 \right> + \left| 10\right>) 
=\frac{1}{\sqrt{2}}\left( \begin{array}{c} 
1 \\ 
0 \\
1 \\
0
\end{array} \right)
$$

にCNOTを作用させると

$$
\Lambda(X) \frac{1}{\sqrt{2}} (\left| 00 \right> + \left| 10\right>) 
= \frac{1}{\sqrt{2}} (\left| 00 \right> + \left| 11\right>) 
$$

#### SWAPゲート

$$
\text{SWAP} = \Lambda(X)_{1, 2}  \Lambda(X)_{2, 1}  \Lambda(X)_{1, 2} 
= \left( \begin{array}{cccc} 
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{array}\right)
\left( \begin{array}{cccc} 
1 & 0 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0 \\
0 & 1 & 0 & 0
\end{array}\right)
\left( \begin{array}{cccc} 
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{array}\right) 
= \left( \begin{array}{cccc} 
1 & 0 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1
\end{array}\right)
$$

これは1番目の量子ビットと2番目の量子ビットが交換するゲートである。

このことはmod 2の足し算を使った表記で簡単に確かめられる。

$$
\left| ij\right> \rightarrow \left| i (i \oplus j) \right> 
\rightarrow \left| (i \oplus (i \oplus j)) (i \oplus j) \right> = \left| j (i \oplus j) \right> 
\rightarrow \left| j (j \oplus (i \oplus j)) \right> 
= \left| ji \right>
$$

### テンソル積の計算

2つの量子系があってそれぞれの状態が$$\left| \psi \right>, \left| \phi \right>$$のとき

$$
\left| \psi \phi \right> 
= \left| \psi \right> \otimes \left| \phi \right> 
$$

のように**テンソル積**を用いて書く。このように複数の量子系からなる系のことを**複合系**と呼ぶ。

### 演算子のテンソル計算

演算子についても、何番目の量子ビットに作用するのかというのをテンソル積を用いて表現することができる。1つ目の量子ビットには$$A$$、2つ目の量子ビットには$$B$$を作用させるという場合には

$$
A \otimes B
$$

として**テンソル積演算子**が与えられる。

$$
\left(\begin{array}{ll}
a_{11} & a_{12} \\
a_{21} & a_{22}
\end{array}\right) \otimes\left(\begin{array}{ll}
b_{11} & b_{12} \\
b_{21} & b_{22}
\end{array}\right)=\left(\begin{array}{llll}
a_{11} b_{11} & a_{11} b_{12} & a_{12} b_{11} & a_{12} b_{12} \\
a_{11} b_{21} & a_{11} b_{22} & a_{12} b_{21} & a_{12} b_{22} \\
a_{21} b_{11} & a_{21} b_{12} & a_{22} b_{11} & a_{22} b_{12} \\
a_{21} b_{21} & a_{21} b_{22} & a_{22} b_{21} & a_{22} b_{22}
\end{array}\right)
$$

テンソル積の計算は基本的に多項式のように展開してそれぞれの項を作用させれば良い。

#### 例: CNOT演算を用いて作られるエンタングル状態

$$
\left(\begin{array}{ccc}
|0\rangle\langle 0| & & |1\rangle\langle 1| \\
\otimes & +&\otimes \\
I & &X
\end{array}\right)\left(\begin{array}{c}
\frac{1}{\sqrt{2}}(|0\rangle+|1\rangle) \\
\otimes \\
|0\rangle
\end{array}\right)=\frac{1}{\sqrt{2}}\left(\begin{array}{ccc}
|0\rangle && |1\rangle \\
\otimes &+& \otimes \\
|0\rangle && |1\rangle
\end{array}\right)
$$

のようになる。

### 複数の量子ビットの一部分だけを測定した場合

複数の量子ビットのうち、一部だけを測定することも可能。その場合、測定結果の確率は、測定結果に対応する(部分系の)基底で射影したベクトルの長さの2乗になり、測定後の状態は射影されたベクトルを規格化したものになる。以下の$$n$$量子ビットの状態を考える。

$$
\left| \psi \right> 
= \sum_{i_1, \cdots, i_n} c_{i_1, \cdots, i_n} \left| i_1 \right> \otimes \cdots \otimes \left| i_n \right>
$$

一つ目の量子ビットを測定することを考える。1つ目の量子ビットの状態空間の正規直交基底$$\left| 0 \right>, \left| 1 \right>$$に対する射影演算子はそれぞれ$$\left| 0 \right> \left< 0 \right|, \left| 1 \right> \left< 1 \right|$$と書ける。1番目の量子ビットを$$\left| 0 \right>$$に射影し、他の量子ビットには何もしない演算子

$$
\left| 0 \right> \left< 0 \right| \otimes I \otimes \cdots \otimes I
$$

を用いて、測定値0が得られる確率は

$$
\|(|0\rangle\langle 0| \otimes I \otimes \cdots \otimes I)|\psi\rangle \|^{2}=\langle\psi|(|0\rangle\langle 0| \otimes I \otimes \cdots \otimes I)| \psi\rangle
$$

となる。ここで

$$
(|0\rangle\langle 0| \otimes I \otimes \cdots \otimes I)|\psi\rangle=\sum_{i_{2} \ldots i_{n}} c_{0 i_{2} \ldots i_{n}}|0\rangle \otimes\left|i_{2}\right\rangle \otimes \cdots \otimes\left|i_{n}\right\rangle
$$

なので、求める確率は

$$
p_0 = \sum_{i_2, \cdots, i_n} |c_{0i_2, \cdots, i_n}|^2
$$

となる。測定後の状態は

$$
\frac{1}{\sqrt{p_0}} \sum_{i_2, \cdots, i_n} |0\rangle \otimes\left|i_{2}\right\rangle \otimes \cdots \otimes\left|i_{n}\right\rangle
$$

この0を1に入れ替えれば測定値1が得られる確率と測定後の状態が得られる。

最初の$$k$$個の量子ビットを測定する場合も同様。測定結果$$i_1, \cdots, i_k$$を得る確率は

$$
p_{i_1, \cdots, i_k} 
= \sum_{i_{k+1}, \cdots, i_n} |c_{i_1, \cdots, i_n} |^2
$$

であり測定後の状態は

$$
\frac{1}{\sqrt{p_{i_{1}, \ldots, i_{k}}}} \sum_{i_{k+1} \ldots i_{n}} c_{i_{1} \ldots i_{n}}\left|i_{1}\right\rangle \otimes \cdots \otimes\left|i_{n}\right\rangle
$$

#### 具体例

$$
\left| \psi \right> = \Lambda (X) (H \otimes H) \left| 0 \right> \otimes \left| 0 \right> 
= \frac{\left| 00 \right> + \left| 10 \right> + \left| 01 \right> + \left| 11 \right>}{2}
$$

を考える。この状態の一つ目の量子ビットを測定して状態0になる確率は

$$
p_0 = \left< \psi \right| (\left| 0 \right> \left< 0 \right| \otimes I) \left| \psi \right> 
= \frac{\left< 00 \right| + \left< 10 \right| + \left< 01 \right| + \left< 11 \right|}{2} \frac{ \left| 00 \right> + \left| 01 \right>}{2} = \frac{1}{2}
$$

そして測定後の状態は

$$
\frac{1}{\sqrt{p_0}} (\left| 0 \right> \left< 0 \right| \otimes I) \left| \psi \right> 
= \frac{ \left| 00 \right> + \left| 01 \right>}{2}
$$

となります。

## コラム: ユニバーサルゲートセットとは

古典計算機ではNANDゲート(論理積ANDの出力を反転させたもの)さえあれば、これをいくつか組み合わせることで、任意の論理演算が実行できることが知られている。量子計算で対応するものは

$$
\{ H, T, {\text CNOT} \}
$$

がユニバーサルゲートセットである。これらを組み合わせることで任意の量子計算を実行できる、「万能量子計算」が可能である。

#### より詳しく知りたい人のための注

##### n量子ビットユニタリ演算の分解

以下の手順で**1量子ビットのユニタリ演算とCNOTゲートに分解**

1. 任意のn量子ビットのユニタリ演算はいくつかの2準位ユニタリ演算の積に分解できる。2準位ユニタリ演算とは、例えば3量子ビットの場合、$$2^3$$次元空間のうち2つの基底(e.g.) $$ \left| 000\right>, \left| 111 \right> $$)の張る2次元部分空間にのみ作用するユニタリ演算のこと。
2. 任意の2準位ユニタリ演算は、**制御$$U$$ゲート(CNOTゲートのNOT部分を任意の1量子ビットユニタリ演算$$U$$に置き換えたもの)** と**Toffoliゲート(CNOTゲートの制御量子ビットが2つになったもの)** から構成できる。
3. 制御$$U$$ゲートとToffoliゲートは、どちらも**1量子ビットユニタリ演算とCNOTゲートから構成できる**。

1. 任意の1量子ビットユニタリ演算はオイラーの回転角の法則から、回転ゲート\{ $$R_X(\theta), R_Z(\theta)$$ \}で実現可能
2. 実はブロッホ球上の任意の回転は{H, T}のみ用いることで実現可能。これはある軸に関する$$\pi$$の無理数倍の回転が{H, T}のみから実現できること**Solovay-Kitaevアルゴリズム**に起因する。

##### 1量子ビットのユニタリ演算の構成

さらに任意の1量子ビットユニタリ演算は\{H, T\}の2つで構成できる。

(注) ブロッホ球上の連続的な回転を、離散的な演算であるH,Tで実現できるか疑問に思われる読者もいるかもしれない。実際、厳密な意味で1量子ビットユニタリ演算を離散的なゲート操作で実現しようとすると、無限個のゲートが必要となる。しかし実際には厳密なユニタリ演算を実現する必要はなく、必要な計算精度$$\epsilon$$で任意のユニタリ演算を近似できれば十分である。ここでは、多項式個の$$H, T$$を用いることで、任意の1量子ビットユニタリ演算を十分良い精度で近似的に構成できることが、**Solovay-Kitaevの定理**により保証されている。

## 回路図の基礎

![量子回路図の例](/images/qc/circuit0.png)

* 量子ビット: 回路図の一つ一つの横線がそれぞれ1つの量子ビット。左端の$$\left| 0\right>$$は、それぞれの量子ビットが状態0で初期化されていることを意味する。
* 回路図にある箱や縦線が量子ゲート。一般にn量子ビットゲートは作用するn個の量子ビット(横線)にまたがる箱で表される。
* 右端にあるメータのような記号が測定。
* それ以外に特殊な書き方で表すゲートがある。以下は制御NOTゲート、SWAPゲート、制御U演算$$\Lambda (U) = \left| 0\right> \left< 0\right| \otimes I + \left| 1\right>\left< 1\right| \otimes U$$。

![特殊なゲートの例](/images/qc/circuit1.png)

回路図は**左から右に読む**。例としてあげた冒頭の回路は$$\Lambda (X)_{1, 2} H(1) \left| 00\right>$$を行なった後、1番目の量子ビットの測定をする、という意味。

## コラム: 量子複製不可能(No-Cloning)定理

任意の量子状態を複製することはできない**量子複製不可能(No-Cloning)定理**。すなわち任意の$$\left| \psi\right>$$に対して

$$
U(\left| \psi \right> \otimes \left| 0 \right>) = \left| \psi \right>  \otimes \left| \psi \right> 
$$

を満たすユニタリ演算子$$U$$は存在しない。

### 証明

任意の状態$$\left| \psi \right> $$に対して$$U(\left| \psi \right> \otimes \left| 0\right> ) = \left| \psi \right> \otimes \left| \psi \right> $$を満たすユニタリ演算子が存在したとする。この時、任意の状態$$\left| \psi \right>, \left| \phi \right> $$について

$$
U(\left| \psi \right> \otimes \left| 0 \right>) = \left| \psi \right>  \otimes \left| \psi \right> 
$$

$$
U(\left| \phi \right> \otimes \left| 0 \right>) = \left| \phi \right>  \otimes \left| \phi \right> 
$$

が成立する。2つの内積をとると

$$
\left< \psi | \phi \right> = (\left< \psi | \phi \right> )^2 \ \Longrightarrow \ 
\therefore \ \left< \psi | \phi \right> = 0, 1
$$

となる。しかし$$\psi, \phi$$は任意の状態だったのでこのように値が一意に決まることは矛盾する。よってこのような$$U$$は存在しない。

## Bell(CHSH)不等式

これは物理系が局所実在性(local realism)を満たすと仮定したときに、複数の観測系の相関の強さの上限を与える関係式。この不等式はベルによって1964に提唱され、量子力学を`隠れた変数`によって説明しようと試みた理論の検証に用いられた。

### エンタングル状態

「状態がエンタングルされている(エンタングル状態にある)」とは、状態が複数の観測系の状態の直積で書くことができない、ということ。

#### 具体例: Bell状態

2つの粒子状態$$\left| \psi \right> = (\left| 00 \right>+ \left|11 \right>)/\sqrt{2} = (\left| 0 \right>_A \left| 0 \right>_B + \left| 1 \right>_A \left| 1 \right>_B)/\sqrt{2}$$をそれぞれAliceとBobがシェアしている。この状態は次の相関関係を持つ。

* もしAliceが自分の量子をz軸方向で観測して0の結果を得ると、Bobの粒子も瞬時に$$\left| 0 \right>$$状態に収縮する。
* もしAliceが自分の量子をz軸方向で観測して1の結果を得ると、Bobの粒子も瞬時に$$\left| 1 \right>$$状態に収縮する。
* もしBobが自分の量子をz軸方向で観測して0の結果を得ると、Aliceの粒子も瞬時に$$\left| 0 \right>$$状態に収縮する。
* もしBobが自分の量子をz軸方向で観測して1の結果を得ると、Aliceの粒子も瞬時に$$\left| 1 \right>$$状態に収縮する。

これらの相関関係は、この量子状態を保っている限りAlice, Bobがどんなに離れていれも成立する。この現象は、状態がAlice, Bobのどちらかが粒子を観測するま確定せず、どちらかが神尾s区すると2人の粒子が同時にある状態に収縮すると解釈される。量子力学の建設初期の1935に、アインシュタインはERP論文で「物理量は観測される前に確定されており(実在性)、物理法則は局所性を持つ」との立場から、この解釈を否定し、量子力学を不完全な理論とした。物理理論が実在性と局所性を同時に満たす(局所実在性(local realism))と仮定すると、Bell状態は2つの粒子がAliceとBobにシェアされる前に、ある隠れた変数(hidden-variable)を持つ。その隠れた変数にしたがって状態が観測されると考えることができる。  
長らく実証不可能と考えられてきたが、30年後の1964にBell不等式が提唱されたことで実験的に検証可能となった。`CHSHゲーム`と呼ばれる例を用いて、非局所相関をどのように実証するかを説明する。

### CHSHゲーム

AliceとBobは協力して次のゲームに挑戦する。

* Aliceは、第三者のCharlieから送られるランダムビットxを受け取って、ビットaを返す
* Bobは、第三者のCharlieから送られるランダムビットyを受け取って、ビットbを返す
* AliceとBobの返したビットが$$a \oplus b = x \wedge y$$を満たせば、2人の勝ち。
* AliceとBobはゲームで勝つ確率を最大化するための戦略を、ゲーム開始前に相談することができる。
* 一度ゲームが開始されると、Alice, Bobはそれぞれ別の実験室にこもるため、お互いにコミュニケーションを取ることはできない。AliceはBobが受け取ったビットyを、BobはAliceが受け取ったビットxを知ることはできない。
* 2人はそれぞれの実験室にエンタングル状態にある粒子を持ち込むことができる。

ランダムビットが0のときのAlice, Bobのアウトプットをそれぞれ$$a_0, b_0$$、そしてランダムビットが1のときのAlice, Bobのアウトプットをそれぞれ$$a_1, b_1$$とすると、2人が全ての場合で勝つためには

$$
a_0 \oplus b_0 = 0
$$
$$
a_0 \oplus b_1 = 0
$$
$$
a_1 \oplus b_0 = 0
$$
$$
a_1 \oplus b_1 = 1
$$

を全て満たすようにアウトプットビットを選ぶ必要がある。しかしこれは4つの式の両辺をmod 2で足せば不可能となることは明らか。

**では2人がゲームで勝つ確率の最大値はいくらか。**

自然が局所実在性に従うと仮定すると、Alice, Bobがこのゲームに勝つ確率はいかなる戦略を用いても3/4以下となる。ただしこの証明における局所実在性とは$$a = a(x, w), b=b(y, w)$$のように、Alice, Bobがあらかじめ決められた共通の変数$$w$$とそれぞれの入力値$$x, y$$にしたがって値を返す、という意味。

### CHSH不等式

エンタングルした粒子について、Aliceがそれぞれ$$a, a'$$のいずれかの値を観測するとする。同様にBobも$$b, b'$$のいずれかの値を観測するとする。ただしこれらは\{ $$\pm 1$$\}のいずれかの値をとり、隠れた変数によって決定されるものとする。ここで局所実在性の仮定により、$$a=1$$ならば$$a=-1$$、$$a=-1$$ならば$$a=1$$となるように、$$a, a'$$と$$b, b'$$は同時に決定されるとする。このとき、$$a+a'=0, a-a'=\pm 2$$ or $$a-a' = 0, a-a'=\pm 2$$より、各実現値について

$$
(a+a')b + (a-a')b' 
= ab + a'b + ab' - a'b' = \pm 2
$$

となる。よってこれの平均値を取ると

$$
|\left< ab \right> + \left< a'b \right> + \left< ab' \right>- \left< a'b' \right>| \leq 2
$$

この関係式は**Clauser-Horne-Shimony-Holt(CHSH)不等式**と呼ばれる。CHSH不等式は**2つの古典系の間の相関の強さの上限を与える**。  
この不等式より、自然が局所実在性に従うときにAlice, BobがCHSHゲームで勝つ確率の上限を導出しよう。上記のCHSH不等式は$$a, a' \in \{ \pm 1\}$$という変数についての不等式だが、ビット列$$a_{0, 1} \in \{ 0, 1\}$$とは$$a = (-1)^{a_0}, a' = (-1)^{a_1}$$という式で対応させることができる。  
入力ビット(x, y)が与えられた時に2人が勝つ($$a_x \oplus b_y = x \wedge y$$を満たす)確率をそれぞれ$$p_{xy}$$とすると

$$
\left< ab \right> = 1 \cdot p_{00} + (-1) \cdot (1-p_{00}) = 2p_{00}-1
$$
$$
\left< ab' \right> =  2p_{01}-1
$$
$$
\left< a'b \right> = 2p_{10}-1
$$
$$
\left< a'b' \right> = 1\cdot (1- p_{11}) + (-1)\cdot p_{11} 
= 1-2p_{11}
$$

となる。入力ビットが一様にランダムに与えられたとすると、2人が勝つ期待値はCHSH不等式を用いて

$$
\left<p \right> 
= \frac{p_{00} + p_{01} + p_{10} + p_{11}}{4} 
= \frac{\left< ab\right> + \left< ab'\right> + \left< a'b\right> - \left< a'b'\right> + 4}{8} \leq \frac{3}{4}
$$

Alice, Bobが取れる最善の戦略は、それぞれの入力値に関わらず0を出力すること(このときが勝率75%)となる。以上より局所実在性に従い、隠れた変数$$w$$をシェアした場合、2人がゲームに勝つ確率は75%以下であることがわかった。

### Cirel'son(Tsirelson)不等式

実はもし2人が隠れた変数ではなくエンタングル状態を粒子をシェアした場合、この確率は増加する。  
**Cirel'son不等式**

$$
|\left< ab \right> + \left< a'b \right> + \left< ab' \right>- \left< a'b' \right>| \leq 2 \sqrt{2}
$$

で入力ビットが一様ランダムに与えられたときに2人がゲームに勝つ確率の期待値は

$$
\left<p \right> 
= \frac{p_{00} + p_{01} + p_{10} + p_{11}}{4} 
= \frac{\left< ab\right> + \left< ab'\right> + \left< a'b\right> - \left< a'b'\right> + 4}{8} 
\leq \frac{1}{2} + \frac{1}{2\sqrt{2}} \sim 0.85
$$

と求められる。Alice, BobがBell状態の粒子$$(\left| 0\right>_A \left| 0\right>_B +\left| 1\right>_A \left| 1\right>_B )/\sqrt{2}$$をシェアルとときに取れる最善の戦略は

* x=0のとき、AliceはZ基底で$$\left| \psi \right>_A$$を観測する。$$\left| 0 \right>_A$$を観測すればa=0, $$\left| 1 \right>_A$$を観測すればa=1を出力する。
* x=1のとき、AliceはX基底で$$\left| \psi \right>_A$$を観測する。$$\left| + \right>_A$$を観測すればa=0, $$\left| - \right>_A$$を観測すればa=1を出力する。
* y=0のとき、Bobは$$RX(\pi/8)$$基底で$$\left| \psi \right>_B$$を観測する。$$\left| H^+ \right>_B$$を観測すればb=0, $$\left| H^+_\perp \right>_B$$を観測すればb=1を出力する。
* y=1のとき、Bobは$$RX(-\pi/8)$$基底で$$\left| \psi \right>_B$$を観測する。$$\left| H^- \right>_B$$を観測すればb=0, $$\left| H^-_\perp \right>_B$$を観測すればb=1を出力する。

である。ただし

* $$\left| H^+ \right>_B = \cos (\pi/8) \left| 0\right>_B + \sin (\pi/8) \left| 1\right>_B$$
* $$\left| H^+_\perp \right>_B = \sin (\pi/8) \left| 0\right>_B - \cos (\pi/8) \left| 1\right>_B$$
* $$\left| H^- \right>_B = \cos (-\pi/8) \left| 0\right>_B + \sin (-\pi/8) \left| 1\right>_B$$
* $$\left| H^-_\perp \right>_B = \sin (-\pi/8) \left| 0\right>_B - \cos (-\pi/8) \left| 1\right>_B$$

この手続きに従うと全ての入力ビット(x, y)に対して$$p_{xy} = \cos^2 (\pi/8)$$となるので、2人がゲームに勝つ確率の期待値は

$$
\left< p\right> = cos^2 (\pi/8) 
= \frac{1}{2} +\frac{1}{2\sqrt{2}}
$$

### 結言

となる。以上のCHSHゲームの例でわかるように、エンタングル状態にある粒子を用いることでBell不等式(CHSH不等式)を破ることが可能であるとわかった。1982にAspectらによるCHSHゲームの実験により、Bell不等式が実際に破られるていることが示された。いわゆる`loophole`と呼ばれる実験の不完全さを埋める研究は盛んに行われている。

# 参考文献(というよりこれを見て勉強中)

[Quantum Native Dojo](https://dojo.qulacs.org/ja/latest/index.html)

{% include adsense.html %}