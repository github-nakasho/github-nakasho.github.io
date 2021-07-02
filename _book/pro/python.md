# Pythonメモ

ここではPythonの環境設定からスクリプトコーディングに関する備忘録まで、様々を掲載します。

## pipenv shell

そのディレクトリでPython仮想環境が作られる、便利なもの。

## pip3 install したものがcommand not findとなる

```bash
$ pip3 install jupyter
```

としてインストールしようとするとErrorとなります。解決策としては

```bash
$ pip3 install --user jupyter
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
def save(data_path='./data', instances):
```

そして実行すると、次のようなエラーとなります。

```bash
SyntaxError: non-default argument follows default argument
```

これの解決方法がPythonの公式ドキュメントに記載されていました。

> 1 つ以上の 仮引数 が parameter = expression の形を取っているとき、関数は "デフォルト引数値" を持つと言います。デフォルト値を持つ仮引数では、呼び出し時にそれに対応する実引数 (argument) は省略でき、その場合は仮引数のデフォルト値が使われます。ある引数がデフォルト値を持っている場合、それ以降 "*" が出てくるまでの引数は全てデフォルト値を持っていなければなりません -- これは文法定義では表現されていない構文的制限です。  

つまり、上述のスクリプトをエラーなく実行するには

```python
def save(data_path='./data', instances=None):
```

のようにinstances引数にもデフォルトの値を設定するか、

```python
def save(instances, data_path='./data'):
```

のように引数の順序を変更します。

## matplotlib.pyplotで判例が表示されない

```python
plt.plot(x, ei, label=string)
plt.legend()
```

のように`plt.legend()`を直後に書くことで表示されるようになります。

