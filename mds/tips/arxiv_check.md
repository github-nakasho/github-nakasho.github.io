---
layout: default
title: arXivチェック
parent: Tips
math: mathjax3
permalink: /tips/arxiv_check
nav_order: 2
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

# ArXivチェック

ArXivチェックと称してその分野の勉強を進めていると、大変ありがたいことに「どのようにしているのですか？」などのご質問をいただくことがあります。
ここでは、私が日頃より行っているarXivのチェック方法についてご紹介します。

## pdfファイル

こちらに、某所で発表させていただいた内容のpdfファイルを添付します。
以降では、この内容について詳しくご説明します。

{% pdf {{ "/assets/pdfs/tips/arxiv_check_20230601.pdf" }} %}

## ArXivチェックとは？

ここでは、ArXivの更新がある日はそれをチェックし、twitterなどのタイムラインに気になった論文の要約を放流する作業を意味します。
私は

* 大学院生時代に宇宙物理学を専攻していたため、astroph
* 現在は(量子)アニーリングの社会実装企業に勤めているため、quantph

の2分野についてチェックを行っています。

2023年6月現在、子育てに忙殺され、astrophチェックは休止中です。いつか復活を遂げたい...
{: .label .label-yellow }

### ArXivチェックのメリット

ArXivには日々、様々な論文がアップロードされます。
これをチェックすることで、世界でどのような研究が行われているのかを知ることができます。
例えば、同じようなテーマの論文が多数あれば、そこからその研究業界の流行などの動向を探ることもできるでしょう。
また、ここにアップロードされる論文は、まだ世の中が注目を集める前の(新鮮な)研究結果です。
科学技術系のニュースまとめサイトよりも先にその内容を知ることができるというのは、ちょっとした優越感をもたらします。
さらに、その要約した研究内容が一般人にも刺さるような面白いものであるならば、twitterでたくさんのいいね・リツイートをいただくことも可能です。

### ArXivチェックのデメリット

メリットもあればデメリットも当然存在します。
それは自分の時間が削られることです。
arXivの更新は(アメリカの休暇など特に理由がない限り)平日毎日更新されます。
それをチェックし続けるわけですので、その分の時間は捻出しなければなりません。
またtwitterのタイムラインなどに放流すると、他の方々の目に留まります。
もしプロフェッショナルがその要約をみて「それは間違っている」と思い、私のもとにDMが来るようなことがあれば、私の心は折れてしまうでしょう。
このように、その分野の背景知識の乏しさあるいは英語力の無さから、正しい要約ができているかという不安が常に付きまとうのです。
最後は、日々続けることの大変さです。
「学問に王道なし」という言葉があるように、日々コツコツと積み上げることは大切とされています。
しかし、それを毎日続けるというのはやはり骨が折れます。
強い精神力と時間的余裕があってこそできるチェックなのです。

## そもそもarXivとは？

