# 電磁場のエネルギー・エネルギー流束・運動量・運動量流束

真空中($$\rho = \mathbf{j} = 0$$)のマクスウェル方程式を復習しましょう。まずはガウスの法則より

$$
\nabla \cdot \mathbf{E}= 4\pi \rho 
= 0 \tag{1}
$$

磁場のガウス則(磁気単極子がないことを示す式)より

$$
\nabla \cdot \mathbf{B} 
= 0 \tag{2}
$$

ファラデーの法則より

$$
\nabla \times \mathbf{E} 
= - \frac{1}{c} \frac{\partial \mathbf{B}}{\partial t} \tag{3}
$$

そしてアンペール・マクスウェルの法則より

$$
\nabla \times \mathbf{B} 
= \frac{4\pi}{c} \mathbf{j} + \frac{1}{c} \frac{\partial \mathbf{E}}{\partial t} 
= \frac{1}{c} \frac{\partial \mathbf{E}}{\partial t} \tag{4}
$$

## 電磁場のエネルギーとエネルギー流束(ポインティングベクトル)

電磁場のエネルギー密度として、以下を定義しておきます。

$$
U_\mathrm{field} 
= \frac{1}{8\pi} (E^2 + B^2) \tag{5}
$$

これの時間微分を考えると

$$
\frac{\partial U_\mathrm{field}}{\partial t}
= \frac{1}{4\pi} ( \mathbf{E} \cdot \frac{\partial \mathbf{E}}{\partial t} + \mathbf{B} \cdot \frac{\partial \mathbf{B}}{\partial t}) 
= \frac{1}{4\pi} \left( \mathbf{E} \cdot (c \nabla \times \mathbf{B}) + \mathbf{B} \cdot (-c \nabla \times \mathbf{E})\right) 
= \frac{c}{4\pi} \left( \mathbf{E} \cdot (\nabla \times \mathbf{B}) - \mathbf{B} \cdot (\nabla \times \mathbf{E})\right)
$$

一方で、以下のようなエネルギー密度流束

$$
\mathbf{S} 
= \frac{c}{4\pi} \mathbf{E} \times \mathbf{B} \tag{6}
$$

を考え、その発散を考えると

$$
\nabla \cdot \mathbf{S} 
= \frac{c}{4\pi} \nabla \cdot (\mathbf{E} \times \mathbf{B}) 
= \frac{c}{4\pi} \left( \mathbf{B} \cdot (\nabla \times \mathbf{E}) - \mathbf{E} \cdot (\nabla \times \mathbf{B})\right)
$$

となります(途中の計算にはベクトル解析の公式を用いました)。これらより

$$
\frac{\partial U_\mathrm{field}}{\partial t} + \nabla \cdot \mathbf{S} 
= 0 \tag{7}
$$

とわかります。この式から、$$\mathbf{S}$$が電磁場のエネルギー密度流束を表しています。特にこれをポインティングベクトルと呼びます。

## 電磁場の運動量と運動量流束

電磁場の運動量密度ベクトルとして、以下のような量を定義しておきます。

$$
\mathbf{g} 
= \frac{1}{4\pi c} \mathbf{E} \times \mathbf{B} \tag{8}
$$

この式の時間微分を考えると

$$
\frac{\partial \mathbf{g}}{\partial t} 
= \frac{1}{4\pi c} (\frac{\partial \mathbf{E}}{\partial t} \times \mathbf{B} + \mathbf{E} \times \frac{\partial \mathbf{B}}{\partial t} )
= \frac{1}{4\pi c} ((c \nabla \times \mathbf{B}) \times \mathbf{B} + \mathbf{E} \times (-c \nabla \times \mathbf{E})) 
= \frac{1}{4\pi} ((\nabla \times \mathbf{B}) \times \mathbf{B} - \mathbf{E} \times (\nabla \times \mathbf{E}))
$$

となります。ここでこの式の$$i$$成分のみを書き出してみましょう。

