# postcss-random-color-function

[PostCSS](https://github.com/postcss/postcss) plugin that function return random color hex
## Install

```
npm i -D postcss-random-color-function
npm i -D postcss # if still
```

## Usage

Use to `random()` function in declaration value.
Every time compiled, would get new color. (e.g. input.css)
```css
body {
  color: random();
}

```

Use postcss-random-color-function plugin in PostCSS.
(e.g.)
```javascript
var fs = require('fs');
var postcss = require('postcss');
var randomColorFunc = require('postcss-random-color-function');
var css = fs.readFileSync('input.css', 'utf8');

var output = postcss()
  .use(randomColorFunc())
  .process(css)
  .css;

console.log(output);
/* output:
 *
 *   body {
 *     color: #a4f3bc;
 *
 */
```
