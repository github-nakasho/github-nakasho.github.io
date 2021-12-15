---
layout: default
title: 逆コンプトン散乱の放射強度スペクトル
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/isc_spectrum
nav_order: 33
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

# 逆コンプトン散乱の放射強度スペクトル(工事中)

$$
\boldsymbol{\beta}_0 
= \beta_0 {\bf e}_z \ \Longrightarrow \ 
{\bf r}_0 (t') = \beta_0 c t' {\bf e}_z
$$

$$
{\bf n} = (0, \sin \theta, \cos \theta)
$$

$$
{\bf k}_0 = k_0 (\sin \theta_k \cos \varphi_k, \sin \theta_k \sin \varphi_k, \cos \theta_k)
$$

## 偏光ベクトルの向き

$$\boldsymbol{\epsilon}_1$$: $${\bf e}_z$$をx軸回りに$$-(\frac{\pi}{2} + \theta_k)$$回転したのちに、z軸回りに$$-(\frac{\pi}{2}-\varphi_k)$$回転

$$
\boldsymbol{\epsilon}_1 = 
\left( \begin{array}{ccc}
\cos (-(\frac{\pi}{2} -\varphi_k)) & - \sin (-(\frac{\pi}{2} -\varphi_k)) & 0 \\
\sin (-(\frac{\pi}{2} -\varphi_k)) & \cos (-(\frac{\pi}{2} -\varphi_k)) & 0 \\
0 & 0 & 1
\end{array} \right)
\left( \begin{array}{ccc}
1 & 0 & 0 \\
0 & \cos (-(\frac{\pi}{2} +\theta_k)) & - \sin (-(\frac{\pi}{2} +\theta_k)) \\
0 & \sin (-(\frac{\pi}{2} +\theta_k)) & \cos (-(\frac{\pi}{2} +\theta_k)) 
\end{array} \right)
\left( \begin{array}{c}
0 \\
0 \\
1
\end{array} \right) 
= \left( \begin{array}{c}
\cos \varphi_k \cos \theta_k \\
\sin \varphi_k \cos \theta_k \\
-\sin \theta_k
\end{array} \right) 
$$

$$\boldsymbol{\epsilon}_2$$: $${\bf e}_y$$をz軸回りに$$\varphi_k$$回転

$$
\boldsymbol{\epsilon}_2 
= \left( \begin{array}{c}
-\sin \varphi_k \\
\cos \varphi_k \\
0
\end{array} \right)
$$

## エネルギーの時間変化

$$
\frac{d}{dt} (\gamma m_e c^2) 
= -e {\bf E} \cdot {\bf v} \ \Longrightarrow \ 
\frac{d\gamma}{dt} 
= -\frac{e}{m_e c^2} {\bf E} \cdot {\bf v}
$$

## 運動方程式

$$
\frac{d}{dt} (\gamma m_e {\bf v}) = -e ({\bf E} + \frac{\bf v}{c} \times {\bf B}) \ \Longrightarrow \ 
m_e \gamma \frac{d {\bf v}}{dt} + m_e {\bf v} \frac{d\gamma}{dt} 
= -e ({\bf E} + \frac{\bf v}{c} \times {\bf B})
$$

先ほどの式を代入して

$$
m_e c \gamma \frac{\boldsymbol{\beta}}{dt} 
= e({\bf E} \cdot \boldsymbol{\beta}) \boldsymbol{\beta} - e{\bf E} - c \boldsymbol{\beta} \times {\bf B} \ \Longrightarrow \ 
\frac{d\boldsymbol{\beta}}{dt} 
= \frac{e}{m_e c\gamma} (({\bf E} \cdot \boldsymbol{\beta}) \boldsymbol{\beta} - {\bf E} - \boldsymbol{\beta} \times {\bf B}) \tag{1}
$$

入射電磁波が$$\boldsymbol{\epsilon}_1$$方向に直線偏光しているとき

$$
{\bf E} 
= E \sin (\omega_0 t' - {\bf k}_0 \cdot {\bf r} (t')) \boldsymbol{\epsilon}_1 \\
{\bf B} 
= E \sin (\omega_0 t' - {\bf k}_0 \cdot {\bf r} (t')) \boldsymbol{\epsilon}_2
$$

ここで$$E=B, \omega_0 = k_0 c$$です。また電磁波の位相の中に現れる電子の軌道を、観測者から天体までの距離が十分遠いとして$${\bf r}_0 (t') \simeq {\bf r} (t')$$とします。これは

