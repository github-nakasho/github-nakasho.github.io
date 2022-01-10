---
layout: default
title: M1 Macで3画面
parent: プログラミング
math: mathjax3
permalink: /pro/triple_display
nav_order: 6
---

{% if page.thumb %}
  <meta name="twitter:image" content="｛｛ page.thumb ｝｝" />
{% else %}
  <meta name="twitter:image" content="/assets/images/logo.png" />
{% endif %}

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

# M1 Mac でトリプルディスプレイ環境を構築

## M1 Macでは1台までしか外部ディスプレイを接続できない？

デフォルトではM1 Macはサードバーティ製の外部ディスプレイへの出力が1つまでしかできません。つまりこのままでは元のMacの画面+外部ディスプレイ1つのデュアルディスプレイとなります。ではこれを拡張してトリプルディスプレイにする方法はないのでしょうか。ここでは私の備忘録として、M1 Macでトリプルディスプレイをする方法をメモしておきます。

## DisplayLink

1つではなく複数の外部ディスプレイに出力する方法として、[DisplayLink](https://www.synaptics.com/products/displaylink-graphics)が開発した技術を用います。これを用いることで、1本のUSBケーブルから複数の外部ディスプレイ装置やマウス・キーボードなどのUSB周辺機器にも接続することが可能になります。  
このような理由から、M1 Macトリプルディスプレイ環境の構築には以下のような手順が必要となります。

1. DisplayLink技術に対応したUSB-HDMI変換アダプタを購入する
2. 用意したUSB-HDMI変換アダプタとM1 Macおよび接続したいディスプレイ群を接続する
3. DisplayLink社のwebsiteに行き、ドライバをダウンロードする

## DisplayLinkドライバのダウンロード

以下のボタンリンク先からご自分のOSにあったものをダウンロードし、手順にしたがってインストールを行います。01/10/2022現在、対応しているのはWindows, macOS, Android, Chrome OS, Ubuntuのようです。

[DisplayLink](https://www.synaptics.com/products/displaylink-graphics/downloads){: .btn .btn-purple }

リンクはDisplayLink社の意向により変更される恐れがあります。ご注意ください。
{: .label .label-yellow }

## Macを再起動したらディスプレイが接続されなくなった

M1 Macの動作が重たくなってきたなどの理由で再起動をしなけらばならない事があります。しかし再び作業しようとしたところ、2つの外部ディスプレイのうちの1つが認識されなくなってしまいました。  
解決策としては、`/Applications`にある`DisplayLink Manager`をダブルクリックすることで再起動します。

![DisplayLink Manager icon](/assets/images/pro/displaylink_01.png)

{% include adsense.html %}