$$
\begin{align}
\frac{\partial g_i}{\partial t} 
&= \frac{1}{4\pi} (\epsilon_{ijk}(\nabla \times \mathbf{B})_j B_k - \epsilon_{ijk} E_j (\nabla \times \mathbf{E})_k) 
= \frac{1}{4\pi} (\epsilon_{ijk}\epsilon_{jlm}(\partial_l B_m) B_k - \epsilon_{ijk} E_j \epsilon_{klm}(\partial_l E_m)) \\
&= \frac{1}{4\pi} (\epsilon_{jki}\epsilon_{jlm}(\partial_l B_m) B_k - \epsilon_{kij} \epsilon_{klm}E_j (\partial_l E_m)) \\
&= \frac{1}{4\pi} ((\delta_{kl}\delta_{im} - \delta_{km}\delta_{il})(\partial_l B_m) B_k - (\delta_{il}\delta_{jm}-\delta_{im}\delta_{jl})E_j (\partial_l E_m)) \\
&= \frac{1}{4\pi} ((\partial_k B_i)B_k - (\partial_i B_k) B_k - E_j(\partial_i E_j) + E_j (\partial_j E_i)) \\
&= \frac{1}{4\pi} \left( (\mathbf{B} \cdot \nabla)B_i - \frac{1}{2}\partial_i B^2 - \frac{1}{2} \partial_i E^2 + (\mathbf{E} \cdot \nabla )E_i\right)
\end{align}
$$

一方で、以下のような電磁場運動量流束を定義しておきます。

$$
\mathbf{M}_j 
= (M_{jx} , M_{jy}, M_{jz}) \tag{9}
$$

$$
M_{ji} 
= \frac{1}{8\pi} (E^2 + B^2)\delta_{ji} - \frac{1}{4\pi} (E_j E_i + B_j B_i) \tag{10}
$$

この発散を考えると

$$
\begin{align}
\nabla \cdot \mathbf{M}_j 
&= \partial_i M_{ji} 
= \partial_i \left( \frac{1}{8\pi} (E^2 + B^2)\delta_{ji} - \frac{1}{4\pi} (E_j E_i + B_j B_i) \right)
= \frac{1}{8\pi} \partial_j (E^2 + B^2) - \frac{1}{4\pi} \partial_i (E_j E_i + B_j B_i) \\
&= \frac{1}{8\pi} \partial_j (E^2 + B^2) - \frac{1}{4\pi} \{ E_i  (\partial_i E_j) + E_j (\partial_i E_i) + B_i(\partial_iB_j) + B_j(\partial_iB_i) \} \\
&= \frac{1}{8\pi} \partial_j (E^2 + B^2) - \frac{1}{4\pi} \{ (\mathbf{E} \cdot \nabla) E_j + E_j (\nabla \cdot \mathbf{E}) + (\mathbf{B} \cdot \nabla ) B_j + B_j (\nabla \cdot \mathbf{B}) \} \\
&= \frac{1}{8\pi} \partial_j (E^2 + B^2) - \frac{1}{4\pi} ((\mathbf{E} \cdot \nabla) E_j+ (\mathbf{B} \cdot \nabla ) B_j)
\end{align}
$$

以上より

$$
\frac{\partial g_j}{\partial t} +\nabla \cdot {\bf M}_j 
= 0 \tag{11}
$$

とわかります。この式から、$$\mathbf{M}_j$$を電磁場の運動量の$$j$$成分の流束と解釈することができます。

## 保存則を表す式

電荷保存則を表す式として、以下のようなものが書かれていることがあります。

$$
\frac{\partial \rho}{\partial t} + \nabla \cdot \mathbf{j} 
= 0 
$$

その意味を考えてみましょう。両辺を任意の体積$V$で体積積分を行います。するとガウスの定理より

$$
\iiint_V \frac{\partial \rho}{\partial t} dV + \iint_S \mathbf{j} \cdot d \mathbf{S} 
= 0
\ \Longrightarrow \ \frac{\partial}{\partial t}\iiint_V \rho dV 
= - \iint_S \mathbf{j} \cdot d\mathbf{S}
$$

$$S$$は体積$$V$$を囲う閉曲面、$$d\mathbf{S}$$はその閉曲面の面積要素ベクトル(大きさ$$dS$$、向きは面に垂直で外向き)をそれぞれ表します。この式は体積$$V$$内の全電荷の時間変化(左辺)が閉曲面を通過する電流密度ベクトルの総和(右辺)に等しいという事を意味しています。  
この式は電磁気のみならず、流体力学でも出てきます。$$\rho$$を質量密度、$$\mathbf{j}=\rho \mathbf{v}$$を質量フラックスとすればこの式は流体力学における質量保存則を表す式となります。ちなみに、両辺を体積積分したときに保存則が導かれるような形の式を保存形式と呼びます。
