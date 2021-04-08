# MathJax CommonHTML server-side rendering for GitBook
This plugin uses MathJax in the server side using CommonHTML output.


## Installation

Add the plugin into `book.json` or `book.js`, e.g.
```
{
    plugins: ["mathjax-commonhtml"]
}
```


## Configuration

This plugin scales the TeX font in MathJax automatically in the default set up.
**If you do not modify GitBook font settings (not something that a beginner can do), then you do not need to configure this plugin.**

However, if you are using custom fonts in your book, or disables the [fontsettings plugin](https://plugins.gitbook.com/plugin/fontsettings), then default setting will not work.

In this case, you can disable automatic scaling by adding the following to `book.json` or `book.js`.
```
{
    "pluginsConfig": {
        "mathjax-commonhtml": {
            "defaultScaling": false
        }
    }
}
```

You can manually scale MathJax TeX fonts by adding the following CSS:
```
body .mjx-chtml, .page .section .mjx-chtml { font-size: 116%; }
```
`body .mjx-chtml` is used for web site, and `.page .section .mjx-chtml` is used for ebook.

You should set the font size to match the x-height of your current font.
To know the percentage you need, check [this CodePen](http://codepen.io/lwchkg/pen/mOaNdx)


## Usage

The usage of this plugin is the same as the official MathJax and KaTeX plugins.

The following are the instructions copied from KaTeX plugin:
```
Inline math: $$\int_{-\infty}^\infty g(x) dx$$


Block math:

$$
\int_{-\infty}^\infty g(x) dx
$$

Or using the templating syntax:

{% math %}\int_{-\infty}^\infty g(x) dx{% endblock %}
```

## Why use this plugin instead of the official plugins?

This plugin has the TeX support of MathJax and the speed of KaTeX.

**Comparing with MathJax**: mathjax-commonhtml generates the math server-side, while the official MathJax plugin generates the math client-side.
It means that the web pages load much faster with this plugin.

**Comparing with KaTeX**: KaTeX supports only a limited set of TeX syntax, and spacing of equation environments are suboptimal.
This plugin, which is based on MathJax, does not have this limitation.


## Known problems
Currently gitbook PDF and ebook generation does not work.
The problem appears to be Calibre (the ebook generator) intercepting MathJax generated tags.
If you are interested in creating PDF files for printing, I recommend my sister project “gitbook-pdfgen” though, which works nice with this plugin.


## Report bugs / Contributions
- To report issues and request features, post an issue in the
  [GitHub repository](https://github.com/lwchkg/gitbook-plugin-mathjax-commonhtml)
