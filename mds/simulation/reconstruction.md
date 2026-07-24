---
layout: default
title: 流体計算のための空間再構成手法
parent: 数値計算
math: mathjax3
permalink: /simulation/reconstruction
nav_order: 8
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

# 流体計算のための空間再構成手法 (工事中)

[HLLD 法](/simulation/hlld)などに代表される近似リーマン解法では、セル中心 $$i, i+1, i+2$$ などの値だけでなく、そのセルの間にある境界面 $$i+1/2, i+3/2$$ などを通過する流束の計算が必要となります。
そこでセル中心の値からセル境界の値を補間する、空間再構成手法が必要となります。
しかし、この補間によって数値振動が発生してしまっては、元も子もありません。
ここでは宇宙 (磁気) 流体計算で主に用いられている、補間手法について見ていきましょう。  
以降では $$V$$ という値を補間することにします。
この $$V$$ は、セル中心 $$i, i+1, i+2, \dots$$ で定義されている量です。
近似リーマン解法では、セル境界 $$i+1/2$$ の左側 (セル $$i$$ の側) と $$i+1/2$$ の右側 (セル $$i+1$$ の側) を計算する必要があります。
この左側と右側の値を用いることで、それぞれの側での流束 $$\mathbf{F}_\mathrm{L}, \mathbf{F}_\mathrm{R}$$ と、中間状態からくる流束 $$\mathbf{F}^\ast$$ などを求めることが可能になります。

![](/assets/images/simulation/reconstruction_01.png)

以降では簡単のため、セルの間隔 $$x_{i+1} - x_i = \Delta x$$ は一定とします。

## Minmod 法

最も基本的な再構成手法の一つです。
単調性が保証されている基礎的な手法ですが、最も散逸的な計算結果となるデメリットも持ちます。
この手法は極めてシンプルです。
まず $$i + 1/2$$ の左側の値 $$V_{L, i+1/2}$$ を、直線 (1次関数) を用いて推測することを考えます。
素朴に考えると、$$i-1$$ と $$i$$ の値から外挿する方法と、$$i$$ と $$i+1$$ の値から内挿する方法、の2つが考えられます。

![](/assets/images/simulation/reconstruction_02.png)  
(左): $$i-1$$ と $$i$$ の値から外挿する方法、(右): $$i$$ と $$i+1$$ の値から内挿する方法。

この2つの直線の傾きを比べたときに、傾きが穏やかを選びます。
すなわち

$$
V_{\mathrm{L}, i+1/2} 
= V_i + 0.5 \mathrm{min} (a, b) \Delta x \qquad \left( a = \frac{V_{i+1} - V_i}{\Delta x}, b = \frac{V_i - V_{i-1}}{\Delta x} \right) \tag{1}
$$

のようにして求めます。
同様に、$$V_{\mathrm{R}, i-1/2}$$ ($$V_{\mathrm{L}, i+1/2}$$ とはセル中心を挟んで反対側の値) も

$$
V_{\mathrm{R}, i+1/2} 
= V_i - 0.5 \mathrm{min} (a, b) \Delta x \tag{2}
$$

として計算します。
ただし、傾きが負の場合もあるため、正確には傾きの絶対値 $$\vert a \vert, \vert b \vert$$ の大きさを比較しなければなりません。
そして注意が必要なのは、次のように左右で傾きの符号が変化するときです。

![](/assets/images/simulation/reconstruction_03.png)  

この場合には解の単調性を維持するために、どちらの直線も採用せず、$$V_{\mathrm{L}, i+1/2} = V_i, V_{\mathrm{R}, i-1/2} = V_i$$ のように $$i$$ 番目のセルの値をそのまま用います。  
以上の議論から、minmodリミッターを用いる場合には、次のようなコーディング例が考えられます。

```c
a = V[i] - V[i-1];
b = V[i+1] - V[i];
if(a * b <= 0.0) grad = 0.0;
else{
    if(a > 0.0) grad = min(a, b);
    else grad = max(a, b);
}
Vl[i] = V[i] + 0.5 * grad;
Vr[i-1] = V[i] - 0.5 * grad;
```

`a * b <= 0.0` により、`a` と `b` が同符号であるかを判定しています。

## Superbee 法

Superbee リミッターは、次のような図で考えることができます。

![](/assets/images/simulation/reconstruction_04.png)

まず直線 $$a, b$$ の傾きを比較します。
傾きが小さな方 (この図の場合は $$a$$) の直線を、$$x_i$$ から $$x_{i+1}$$ まで伸ばします (すなわち $$x_{i+1/2}$$ まで伸ばす場合の2倍であり、傾きを2倍すると考えても良いでしょう)。
このようにして得られた青点の値と、傾きが大きな直線 $$b$$ の内挿によるマゼンダ点の値とを比較し、値が小さな方を $$V_{\mathrm{L}, i+1/2}$$ として選びます。
実際のコーディング例として、次のようなものが考えられます。

```c
a = V[i] - V[i-1];
b = V[i+1] - V[i];
if(a * b <= 0.0) grad = 0.0;
else{
    if(fabs(a) >= fabs(b)){
        if(a > 0.0) grad = min(a, 2.0 * b);
        else grad = max(a, 2.0 * b);
		}
    else{
        if(a > 0.0) grad = min(2.0 * a, b);
        else grad = max(2.0 * a, b);
    }
}
Vl[i] = V[i] + 0.5 * grad;
Vr[i-1] = V[i] - 0.5 * grad;				
```

解の単調性を維持しつつ、[minmod手法](/simulation/reconstruction#minmod)より散逸を抑えた方法であり、接触不連続面もよりシャープに捉えることができます。
しかし、滑らかな極値を歪める特徴も持っているため、万能な手法というわけではありません。
具体的には、滑らかなプロファイルを角張らせるという特徴があります。
例えば、正弦波のような波形を superbee 法を用いた数値計算手法で時間発展させると、頂点付近から平坦になり、最終的に矩形波に近いような形になります。













{% include adsense.html %} 
