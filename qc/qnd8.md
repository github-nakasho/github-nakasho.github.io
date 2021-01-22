# 量子探索アルゴリズム

## オラクル

### オラクルとは

**探索問題とは一般にN個の要素からM個の解を見つける**問題のこと。例として名簿データベースから佐藤さんだけを取り出しないなどがある。Nこの要素がn桁のビット列$$x = x_1 x_2 \cdots x_n$$でラベル付けされているとして、この探索問題に対する「古典オラクル」を次のように定義する。

$$
f(x) = \left\{ 
\begin{array}{cl}
1 && (xは解) \\
0 && (xは解でない)
\end{array} \right.
$$

つまりfは要素のラベルxを与えるとその要素が解であるかを2択で教えてくれる関数である。名簿の例では$$名簿_0 = 高橋, 名簿_1 = 佐藤$$のとき、$$f(0) = 0, f(1) = 1$$となる。オラクル(Oracle)は日本語で神託という意味であり、中身はブラックボックスだけれどとにかく答えを教えてくれる抽象的な存在で、それがどのように実装されているかは気にしない(実際に実装が存在する必要もない)。探索問題を解く古典アルゴリズムの計算量は$$x$$が解であるかを古典オラクルに尋ねる回数で評価する。こうすることで、問題の子細に依存しない統一的な評価が可能になる。  
一方、探索問題を解く量子アルゴリズムの計算量は、次の(量子)オラクル$$\mathcal{O}_f$$を呼ぶ回数で評価する。

$$
\left|x \right\rangle \otimes \left|q \right\rangle \xrightarrow{\mathcal{O}_f} 
\left|x \right\rangle \otimes \left|q \oplus f(x) \right\rangle
$$

ここで入力状態$$\left|x \right\rangle$$は入力ビット列xを計算規定で表した状態、$$\left|q \right\rangle$$は補助ビット、$$\oplus$$はmod 2の加算(XOR演算)である。xが探索問題の解であるかどうかは、補助ビットqが反転したかどうかをチェックすればわかる: $$\left|x \right\rangle \left|0 \right\rangle \xrightarrow{\mathcal{O}_f} \left|x \right\rangle \left|f(x) \right\rangle$$。他にも、補助ビットを$$\left|- \right\rangle = (\left|0 \right\rangle - \left|1 \right\rangle)/\sqrt{2}$$とセットしておけば

$$
\left|x \right\rangle \otimes \left|- \right\rangle \xrightarrow{\mathcal{O}_f} (-)^{f(x)} \left|x \right\rangle \otimes \left|- \right\rangle
$$ 

となり、xが探索問題の解のときにのみ状態の位相が反転するようにもできる。

オラクル$$\mathcal{O}_f$$のもっとも大きな特徴の一つは、入力状態が重ね合わせであってもそのまま動作することである。例えば、入力状態として全ての状態の重ね合わせ$$N^{-1/2} \sum_x \left|x \right\rangle$$をとり、補助ビットを$$\left|- \right\rangle$$とすれば

$$
\frac{1}{\sqrt{N}} \sum_x \left|x \right\rangle \otimes \left|- \right\rangle \xrightarrow{\mathcal{O}_f} \frac{1}{\sqrt{N}} \sum_x (-1)^{f(x)} \left|x \right\rangle \otimes \left|- \right\rangle
$$

となる。このようにxが解のときのみ位相が反転する性質をうまく用いて解を見つけるのが、グローバーのアルゴリズム。

## グローバーのアルゴリズム

グローバーのアルゴリズムは整列化されていないデータベースから特定のデータを探索するための量子アルゴリズム。ソートされていないN個のデータに対して$$\mathcal{O}(\sqrt{N})$$回のクエリ(オラクルの呼び出しのこと)で解を見いだせる。古典コンピュータでは$$\mathcal{O}(N)$$回のクエリが必要なので、量子アルゴリズムを用いることで2次の加速が実現されることになる。  
オラクルさえ構成できればグローバーのアルゴリズムはあらゆる古典アルゴリズムの全探索部分を高速化することができる。例えば

* 充足可能性問題(SAT問題)
* 特定のハッシュ値から元の値を探索する問題

のような応用例が考えられており、後者は実際にビットコインのマイニング高速化として提案論文がある。

### アルゴリズムの流れ

N個のデータベースからM個の解を探索する問題を考え、要素のラベルをn桁のビット列$$x = x_1 \cdots x_n$$とする。ここで量子ビットの表現方法から$$N = 2^n$$である。

1. 全ての状態の重ね合わせ状態$$\left|s \right\rangle = \frac{1}{\sqrt{N}} \sum_x \left|x \right\rangle$$を用意する
2. オラクル$$U_w$$(解に対する反転操作)を作用させる
3. $$\left|s \right\rangle$$を対称軸にした反転操作$$U_s$$を作用させる
4. ステップ2, 3をk回繰り返す
5. 測定を行う

#### 1. 全ての状態の重ね合わせを用意する

初期状態$$\left|00\cdots 0 \right\rangle$$に対して全ての量子ビットにアダマールゲートHを作用させる。

$$
(H \otimes \cdots \otimes H) \left|0 \cdots 0 \right\rangle 
= \frac{1}{(\sqrt{2})^n} (\left|0 \right\rangle + \left|1 \right\rangle) \otimes \cdots \otimes (\left|0 \right\rangle + \left|1 \right\rangle) 
= \left|s \right\rangle
$$

#### 2. オラクル(解に対する反転操作)を作用させる

次にオラクルを状態$$\left|s \right\rangle$$に作用させる。ここではオラクルとして、「入力$$\left|x \right\rangle$$に対してxが解なら(-1)をかけて位相を反転し、解でないなら何もしない」という演算を考えることにして、補助ビットは省略する。すなわちオラクル$$U_w$$を

$$
U_w = I - 2 \sum_{w\in 解} \left|w \right\rangle \left\langle w \right|
$$

$$
U_w \left|x \right\rangle = \left\{ \begin{array}{cl}
\left|x \right\rangle & (x \ {\rm is \ not \ solution})\\ 
-\left|x \right\rangle & (x \ {\rm is \ solution})
\end{array} \right.
$$

#### 3. 対称軸にした反転操作を作用させる

ステップ2では解に対する反転操作を考えたが、ステップ3では全ての状態の重ね合わせ$$\left|s \right\rangle$$を対称軸にした反転操作$$U_s$$を作用させる。

$$
U_s = 2 \left|s \right\rangle \left\langle s \right| - I
$$

この演算子は入力状態$$\left|\psi \right\rangle = a \left|s \right\rangle + b \left|s_\perp \right\rangle$$($$\left| s_\perp \right\rangle$$は$$\left|s \right\rangle$$に直交するベクトル)に対して

$$
U_s \left|\psi \right\rangle = a \left|s \right\rangle - b \left|s_\perp \right\rangle
$$

のように作用し、$$\left|s_\perp \right\rangle$$に比例する部分の位相のみを反転する。

#### 4. ステップ2, 3をk回繰り返す

上述の2つの反転操作$$U_w, U_s$$を繰り返す。後述するが、およそ$$\mathcal{O}(\sqrt{N/M})$$回の繰り返しを行えば、次のステップ5の測定で十分高い確率で解が得られる。すなわちオラクルを呼ぶ回数は$$\mathcal{O}(\sqrt{N})$$で良いことがわかる。

#### 5. 測定を行う

ここまでのステップで状態は$$(U_s U_w)^k \left|s \right\rangle$$となっている。後述するように、実はこの状態は、解wに対応する状態$$\left|w \right\rangle$$の係数(の絶対値)のみが非常に大きくなっているため、計算基底で測定を行えば、高い確率で解wのビット列を得ることができる。

### 幾何学的な説明

#### 2次平面の定義

まず2つの状態$$\left|\alpha \right\rangle, \left| \beta \right\rangle$$で張られる2次元平面を考える。

$$
\left| \alpha \right\rangle = \frac{1}{\sqrt{N-M}} \sum_{x\in 解でない} \left|x \right\rangle \\
\left| \beta \right\rangle = \frac{1}{\sqrt{M}} \sum_{x \in 解} \left|x \right\rangle
$$

全ての重ね合わせ状態$$\left|s \right\rangle$$は

$$
\left|s \right\rangle = \sqrt{\frac{N-M}{N}} \left|\alpha \right\rangle + \sqrt{\frac{M}{N}} \left|\beta \right\rangle
$$

ように表されるので、これは2次元平面内のベクトルであることがわかる。特に$$\cos \frac{\theta}{2} = \sqrt{\frac{N-M}{N}}, \sin \frac{\theta}{2} = \sqrt{\frac{M}{N}}$$を満たす角度$$\theta$$を用いて

$$
\left|s \right\rangle = \cos\frac{\theta}{2} \left|\alpha \right\rangle  + \sin \frac{\theta}{2} \left|\beta \right\rangle
$$

と書ける。一般に探索問題においては$$N\gg M$$であるから、$$\theta \sim 0$$の正数であることがわかる。

この平面内で考えると、

$$
U_w \left|\alpha \right\rangle = \left|\alpha \right\rangle \\
U_w \left|\beta \right\rangle = - \left|\beta \right\rangle
$$

オラクル$$U_w$$は$$\left|\alpha \right\rangle$$軸に関する反転操作であることがわかる。よって$$U_w$$を作用させた後に$$\left|s \right\rangle$$を対称軸にした反転$$U_s$$を作用させると$$\left|\alpha \right\rangle, \left|\beta \right\rangle$$平面内にで角度$$\theta$$だけの回転が行われたことがわかる。

![グローバーのアルゴリズムの2次元平面による理解](/images/qc/rotate.png)

グローバーのアルゴリズムでは$$U_s U_w$$をk回繰り返すので、状態は$$k$$回回転し、測定直前では

$$
(U_s U_w)^k \left|s \right\rangle 
= \cos \frac{2k+1}{2} \theta \left|\alpha \right\rangle + \sin \frac{2k+1}{2} \theta \left|\beta \right\rangle
$$

となる。$$N \gg M$$のとき$$\theta$$は0に近い正の数なので、$$\left|s \right\rangle$$に$$U_s U_w$$を作用させるたびに$$\left|\alpha \right\rangle$$の係数の値が小さくなり、逆に$$\left|\beta \right\rangle$$の値が大きくなることがわかる。よって解が出力される確率が高くなることがわかる。

#### 最適なkの見積もり

最後に$$U_s U_w$$を作用させる回数k、すなわちオラクルを呼ぶ回数がどれくらいになるのかを評価しよう。$$(U_s U_w)^k\left|s \right\rangle$$が$$\left|\beta \right\rangle$$にもっとも近くなるのは、$$\frac{2k+1}{2} \theta$$が$$\pi/2$$に近くなるとき、すなわちkが

$$
R = {\rm ClosestInteger} (\frac{\pi}{2\theta} - \frac{1}{2})
$$

のときとなる。ここでClosestInteger(...)は...にもっとも近い整数を表す。Rの上限を評価する。$$\theta > 0$$
について成り立つ公式

$$
\frac{\theta}{2} \geq \sin \frac{\theta}{2} = \sqrt{\frac{M}{N}}
$$

を用いると

$$
R \leq (\frac{\pi}{2\theta} - \frac{1}{2}) + 1 \leq \frac{\pi}{4} \sqrt{\frac{N}{M}} + \frac{1}{2}
$$

となる。よってRはたかだか$$\mathcal{O} (\sqrt{N/M})$$であり、グローバーのアルゴリズムが$$\mathcal{O}\sqrt{N}$$で動作することがわかった。

## 実装例

### kに対する依存性

![kに対する依存性](/images/qc/sin.png)

横軸がk、縦軸が解を得られる確率。幾何学的説明で示したようにsinカーブになっている。これはユニタリ変換をかけ続けているだけなので、状態がある状態に収束したりはしない。

## 発展

これを応用して、グローバーのアルゴリズムを用いてコンビニの配置問題を解く問題がある。

[IBM Quantum Challenge 2019コンテスト問題](https://github.com/quantum-challenge/2019/blob/master/problems/final/Final.ipynb)  
[その解答例](https://github.com/quantum-challenge/2019/blob/master/problems/final/answer_and_comment_by_judges.ipynb)

## 参考文献

[1] M. A. Nielsen and I. L. Chuang, “Quantum Computation and Quantum Information 10th Anniversary Edition“, University Printing House の 6.1 The quantum search algorithm  
[2] D. Aggarwal, G. Brennen, T. Lee, M. Santha, and M. Tomamichel, “Quantum Attacks on Bitcoin, and How to Protect Against Them“, Ledger, [S.l.], v. 3, oct. 2018, https://ledgerjournal.org/ojs/index.php/ledger/article/view/127  
[3] IBM Quantum Challenge 2019, Week 2 ノートブック, https://github.com/quantum-challenge/2019/blob/master/problems/week2/week2.ipynb  
[4] 藤井啓祐, “グローバー探索量子アルゴリズムをとことん実装する“, https://github.com/keisukefujii/QulacsExamples/blob/master/GroverSearch.ipynb  