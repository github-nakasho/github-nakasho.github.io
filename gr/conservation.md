# エネルギー運動量保存則

エネルギー運動量保存則

$$
T^\mu_{\nu ; \mu} = 0
$$

が具体的にどのような形で書かれるかを導出してみましょう。

## 計量テンソルに関する公式

$$
g \equiv {\rm det} (g_{\alpha \beta})
$$

とします。$$g_{\alpha \beta}$$の余因子行列$$\tilde{g}^{\alpha \beta}$$に対して以下の公式がが成り立ちます。

$$
\tilde{g}^{\mu \nu} g_{\nu \alpha} = g \delta^\mu_\alpha \ \Longrightarrow \ 
\frac{\partial g}{\partial g_{\nu \alpha}} \delta^\mu_\alpha = \tilde{g}^{\mu \nu} 
$$

両辺に$$g^{\alpha \beta}$$をかけると

$$
(左辺) 
= \tilde{g}^{\mu \nu} g_{\nu \alpha} g^{\alpha \beta} 
= \tilde{g}^{\mu \nu} \delta^\beta_\nu 
= \tilde{g}^{\mu \beta}
$$

$$
(右辺) 
= g \delta^\mu_\alpha g^{\alpha \beta} 
= g g^{\mu \beta}
$$

$$
\therefore \tilde{g}^{\mu \beta} = g g^{\mu \beta}
$$

さらに式変形を行うことで

$$
\frac{\partial g}{\partial x^\mu} = \frac{\partial g}{\partial g_{\alpha \beta}} \frac{\partial g_{\alpha \beta}}{\partial x^\mu} \ \Longrightarrow \ 
\frac{\partial g}{\partial x^\mu} \delta^\mu_\alpha 
= \frac{\partial g}{\partial g_{\nu \alpha}} \frac{\partial g_{\nu \alpha}}{\partial x^\mu} \delta^\mu_\alpha \ \Longrightarrow \
\frac{\partial g}{\partial x^\alpha} 
= \tilde{g}^{\mu \nu} \frac{\partial g_{\nu \mu}}{\partial x^\alpha} 
= g g^{\mu \nu} \frac{\partial g_{\nu \mu}}{\partial x^\alpha} \ \Longrightarrow \ 
\frac{1}{g} \frac{\partial g}{\partial x^\alpha} 
= g^{\mu \nu} \frac{\partial g_{\mu \nu}}{\partial x^\alpha}
$$

となります。$$g<0$$より$$g= (\sqrt{-g})^2 \ \Longrightarrow \ dg = 2\sqrt{-g} d\sqrt{-g}$$から

$$
\frac{2}{\sqrt{-g}} \frac{\partial \sqrt{-g}}{\partial x^\alpha} 
= g^{\mu \nu} \frac{\partial g_{\mu \nu}}{\partial x^\alpha}
$$

が求まります。

## クリストッフェル記号の計算

$$
\Gamma^\alpha_{\beta \gamma} 
= \frac{1}{2} g^{\alpha \nu} (g_{\nu \beta, \gamma} + g_{\gamma \nu, \beta} - g_{\beta \gamma, \nu})
$$

から

$$
2 \Gamma^\mu_{\varphi \mu} 
= g^{\mu \nu} (g_{\nu \varphi, \mu} + g_{\mu \nu, \varphi} - \underbrace{g_{\varphi \mu, \nu}}_{=g_{\mu \varphi, \nu}}) 
= g^{\mu \nu} \frac{\partial g_{\mu \nu}}{\partial x^\varphi}
$$

先ほど導いた式と合わせて

$$
\Gamma^\mu_{\alpha \mu} 
= \frac{1}{\sqrt{-g}} \frac{\partial \sqrt{-g}}{\partial x^\alpha} 
$$

が成立します。

## 2階の対称テンソルの共偏微分

エネルギー運動量テンソルは2階の対称テンソルです。よってここではそれに対する公式の導出を行います。  
２階のテンソルの共偏微分より

$$
T^\mu_{\ \nu ; \mu} 
= T^\mu_{\ \nu, \mu} + \Gamma^\mu_{\beta \mu} T^\beta_{\ \nu} - \Gamma^\beta_{\nu \mu} T^\mu_{\ \beta}
$$

第1項+第2項より

$$
T^\mu_{\ \nu, \mu} + \Gamma^\mu_{\beta \mu} T^\beta_{\ \nu} 
= T^\mu_{\ \nu, \mu} + \frac{1}{\sqrt{-g}} \frac{\partial \sqrt{-g}}{\partial x^\beta} T^\beta_{\ \nu} 
= T^\mu_{\ \nu, \mu} + \frac{1}{\sqrt{-g}} \frac{\partial \sqrt{-g}}{\partial x^\mu} T^\mu_{\ \nu} 
= \frac{1}{\sqrt{-g}} \frac{\partial }{\partial x^\mu} (\sqrt{-g} T^\mu_{\ \nu})
$$

第3項より

$$
\begin{align}
&- \Gamma^\beta_{\nu \mu} T^\mu_{\ \beta} 
= -\frac{1}{2} g^{\beta \gamma} (g_{\gamma \nu, \mu} + g_{\mu \gamma, \nu} - g_{\nu \mu, \gamma}) g_{\beta \alpha} T^{\mu \alpha} 
= -\frac{1}{2} \delta^\gamma_\alpha (g_{\gamma \nu, \mu} + g_{\mu \gamma, \nu} - g_{\nu \mu, \gamma}) T^{\mu \alpha} \\
&= -\frac{1}{2} (g_{\alpha \nu, \mu} + g_{\mu \alpha, \nu} - g_{\nu \mu, \alpha}) T^{\mu \alpha} 
= -\frac{1}{2} g_{\mu \alpha, \nu} T^{\mu \alpha}
\end{align}
$$

以上より

$$
T^\mu_{\ \nu ; \mu} 
= \frac{1}{\sqrt{-g}} \frac{\partial }{\partial x^\mu} (\sqrt{-g} T^\mu_{\ \nu}) -\frac{1}{2} g_{\mu \alpha, \nu} T^{\mu \alpha}
$$