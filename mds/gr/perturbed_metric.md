---
layout: default
title: 時空の摂動の一般論
parent: 一般相対性理論
math: mathjax3
permalink: /gr/perturbed_metric
nav_order: 36
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

# 時空の摂動の一般論

ここでは、メトリックテンソル$$g_{\mu \nu}$$の摂動の一般論について考えていきましょう。
平均値からの微小なズレを摂動の一次として扱う場合、摂動量が満たす方程式は線形となり、重ね合わせの原理を用いることができます。
したがって、フーリエモードで展開し、各モードの振る舞いを調べれば良いでしょう。
簡単のため、摂動量は波数ベクトルが$$z$$軸方向を向いた平面波で展開します。
メトリックの摂動は、固有距離を用いて一般に以下のように書けます。

$$
ds^2 
= - (1+2A) c^2 dt^2 - 2B_i cdt dx^i + \{(1+2D) \delta_{ij} + 2E_{ij}\} dx^i dx^j \tag{1}
$$

対応するメトリックテンソルを行列で書くと

$$
(g_{\mu \nu}) 
= \left( \begin{array}{cccc}
-(1+2A) & - B_1 & -B_2 & -B_3 \\
-B_1 & 1 + 2D + 2 E_{11}& 2E_{12} & 2E_{13} \\
-B_2 & 2 E_{21}& 1+2D+2E_{22} & 2E_{23} \\
-B_3 & 2 E_{31}& 2E_{32} & 1+2D+2E_{33} 
\end{array} \right) \tag{2}
$$

のようになります。
ここで$$A$$をラプス関数(lapse function)、$$B^i = (B_1, B_2, B_3)$$をシフトベクトル(shift vector)と呼びます。
$$E_{ij}$$はメトリックの摂動の空間成分のトレースレス成分です。
$$g_{\mu \nu}$$の逆行列、$$g^{\mu \nu}$$を求めましょう。
そのために、$$g_{\mu \nu} = \eta_{\mu \nu} + h_{\mu \nu}$$のように、摂動部分を$$h_{\mu \nu}$$と書くことにすると

$$
\begin{align}
&g^{\mu \nu} 
= \eta^{\mu \nu} + h^{\mu \nu} 
= g^{\mu \alpha} g^{\nu \beta} (\eta_{\alpha \beta} + h_{\alpha \beta}) 
= (\eta^{\mu \alpha} + h^{\mu \alpha}) (\eta^{\nu \beta} + h^{\nu \beta}) (\eta_{\alpha \beta} + h_{\alpha \beta}) \notag \\
\hspace{3em} &\simeq \eta^{\mu \nu} + 2 h^{\mu \nu} + \eta^{\mu \alpha} \eta^{\nu \beta} h_{\alpha \beta} 
= g^{\mu \nu} + h^{\mu \nu} + \eta^{\mu \alpha} \eta^{\nu \beta} h_{\alpha \beta} \notag \\
&\Longrightarrow \ 
h^{\mu \nu} 
= - \eta^{\mu \alpha} \eta^{\nu \beta} h_{\alpha \beta} \tag{3}
\end{align}
$$

となります。
この式から、(2)式の逆行列は

$$
(g^{\mu \nu}) 
= \left( \begin{array}{cccc} 
-(1-2A) & -B_1& -B_2 & -B_3 \\
-B_1 & 1-2D-2E_{11} & -2E_{21} & -2E_{31} \\
-B_2 & -2E_{12} & 1-2D-2E_{22} & -2E_{32} \\
-B_3 & -2E_{13} & -2E_{23} & 1-2D-2E_{33}
\end{array}\right) \tag{4}
$$

