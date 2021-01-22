# sunlight-x: Intelligent Syntax Highlighting, Modernized

[![Build Status](https://travis-ci.org/lwchkg/sunlight-x.svg?branch=master)](https://travis-ci.org/lwchkg/sunlight-x)
[![Build status](https://ci.appveyor.com/api/projects/status/ilr6lbjngs8x5abg?svg=true)](https://ci.appveyor.com/project/lwchkg/sunlight-x)

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/d34cdc3875a94bafb62c822ba120b4cd)](https://www.codacy.com/app/lwchkg/sunlight-x?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=lwchkg/sunlight-x&amp;utm_campaign=Badge_Grade)
[![Codacy Badge](https://api.codacy.com/project/badge/Coverage/d34cdc3875a94bafb62c822ba120b4cd)](https://www.codacy.com/app/lwchkg/sunlight-x?utm_source=github.com&utm_medium=referral&utm_content=lwchkg/sunlight-x&utm_campaign=Badge_Coverage)

Sunlight highlighter modernized for node.js.
[Here](https://raw.githack.com/lwchkg/sunlight-x/master/test/output/integration-expected.html) is the demo of sunlight-x.


# Features

- Relatively accurate highlighting for some languages.
  This is mainly done with a context-aware highlighting facility (at the expense of more complex language modules).
  In particular, "named identifiers" are supported in addition to normal identifiers.
- Use multiple themes at the same time (TODO, but almost finished).
- Line numbering.
- Line highlighting.


# Usage

## Installation

Type `yarn add sunlight-x` or `npm install --save sunlight-x` in the console.


## Using sunlight-x with default settings

```javascript
var sunlight = require("sunlight-x");
var highlighter = new sunlight.Highlighter();

var code = "console.log('Hello world!');";
var language = "javascript";
highlighter.highlightCode(code, language);
```


## Passing options to the highlighter

Options available to the highlighter is shown below with their defaults.
You can pass any or all of these options to `new sunlight.Highlighter()`.

```javascript
var sunlight = require("sunlight-x");

var options = {
  // Main highlighter
  theme: "gitbook", // The theme.
  tabWidth: 4, // Width of a tab character.
  classPrefix: "sunlight-", // Style prefix. Custom stylesheet needed.
  showWhitespace: false, // Whether to show invisible tabs and whitespaces.
  maxHeight: false, // Max height of code container. False = no limit.

  // Line number plugin (loaded automatically)
  lineNumbers: false, // Whether to show line numbers.
  lineNumberStart: 1, // The starting number line if line numbers are shown.
  lineHighlight: [] // List of line numbers to be highlighted.
};

var highlighter = new sunlight.Highlighter(options);

var code = "console.log('Hello world!');";
var language = "javascript";
highlighter.highlightCode(code, language);
```

Caution: Do NOT modify the content of `Highlighter.options`.
`Highlighter.options` be made immutable in the future.
To change the options, make a different instance of `Highlighter` instead.


## API

### Highlighter class

```javascript
var sunlight = require("sunlight-x");
var highlighter = new sunlight.Highlighter();

/**
 * Highlights the given code and returns the HTML as a string.
 * @param {string} code
 * @param {string} languageId
 * @returns {Element}
 */
var html = highlighter.highlightCode(code, languageId);

/**
 * Highlights the given code and returns the HTML Element.
 * @param {string} code
 * @param {string} languageId
 * @returns {Element}
 */
var element = highlighter.highlightCodeAsElement(code, languageId);
```

### Extending sunlight-x

Now advanced usages of the highlighter is shown below, which is used to add an language to the highlighter.
Read the source or [the old sunlight doc](http://sunlightjs.com/docs.html#register-language) for more details.

```javascript
var sunlight = require("sunlight-x");

// Add a language to the highlighter. This is GLOBAL.
var language = ... // the language definition.
sunlight.registerLanguage(language);

// See if the language is registered. This is GLOBAL.
var isRegistered = sunlight.isRegistered(language)
```


# Difference from original Sunlight

- Flow annotation.
- Continuous integration. Old Sunlight has tests, but they are invoked manually.
- API is being refactored. The new API is inclined to usage in node.js.
- Code are put in modules and classes. Some bugs are fixed.
- Modified CSS (themes not supported in HTML output yet).


# How to contribute

- Start an issue, and write down your ideas there.
- Give ideas on the API.
- Add tests, contribute test snippets.
- Add an language. Remember to add tests with it.
- Points out where an existing language does not work well. (Start an issue for this.)


# TODO

- Add doucmentation.
- Add the "doclinks" plugin.
- Reorganize API:
  - Add API for getting the path and/or content of CSS files (and LESS files?).
- Add more tests.
- Revamp switchTo/switchBack mechanism. Currently it is broken when multiple languages are loaded.
- Webpack for browsers.
- Clarify owners of code snippets (some unknown code are used now).
  - Others are listed in the code snippets folder.
- Refactors and bug fixes.
- Add support of template interpolations in Javascript, PHP and other languages.
- Modernize the languages being highlighted.
- Rewrite number parsers.


# Copyright

Copyright 2017 Leung Wing-chung. All rights reserved.
Use of the software by a Apache License Version 2.0, that can be found in the LICENSE file.


# Credits

This software is forked from [Sunlight](http://sunlightjs.com/), authored by Tommy Montgomery.
The original Sunlight is licensed by the [WTFPL](http://www.wtfpl.net/about/) (warning: foul language inside).