こちらが[arXivへのリンク](https://arxiv.org/)です。
世界中の人々が、査読済み論文などをアップロードしています。
アップロードされているのは論文だけでなく、例えば大学の講義などで使用された授業ノートであったり、あるいはちょっとした計算メモであることもあります。
論文以外のものもアップロードできることからわかるように、arXivには査読というシステムがありません。
基本的にはどのような人物でも、自身の研究成果なりをアップロードすることが可能です。
素晴らしいシステムでありますが、査読雑誌よりは信頼性は劣るような研究成果が見られることもあるようです。

### 分類

2023年6月現在、以下のような分類がされており、各ページではそのテーマに沿った論文が掲載されています。

* Physics
  * Astrophysics
  * Condensed Matter
  * General Relativity and Quantum Cosmology
  * High Energy Physics - Experiment
  * High Energy Physics - Lattice
  * High Energy Physics - Phenomenology
  * High Energy Physics - Theory
  * Mathematical Physics
  * Nonlinear Science
  * Nuclear Experiment
  * Nuclear Theory
  * Physics
  * Quantum Physics
* Mathematics
* Computer Science
* Quantitative Biology
* QUantitative Finance
* Statistics
* Electrical Engineering and System Science
* Economics
  
### チェック場所

日々アップロードされたものが更新されるのは"new"のボタンの部分です。
そのページの中には

* New submissions: そのトピックスに沿った新規論文
* Cross-lists: そのトピックスがメインではないが、サブとして入っている論文 (メインはgr-qcだが天体物理も絡むのでastrophも入っている、などがそうです)
* Replacements: 以前にアップロードされたものの再投稿

### 更新本数

これは私の経験ですが、astrophのnew submissionsでは毎日平均50-70本、その中から個人的に面白いと思ったものを7, 8本選んでいました。
Quantphの場合は更新本数は平均20-40本です。仕事で必要な知識を仕入れるという意味もあり、こちらは日々10本以上を選んでいます。

{% include adsense.html %}

## 論文チェックの仕方

それではみなさんが気になっている、そのチェックの仕方についてご説明しましょう。

### 全体の流れ

1. 論文タイトルを読む
2. タイトルを読んで「面白そう」「自分に必要そう」と感じれば、その下の論文概要(アブストラクト)を読む
3. 論文概要の文章を、躊躇なくDeepLに入力する
4. (Twitterなどに要約を掲載する場合)130字程度でその論文の主要な結果を記述する
5. 重要そうと思われる図もスクリーンショットを撮るなどして掲載する

大まかな流れはこのようになります。
基本的には工程1, 2(あるいは3も含む)で概要を把握したい論文の選別を行い、3, 4, 5で論文の要約を行います。  
ただし、工程2で「タイトルだけではその論文が本当に自分に必要か判断できない」場合は、論文概要を少し読み進めてからそれを判断しても構いません。
「そもそもどれを読んでいいのかわからない」という方は、著名な論文著者が書いたものや、タイトル下に記述されている"〜という論文雑誌に投稿しました"のようなコメントを参考にしても良いでしょう。  
そして工程3のDeepLは、専門用語やカンマ区切りの多い文章などは正しく訳すことができない場合があります。
適宜、日本語と英語を照らし合わせながら読むことを推奨します。
またご自身の英語力に自信があるのであれば、必ずしも使う必要はありません。
自分の力だけで読み進めるのも良いでしょう。  
最後に、工程4では130文字にざっくりと要約をまとめる必要があります。
そのためには文字数を削ることをしなければなりません。
個人的に利用している手法をご紹介します。

* 「〜に成功した。」 -> 「〜に成功。」のように体言止め(?)を利用する
* 同じような意味の日本語を言い換える。例えば「〜とわかった。」 -> 「〜と判明。」のような言い換えをすると、2文字節約。他にも「新しいアルゴリズムを開発した」は「新手法を考案」などでも通じる
* 同じ意味の英語と日本語がある場合、文字数の少ないものを使う。例えばTwitterにおいて、ハミルトニアンは7文字だが、Hamiltonianは5文字(正確には5.5文字？)
* 句読点(、や。)を、半角のカンマ(,)やドット(.)にする
* 内容が豊富すぎる論文の場合は、一番重要な部分を伝える。それ以外は「〜などを示した。」のように省略する

### 例

実際に論文概要の要約を行うとどのようになるか、その例をお示しします。
以下は、Hsiao et al., 2023, "JWST Reveals a Possible z ~ 11 Galaxy Merger in Triply Lensed MACS0647–JD"という論文の概要です。

> MACS0647–JD is a triply lensed z ∼ 11 galaxy originally discovered with the Hubble Space Telescope. 
> The three lensed images are magnified by factors of ∼8, 5, and 2 to AB mag 25.1, 25.6, and 26.6 at 3.5 μm. 
> The brightest is over a magnitude brighter than other galaxies recently discovered at similar redshifts z > 10 with JWST. 
> Here, we report new JWST imaging that clearly resolves MACS0647–JD as having two components that are either merging galaxies or stellar complexes within a single galaxy. 
> The brighter larger component "A" is intrinsically very blue (β ∼ −2.6 ± 0.1), likely due to very recent star formation and no dust, and is spatially extended with an effective radius ∼70 ± 24 pc. 
> The smaller component "B" (r ∼ 20${}_{-5}^{+8}\,$pc) appears redder (β ∼ −2 ± 0.2), likely because it is older (100–200 Myr) with mild dust extinction (AV ∼ 0.1 mag). 
> With an estimated stellar mass ratio of roughly 2:1 and physical projected separation ∼400 pc, we may be witnessing a galaxy merger 430 million years after the Big Bang. 
> We identify galaxies with similar colors in a high-redshift simulation, finding their star formation histories to be dissimilar, which is also suggested by the spectral energy distribution fitting, suggesting they formed further apart. 
> We also identify a candidate companion galaxy "C" ∼3 kpc away, likely destined to merge with A and B. 
> Upcoming JWST Near Infrared Spectrograph observations planned for 2023 January will deliver spectroscopic redshifts and more physical properties for these tiny magnified distant galaxies observed in the early universe. 

この文章の一番大切な部分は、"Here, we report ..."で始まる文章です。
直訳すると、「ここでは、私たちは...という結果を報告します」ですので、この文章にどのような発見がされたのかの情報が詰まっているはずです。
それ以前の部分は研究背景の説明を行なっています。
これまででわかっていることや、これまでの研究の問題点・未解決部分などを示しています。

これらの情報を整理し、上の文章を日本語で私なりに要約したものが、以下の文章です。

> Hubble宇宙望遠鏡で発見されたz~11の3重レンズ銀河 MACS0647–JD が、合体銀河か複数恒星種族の複合体であることがJWST観測から判明。明るい成分と小さい成分は400pcほどしか離れておらず、ビッグバン後4.3億年での銀河合体の可能性を示した。

他にも、細かな観測結果の情報が論文概要には記されています。
しかしそれらは省略し、一番言いたい箇所のみを抽出することで、その論文が行なった研究のインパクトを手短に伝えています。

## 論文チェック、そのあとは...

論文チェックを行ってそのままやりっぱなしでは、後で見返すときに面倒です。
そこで私は[GitHubのissue登録](https://github.com/github-nakasho/quantph/issues)を活用しています。
適当なリポジトリを作成し、そこにissue登録を行います。
Issueの名前を論文タイトル、内容部分に自分で作成した要約や重要そうな図を貼り付けて保存するだけです。  
この方法の良いところは、そのissueがどのようなものなのかをラベルをつけて大別できたり、直接検索をかけることができたりと、GitHubのリッチな操作性を活用できることです。
他の方々と共有できるような状態にしておけば、そのissue上で議論を交わすこともできます。
もちろん、この方法が最善とは限りません。
ご自身にあったツールやさらに便利なものがあれば、どんどん利用しましょう。

## 結言

自分でその分野の論文チェックを行うことは、間違いなくその分野の良い勉強になります。
英語が読めないという心配をお持ちの方は、DeepLを始めとする技術を駆使して、ぜひチャレンジすると良いでしょう。
まずは一つ、最新のものでなくとも、興味があるものから読み始めてみましょう。
読んだ後は何かしらのツールで管理することをお勧めします。
最近では、論文チェックをChatGPTに要約させる、という技術紹介も見受けられます。
自分に合った方法を模索すると良いでしょう。

## 参考文献

[1] [Hsiao et al., 2023, "JWST Reveals a Possible z~11 Galaxy Merger in Triply Lensed MACS0647-JD"](https://iopscience.iop.org/article/10.3847/2041-8213/acc94b)  

{% include adsense.html %}