$$
{\bf k}_0 \cdot {\bf r}(t') 
\simeq {\bf k}_0 \cdot {\bf r}_0 (t') 
= k_0 \beta ct' \cos \theta_k
$$

より

$$
\omega_0 t' - {\bf k}_0 \cdot {\bf r} (t') 
= \omega_0 t' (1-\beta \cos \theta_k) 
= \tilde{\omega}_0 t'
$$

としたとき、$$\omega_{\rm se} / \tilde{\omega}_0 \ll 1$$で有る限り良い精度の近似になっています。ここで$$\omega_{\rm se} \equiv eE/(\gamma m_e c)$$です。今後のために$$\cos \theta_k \mu_k$$とおくと

$$
{\bf E} 
= E \sin (\omega_0 t' (1-\beta \mu_k)) \boldsymbol{\epsilon}_1
= E \sin \tilde{\omega}_0 t' \left( \begin{array}{c}
\cos \theta_k \cos \varphi_k \\
\cos \theta_k \sin \varphi_k \\
- \sin \theta_k
\end{array} \right)
$$

$$
{\bf B} 
= E \sin (\omega_0 t' (1-\beta \mu_k)) \boldsymbol{\epsilon}_2
= E \sin \tilde{\omega}_0 t' \left( \begin{array}{c}
- \sin \varphi_k \\
\cos \varphi_k \\
0
\end{array} \right)
$$

$$
(\boldsymbol{\epsilon}_1 \cdot \boldsymbol{\beta} ) \boldsymbol{\beta} 
= -\sin \theta_k \beta_0 \boldsymbol{\beta} 
= - \beta_0^2 \sin \theta_k {\bf e}_z
$$

$$
\boldsymbol{\beta} \times {\bf B} \propto
\boldsymbol{\beta} \times \boldsymbol{\epsilon}_2 
= \beta_0 \left( \begin{array}{c}
0 \\
0 \\
1
\end{array} \right) \times \left( \begin{array}{c}
-\sin \varphi_k \\
\cos \varphi_k \\
0
\end{array} \right) 
= \beta_0 \left( \begin{array}{c}
-\cos \varphi_k \\
-\sin \varphi_k \\
0
\end{array} \right)
$$

以上より

$$
\begin{aligned}
\frac{d \boldsymbol{\beta}}{dt} 
&= \frac{e}{m_e c \gamma} (-\beta_0^2 \sin \theta_k E \sin \tilde{\omega} t' ) {\bf e}_z - \frac{e}{m_e c \gamma} E \sin \tilde{\omega}_0 t' \left( \begin{array}{c}
\cos \theta_k \cos \varphi_k \\
\cos \theta_k \sin \varphi_k \\
- \sin \theta_k
\end{array} \right) - \frac{e}{m_e c \gamma} E \sin \tilde{\omega} t' \beta_0 \left( \begin{array}{c}
- \cos \varphi_k \\
- \sin \varphi_k \\
0
\end{array} \right) \\
&= \omega_{\rm se} \sin \tilde{\omega}_0 t' \left( \begin{array}{c}
\beta_0 \cos \varphi_k - \cos \theta_k \cos \varphi_k \\
\beta_9 \sin \varphi_k - \cos \theta_k \sin \varphi_k \\
\sin \theta_k - \beta_0^2 \sin \theta_k
\end{array} \right) 
= \omega_{\rm se} \sin \tilde{\omega}_0 t' \left( \begin{array}{c}
(\beta_0 -\cos \theta_k) \cos \varphi_k \\
(\beta_0 - \cos \theta_k) \sin \varphi_k \\
\gamma^{-2} \sin \theta_k
\end{array} \right)
\end{aligned}
$$

$$
\boldsymbol{\beta} 
= \boldsymbol{\beta}_0 + \int \frac{d \boldsymbol{\beta}}{dt'} dt' 
= \beta_0 {\bf e}_z -\frac{\omega_{\rm se}}{\tilde{\omega}_0} \cos \tilde{\omega} t' \left( \begin{array}{c}
(\beta_0 -\cos \theta_k) \cos \varphi_k \\
(\beta_0 - \cos \theta_k) \sin \varphi_k \\
\gamma^{-2} \sin \theta_k
\end{array} \right)
$$

