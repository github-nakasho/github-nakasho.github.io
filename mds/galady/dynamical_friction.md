---
layout: default
title: 動的摩擦
parent: 銀河のダイナミクス
math: mathjax3
permalink: /galady/dynamical_friction
nav_order: 4
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

# 動的摩擦 (Dynamical friction)

[2体問題](/galady/twobody)から導出される[2体緩和](/galady/relaxation_time)を多粒子系に発展させることで、重力多体系の緩和時間を求めることができました。
ここでは[2体緩和](/galady/relaxation_time)の途中式を用いることで、周囲の天体より重たい天体にかかる動的摩擦を求めてみましょう。

## 動的摩擦の直感的理解

たとえば、質量$$m_1$$の恒星からなる星団中に、$$m_2$$の別の天体が新たに入ってきたとしましょう。このとき、新たに入ってきたこの天体は周囲よりも重たい$$(m_2 > m_1)$$とします。
この天体が星団中を直進する間に、周囲の恒星はこの天体と重力相互作用を起こし、下図のようにその軌道を曲げて飛んでいきます。
すると重たい天体の後方に、周囲よりも(時間平均で見ると)高密度な領域が発生します。この高密度領域からの重力が天体にブレーキをかけます。これが動的摩擦のイメージです。

![](/assets/images/galady/dynamical_friction_01.png)

## 解析的な導出

それでは数式を用いてこれを導出してみましょう。

{% include adsense.html %} 
