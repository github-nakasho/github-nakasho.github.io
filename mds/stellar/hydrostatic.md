---
layout: default
title: 静水圧平衡
parent: 恒星物理学
math: mathjax3
permalink: /stellar/hydrostatic
nav_order: 2
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

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4535607273&linkId=1cea0e65f198098664e273dc87bb11aa"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4769916434&linkId=bcd899a3fcbddde6902d952cfbcb362d"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254131178&linkId=df352ef9ddcb1ed7bd7daf1d11bb2ff7"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254137796&linkId=fbe4a9946970c35d3676fad8f7c7d872"></iframe>

# 静水圧平衡

## 静水圧平衡と恒星中心の温度依存性

重力と圧力勾配が釣り合っている状態では、ガスの巨視的な運動はなく、[(1.1.13')式](/stellar/basic_equations)は

$$
\frac{dP}{dM_r} 
= - \frac{GM_r}{4\pi r^4} \qquad 
\left( または
  \frac{dP}{dr} 
  = \frac{GM_r}{r^2} \rho
\right) \tag{1.2.1}
$$

のようになります。
これは静水圧平衡(hydrostatic equilibrium)の式と呼ばれます。
この先で見るように、脈動星以外の恒星では、静水圧平衡が非常に良い近似で成り立っています。  
静水圧平衡の式に粗い近似を用いましょう。

$$
\frac{dP}{dr} 
\simeq \frac{P_s - P_c}{R} 
\simeq - \frac{GM}{R^2} \overline{\rho}
$$

ここで$$P_s, P_c$$はそれぞれ、恒星表面と恒星中心でのガス圧、そして$$\overline{\rho}$$は恒星の平均質量密度を表します。
恒星表面では$$P_s = 0$$と考えられるので

$$
P_c 
\simeq \frac{GM}{R} \overline{\rho}
$$

と見積もることができます。
ここに理想気体での関係$$P \propto \rho T$$を用いると

$$
T_c 
\propto \frac{M}{R} \tag{1.2.2}
$$

という関係を得ることができます。
これは恒星の質量$$M$$が大きいほど中心温度が高く、さらに半径が小さくなるほど内部温度も高温になることを表しています。

## 力学的タイムスケール

### 自由落下時間

[(1.1.13')式](/stellar/basic_equations)の右辺第二項の重力の力が勝っている場合、この恒星は重力で潰れることになります。
そのタイムスケール$$\tau_\mathrm{ff}$$を大雑把に見積もってみましょう。
[(1.1.13')式](/stellar/basic_equations)より、圧力の項を無視すると

$$
\frac{R}{\tau_\mathrm{ff}^2} 
\simeq \frac{GM}{R^2} \ \Longrightarrow \ 
\tau_\mathrm{ff} 
\simeq \sqrt{\frac{R^3}{GM}} 
\simeq \frac{1}{\sqrt{G \overline{\rho}}} \qquad \left( \overline{\rho} \equiv \frac{M}{\left(\frac{4\pi}{3} R^3\right)}\right) \tag{1.2.3}
$$

のように書かれます。
これは自由落下(free-fall)タイムスケールと呼ばれます。
ここで$$R, M$$はそれぞれ恒星の半径と質量を表し、$$\overline{\rho}$$は平均質量密度です。
また途中の計算では、大雑把に係数を無視しました。

### 膨張にかかる時間

今度は、[(1.1.13')式](/stellar/basic_equations)の右辺第一項の圧力勾配の力が優勢の場合を考えましょう。
このとき、この恒星は膨張すると考えられます。
そのタイムスケール$$\tau_\mathrm{exp}$$は、[(1.1.13')式](/stellar/basic_equations)と

$$
4\pi r^2 \frac{\partial P}{\partial M_r} 
= 4\pi r^2 \frac{1}{4\pi r^2 \rho} \frac{\partial P}{\partial r}
$$

より

$$
\frac{R}{\tau_\mathrm{exp}^2} 
\simeq \overline{\left( \frac{P}{\rho}\right)} \frac{1}{R} \ \Longrightarrow \ 
\tau_\mathrm{exp} 
\simeq \frac{R}{\sqrt{\overline{P/\rho}}} 
\simeq \frac{R}{c_s} \tag{1.2.4}
$$

のように表されます。
ここで$$c_s$$は音速です。
このタイムスケールは、音波が恒星内部を通過するのにかかる時間程度であることを表しています。

### 力学的タイムスケール

状態が静水圧平衡に近い場合は、$$\tau_\mathrm{ff} \simeq \tau_\mathrm{exp}$$で力学的タイムスケール(dynamical time-scale)と呼ばれます。
脈動星では、[(1.1.13')式](/stellar/basic_equations)の右辺のバランスが周期的にズレることで、収縮と膨張を繰り返します。
よって、その周期は力学的タイムスケール程度となります。
実際に太陽について考えてみましょう。
太陽の半径と質量から、その平均密度は

$$
R_\odot 
\sim 6.96 \times 10^{10} \ [\mathrm{cm}], \quad 
M_\odot 
\sim 1.989 \times 10^{33} \ [\mathrm{g}] \ \Longrightarrow \ 
\overline{\rho}_\odot 
= \frac{3 M_\odot}{4\pi R_\odot^3} 
\simeq 1.37 \ [\mathrm{g/cm^{-3}}]
$$

と計算されます。
この値は、水の密度とあまり変わらない値です。
この値から、太陽の力学的タイムスケールは30分程度と計算されます。
(1.2.3)式の形からわかるように、平均密度の小さい恒星ほど、その力学的タイムスケールは長くなります。
$$M \sim M_\odot, R \sim 100 R_\odot$$のような赤色巨星では、20日程度になります。
力学的なバランスが崩れたとしても短い時間で元に戻るため、非常に長いタイムスケールで構造の変化が起こる恒星内部では、常に静水圧平衡が保たれていると考えて良いでしょう。
ただし、脈動星の場合は外層が不安定になるため、振動を続けます。

## 参考文献

[1] [野本憲一, 佐藤勝彦, 定金晃三, "シリーズ現代の天文学 恒星"](https://amzn.to/3tithNI)  

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4535607273&linkId=1cea0e65f198098664e273dc87bb11aa"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4769916434&linkId=bcd899a3fcbddde6902d952cfbcb362d"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254131178&linkId=df352ef9ddcb1ed7bd7daf1d11bb2ff7"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254137796&linkId=fbe4a9946970c35d3676fad8f7c7d872"></iframe>