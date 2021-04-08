'use strict';

const fse = require('fs-extra');
const mjAPI = require('mathjax-node/lib/main.js');
const path = require('path');

const pluginName = 'mathjax-commonhtml';

// Default fonts: .font-family-0: Georgia, .font-family-1, ebook: Arial
const defaultScalingCSS = '.font-family-0 .mjx-chtml {font-size: 111%}\n' +
                          '.font-family-1 .mjx-chtml {font-size: 120%}\n' +
                          '.page .section .mjx-chtml {font-size: 120%}\n';

let cssNotArrived = true;

mjAPI.config({
  MathJax: {},
  fontURL: '.',  // asset is placed at the same directory as the CSS file
});
mjAPI.start();

/**
 * Get root path of MathJax.
 * @returns {String}
 */
function GetMathJaxPath() {
  const mathjax = 'mathjax';
  let mathJaxPath = require.resolve(mathjax);
  while (!mathJaxPath.endsWith(
             path.sep + 'node_modules' + path.sep + mathjax)) {
    const parentPath = path.dirname(mathJaxPath);
    if (mathJaxPath === parentPath)
      throw new Error('Unable to locate MathJax');
    mathJaxPath = parentPath;
  }
  return mathJaxPath;
}

/**
 * Write assets
 * @param {Object} output output object by GitBook.
 * @param {Object} log log object by GitBook.
 * @param {string} css CSS returned by MathJax
 * @param {boolean} addDefaultScaling Whether to add CSS for default scaling.
 */
function WriteAssets(output, log, css, addDefaultScaling) {
  const pluginPath = path.join('gitbook', `gitbook-plugin-${pluginName}`);
  log.debug.ln('write MathJax CSS');
  output.writeFile(path.join(pluginPath, 'mathjax.css'),
                   addDefaultScaling ? css + defaultScalingCSS : css);

  const texInputPath = path.join(GetMathJaxPath(), 'fonts', 'HTML-CSS', 'TeX');
  const texOutputPath = path.join(output.root(), pluginPath, 'TeX');
  log.debug.ln('copy font files from MathJax');
  fse.ensureDirSync(texOutputPath);
  fse.copySync(texInputPath, texOutputPath, {preserveTimestamps: true});
}

/**
 * Process math blocks in GitBook
 * @param {Object} block
 * @returns {Promise} A promise to the result.
 */
function ProcessBlock(block) {
  const tex = block.body;
  const isInline = !(tex[0] === '\n');

  return new Promise((resolve, reject) => {
    mjAPI.typeset(
      {
        math: tex,
        format: isInline ? 'inline-TeX' : 'TeX',
        html: true,
        css: cssNotArrived,
      },
      (data) => {
        if (!data.errors) {
          if (cssNotArrived && data.css) {
            WriteAssets(this.output, this.log, data.css,
                        this.options.pluginsConfig[pluginName].defaultScaling);
            cssNotArrived = false;
          }
          resolve(data.html);
        } else {
          reject(new Error(data.errors.join('\n')));
        }
      }
    );
  });
}

module.exports = {
  book: {css: ['mathjax.css']},
  ebook: {css: ['mathjax.css']},
  blocks: {
    math: {
      shortcuts: {
        parsers: ['markdown', 'asciidoc'],
        start: '$$',
        end: '$$',
      },
      process: ProcessBlock,
    },
  },
};
