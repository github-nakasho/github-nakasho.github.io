# GitBookメモ

なにぶんGitBookでwebsiteやpdfを作成するのが初めてなものですから。

## mathjax

### 事象

book.jsonに

```json
{
    "plugins": ["mathjax"]
}
```

と記述し以下を実行します。

```
$ gitbook install
```

するとmathjaxがインストールされます。しかしいざビルドしてみると

```
$ gitbook build

PluginError: Error with plugin "mathjax": Cannot find module 'mathjax/unpacked/MathJax'
Require stack:
- /Users/s.nakamura/website/node_modules/mathjax-node/lib/mj-single.js
- /Users/s.nakamura/website/node_modules/gitbook-plugin-mathjax/index.js
- /Users/s.nakamura/.gitbook/versions/3.2.3/lib/plugins/loadPlugin.js
- /Users/s.nakamura/.gitbook/versions/3.2.3/lib/plugins/loadForBook.js
- /Users/s.nakamura/.gitbook/versions/3.2.3/lib/plugins/index.js
- /Users/s.nakamura/.gitbook/versions/3.2.3/lib/api/encodeGlobal.js
- /Users/s.nakamura/.gitbook/versions/3.2.3/lib/api/index.js
- /Users/s.nakamura/.gitbook/versions/3.2.3/lib/output/getModifiers.js
- /Users/s.nakamura/.gitbook/versions/3.2.3/lib/output/json/onPage.js
- /Users/s.nakamura/.gitbook/versions/3.2.3/lib/output/json/index.js
- /Users/s.nakamura/.gitbook/versions/3.2.3/lib/output/index.js
- /Users/s.nakamura/.gitbook/versions/3.2.3/lib/index.js
- /Users/s.nakamura/.nodebrew/node/v14.0.0/lib/node_modules/gitbook-cli/lib/local.js
- /Users/s.nakamura/.nodebrew/node/v14.0.0/lib/node_modules/gitbook-cli/lib/index.js
- /Users/s.nakamura/.nodebrew/node/v14.0.0/lib/node_modules/gitbook-cli/bin/gitbook.js
```

のようにエラーがたくさん出てきてしまいました。もちろんhtmlは作られていません。

### 解決策

以下のようにnpm(Node Package Manager)でmathjaxのバージョンを指定してインストール。

```
$ npm install mathjax@2.7.6
```

そして再びビルドすると、今度はちゃんと数式が表現されたhtmlが作成されました。

## 画像のリンク

GitBookはファイルのパスを記述すると、大抵が相対パスに翻訳されます。例えば以下のようにファイルのリンク先を指定したとしましょう。

```
![放射冷却曲線](/images/ism/cooling.png)
```

するとこれは絶対パスでなく、README.mdと同じディレクトリにあるimagesディレクトリの中からpngファイルを探してくることになります。

## 数式番号

```latex
hogehoge \tag{#1}
```

のようにすると(#1)の式番号が付与されます。その式を参照するには`(#1)`のようにハードコーディングするしかないようです(2020/04/25現在)。

## 数式を揃える

```latex
\begin{align}
a &= {\rm hogehoge} \\
b &= 1
\end{align}
```

のようにalignで囲みます。揃えたい部分に&記号を入れます。