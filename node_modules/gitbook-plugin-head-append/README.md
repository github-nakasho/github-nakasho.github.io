# gitbook-plugin-head-append

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Append code to the `<head>` of the page.

I started from the [gitbook-plugin-canonical-link](https://github.com/azu/gitbook-plugin-canonical-link) plugin and I adapted it for my own needs (adding the whole [realfavicongenerator pacjkage](https://realfavicongenerator.net/) easily).


## Installation

    npm install gitbook-plugin-head-append

## Usage

Add to `book.json`

```json
{
  "plugins": [
    "head-append"
  ],
  "head-append": {
      "code": [
        "<link rel=\"apple-touch-icon\" sizes=\"180x180\" href=\"/assets/favicons/apple-touch-icon.png\">",
        "<link rel=\"icon\" type=\"image/png\" sizes=\"32x32\" href=\"/assets/favicons/favicon-32x32.png\">",
        "<link rel=\"icon\" type=\"image/png\" sizes=\"16x16\" href=\"/assets/favicons/favicon-16x16.png\">",
        "<link rel=\"manifest\" href=\"/assets/favicons/site.webmanifest\">",
        "<link rel=\"mask-icon\" href=\"/assets/favicons/safari-pinned-tab.svg\" color=\"#50ade5\">",
        "<link rel=\"shortcut icon\" href=\"/assets/favicons/favicon.ico\">",
        "<meta name=\"msapplication-TileColor\" content=\"#ffffff\">",
        "<meta name=\"msapplication-config\" content=\"/assets/favicons/browserconfig.xml\">",
        "<meta name=\"theme-color\" content=\"#50ade5\">"
      ]
    }
  }
}
```

If you want to add a script you must replace every `script` occurrence with `SCRIPTTAG`, the plugin will restore it.

```json
"head-append": {
  "code": [
    "<!-- Global site tag (gtag.js) - Google Analytics -->",
    "<SCRIPTTAG async src=\"https://www.googletagmanager.com/gtag/js?id=UA-142637808-2\"></SCRIPTTAG>",
    "<SCRIPTTAG>",
    "  window.dataLayer = window.dataLayer || [];",
    "  function gtag(){dataLayer.push(arguments);}",
    "  gtag('js', new Date());",
    "",
    "  gtag('config', 'XXX', { 'anonymize_ip': true });",
    "</SCRIPTTAG>"
  ]
}
```

That's necessary to avoid the `Uncaught SyntaxError: Invalid or unexpected token` JavaScript error.

You can see it in action in the [reactjsday-2019-testing-course book](https://noriste.github.io/reactjsday-2019-testing-course/).
