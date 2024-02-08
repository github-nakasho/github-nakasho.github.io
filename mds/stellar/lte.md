---
layout: default
title: 局所熱力学平衡と状態式の一般論
parent: 恒星物理学
math: mathjax3
permalink: /stellar/lte
nav_order: 11
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

# 局所熱力学平衡 (Local Thermodynamic Equilibrium; LTE)

恒星内部の温度や圧力などの熱力学量は、中心からの距離により異なります。
しかしその変化は非常に緩やかで、ガス粒子と光子の平均自由行程程度の長さでは、熱力学量はほとんど変化しません。
よって、恒星内部の各場所で熱力学平衡が成り立っているとする局所熱力学平衡(LTE)の近似がよく成り立っています(ただし、光球より外の密度の非常に低い領域ではLTEの近似が悪くなる場合があるので注意が必要です。)  
このことを、太陽内部の状態を例として確かめてみましょう。
熱力学量の例として、恒星内部での圧力変化の程度を考えます。
圧力が$$1/e$$になる距離は圧力のscale length (height)と呼ばれ、ここでは$$H_P$$と書くことにします。
この長さは、静水圧平衡の式より

$$
\frac{dP}{dr} 
= - \frac{GM_r}{r^2} \rho \ \Longrightarrow \ 
H_P 
\equiv -\frac{P}{\frac{dP}{dr}} 
= \frac{r^2}{GM_r} \frac{P}{\rho} 
= \frac{P}{g\rho} \tag{3.1.1}
$$

のように表現されます。
この距離は表面に近づくほど短くなります。
太陽光球では、$$g \sim 2.7 \times 10^4 \mathrm{cm/s^2}, P \sim 5 \times 10^5 \mathrm{dyn/cm^2}, \rho \sim 3 \times 10^{-7} \mathrm{g/cm^3}$$の値より、$$H_P \sim 10^7 \mathrm{cm}$$となります。
この距離に比べて、ガス粒子および光子の平均自由行程が非常に短ければ、LTEの近似がよく成り立っていると言えるでしょう。  
最初に、ガス粒子の平均自由行程を見積りましょう。
そのために粒子間(電子と陽子)の衝突を考えます。
電子質量$$m_e$$は陽子質量に比べて1/2000程度と軽いため、陽子と電子の換算質量はほとんど$$m_e$$となります。
衝突が起こる(運動方向が変えられる)のは、大雑把に運動エネルギーと静電エネルギーが同程度のときと考えることができるので、その時の衝突パラメータを$$b$$とすると

$$
\frac{1}{2} m_e v^2 
\simeq \frac{3}{2} k_B T 
\simeq \frac{e^2}{b} \ \Longrightarrow \ 
b 
\simeq \frac{2e^2}{3k_B T} \tag{3.1.2}
$$

のようになります。
ここで$$k_B = 1.38 \times 10^{-16} \mathrm{erg/K}$$はボルツマン定数、$$e$$は電子と陽子の電荷$$4.80 \times 10^{-10} \mathrm{esu}$$を表します。
すると、衝突断面積は

$$
\sigma 
\simeq \pi b^2 
\simeq \frac{4\pi e^4}{9k_B^2 T^2} 
\simeq 4 \times 10^{-18} \left( \frac{T}{10^6 \mathrm{K}}\right)^{-2} \ [\mathrm{cm}^2] \tag{3.1.3}
$$

のように表されます。
ここから、平均自由行程$$\ell$$は、陽子の数密度を$$N_p = \frac{\rho}{m_p}$$のように書くと

$$
\begin{align}
\ell 
&= \frac{1}{N_p \sigma} 
= \frac{m_p}{\sigma \rho} 
\simeq \frac{1.7 \times 10^{-24}}{4 \times 10^{-18} \rho} \left( \frac{T}{10^6 \mathrm{K}}\right)^{2} \notag \\
&\simeq 4 \times 10^{-7} \left( \frac{T}{10^6 \mathrm{K}}\right)^{2} \left( \frac{\rho}{1 \mathrm{g/cm^3}}\right)^{-1} \ [\mathrm{cm}] \tag{3.1.4}
\end{align}
$$

となります。
温度と密度に太陽光球の値を入れると、粒子の平均自由行程は$$5 \times 10^{-5}$$cm程度となります。
よって圧力のスケールハイトに比べて非常に短いことがわかります。  
光子によってもエネルギーが運ばれるため、LTEが成り立つためには光子の平均自由行程も十分短い必要があります。
電離したガス粒子一個あたりの光子の散乱吸収断面積の下限は、電子のトムソン散乱断面積$$\sigma_T \sim 6.65 \times 10^{-25} \mathrm{cm}^2$$です。
これより、電子数密度を$$N_e$$と書くと、光子の平均自由行程は

