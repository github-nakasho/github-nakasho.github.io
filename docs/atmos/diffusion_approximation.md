---
layout: default
title: Diffusion Approximation
parent: 恒星大気の物理学
math: mathjax3
permalink: /atmos/diffusion
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

{% include adsense.html %}

# 2.5 Diffusion Approximation (拡散近似)

大気の深い部分$$(\tau_\nu \gg 1)$$では光子の平均自由行程が温度・密度の変化するスケールに比べて非常に短いために、放射が等方的で黒体放射に近くなります。よって$$J_\nu \rightarrow B_\nu$$から

$$
S_\nu 
= \frac{\kappa_\nu B_\nu + \sigma_\nu J_\nu}{\kappa_\nu + \sigma_\nu} 
\rightarrow B_\nu
$$

となるので、取り扱いが非常に簡単になります。Source function $$S_\nu (t_\nu)$$を十分深い層 $$\tau_\nu \gg 1$$の周りで展開して

$$
B_\nu (t_\nu) 
= B_\nu (\tau_\nu) + (t_\nu - \tau_\nu) \frac{dB_\nu}{d\tau_\nu} + \frac{1}{2} (t_\nu - \tau_\nu)^2 \frac{d^2 B_\nu}{d\tau_\nu^2} + \cdots \tag{2.42}
$$

と書きます。これを(2.19)式に代入すると、外向き$$(0\leq \mu \leq 1)$$のIntensityが

$$
\begin{align}
I_\nu^+ (\tau_\nu, \mu; 0\leq \mu \leq 1) 
&= \frac{B_\nu(\tau_\nu)}{\mu} \int_{\tau_\nu}^\infty e^{-\frac{t-\tau_\nu}{\mu}} dt + \frac{1}{\mu} \frac{dB_\nu}{d\tau_\nu} \int_{\tau_\nu}^\infty (t-\tau_\nu) e^{-\frac{t-\tau_\nu}{\mu}} dt \notag \\
& \ \ \ + \frac{1}{2\mu} \frac{d^2 B_\nu}{d\tau_\nu^2} \int_{\tau_\nu}^\infty (t-\tau_\nu)^2 e^{-\frac{t-\tau_\nu}{\mu}} + \cdots \notag \\
&= B_\nu (\tau_\nu) + \mu \frac{dB_\nu}{d\tau_\nu} + \mu^2 \frac{d^2 B_\nu}{d\tau_\nu^2} + \cdots \tag{2.43}
\end{align}
$$

のように表されます。また(2.20)式に代入すると内向き$$(-1 \leq \mu \leq 0; \tau_\nu /\mu <0>)$$のIntensityは

$$
\begin{align}
I_\nu^- (\tau_\nu, \mu; -1 \leq \mu \leq 0) 
&= - \frac{B_\nu (\tau_\nu)}{\mu} \int_0^{\tau_\nu} e^{-\frac{t-\tau_\nu}{\mu}} dt - \frac{1}{\mu} \frac{dB_\nu}{d\tau_\nu} \int_0^{\tau_\nu} (t-\tau_\nu) e^{-\frac{t-\tau_\nu}{\mu}} dt \notag \\
& \qquad - \frac{1}{2\mu} \frac{d^2 B_\nu}{d\tau_\nu^2} \int_0^{\tau_\nu} (t-\tau_\nu)^2 e^{-\frac{t-\tau_\nu}{\mu}} dt - \cdots \notag \\
&= B_\nu (\tau_\nu) (1-e^{\tau_\nu/\mu}) + \mu \frac{dB_\nu}{d\tau_\nu} (1-e^{\tau_\nu/\mu}+\frac{\tau_\nu}{\mu} e^{\tau_\nu/\mu}) \notag \\
& \qquad + \mu^2 \frac{d^2 B_\nu}{d\tau_\nu^2} (1-e^{\tau_\nu/\mu} + \frac{\tau_\nu}{\mu} e^{\tau_\nu/\mu} - \frac{1}{2} \frac{\tau_\nu^2}{\mu^2} e^{\tau_\nu/\mu}) + \cdots \notag \\
&\underbrace{\simeq}_{e^{\tau_\nu/\mu} \sim 0} B_\nu (\tau_\nu) + \mu \frac{dB_\nu}{d\tau_\nu} + \mu^2 \frac{d^2 B_\nu}{d\tau_\nu^2} + \cdots \tag{2.44}
\end{align}
$$

のようになり、$$I^+$$と同じ形になることがわかります。これらから、Intensityは$$-1 \leq \mu \leq 1$$で

