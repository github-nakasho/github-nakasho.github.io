---
layout: default
title: Python
parent: プログラミング
math: mathjax3
permalink: /pro/python
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

# Python

ここではPythonの環境設定からスクリプトコーディングに関する備忘録まで、様々を掲載します。

## pipenv shell

そのディレクトリでPython仮想環境が作られる、便利なもの。

## pip3 install したものがcommand not findとなる

```bash
$ pip install jupyter
```

としてインストールしようとするとErrorとなります。解決策としては

```bash
$ pip install --user jupyter
```

のようにしてユーザーディレクトリにインストール先を変更します。すると`~/Library/Python/X.Y/bin`にインストールされます(X.Yはお使いのPythonのバージョンです)。それをどこからでも呼び出せるように、`.bashrc`に以下のようにしてパスを記述します。

```bash:.bashrc
export PATH=$PATH:~/Library/Python/3.7/bin
```

最後に

```bash
$ source .bashrc
```

で.bashrcの変更内容を反映します。

## 引数にデフォルトの値を入れる

次のようにスクリプトをコーディングをします。

```python
def save(self, data_path='./data', instances):
```

そして実行すると、次のようなエラーとなります。

```bash
SyntaxError: non-default argument follows default argument
```

これの解決方法がPythonの公式ドキュメントに記載されていました。

> 1 つ以上の 仮引数 が parameter = expression の形を取っているとき、関数は "デフォルト引数値" を持つと言います。デフォルト値を持つ仮引数では、呼び出し時にそれに対応する実引数 (argument) は省略でき、その場合は仮引数のデフォルト値が使われます。ある引数がデフォルト値を持っている場合、それ以降 "*" が出てくるまでの引数は全てデフォルト値を持っていなければなりません -- これは文法定義では表現されていない構文的制限です。  

つまり、上述のスクリプトをエラーなく実行するには

```python
def save(self, data_path='./data', instances=None):
```

のようにinstances引数にもデフォルトの値を設定するか、

```python
def save(self, instances, data_path='./data'):
```

のように引数の順序を変更します。

## matplotlib.pyplotで判例が表示されない

```python
plt.plot(x, ei, label=string)
plt.legend()
```

のように`plt.legend()`を直後に書くことで表示されるようになります。

{% include adsense.html %}

## 多重入れ子dictをNumPy配列に変換

```python
def to_list(mydict):
    mylist = []
    for i in mydict.keys():
        if isinstance(mydict[i], dict):
            mylist.append(to_list(mydict[i]))
        else: 
            mylist.append(mydict[i])
    return np.array(mylist)
```
if...else...部分で、$$i$$番目の要素がさらに辞書になっているかどうかを判定します。これにより多重入れ子になっている辞書もNumPy配列に変換することが可能です。$$i$$番目の要素が辞書で無い場合、そこで入れ子が終了になっていると判断し、リストに加えます。  
こうしてできたリストを最後にNumPy配列にキャストして、それを返します。  

テストとして以下のような辞書を入力に使います。

```python
mydict = {0: {0: {0: 1, 1: 1, 2: 1}, 
                        1: {0: 1, 1: 1, 2: 1}, 
                        2: {0: 1, 1: 1, 2: 1}}, 
                    1: {0: {0: 0, 1: 0, 2: 0}, 
                        1: {0: 1, 1: 1, 2: 1}, 
                        2: {0: 0, 1: 0, 2: 0}}, 
                    2: {0: {0: 1, 1: 1, 2: 1}, 
                        1: {0: 1, 1: 1, 2: 1}, 
                        2: {0: 1, 1: 1, 2: 1}}
                    }
```

すると以下のような答えが返ってきます。

```python
[[[1 1 1]
  [1 1 1]
  [1 1 1]]

 [[0 0 0]
  [1 1 1]
  [0 0 0]]

 [[1 1 1]
  [1 1 1]
  [1 1 1]]]
(3, 3, 3)
```

## 上述の逆変換

```python
def to_dict(mylist):
    mydict = {}
    for i, j in enumerate(mylist):
        if isinstance(j, np.ndarray):
            mydict[i] = to_dict(j)
        else:
            mydict[i] = j
    return mydict
```

if...else...部分で$$i$$番目の要素がさらにNumPy配列になっているかどうかを判定します。これにより多重リストになっている場合なっている場合でもNumPy配列に変換することが可能です。$$i$$番目の要素がNumPy配列で無い場合、そこで入れ子が終了になっていると判断し、辞書に要素として追加します。

テストとして以下のようなNumPy配列を入力に使います。

```python
myarray = np.array([[[1, 1, 1], [1, 1, 1], [1, 1, 1]], 
                                [[0, 0, 0], [1, 1, 1], [0, 0, 0]], 
                                [[1, 1, 1], [1, 1, 1], [1, 1, 1]]])
```

すると以下のような答えが返ってきます。

```python
{0: {0: {0: 0, 1: 0, 2: 0}, 1: {0: 1, 1: 1, 2: 1}, 2: {0: 1, 1: 1, 2: 1}}, 1: {0: {0: 0, 1: 0, 2: 0}, 1: {0: 1, 1: 1, 2: 1}, 2: {0: 0, 1: 0, 2: 0}}, 2: {0: {0: 1, 1: 1, 2: 1}, 1: {0: 1, 1: 1, 2: 1}, 2: {0: 1, 1: 1, 2: 1}}}
```

## Jupyter Notebookでのimport error

`pip`を用いてインストールしたが、いざJupyter Notebook上でこれを使おうとするとエラーとなる時の対処法です。

```bash
$ pip show
```

で出てくる`Location`部分にインストールされたライブラリがあるので、このパスを追記します。

```python
import sys
sys.path.append('(Locationに表示されていたパス)')
```

をNotebook上で実行することで、これが解消されます。

```
ターミナル上で`.bash_profile`に追記することでパスを通す方法もあります。
```

{% include adsense.html %}