$$
{\bf r} 
=\underbrace{\bf 0}_{初期位置} + c \int \frac{d\boldsymbol{\beta}}{dt'} dt' \ \Longrightarrow \ \frac{\bf r}{c} 
= \left( \begin{array}{c}
-\frac{\omega_{\rm se}}{\tilde{\omega}_0^2} \sin \tilde{\omega}_0 t' (\beta_0 - \cos \theta_k) \cos \varphi_k \\
-\frac{\omega_{\rm se}}{\tilde{\omega}_0^2} \sin \tilde{\omega}_0 t' (\beta_0 - \cos \theta_k) \sin \varphi_k \\
\beta_0 t' -\frac{\omega_{\rm se}}{\tilde{\omega}_0^2} \sin \tilde{\omega}_0 t' \gamma^{-2} \sin \theta_k
\end{array} \right)
$$

$$
[{\bf n} \times ({\bf n} \times \boldsymbol{\beta})]_i 
= \epsilon_{ijk} n_j \epsilon_{k\ell m} n_\ell \beta_m 
= \epsilon_{kij} \epsilon_{k \ell m} n_j n_\ell \beta_m 
= (\delta_{i\ell} \delta_{jm} - \delta_{im} \delta_{j\ell}) n_j n_\ell \beta_m 
= n_j n_i \beta_j - n_j n_j \beta_i 
= [({\bf n} \cdot \boldsymbol{\beta}) {\bf n} - \boldsymbol{\beta}]_i
$$

$$
{\bf n} \cdot \boldsymbol{\beta} 
= \beta_0 \cos \theta + \frac{\omega_{\rm se}}{\tilde{\omega}_0 } \cos \tilde{\omega}_0 t' ((\cos \theta_k -\beta_0) \sin \theta \sin \varphi_k - \gamma^{-2} \cos \theta \sin \theta_k)
$$

$$
[{\bf n} \times ({\bf n} \times \boldsymbol{\beta})]_x 
= -\frac{\omega_{\rm se}}{\tilde{\omega}_0} \cos \tilde{\omega}_0 t' (\cos \theta_k - \beta_0) \cos \varphi_k
$$

$$
[{\bf n} \times ({\bf n} \times \boldsymbol{\beta})]_y 
= \frac{1}{2} \beta_0 \sin 2 \theta + \frac{\omega_{\rm se}}{\tilde{\omega}_0} \cos \tilde{\omega}_0 t' (-(\cos \theta_k -\beta_0) \sin \varphi_k \cos^2 \theta - \frac{\sin \theta_k}{2\gamma^2} \sin 2\theta)
$$

$$
[{\bf n} \times ({\bf n} \times \boldsymbol{\beta})]_z 
= -\beta_0 \sin^2 \theta + \frac{\omega_{\rm se}}{\tilde{\omega}_0} \cos \tilde{\omega}_0 t' (\frac{1}{2} (\cos \theta_k -\beta_0) \sin 2\theta \sin \varphi_k + \frac{\sin \theta_k}{\gamma^2} \sin^2 \theta)
$$

$$
t' - \frac{\bf{n} \cdot \bf{r}}{c} 
= (1-\beta_0 \cos \theta) t' + \frac{\omega_{\rm se}}{\tilde{\omega}_0^2} \sin \tilde{\omega}_0 t' (-\sin \theta (\cos \theta_k - \beta_0) \sin \varphi_k + \cos \theta \frac{\sin \theta_k}{\gamma^2})
$$

$$
R \hat{\bf E}({\bf r}, \omega) 
= \frac{i e \omega}{2\pi c} e^{i\varphi} \int_{T'_1}^{T'_2} {\bf n} \times ({\bf n} \times \boldsymbol{\beta}) e^{i\omega (t' - \frac{\bf{n} \cdot \bf{r}}{c})} dt'
$$

以上より

$$
R \hat{E}_x ({\bf r}, \omega) 
= \frac{ie \omega}{2\pi c} e^{i\varphi} \int_{T'_1}^{T'_2} (-\frac{\omega_{\rm se}}{\tilde{\omega}_0}\cos \tilde{\omega}_0 t' (\cos \theta_k - \beta_0) \cos \varphi_k) e^{i (1-\beta_0 \cos \theta) \omega t'} e^{i \omega \frac{\omega_{\rm se}}{\tilde{\omega}_0^2} \sin \tilde{\omega}_0 t' (- \sin \theta (\cos \theta_k -\beta_0) \sin \varphi_k + \cos \theta \frac{\sin \theta_k}{\gamma^2})} dt'
$$


以降、$$A \equiv \omega \frac{\omega_{\rm se}}{\tilde{\omega}_0^2} (-\sin \theta (\cos \theta_k - \beta_0) \sin \varphi_k + \cos \theta \frac{\sin \theta_k}{\gamma^2})$$とおきます。

$$
R \hat{E}_x ({\bf r}, \omega) 
= \frac{ie \omega}{2\pi c} e^{i\varphi} \int_{T'_1}^{T'_2} (-\frac{\omega_{\rm se}}{\tilde{\omega}_0}\cos \tilde{\omega}_0 t' (\cos \theta_k - \beta_0) \cos \varphi_k) e^{i (1-\beta_0 \cos \theta) \omega t'} e^{i A \sin \tilde{\omega}_0 t'} dt'
$$

{% include adsense.html %}