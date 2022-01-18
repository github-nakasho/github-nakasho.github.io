---
layout: default
title: 一般化されたOhmの法則
parent: 宇宙磁気流体力学
math: mathjax3
permalink: /mhd/ohm
nav_order: 3
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

# 一般化されたオームの法則

完全電離した水素ガスを考えましょう。このとき、電子と陽子の数は等しく、この2つの粒子しか存在しないことになります。電子には添字のe, 陽子には添字のpを付けて、2つの粒子について運動方程式を考えると

$$
m_e n_e \frac{D \mathbf{v}_e}{Dt} 
= - \nabla P_e - e n_e \left( \mathbf{E} + \mathbf{v}_e \times \frac{\mathbf{B}}{c} \right) - \frac{n_e m_e}{\tau_{ep}} (\mathbf{v}_e - \mathbf{v}_p) \tag{1}
$$

$$
m_p n_p \frac{D \mathbf{v}_p}{Dt} 
= - \nabla P_p + e n_p \left( \mathbf{E} + \mathbf{v}_p \times \frac{\mathbf{B}}{c} \right) + \frac{n_p m_p}{\tau_{ep}} (\mathbf{v}_e - \mathbf{v}_p) \tag{2}
$$

ここで$$m_i, n_i, \mathbf{v}_i, P_i, \tau{ij}$$はそれぞれ$$i$$粒子の質量、個数密度、速度ベクトル、圧力、そして$$i$$粒子と$$j$$粒子の衝突時間(運動量を交換するのにかかる大体の時間)です。右辺の第3項は、1個の電子が1個の陽子と一回の衝突で$$m_e (\mathbf{v}_e-\mathbf{v}_p)$$だけ運動量を受け渡すことからくる、衝突項です。  
完全電離した水素ガスより$$n_e = n_p = n$$、さらに$$m_e \ll m_p$$から、単位体積あたりの質量$$\rho$$は

$$
\rho \equiv m_e n_e + m_p n_p 
\simeq m_p n \tag{3}
$$

また電子と陽子が混在した流体要素を考えると、その速度は流体要素の中に含まれる電子と陽子の集団の重心の速度と考えることができるので

$$
\mathbf{v} 
= \frac{m_e n \mathbf{v}_e + m_p n \mathbf{v}_p}{m_e n + m_p n} 
\underbrace{=}_{(3)} \frac{m_e n \mathbf{v}_e + m_p n \mathbf{v}_p}{\rho} \tag{4}
$$

(1)式より、$$m_e \ll m_p$$として、左辺の慣性項は無視すると

$$
\mathbf{0} 
= - \nabla P_e - e n\left( \mathbf{E} + \frac{\mathbf{B}}{c} \right) - \frac{m_e n}{\tau_{ep}} (\mathbf{v}_e - \mathbf{v}_p) \ \Longrightarrow \ 
\mathbf{E} 
= - \mathbf{v}_e \times \frac{\mathbf{B}}{c} - \frac{1}{en} \nabla P_e - \frac{m_e}{e \tau_{ep}} (\mathbf{v}_e - \mathbf{v}_p) \tag{5}
$$

電流密度は

$$
\mathbf{j} 
\equiv e n (\mathbf{v}_p - \mathbf{v}_e) \tag{6}
$$

のように定義されるので

$$
\mathbf{E} 
= - \mathbf{v}_e \times \frac{\mathbf{B}}{c} - \frac{1}{en} \nabla P_e - \frac{m_e}{e^2 \tau_{ep} n} \mathbf{j} \tag{7}
$$

これを一般化されたOhmの法則と呼びます。また$$\mathbf{j}$$の前の係数を

$$
\sigma 
\equiv \frac{e^2 \tau_{ep} n}{m_e} \tag{8}
$$

を電気伝導度と定義します。  
先に述べた通り$$m_e \ll m_p$$より、運動量のほとんどは陽子によるものと考えれば、(4)式から$$\mathbf{v} \simeq \mathbf{v}_p$$としても妥当でしょう。これと(6)式より、$$\mathbf{v}_e$$を$$\mathbf{j}, \mathbf{v}$$で書き換えると

