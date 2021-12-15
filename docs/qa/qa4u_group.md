---
layout: default
title: Quantum annealing for you, group
parent: 量子アニーリング
math: mathjax3
permalink: /qa/qa4ug
nav_order: 6
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

# Quantum annealing for you, グループ演習

# レシピ最適化

(量子)アニーリングを用いて「食材の最適な組み合わせ」を求め、お料理の献立をお助けするスクリプトを開発しましょう。

# 数理モデルとQUBO定式化

## 数理モデル

### 用いるバイナリ変数

$$x_i$$を、$$i$$番目の材料を用いるとき1、そうでないとき0となるバイナリ変数とします。

### 制約1: 用いる食材の数には限りがある

家の冷蔵庫にある食材の数には限りがあります。よって料理に使える食材の種類の数を$$N$$とすると

$$
 \sum_{i=0}^{I-1} x_i 
 = N \tag{1}
$$

ここで$$I$$は考える食材の種類の総数です。

### 制約2: 必ずある食材を用いる必要がある

例えば「今日はお米と魚を使った料理が食べたい」などの願望を叶えるための制約を用意します。これを数式で表現すると

$$
 x_\mathrm{rice} = 1, \quad x_\mathrm{fish} = 1 \tag{2}
$$

### 目的関数: 相性を最大化する

最大化したいのは食材同士の相性です。$$i$$番目の食材と$$j$$番目の食材の相性を$$A_{ij}$$とすると、目的関数はこの行列を用いて

$$
 \mathrm{obj} = - \sum_{i=0}^{I-1} \sum_{j=0}^{I-1} x_i A_{ij} x_j \tag{3}
$$

## QUBO

(1)式をQUBOで表現しましょう。等式制約なので、右辺を左辺に移項して罰金項を作成します。

$$
 H_1 = \left( \sum_{i=0}^{I-1} x_i - N \right)^2 \tag{4}
$$

(2)式は変数固定により表現できるため、数式としてあらわに表現する必要はありません。以上より、全ハミルトニアンは

$$
 H = \mathrm{obj} + \frac{\lambda_1}{2} H_1 \tag{5}
$$

ここで$$\lambda_1$$は$$H_1$$の項の強さを表す未定乗数(ハイパーパラメータ)です。

## 大関法の適用

[大関法](/mo/ohzeki.md)を適用することで、$$(\cdots)^2$$を線形項に変換することができます。このようにして作られたハミルトニアンは

$$
 H_\mathrm{eff} 
 = \mathrm{obj} - \nu \left( \sum_{i=0}^{I-1} x_i - N \right)
$$

ここで$$\nu$$は変換された制約に対する未定乗数です。

# インスタンス

インスタンス(実際に用いるインプットデータ)は以下の論文の Supplementary Dataset 2 を用いました。

[Ahn et al., 2011, "Flavor network and the principles of food pairing"](https://www.nature.com/articles/srep00196)

# スクリプト例

実際に作成したスクリプトを以下のリンク先にご用意しました。

[GitHubリンク](https://github.com/github-nakasho/qa4u_qooking)

# 実行例

'EastAsian'のレシピデータを用いて相性行列(組合せ頻度行列)を作成しました。また用いる食材種類は5つ、必ず用いる食材にriceとfishを用いたところ、以下のような結果となりました。

```bash
***** Broken check *****
{}
***** Result for you *****
black_pepper
scallion
garlic
rice
fish
```

黒胡椒・新玉ねぎ・ニンニク・お米・お魚の5種類の食材が選出されました。

{% include adsense.html %}
