
# Webpack

When targeting the browser, several code bundlers (like Webpack and Browserify) will pick up modules you might not want.

Here's a list of modules that alasql requires
* fs
* cptable
* jszip
* xlsx
* xls
* cpexcel
* path
* es6-promise

Use the built-in IgnorePlugin for webpack

```js
var IgnorePlugin =  require("webpack").IgnorePlugin;

module.exports = {
  ...
  // Will ignore the modules fs, path, xlsx, xls
  plugins:[new IgnorePlugin(/(^fs$|xlsx|xls|^path$)/)]
};
```










----


<a href="http://alasql.org"><img src="https://cloud.githubusercontent.com/assets/1063454/14003947/d6e7b7be-f156-11e5-8a25-71c785031a5f.png" align="right" alt="AlaSQL logo" width="82" height="82"/></a>

