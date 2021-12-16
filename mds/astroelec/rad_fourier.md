---
layout: default
title: 輻射場のフーリエスペクトル
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/rad_fourier
nav_order: 10
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

# 輻射場のフーリエスペクトル

位置$$\mathbf{r}$$にいる観測者が時刻$$t$$に観測する輻射場のフーリエスペクトル

$$
\hat{\mathbf{E}} (\mathbf{r}, \omega) 
= \frac{1}{2\pi} \int_{T_1}^{T_2} \frac{q}{c} \frac{\mathbf{n} \times \{ (\mathbf{n}-\boldsymbol{\beta} (t')) \times \dot{\boldsymbol{\beta}} (t')\}}{\kappa(t')^3 R(t')} e^{i\omega t} dt
$$

を求めましょう。ここで$$\mathbf{R} (t') = \mathbf{r} - \mathbf{r}_0 (t'), \mathbf{n}(t') = \mathbf{R}(t')/R(t')$$ですが、今、$$\mathbf{n}$$の時間変化は微小として定ベクトルとして扱うことにします。また$$t'=t-R(t')/c$$は遅延時刻、そして$$T_1 < t < T_2$$はスペクトルを求めるために輻射場が観測された時間です。  

$$dt = \kappa (t') dt'$$より、$$t = T_1 \rightarrow T_2$$のとき$$t' = T_1' \rightarrow T_2'$$としましょう。観測者と荷電粒子との相対距離$$R$$において成り立つ式

$$
R^2 
= \mathbf{R} \cdot (\mathbf{r}-\mathbf{r}_0) 
\ \Longrightarrow \ 
R 
= \mathbf{n} \cdot (\mathbf{r}-\mathbf{r}_0)
$$

を用いて

$$
\begin{align}
\hat{\mathbf{E}} (\mathbf{r}, \omega) 
&= \frac{1}{2\pi} \frac{q}{c} \int_{T_1'}^{T_2'} \frac{\mathbf{n} \times \{ (\mathbf{n} - \boldsymbol{\beta} (t')) \times \dot{\boldsymbol{\beta}} (t')\} }{\kappa(t')^3 R(t')}  e^{i \omega (t'+\frac{R(t')}{c})}\kappa(t') \ dt' \notag \\
&= \frac{1}{2\pi} \frac{q}{c} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}}\int_{T'_1}^{T'_2} \frac{\mathbf{n} \times \{ (\mathbf{n} - \boldsymbol{\beta} (t')) \times \dot{\boldsymbol{\beta}}\} (t')}{\kappa(t')^2 R(t')} e^{i \omega (t'-\frac{\mathbf{r}_0(t') \cdot \mathbf{n}}{c})} \ dt' \notag
\end{align}
$$

さらに分母に出現している$$R(t')$$も時間変化が無視できるほど小さいとして、代表時刻(例えば$$t'=0$$)での相対距離$$R$$で近似すると

$$
\hat{\mathbf{E}} (\mathbf{r}, \omega) 
= \frac{q}{2\pi cR} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}}\int_{T'_1}^{T'_2} \frac{\mathbf{n} \times \{ (\mathbf{n} - \boldsymbol{\beta} (t')) \times \dot{\boldsymbol{\beta}}\} (t')}{\kappa(t')^2} e^{i \omega (t'-\frac{\mathbf{r}_0(t') \cdot \mathbf{n}}{c})} dt'
$$

上式に$$\dot{\boldsymbol{\beta}}$$が含まれているため、これを部分積分で除去しましょう。

$$
\frac{d \kappa}{dt} 
= \frac{d}{dt} (1- \mathbf{n} \cdot \boldsymbol{\beta}) 
= - \mathbf{n} \cdot \dot{\boldsymbol{\beta}}
$$


$$
\frac{\mathbf{n}\times \{ (\mathbf{n}- \boldsymbol{\beta}) \times \dot{\boldsymbol{\beta}} \}}{\kappa^2}
= \frac{\mathbf{n} \times (\mathbf{n} \times \dot{\boldsymbol{\beta}}) - \mathbf{n} \times (\boldsymbol{\beta} \times \dot{\boldsymbol{\beta}})}{\kappa^2} 
= \frac{(\mathbf{n} \cdot \dot{\boldsymbol{\beta}}) \mathbf{n} - \dot{\boldsymbol{\beta}} - (\mathbf{n} \cdot \dot{\boldsymbol{\beta}}) \boldsymbol{\beta} + (\mathbf{n} \cdot \boldsymbol{\beta}) \dot{\boldsymbol{\beta}}}{\kappa^2} 
= \frac{(\mathbf{n} \cdot \dot{\boldsymbol{\beta}}) (\mathbf{n} - \boldsymbol{\beta}) -\dot{\boldsymbol{\beta}} \kappa}{\kappa^2}
$$


$$
\begin{align}
\frac{d}{dt} \left( \frac{\mathbf{n} \times (\mathbf{n} \times \boldsymbol{\beta})}{\kappa}\right) 
&= \frac{[(\mathbf{n}\cdot \dot{\boldsymbol{\beta}}) \mathbf{n} - \dot{\boldsymbol{\beta}} ] \kappa - [(\mathbf{n}\cdot \boldsymbol{\beta}) \mathbf{n} - \boldsymbol{\beta} ] \dot{\kappa}}{\kappa^2} 
= \frac{[(\mathbf{n}\cdot \dot{\boldsymbol{\beta}}) \mathbf{n} - \dot{\boldsymbol{\beta}} ] (1-\mathbf{n} \cdot \boldsymbol{\beta}) + [(\mathbf{n} \cdot \boldsymbol{\beta}) \mathbf{n} - \boldsymbol{\beta} ] (\mathbf{n} \cdot \dot{\boldsymbol{\beta}})}{\kappa^2} \notag \\
&= \frac{[(\mathbf{n} \cdot \dot{\boldsymbol{\beta}}) \mathbf{n} - \dot{\boldsymbol{\beta}} ] + (\mathbf{n} \cdot \boldsymbol{\beta}) \dot{\boldsymbol{\beta}} - (\mathbf{n} \cdot \dot{\boldsymbol{\beta}}) \boldsymbol{\beta}}{\kappa^2} 
= \frac{(\mathbf{n} \cdot \dot{\boldsymbol{\beta}}) (\mathbf{n} - \boldsymbol{\beta}) -\dot{\boldsymbol{\beta}} \kappa}{\kappa^2} \notag
\end{align}
$$

$$
\therefore \ 
\frac{\mathbf{n}\times \{ (\mathbf{n}- \boldsymbol{\beta}) \times \dot{\boldsymbol{\beta}} \}}{\kappa^2} 
= \frac{d}{dt} \left( \frac{\mathbf{n} \times (\mathbf{n} \times \boldsymbol{\beta})}{\kappa}\right)
$$

よって

$$
\begin{align}
\hat{\mathbf{E}} (\mathbf{r}, \omega) 
&= \frac{q}{2\pi cR} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}}\int_{T'_1}^{T'_2} \frac{d}{dt'} \left( \frac{\mathbf{n} \times (\mathbf{n} \times \boldsymbol{\beta})}{\kappa}\right) e^{i \omega (t'-\frac{\mathbf{r}_0(t') \cdot \mathbf{n}}{c})} dt' \notag \\
&= \frac{q}{2\pi cR} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}} \left[ \frac{\mathbf{n} \times (\mathbf{n} \times \boldsymbol{\beta})}{\kappa} e^{i \omega (t'-\frac{\mathbf{r}_0(t') \cdot \mathbf{n}}{c})} \right]_{T_1}^{T_2} - \frac{i \omega q}{2\pi cR} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}} \int_{T'_1}^{T'_2} \frac{\mathbf{n} \times (\mathbf{n} \times \boldsymbol{\beta})}{\kappa} (1- \mathbf{u} \cdot \mathbf{n}) e^{i \omega (t'-\frac{\mathbf{r}_0(t') \cdot \mathbf{n}}{c})} dt' \notag \\
&= \frac{q}{2\pi cR} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}} \left[ \frac{\mathbf{n} \times (\mathbf{n} \times \boldsymbol{\beta})}{\kappa} e^{i \omega (t'-\frac{\mathbf{r}_0(t') \cdot \mathbf{n}}{c})} \right]_{T_1}^{T_2} - \frac{i \omega q}{2\pi cR} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}} \int_{T'_1}^{T'_2} \frac{\mathbf{n} \times (\mathbf{n} \times \boldsymbol{\beta})}{\kappa} \underbrace{(1- \frac{\mathbf{u} \cdot \mathbf{n}}{c})}_{=\kappa} e^{i \omega (t'-\frac{\mathbf{r}_0(t') \cdot \mathbf{n}}{c})} dt' \notag \\
&= \frac{q}{2\pi cR} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}} \left[ \frac{\mathbf{n} \times (\mathbf{n} \times \boldsymbol{\beta})}{\kappa} e^{i \omega (t'-\frac{\mathbf{r}_0(t') \cdot \mathbf{n}}{c})} \right]_{T_1}^{T_2} - \frac{i \omega q}{2\pi cR} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}} \int_{T'_1}^{T'_2} \mathbf{n} \times (\mathbf{n} \times \boldsymbol{\beta})e^{i \omega (t'-\frac{\mathbf{r}_0(t') \cdot \mathbf{n}}{c})} dt' \notag
\end{align}
$$

荷電粒子の軌道をこの式に代入すれば、その荷電粒子から放射される輻射のスペクトルを求めることができます。長時間平均を取ると右辺の第1項が消えて

$$
\hat{\mathbf{E}} (\mathbf{r}, \omega)
= - \frac{i \omega q}{2\pi cR} e^{i\omega \frac{\mathbf{n} \cdot \mathbf{r}}{c}} \int_{T'_1}^{T'_2} \mathbf{n} \times (\mathbf{n} \times \boldsymbol{\beta})e^{i \omega (t'-\frac{\mathbf{r}_0(t') \cdot \mathbf{n}}{c})} dt'
$$

の部分のみが残ります。

{% include adsense.html %}
