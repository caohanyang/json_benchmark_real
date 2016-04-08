var jpn = require('./JSON-Diff');
var fs = require('fs');
var fjp = require('fast-json-patch');
var jiff = require('jiff');
var jsondiffpatch = require('jsondiffpatch');

var n_pathlogic = 20;

for (var i = 1; i <= n_pathlogic; i++) {
  console.log("Processing test case " + i);

  var root = "./tests/" + i + "/";

  var f_old = require(root + "old.json");
  var app_old = JSON.parse(JSON.stringify(f_old));
  var f_new = require(root + "new.json");

  // var exp_patch = require(root + "expected.json");
  console.time("jpn-diff");
  var jpn_patch = jpn.diff(f_old, f_new);
  console.timeEnd("jpn-diff");

  console.time("jiff-diff");
  var jiff_patch = jiff.diff(f_old, f_new);
  console.timeEnd("jiff-diff");
  console.time("fjp-diff");
  var fjp_patch = fjp.compare(f_old, f_new);
  console.timeEnd("fjp-diff");
  console.time("jdp-diff");
  var jdp_patch = jsondiffpatch.diff(f_old, f_new);
  console.timeEnd("jdp-diff");

  // Use fjp to apply the patch
  fjp.apply(f_old, jpn_patch);

  jpn.apply(app_old, jpn_patch);

  fs.writeFile(root + "jpn_patch.json", JSON.stringify(jpn_patch, null, 2));
  fs.writeFile(root + "jdp_patch.json", JSON.stringify(jdp_patch, null, 2));
  fs.writeFile(root + "gen_new.json", JSON.stringify(f_old, null, 1));
  fs.writeFile(root + "app_new.json", JSON.stringify(app_old, null, 1));

}