$$
\ell_\mathrm{ph} 
< \frac{1}{N_e \sigma_T} 
\simeq \frac{m_p}{\sigma_T \rho} 
\simeq \frac{1.7 \times 10^{-24}}{6.7 \times 10^{-25} \rho} 
\simeq 3 \left( \right)^{-1} \ [\mathrm{cm}] \tag{3.1.5}
$$

のように書けます。
ここでは電離した水素ガスを仮定し、$$N_e = N_p$$としました。
光球より内側では光子の平均自由行程が圧力のスケールハイトよりも短く、LTEの近似が成り立ちます。
しかし先ほど説明したように、光球より外側ではLTEが成り立っている保証がないことに注意が必要です。

# 状態式 (equation of state) の一般論

ガスを構成するある種類の粒子に対して、位置と運動量が作る位相空間における運動量$$p$$の粒子密度は

$$
f(p) 
= \frac{1}{h^3} \sum_j \frac{g_j}{\exp \{-\eta + (\mathcal{E}_j + \mathcal{E}_p) / (k_B T)\} \pm 1} \tag{3.2.1}
$$

と表されます。
ここで$$\mathcal{E}_j$$は粒子の内部状態$$j$$のエネルギーを表し、$$g_j$$はその状態の統計的重率です。
さらに$$\mathcal{E}_p$$は粒子の運動エネルギーを表し、$$\eta$$は化学ポテンシャルを$$k_B T$$で割った量です。
分母の複合は、$$+$$符号はフェルミ粒子に対して、$$-$$符号はボーズ粒子に対して適用されます。
粒子の運動エネルギーは、相対論的な粒子も扱えるように

$$
\mathcal{E}_p 
= \sqrt{c^2p^2 + m^2 c^4} - mc^2 \tag{3.2.2}
$$

のように表します。
ここで$$m$$は粒子の静止質量、$$c$$は光速度を表します。
この式から、非相対論的な場合と相対論的極限における運動エネルギーが

$$
\mathcal{E}_p \rightarrow 
\left\{ 
\begin{array}{lr}
  \frac{p^2}{2m} & (\mathrm{if} \ pc \ll mc^2) \\
  pc & (\mathrm{if} \ pc \gg mc^2) 
\end{array}
\right. 
$$

のように書かれることがわかります。  
$$f(p)$$の定義より、単位体積あたりの粒子数(数密度)$$N$$は

$$
N 
= \int_0^\infty f(p) 4\pi p^2 dp \ [\mathrm{cm}^{-3}] \tag{3.2.3}
$$

で与えられます。
また圧力$$P$$は、ある方向(ここでは$$z$$方向としましょう)への運動量流束なので

$$
P 
= \iiint d^2 \mathbf{p} f(\mathbf{p}) v_z p_z 
= \int_0^\infty dp f(p) p^2 vp \int d\Omega \cos^2 \theta 
= \frac{4\pi}{3} \int_0^\infty f(p) vp^3 dp \tag{3.2.4}
$$

のように書かれます。

![](/assets/images/stellar/lte_01.png)

ここで速度$$v$$は、解析力学のハミルトンの正準方程式$$\dot{q} = \frac{\partial H}{\partial p}, \dot{p} = -\frac{\partial H}{\partial q}$$より

$$
v 
= \frac{\partial \mathcal{E}}{\partial p} 
= \frac{c^2 p}{\sqrt{c^2 p^2 + m^2 c^4}} 
= \frac{cp}{\sqrt{p^2 + m^2 c^2}} \tag{3.2.5}
$$

と求まります。
この式より、非相対論的な場合($$p \ll mc$$)では$$v \simeq p/m$$であり、相対論的な場合($$p \gg mc$$)では$$v \simeq c$$となることがわかります。  
ガスの単位体積あたりの内部エネルギーは

$$
E 
= \int_0^\infty \mathcal{E}_p f(p) 4\pi p^2 dp \tag{3.2.6}
$$

で与えられます。

<iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4535607273&linkId=1cea0e65f198098664e273dc87bb11aa"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4769916434&linkId=bcd899a3fcbddde6902d952cfbcb362d"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254131178&linkId=df352ef9ddcb1ed7bd7daf1d11bb2ff7"></iframe> <iframe sandbox="allow-popups allow-scripts allow-modals allow-forms allow-same-origin" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=nakasho010d-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=4254137796&linkId=fbe4a9946970c35d3676fad8f7c7d872"></iframe>