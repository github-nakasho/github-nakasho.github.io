---
layout: default
title: 双曲線関数
parent: 数学
math: mathjax3
permalink: /math/hyperbolic_function
nav_order: 20
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

# 双曲線関数

双曲線関数は、次のように定義されます。

$$
\sinh x 
= \frac{e^x - e^{-x}}{2}, \quad
\cosh x 
= \frac{e^x + e^{-x}}{2}, \quad
\tanh x 
= \frac{\sinh x}{\cosh x} 
= \frac{e^x - e^{-x}}{e^x + e^{-x}} \tag{1}
$$

## 双曲線関数の公式

次の式を証明しましょう。

$$
\cosh x 
= \left( \frac{1}{2} \sinh 2x \right)^{1/2} e^{-\frac{1}{2} \ln (\tanh x)}, 
\sinh x 
= \left( \frac{1}{2} \sinh 2x \right)^{1/2} e^{-\frac{1}{2} \ln (\tanh x)} \tag{2}
$$

まずは$$\cosh x$$に関する式の右辺を計算していきます。

$$
e^{-\frac{1}{2} \ln (\tanh x)} 
= e^{\ln (\tanh x)^{-1/2}} 
= (\tanh x)^{-1/2} 
= \frac{1}{\sqrt{\tanh x}} 
= \sqrt{\frac{e^x + e^{-x}}{e^x - e^{-x}}} \notag
$$

これに$$\left( \frac{1}{2} \sinh 2x\right)^{1/2}$$をかけましょう。

$$
\begin{align}
\left( \frac{1}{2} \sinh 2x \right)^{1/2} e^{-\frac{1}{2} \ln (\tanh x)} 
&= \sqrt{\frac{e^{2x} - e^{-2x}}{4}} \sqrt{\frac{e^x + e^{-x}}{e^x - e^{-x}}} 
= \sqrt{\frac{(e^x + e^{-x}) (e^x - e^{-x})}{4}} \sqrt{\frac{e^x + e^{-x}}{e^x - e^{-x}}} \notag \\
&= \sqrt{\frac{(e^x + e^{-x})^2}{4}} 
= \frac{e^x + e^{-x}}{2} 
= \cosh x \notag
\end{align}
$$

以上から、(2)式の$$\cosh x$$に関する公式が示されました。
同様に、$$\sinh x$$の公式を導出しましょう。

$$
e^{\frac{1}{2} \ln (\tanh x)} 
= e^{\ln (\tanh x)^{1/2}} 
= \sqrt{\tanh x} 
= \sqrt{\frac{e^x - e^{-x}}{e^x + e^{-x}}} \notag
$$

より

$$
\begin{align}
\left( \frac{1}{2} \sinh 2x \right)^{1/2} e^{\frac{1}{2} \ln (\tanh x)} 
&= \sqrt{\frac{e^{2x} - e^{-2x}}{4}} \sqrt{\frac{e^x - e^{-x}}{e^x + e^{-x}}} 
= \sqrt{\frac{(e^x + e^{-x}) (e^x - e^{-x})}{4}} \sqrt{\frac{e^x - e^{-x}}{e^x + e^{-x}}} \notag \\
&= \sqrt{\frac{(e^x - e^{-x})^2}{4}} 
= \frac{e^x - e^{-x}}{2} 
= \sinh x \notag
\end{align}
$$

を得ます。
こうして(2)式の$$\sinh x$$に関する式も示すことができました。  

## 三角関数との類似性

三角関数と似たような公式を導出しましょう。

$$
\cosh^2 - \sinh^2 
= \frac{e^{2x} + 2 + e^{-2x}}{4} - \frac{e^{2x} - 2 + e^{-2x}}{4} 
= 1 \tag{3}
$$

$$
\cosh x + \sinh x 
= e^x \tag{5}
$$

$$
\cosh x - \sinh x 
= e^{-x} \tag{6}
$$

倍角の公式と似たような公式も導出することができます。

$$
\sinh (2x) 
= \frac{e^{2x} - e^{-2x}}{2} 
= 2 \frac{(e^x - e^{-x})}{2} \frac{(e^x + e^{-x})}{2} 
= 2 \sinh z \cosh z \tag{7}
$$

$$
\cosh (2x) 
= \frac{e^{2x} + e^{-2x}}{2} 
= \frac{(e^x + e^{-x})^2 - 2}{2} 
= 2 \cosh^2 - 1 
\underbrace{=}_{(3)} 2 \sinh^2 + 1 \tag{8} 
$$

角度の合成のような公式も導出しましょう。
$$x, y$$を実数とすると

$$
\begin{align}
\cosh (x+iy) 
&= \frac{e^{x+iy} + e^{-x-iy}}{2} 
= \frac{e^x e^{iy} + e^{-x} e^{-iy}}{2} 
= \frac{e^x (\cos y + i \sin y) + e^{-x} (\cos y - i \sin y)}{2} \notag \\
&= \frac{e^x + e^{-x}}{2} \cos y + i \frac{e^x - e^{-x}}{2} \sin y 
= \cosh x \cos y + i \sinh x \sin y \tag{9}
\end{align}
$$

$$
\begin{align}
\sinh (x+iy) 
&= \frac{e^{x+iy} - e^{-x-iy}}{2} 
= \frac{e^x (\cos y + i \sin y) - e^{-x} (\cos y - i \sin y)}{2} \notag \\
&= \sinh x \cos y + i \cosh x \sin y \tag{10}
\end{align}
$$

{% include adsense.html %}