$$
I_\nu (\tau_\nu, \mu) 
\simeq B_\nu (\tau_\nu) + \mu \frac{dB_\nu}{d\tau_\nu} + \mu^2 \frac{d^2 B_\nu}{d\tau_\nu^2} + \cdots \tag{2.45}
$$

のようになります。この式を用いるとMean intensity $$J_\nu$$とFlux $$F_\nu$$、及び $$K_\nu$$ は

$$
J_\nu (\tau_\nu) 
= \frac{1}{2} \int_{-1}^1 I_\nu (\tau_\nu, \mu) d\mu 
= B_\nu (\tau_\nu) + \frac{1}{3} \frac{d^2 B_\nu}{d\tau_\nu^2} + \cdots \tag{2.46}
$$

$$
F_\nu (\tau_\nu)
= 2\pi \int_{-1}^1 \mu I_\nu (\tau_\nu, \mu) d\mu 
= \frac{4\pi}{3} \frac{dB_\nu}{d\tau_\nu} + \cdots \tag{2.47} 
$$

$$
K_\nu (\tau_\nu) 
= \frac{1}{2} \int_{-1}^1 \mu^2 I_\nu (\tau_\nu, \mu) d\mu 
= \frac{1}{3} B_\nu (\tau_\nu) + \frac{1}{5} \frac{d^2 B_\nu}{d\tau_\nu^2} + \cdots \tag{2.48}
$$

のように表されます。オーダーでは$$\left\| \frac{d^n B_\nu}{d\tau_\nu^n}\right\| \simeq \frac{B_\nu}{\tau_\nu^n}$$なので、Optical depthが大きい場所(大気の深いところ)では、上の展開は急速に収束します。よって、大気の十分深い場所では

$$
I_\nu (\tau_\nu, \mu)
\simeq B_\nu (\tau_\nu) + \mu \frac{dB_\nu}{d\tau_\nu} \tag{2.49}
$$

$$
J_\nu (\tau_\nu) 
\simeq B_\nu (\tau_\nu) \tag{2.50}
$$

$$
F_\nu (\tau_\nu) 
\simeq \frac{4\pi}{3} \frac{dB_\nu}{d\tau_\nu} 
\underbrace{\simeq}_{(2.50)} \frac{4\pi}{3} \frac{dJ_\nu}{d\tau_\nu} \tag{2.51}
$$

$$
K_\nu (\tau_\nu) 
\simeq \frac{1}{3} B_\nu (\tau_\nu) 
\underbrace{\simeq}_{(2.50)} \frac{1}{3} J_\nu (\tau_\nu) \tag{2.52}
$$

(2.51)式より、大気の十分深いところでの輻射によるエネルギーフラックスは$$d\tau_\nu = -\rho (\kappa_\nu + \sigma_\nu) dz$$を用いると

$$
F_\nu 
= -\frac{4\pi}{3(\kappa_\nu + \sigma_\nu) \rho} \frac{d B_\nu}{dz} 
= -\frac{4\pi}{3(\kappa_\nu + \sigma_\nu) \rho} \frac{d B_\nu (T)}{dT} \frac{dT}{dz} \tag{2.53}
$$

のように、輻射のエネルギーがエネルギー密度の大きい層から小さい層へと拡散していくDiffusion equationの形に書くことができます。この式からわかるように、Diffusion近似ではRadiation fluxが全て局所的な物理量を使って表すことができるため、取り扱いが格段に簡単になります。  
(2.53)式において、恒星の内部では温度勾配が$$\frac{dT}{dz}<0$$より、恒星では内部から表面に向かって輻射Fluxが流れます。  

$$I_\nu$$に対する式の第2項が$$I_\nu$$の非等方性を表し、この項によって有限のFlux(輻射流束)が生じます。大きさの比は

$$
\frac{\left| \frac{dB}{d\tau}\right|}{|B|} 
\simeq \frac{F}{cU} 
= \frac{\sigma T_{\rm{eff}}^4}{ac T^4} 
= \frac{1}{4} \left( \frac{T_{\rm{eff}}}{T} \right)^4 \tag{2.54}
$$

であることがわかります。ここで$$\sigma$$はStefan-Boltzmann定数で、$$\sigma = ac/4$$です。恒星内部では$$T \gg T_{\rm{eff}}$$なので、そこでは輻射のエネルギーのわずかなエネルギーしか外側に向かって流れていないことがわかります。また内側から外側に移動して光球に近くなるほど、内向きの放射が少なくなり、Fluxは輻射エネルギーを光速で運ぶ場合の1/4に近づいていきます。

{% include adsense.html %}