$$
\mathbf{E} 
= - \left( \mathbf{v} - \frac{\mathbf{j}}{en} \right) \times \frac{\mathbf{B}}{c} - \frac{1}{en} \nabla P_e - \frac{\mathbf{j}}{\sigma} 
= - \mathbf{v} \times \frac{\mathbf{B}}{c} + \frac{\mathbf{j} \times \mathbf{B}}{enc} - \frac{1}{en} \nabla P_E - \frac{\mathbf{j}}{\sigma} \tag{9}
$$

最右辺の第2項は、電荷を持った粒子がドリフトすることによって電荷に偏りが生じる効果を表しており、これをHall項と呼びます。第3項は電子ガス圧勾配により生じる(そもそもの電子の分布に偏りがあることに起因する)電場を表し、これをバッテリー項と呼びます。

## Hall項の大きさの比較

Hall項がどの程度の大きさかを見積もってみましょう。Maxwell方程式から、変位電流項を無視した$$\nabla \times \mathbf{B} = \frac{4\pi}{c} \mathbf{j}$$より

$$
\left| \frac{\frac{\mathbf{j} \times \mathbf{B}}{enc}}{\mathbf{v} \times \frac{\mathbf{B}}{c}}\right| 
= \left| \frac{\frac{(\nabla \times \mathbf{B}) \times \mathbf{B}}{4\pi en}}{\mathbf{v} \times \frac{\mathbf{B}}{c}}\right| 
\simeq \frac{c B}{4\pi en L v}  
= \frac{B^2}{4\pi \rho} \underbrace{\frac{c m_p}{e B}}_{=1/\Omega_{c, p}} \frac{1}{Lv} 
= \left( \frac{v_A^2}{v^2} \right)^2 \frac{v}{L \Omega_{c, p}}
$$

途中、空間微分は$$\nabla \simeq L^{-1}$$のように典型的な空間スケールで置き換えました。また$$\Omega_{c, p}$$は陽子のcyclotron振動数です。また最後の$$a_{L, p} = v/\Omega_{c, p}$$は陽子の[Larmor半径](/astroelec/uniform_mag)に一致します。例えば星間空間($$L \sim 1 [\mathrm{pc}]$$)のように$$a_{L, p} \ll L$$ならば、Hall項は第1項に比べて十分小さいことがわかります。  

## バッテリー項の大きさの比較

同様にバッテリー項についても、その大きさが第1項に比べてどの程度の大きさかを見積もってみましょう。圧力については状態方程式として$$P_e = n k_B T_e$$を用いると

$$
\left| \frac{\frac{\nabla P_e}{en}}{\mathbf{v} \times \frac{\mathbf{B}}{c}}\right| 
\simeq \frac{n k_B T_e}{L en} \frac{c}{v B} 
= \frac{k_B T_e}{m_p v^2} \underbrace{\frac{c m_p}{e B}}_{=1/\Omega_{c, p}} \frac{v}{L}
= \left( \frac{k_B T_e}{m_p v^2} \right) \left( \frac{v}{L\Omega_{c, p}}\right)
$$

電子温度と陽子温度が同程度であると考えることができれば、$$k_B T_e \simeq m_e v_e^2 \simeq m_p v_p^2 \simeq m_p v^2$$より、$$\mathcal{O}(k_B T_e / m_p v^2) \sim 1$$としても良いでしょう。よってこの場合も$$a_{L, p} \ll L$$ならば、この項を無視することができます。

## よく使われれるオームの法則

以上の議論から、Hall項とバッテリー項を無視した

$$
\mathbf{j} 
= \sigma \left( \mathbf{E} + \mathbf{v} \times \frac{\mathbf{B}}{c} \right) \tag{10}
$$

がOhmの法則ととしてよく知られている式です。

{% include adsense.html %} 
