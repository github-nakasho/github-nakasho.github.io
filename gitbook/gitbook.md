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

## Google Adsense

### 事前準備

事前にGoogle Adsenseのアカウントを取得しておきます。

{% hint style='tip' %}
GitHub Pagesでアカウントを取得する際は、例えばhttps://github-nakasho.github.ioのようなURLで登録します。https://github-nakasho.github.io/websiteのようにURLにパス名が入っていると、取得できません。ご注意ください。
{% endhint %}

### インストールと設定

以下のコマンドで必要なプラグインをインストールします。

```bash
$ npm install gitbook-plugin-adsense
```

`book.json`に以下の行を追加します。

```
{
    "plugins": ["adsense"]
}
```

そしてこのプラグインの設定として以下も記述します。

```
{
    "pluginsConfig": {
        "adsense": {
            "client": "ca-pub-XXXXXXXXXXXXXXXX",
            "slot": "XXXXXXXXXX",
            "format": "auto",
            "element": ".page-inner section",
            "position": "top"
        }
    }
}
```

`client`にはca-pub-から始まる番号、`slot`にはどのAdsenseを貼るかを識別する番号を入力します。`position`は初期設定ではbottom(ページ下部)です。topかbottomを選ぶことができます(これ以外は試していません)。

## Google Analytics 

### インストールと設定

以下のコマンドでプラグインをインストールします。

```bash
$ npm install gitbook-plugin-gtag 
```

`book.json`に以下を追記します。

```
"plugin": ['gtag'],
"pluginsConfig": {
  "gtag": {
    "token": <gtag-id>
  }
}
```

Google Analyticsに登録した後、websiteをトラッキングするためのスクリプト部分から`gtag`番号を<gtag-id>部分に入力します。