のようになります。  
波数ベクトル(今の場合は$$z$$軸)を軸とした座標回転に対する摂動量の変換性から、$$h_{\mu \nu}$$を既約分解することができます。
無限小回転に対して不変な量を、スピンがゼロの摂動、あるいはスカラーモードと呼びます。
座標を一回転したときに元に戻る回数が一回となる摂動を、スピンが1の摂動、あるいはベクトルモードと呼びます。
そして座標を一回転したときに元に戻る回数が二回となる摂動を、スピンが2の摂動、あるいはテンソルモードと呼びます。  
$$z$$軸周りに角度$$\theta$$だけ座標を回転する変換$$\Lambda$$、およびその逆変換$$\Lambda^\top$$は

$$
\Lambda 
= \left( \begin{array}{cccc}
1 & 0 & 0 & 0 \\
0 & \cos \theta & \sin \theta & 0 \\
0 & -\sin \theta & \cos \theta & 0 \\
0 & 0 & 0 & 1 
\end{array} \right), \quad \Lambda^\top 
= \left( \begin{array}{cccc}
1 & 0 & 0 & 0 \\
0 & \cos \theta & -\sin \theta & 0 \\
0 & \sin \theta & \cos \theta & 0 \\
0 & 0 & 0 & 1 
\end{array} \right) \tag{5}
$$

と書かれます。
この座標変換を$$h_{\mu \nu}$$に適用しましょう。
ただし、いきなり全ての成分に適用するのは難しいため、$$A, B, C, D$$それぞれに分けて考えることにします。

## ラプス関数 $$A$$ と $$D$$

まずは

$$
(h_{\mu \nu}) 
= \left( \begin{array}{cccc}
2A & & & \\
 & & & \\
 & & \mathbf{0} & \\
 & & & 
\end{array} \right) \tag{6}
$$

についてです。
これに対して$$\Lambda^\top (h_{\mu \nu}) \Lambda$$を計算すると

$$
\Lambda^\top (h_{\mu \nu}) \Lambda 
= \left( \begin{array}{cccc}
2A & & & \\
 & & & \\
 & & \mathbf{0} & \\
 & & & 
\end{array} \right) 
= (h_{\mu \nu}) \tag{7}
$$

のようになり、回転しても変化ないことがわかります。
よってこの$$A$$はスカラーモードです。  
今度は

$$
(h_{\mu \nu}) 
= \left( \begin{array}{cccc}
0 & & & \mathbf{0} \\
 & 2D & & \\
 & & 2D & \\
 \mathbf{0} & & & 2D
\end{array} \right) \tag{8}
$$

についてです。
同様に計算を行うと

$$
\Lambda^\top (h_{\mu \nu}) \Lambda 
= (h_{\mu \nu}) \tag{9}
$$

となり、$$D$$もスカラーモードであることがわかります。

## シフトベクトル $$B$$

続いてシフトベクトルのうち、波数ベクトルに垂直な成分、すなわち

$$
(h_{\mu \nu}) 
= \left( \begin{array}{cccc}
0 & B_1& B_2& \mathbf{0} \\
B_1 & & & \\
B_2 & & \mathbf{0} & \\
0 & & & 
\end{array} \right) \tag{10}
$$

について考えましょう。
すると

$$
\begin{align}
\Lambda^\top (h_{\mu \nu}) \Lambda 
&= \Lambda^\top \left( \begin{array}{cccc} 
0 & B_1 \cos \theta - B_2 \sin \theta & B_1 \sin \theta - B_2 \cos \theta & 0 \\
B_1 & & & \\
B_2 & & \mathbf{0}& \\
0 & & & 
\end{array}\right) \notag \\
&= \left( \begin{array}{cccc} 
0 & B_1 \cos \theta - B_2 \sin \theta & B_1 \sin \theta - B_2 \cos \theta & 0 \\
B_1 \cos \theta - B_2 \sin \theta & & & \\
B_1 \sin \theta - B_2 \cos \theta & & \mathbf{0} & \\
0 & & & 
\end{array}\right) \notag \\
&= \left( \begin{array}{cccc} 
0 & B_1' & B_2' & 0 \\
B_1' & & & \\
B_2' & & \mathbf{0}& \\
0 & & & 
\end{array}\right) \tag{11}
\end{align}
$$

