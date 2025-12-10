---
layout: default
title: 種々のローレンツ不変量とコンプトン・ゲッティング効果
parent: 宇宙電磁気学
math: mathjax3
permalink: /astroelec/lorentz_invariants_compton_getting
nav_order: 115
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

# 種々のローレンツ不変量

ある慣性系を$$K$$、その$$K$$系に対して$$x$$軸方向に速度$$V$$で運動する関係性を$$K'$$としましょう。
着目している粒子群は、$$K$$系および$$K'$$系で一定の運動量をもち、そのローレンツ因子はそれぞれ$$\gamma, \gamma'$$であるとします。
この粒子群が静止して見えるような座標系を$$K_\ast$$系とすると

$$
d^3 \mathbf{x} 
= \frac{1}{\gamma} d^3 \mathbf{x}_\ast \tag{1}
$$

$$
d^3 \mathbf{x}' 
= \frac{1}{\gamma'} d^3 \mathbf{x}_\ast \tag{2}
$$

のように、それぞれがローレンツ収縮を受けた形になります。
これらより

$$
d^3 \mathbf{x}' 
= \frac{\gamma}{\gamma'} d^3 \mathbf{x} 
= \frac{mc^2 \gamma}{mc^2 \gamma'} d^3 \mathbf{x} 
= \frac{E}{E'} d^3 \mathbf{x} \tag{3}
$$

のように、3次元空間の体積要素については$$E d^3 \mathbf{x}$$がローレンツ不変量となることがわかります。  
次に、運動量空間の体積要素のローレンツ変換を考えてみましょう。
運動量のローレンツ変換より

$$
p_x' 
= \Gamma \left( p_x - \frac{V}{c^2} E\right), \quad p_y' 
= p_y, \quad p_z' 
= p_z \tag{4}
$$

です。
ここで

$$
E 
= \sqrt{m^2 c^4 + c^2 \mathbf{p}^2} \ \Longrightarrow \ 
\frac{dE}{dp_x} 
= \frac{1}{2} \frac{2 c^2 p_x}{\sqrt{m^2 c^4 + c^2 \mathbf{p}^2}} 
= \frac{c^2 p_x}{E} \tag{5} 
$$

であることを用いると

$$
dp_x' 
= \Gamma \left( dp_x - \frac{V}{c^2} dE\right) 
= \Gamma \left( dp_x - \frac{V}{c^2} \frac{c^2 p_x}{E} dp_x\right) 
= \Gamma \left( 1 - \frac{V p_x}{E} \right) dp_x \tag{6}
$$

$$
dp_y' 
= dp_y, \quad dp_z' 
= dp_z \tag{7}
$$

のように変換則が得られます。
これらより

$$
d^3 \mathbf{p}' 
= \Gamma \left( 1 - \frac{Vp_x}{E}\right) d^3 \mathbf{p} \tag{8}
$$

を得ます。
またエネルギーのローレンツ変換から

$$
E' 
= \Gamma (E-Vp_x) \tag{9}
$$

であるので

$$
\frac{d^3 \mathbf{p}'}{E'} 
= \frac{\Gamma \left( 1 - \frac{Vp_x}{E}\right) d^3 \mathbf{p}}{\Gamma (E-Vp_x)} 
= \frac{d^3 \mathbf{p}}{E} \tag{10}
$$

が得られます。
ここから、運動量空間の体積要素については$$\frac{d^3 \mathbf{p}}{E}$$がローレンツ不変量であるとわかります。
(3), (10)式から

$$
d^3 \mathbf{x}' d^3 \mathbf{p}' 
= \frac{E}{E'} d^3 \mathbf{x} \frac{E' d^3 \mathbf{p}}{E} 
= d^3 \mathbf{x} d^3 \mathbf{p} \tag{11}
$$

のように、位相空間の体積要素$$d^3 \mathbf{x} d^3 \mathbf{p}$$がローレンツ不変となることが示されました。
この体積要素中の粒子数$$f(t, \mathbf{x}, \mathbf{p}) d^3 \mathbf{x} d^3 \mathbf{p}$$はもちろんローレンツ不変量であるので、分布関数$$f(t, \mathbf{x}, \mathbf{p})$$もローレンツ不変量となります。  

## 光子の場合

以下では、これまでの議論が光子についても成り立つとしましょう。
ある容器に閉じ込められた光子気体を考え、光子気体の単位振動数・単位立体角あたりの数密度を$$n_\nu$$とします。
すると、光子については$$p = \frac{E}{c} = \frac{h\nu}{c}$$が成り立つため

$$
d^3 \mathbf{p} 
= p^2 dp d\Omega 
= \frac{h^3 \nu^2}{c^3} d\nu d\Omega \tag{12}
$$

のようになります。
分布関数の定義から

$$
f(t, \mathbf{x}, \mathbf{p}) 
= \frac{dN}{d^3 \mathbf{x} d^3 \mathbf{p}} 
= \frac{c^3}{h^3 \nu^2} frac{dN}{d^3 \mathbf{x} d\nu d\Omega} 
= \frac{c^3 n_\nu (\mathbf{x}, \Omega)}{h^3 \nu^2} \tag{13}
$$

を得ます。
ここで$$d\Omega = \sin \theta d\theta d\varphi$$は微小立体角です。
(13)式で分布関数がローレンツ不変であることから、$$\frac{n_\nu (\mathbf{x}, \Omega)}{\nu^2}$$もローレンツ不変であるとわかります。
光子気体の単位振動数・単位立体角あたりのエネルギー密度と輻射強度を、それぞれ$$U_\nu (\mathbf{x}, \Omega), I_\nu (\mathbf{x}, \Omega)$$は

$$
U_\nu (\mathbf{x}, \Omega) 
= h \nu n_\nu (\mathbf{x}, \Omega), \quad I_\nu 
= c U_\nu (\mathbf{x}, \Omega) \tag{14}
$$

のように与えられるため、$$\frac{U_\nu (\mathbf{x}, \Omega)}{\nu^3}, \frac{I_\nu (\mathbf{x}, \Omega)}{\nu^3}$$もローレンツ不変量となります。

# コンプトン・ゲッティング効果 (Computon-Getting effect)

## 参考文献

[] [Rybicki & Lightman, "Radiative Processes in Astrophysics"](https://amzn.to/453u5pE)  
[] [高原文郎, "特殊相対論"](https://amzn.to/3I7wtn4)  

{% include adsense.html %} 