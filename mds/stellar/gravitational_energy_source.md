---
layout: default
title: 重力エネルギー源
parent: 恒星物理学
math: mathjax3
permalink: /stellar/gravitational_energy_source
nav_order: 25
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

# 重力エネルギー源

[ビリアル定理](/stellar/gravitational_energy_virial_theorem#ビリアル定理)により、恒星内のガスはエネルギーを得る$$(T \frac{dS}{dt} > 0)$$と膨張して温度(内部エネルギー)が減少します。
逆にエネルギーを失うと、重力収縮して温度が上昇します (収縮による重力エネルギー減少に伴い解放された重力エネルギーの一部が内部エネルギーぎーとなります。)
重力収縮によるエネルギー発生率を

$$
\epsilon_\mathrm{g} 
\equiv - T \frac{dS}{dt} \tag{6.2.1}
$$

のように定義しましょう。
すると恒星内部のエネルギー保存式(6.1.3)式は

$$
\frac{dL_r}{dM_r} 
= \epsilon_\mathrm{n} - \epsilon_\nu + \epsilon_\mathrm{g} \tag{6.2.2}
$$

のように書くことができます。  
エントロピーの変化率$$\frac{dS}{dt}$$と重力収縮とは、以下のように関係づけられます。
ガスの単位質量あたりの内部エネルギーを$$\epsilon_\mathrm{i}$$のように書くと、エントロピーの変化率$$\frac{dS}{dt}$$は

$$
T \frac{dS}{dt} 
= T \left( \frac{\partial S}{\partial t}\right)_{M_r} 
= \left( \frac{\partial e_\mathrm{i}}{\partial t}\right)_\mathrm{M_r} + P \left\{ \frac{\partial}{\partial t} \left( \frac{1}{\rho}\right) \right\}_\mathrm{M_r} \tag{6.2.3}
$$

のように表されます。
上式を恒星全体に渡って積分すると

$$
\int_0^M T \frac{\partial S}{\partial t} dM_r 
= \frac{d}{dt} \int_0^M e_\mathrm{i} dM_r + \int_0^M P \left\{ \frac{\partial}{\partial t} \left( \frac{1}{\rho}\right) \right\}_\mathrm{M_r} dM_r \tag{6.2.4}
$$

となります。
右辺の最後の項は

$$
\left( \frac{\partial r}{\partial M_r} \right)_t 
= \frac{1}{4\pi r^2 \rho} \ \Longrightarrow \ 
\frac{4\pi}{3} \frac{\partial r^3}{\partial M_r} 
= \frac{1}{\rho} \ \Longrightarrow \ 
\left\{ \frac{\partial}{\partial t} \left( \frac{1}{\rho} \right) \right\}_{M_r} 
= \frac{4\pi}{3} \frac{\partial}{\partial M_r} \left( \frac{\partial r^3}{\partial t}\right)\tag{6.2.5}
$$

の式を用いると

$$
\begin{aligned}
\int_0^M P \left\{ \frac{\partial}{\partial t} \left( \frac{1}{\rho}\right) \right\}_{M_r} dM_r 
&= \frac{4\pi}{3} \int_0^M P \frac{\partial}{\partial M_r} \left( \frac{\partial r^3}{\partial t}\right) dM_r 
= \frac{4\pi}{3} \left\{ \left[ P \frac{\partial r^3}{\partial t} \right]_0^M - \int_0^M \frac{\partial r^3}{\partial t} \frac{\partial P}{\partial M_r} dM_r \right\} \\
&= 4\pi \int_0^M r^2 \dot{r} \frac{GM_r}{4\pi r^4} dM_r 
= \int_0^M \left( \frac{\partial r}{\partial t}\right)_{M_r} \frac{GM_r}{r^2} dM_r 
= - \frac{d}{dt} \int_0^M \frac{GM_r}{r} dM_r 
\end{aligned}
$$

と書けます。
途中、恒星表面$$(M_r = M)$$で$$P=0$$であることを用いました。
これより、(6.2.4)式は

$$
\int_0^M T \frac{\partial S}{\partial t} dM_r 
= \frac{d}{dt} \int_0^M e_\mathrm{i} dM_r - \frac{d}{dt} \int_0^M \frac{GM_r}{r} dM_r \tag{6.2.6}
$$

と表されます。
右辺の第一項が内部エネルギーの変化を表し、第二項が重力エネルギーの変化を表しています。
従って、(6.2.6)式は全体で恒星のガスの全エネルギーの時間変化を表していることがわかります。
[ビリアル定理](/stellar/gravitational_energy_virial_theorem#ビリアル定理)によると、恒星の全エネルギーは恒星半径の減少とともに減少します。
よって(6.2.2)式右辺の最後にある重力エネルギーの項は、恒星が収縮するとエネルギーが放出され、逆に膨張するとエネルギーが吸収されることに対応していることがわかります。  
恒星内部の力学的平衡を保つために必要な温度勾配によって流されるエネルgーを、核融合によるエネルギー発生によってまかなうことが出来る場合、定常に近い状態が実現されます。
特に主系列星中で起こる水素がヘリウムになる反応では、単位質量あたりに出るエネルギーが大きいため、長時間構造の変化が起こります。
そのため、エントロピー変化の項は無視できるほど小さくなります。
逆に温度が低く核融合反応が充分に起こらない場合には、恒星は収縮を経験し、核反応によるエネルギー発生率が充分になるまで内部温度を上昇させます。

## 参考文献

[1] [Kippenhahn, Weigert & Weiss, "Stellar Structure and Evolution"](https://amzn.to/43pXiva)  
[2] [高原文郎, "宇宙物理学"](https://amzn.to/4bXfKgP)  
[3] [野本憲一, 定金晃三, 佐藤勝彦, "恒星"](https://amzn.to/4kHBvFv)  

{% include adsense.html %} 