のようになります。
途中$$B_1' = B_1 \cos \theta - B_2 \sin \theta, B_2' = B_1 \sin \theta - B_2 \cos \theta$$と置きました。
$$B_1', B_2'$$は$$\theta = 2\pi$$で元に戻ることから、これはベクトルモードであるとわかります。  
そして、シフトベクトルのうち波数ベクトルに平行な成分のみ、すなわち

$$
(h_{\mu \nu}) 
= \left( \begin{array}{cccc}
0 & 0 & 0& B_3 \\
0 & & & \\
0 & & \mathbf{0} & \\
B_3 & & & 
\end{array} \right) \tag{12}
$$

に対しては

$$
\Lambda^\top (h_{\mu \nu}) \Lambda 
= (h_{\mu \nu}) \tag{13}
$$

となることから、$$B_3$$はスカラーモードとなります。

## $$E$$

一般の場合を分類するのは難しいため、ここでは以下のようにトレースレスであるとします。

$$
E_i^i 
= E_{11} + E_{22} + E_{33} 
= 0 \tag{14}
$$

このとき、当然ながら一般には$$E_{11} \neq E_{22}$$ですが、これらを以下のように変形しましょう。

$$
E_{11} 
= E + E_+, \quad 
E_{22} 
= E - E_+ \tag{15}
$$

このようにすると、(14)式から

$$
E_{33} 
= -2E \tag{16}
$$

のように求まります。
よって$$E_{ij}$$を行列の形で書くと

$$
\begin{align}
(E_{ij}) 
&= \left( \begin{array}{ccc}
E+E_+ & E_{12} & E_{13} \\
E_{21} & E-E_+ & E_{23} \\
E_{31} & E_{32} & -2E  
\end{array}\right) \notag \\
&= \underbrace{\left( \begin{array}{ccc}
E & & \mathbf{0} \\
& E & \\
\mathbf{0}&  & -2E  
\end{array}\right)}_{スカラーモード} + 
\underbrace{\left( \begin{array}{ccc}
\mathbf{0} & & E_1 \\
& & E_2\\
E_1& E_2 & 0  
\end{array}\right)}_{ベクトルモード} + 
\underbrace{\left( \begin{array}{ccc}
E_+ & & \mathbf{0} \\
& -E_+ & \\
\mathbf{0}& & 0 
\end{array}\right)}_{テンソルモード} + 
\underbrace{\left( \begin{array}{ccc}
0 & E_\times& \\
E_\times & & \\
& & \mathbf{0}  
\end{array}\right)}_{テンソルモード} \tag{17}
\end{align}
$$

のように分解されることがわかります。
途中、メトリックの対称性から$$E_{12} = E_{21} = E_\times, E_{13} = E_{31}= E_1, E_{23} = E_{32} = E_2$$のように置きました。
分解されたそれぞれに対して$$\Lambda^\top (E_{ij}) \Lambda$$を計算すると、それぞれスカラーモード、ベクトルモード、そして最後の2つがテンソルモードであることを確かめることができます。  
第3成分($$z$$成分)がないことからわかるように、2つのテンソルモードは横浪です。
スカラー・ベクトル・テンソルモードは独立なモードであり、線形で扱える範囲においては、これらが互いに影響しあうことはありません。

```
なぜトレースレスを考えるのか、なぜトレースレスに変換できるのかなどについては別のページで学ぶことにします。
```

## 参考文献

[1] [Thorne & Blandford, "Modern Classical Physics: Optics, Fluids, Plasmas, Elasticity, Relativity, and Statistical Physics"](https://amzn.to/3MD1orv)  
[2] [Hartle, "Gravity: An Introduction to Einstein's General Relativity"](https://amzn.to/3KOV7Yo)  

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B01LVZ72QL&linkId=9b7f592d17f1e5e5bab70888d5ba05a1"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=1316517543&linkId=73f2d614dabc417ef58c27bf4247a6a2"></iframe>

{% include adsense.html %}
