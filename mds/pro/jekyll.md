---
layout: default
title: Jekyll
parent: プログラミング
math: mathjax3
permalink: /pro/jekyll
nav_order: 5
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

# M1 MacでJekyll環境を設定からGitHub Pagesに自作websiteをuploadするまで

ここでは上述の通り、まずはM1 MacにJekyll環境を構築します。そのローカル環境でwebsiteが正しく作られていることを確認したのち、GitHub Pagesにそれをアップロードする方法までをメモしておきます。私の環境は以下の通りです。

* OS: macOS Big Sur, Ver. 11.6
* Chip: Apple M1
* Shell: Zsh
* インストールされたJekyll: 4.2.1

## Jekyll環境構築

### Xcodeのインストール

まずは自分のMacに[Xcode](https://developer.apple.com/xcode/)をインストールしましょう。App Storeでダウンロードしても大丈夫ですが、ここで必要となるのはコマンドラインツールです。以下のようにしてインストールすることができます。

```zsh
% xcode-select --install
```

### Homebrewのインストール

次に必要となるのは[Homebrew](https://brew.sh/)です。Homebrewのwebsiteの手順通り、コマンドでインストールを行います。

```zsh
% /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Ruby, Rbenvのインストール

先程インストールしたHomebrewを用いてRubyと`rbenv`をインストールします。

```zsh
% brew install rbenv ruby-build
```

ターミナルを開いたときにいつでもrbenvが使えるように、`.zshrc`に以下の文を加筆しましょう。

```zsh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
```

`.zshrc`の変更を反映させます。

```zsh
% source ~/.zshrc
```

続いて、このrbenvを用いて`Ruby 3.0.0`をインストールします。

```zsh
% rbenv install 3.0.0
% rbenv global 3.0.0
% ruby -v
# ruby 3.0.0などが表示されればOK
% rbenv rehash
```

Rubyとgemsのパスを通します。そのためには`.zshrc`に以下の文を加筆します。

```zsh
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
```

先程と同様に`source`コマンドでこの変更を反映させましょう。もしパスが通っているか確認したければ`% echo $SHELL`などで確認することができます。

### Jekyllのインストール

それでは[Jekyll](http://jekyllrb-ja.github.io/)および`Bundler`をインストールしていきましょう。

```zsh
% gem install --user-install bundler jekyll
```

`Jekyll`をどこからでも使えるように、以下の文を`.zshrc`に追加します。

```zsh
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"
```

```
CAUTION: もしRubyのバージョンが違う場合は、3.0.0の部分を該当するバージョンに変更します。
```

今しがた追加したパスが通っているかは、以下のコマンドを入力したときに表示される`GEM PATHS:`項目を見ることで確認することができます。

```zsh
% gem env
```

これでJekyllが使えるようになりました。それではJekyllのクイックスタートを実行してみましょう。

```zsh
% gem install bundler jekyll
% jekyll new good-looking-site
% cd good-looking-site
% bundle exec jekyll serve
```

上の"good-looking-site"の部分は自分の好きなwebsiteプロジェクト名を入れます。しかしM1 Macを使用している場合、一番最後のコマンドでエラーとなるはずです。

### M1 Macへの処方箋: Jekyllの修正

ここで起きたエラーを解消するには`webrick`なるものを自分たちのプロジェクトに加えます。念のために`bundle`をアップデートして臨みましょう。

```zsh
% bundle update --bundler
% bundle add webrick
% bundle install --redonwload
```

最後のコマンドは全て再構築することを確実に行うために実行します。もしエラーが出るようであれば成功するまで何度か実行します。
そして

```zsh
% bundle exec jekyll serve
```

を行うと、ローカルでサーバーが立ち上がります。この状態で`http://127.0.0.1:4000`などにアクセスすると、たった今Jekyllによって作成されたwebsiteを見ることができるはずです。　　

もしこれで上手くいかない場合には、以下の手順を全て順番通りに実行すると良いでしょう。

```zsh
% gem uninstall sassc
% gem install sassc -- --disable-march-tune-native
% gem uninstall ffi
% gem install ffi
% bundle update --bundler
% bundle add webrick
% bundle install --redownload
% bundle exec jekyll serve
```

{% include adsense.html %}

## GitHub Pagesにアップロードする

以下の文章は[Jekyllの日本語公式website](http://jekyllrb-ja.github.io/docs/continuous-integration/github-actions/)に書かれたものに則って書かれています。しかし自分のつまづきポイントなども加えたオリジナル文章であるため、間違いもあるかもしれません。ご容赦ください。

### _config.yml

特に気をつけるところは、`GitHub Pages`に対応するために`remote theme`を設定することです。私がこのwebsiteに用いている`Just the Docs`というテーマプラグインでは、以下の一行を`_config.yml`に加筆します。

```yml
remote_theme: pmarsceill/just-the-docs
```

コロン以降の部分には(テーマプラグインのオーナー)/(プラグイン名)のような書式で書きます。もしこの設定を忘れると、GitHub Pagesにアップロードしたときに、GitHubに登録されているメールアドレス宛に以下のようなメールが送信されます。

![GitHubから送信されたメール](/assets/images/pro/jekyll_01.png)

### Actionのセットアップ

Jekyllで作成したwebsiteをGitHub Pagesで表示するには、`GitHub Actions`を用います。`Jekyll 3.9.0`であれば`Gemfile`内に2行ほど追加するだけで、GitHub Pages環境のための準びが調います。しかし最新のJekyllではこれに対応しておらず、`GitHub Actions`を用いた対応をする必要があります。  
そのためには`_config.yml`と同じ場所に`.github/workflows`というディレクトリを作成し、その中に`github-pages.yml`というファイルを作成しましょう。ここには`GitHub Actions`が実際にGitHub上で行うワークフローを記述しておきます。私は以下のように記述したものを用いています。

```
注意: 以下では中括弧の前についているバックスラッシュを省略して読み進めてください。これらをコピペして使用する場合も同様です。
```

```yml
name: Build and Deploy to Github Pages
on:
  schedule:
    - cron:  '0 * * * *'
  push:
    branches:
      - master  # Here source code branch is `master`, it could be other branch
jobs:
  build_and_deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      # Use GitHub Actions' cache to cache dependencies on servers
      - uses: actions/cache@v2
        with:
          path: vendor/bundle
          key: $\{\{ runner.os \}\}-gems-$\{\{ hashFiles('**/Gemfile.lock')\}\}
          restore-keys: |
            $\{\{ runner.os \}\}-gems-
      # Use GitHub Deploy Action to build and deploy to Github
      - uses: jeffreytse/jekyll-deploy-action@v0.3.1
        with:
          provider: 'github'
          token: $\{\{ secrets.JEKYLL_PAT \}\} # It's your Personal Access Token(PAT)
          repository: ''             # Default is current repository
          branch: 'gh-pages'         # Default is gh-pages for github provider
          jekyll_src: './'           # Default is root directory
          jekyll_cfg: '_config.yml'  # Default is _config.yml
          jekyll_baseurl: ''         # Default is according to _config.yml
          bundler_ver: '>=0'         # Default is latest bundler version
          cname: ''                  # Default is to not use a cname
          actor: ''                  # Default is the GITHUB_ACTOR
          pre_build_commands: ''     # Installing additional dependencies (Arch Linux)
```

最も重要なのは、最後の方に記述されている`token: $\{\{ secrets.JEKYLL_PAT \}\}`部分です。この`JEKYLL_PAT`という文字列は好きに変更しても構いませんが、その後の設定に変更が生じるので覚えておきましょう。  

最初の`on.schedule`にはビルドする時刻を指定します。ここでは毎時間ごとにビルドするようにワークフローを設定しています。  
次の`on.push.branches`には、どのブランチが更新されたときにビルドを行うかを設定します。ここでは`master(main)`ブランチを指定しています。  
途中の部分では[JEKYLL DEPLOY ACTION](https://github.com/jeffreytse/jekyll-deploy-action)という、GitHub PagesにJekyllで作成したwebsiteのデプロイを行ってくれるActionを設定してくださったものを使用しています。  

### GitHub Actions に権限を与える

上で示した`.github/workflows/github-pages.yml`の設定では、`master`にpushされたJekyllのwebsiteを`gh-pages`ブランチにプッシュします。よってこれを行う権限をActionに与える必要があります。  

GitHub画面の右上にある自分のアイコンを押下し、`Settings`に移動します。

![Settings](/assets/images/pro/jekyll_02.png)

下の方にある`Developer settings`に移動します。

![Developer settings](/assets/images/pro/jekyll_03.png)

`Personal access tokens`に移動し、`Generate new token`を押下してアクセストークンを発行します。

![Access token](/assets/images/pro/jekyll_04.png)

Note部分には好きな名前(画像ではGitHub Actionsとなっています)を入力します。Expirationには、このトークンの有効期間を指定します。無期限で使用したい場合には`No expiration`を選びましょう。  
ここで重要なのは、次のSelect scopesの部分です。ここではこのトークンを知っているものにどのような権限を与えるかなどを設定します。画像のように`repo`と`workflow`にチェックを入れてください。  
最後に一番下のGenerate tokenボタンを押下して、トークンの発行手続きは終了です。するとトークンの文字列が出現するので、これをコピーしておきます。  
次に、Jekyllで作成されたwebsiteが置いてあるリポジトリへ移動します(もし作成されていない場合は、これをpushしておいてください)。リポジトリの`Settings`->`Secrets`に移動し、`New repository secret`ボタンを押下してワークフローを登録します。

![Secrets](/assets/images/pro/jekyll_05.png)

このとき`NAME`には、先程`.github/workflows/github-pages.yml`の`token: ${{ secrets.JEKYLL_PAT }}`部分の`JEKILL_PAT`と同じ文字列を入力します。そして`Value`には先程コピーしておいたトークン文字列を貼り付けます。  
これでトークンが紐づけられたactions secretsには`.github/workflows/github-pages.yml`を実行する権限が与えられ、ワークフローの途中でリポジトリにアクセスする権限まで与えられたことになります。

### ビルドとデプロイ

以上の設定が完了したのち、`master`上のローカル変更をpushすると、actionsが起動してビルドを開始します。進行状況の確認やビルドエラーを確認するためには1. commitを見る, 2. Actionsタブの2つの方法があります。

Actionsタブを開くと以下のように、最近実行されたコミットやビルドが一覧で表示されます。ここをさらにクリックすればビルドメッセージを見ることが可能です。

![Actions](/assets/images/pro/jekyll_06.png)

全てが上手く実行されれば緑色が表示されますが、どこかでエラーとなると赤色が表示されます。そして上の設定では、websiteに必要なhtmlファイルなどが`gh-pages`に作成されます。あとはリポジトリの`Settings`->`Pages`でGitHub Pagesの設定を行うだけです。

# 参考リンク

* [1] [Installing Jekyll on an Apple M1 Mac](https://colingallagher.me/webdev/2021/04/15/installing-jekyll-apple-m1-mac/)
* [2] [Can't install Jekyll on Mac OS Big Sur (Apple Silicon M1)](https://github.com/jekyll/jekyll/issues/8576#issuecomment-798080994)
* [3] [Jekyll, GitHub Actions](http://jekyllrb-ja.github.io/docs/continuous-integration/github-actions/)
* [4] [JEKYLL DEPLOY ACTION](https://github.com/jeffreytse/jekyll-deploy-action)

{% include adsense.html %}
