var jsondiffpatch = require('jsondiffpatch'),
jsonpatch = require('fast-json-patch'),
jiff = require('jiff'),
fs = require('fs'),
changeSet = require('changeset'),
jdr = require('json-diff-rfc6902'),
users = {};
var test = require('unit.js');
var assert = test.assert;
var size, probability, algorithm;
var comparedData, copyTime;
var diffStartTime, diffEndTime;
var times = 1000;
var rate, deltaSize;

users.name = "Transmit data";
users.data = [];

exports.findUser = function(req, res){
  console.log(req.query);

  var root = "./dataset/data/real/";

  algorithm = req.query.algorithm;

  //according to the same size and same probability, different algorithms, the old data and new data are the same.
  if(size != req.query.size ) {

    size = req.query.size;
    switch (size) {
      case "real":
      users.data[1] = require(root + "0" + "/old.json");    //1:modified data
      users.data[0] = JSON.parse(JSON.stringify(users.data[1])); //0:origin data
      break;

    }
  }

  //according to the same size and different probalility, same altorithm, the old data is the same.
  if (probability != req.query.probability) {

    probability = req.query.probability;

    users.data[1] = require(root + probability + "/new.json");

  }

  var delta;
  diffStartTime = Date.now();
  switch (algorithm) {
    case "0":
    for(var i = 0; i<times;i++) {
      delta = users.data[1];
    }
    break;
    case "1":
    for(var i = 0; i<times;i++) {
      delta = jsondiffpatch.diff(users.data[0], users.data[1]);
    }
    break;
    case "2":
    for(var i = 0; i<times;i++) {
      delta = jsonpatch.compare(users.data[0], users.data[1]);
    }
    break;
    case "3":
    for(var i = 0; i<times;i++) {
      delta = jiff.diff(users.data[0], users.data[1], {invertible: false});
    }
    break;
    case "4":
    for(var i = 0; i<times;i++) {
      delta = jdr.diff(users.data[0], users.data[1]);
    }
    break;
    case "5":
    for(var i = 0; i<times;i++) {
      delta = changeset(users.data[0], users.data[1]);
    }
    break;
  }

  diffEndTime = Date.now();

  users.data[2] = delta;


  if (delta != undefined) {
    deltaSize = JSON.stringify(delta).length;
  } else {
    deltaSize = 0;
  }

  if (delta == undefined || algorithm == "0"){
    rate = 0;
  } else {
    rate = (JSON.stringify(delta).length)/(JSON.stringify(users.data[0]).length);
  }

  console.log("old data: "+JSON.stringify(users.data[0]).length);
  console.log("new data: "+JSON.stringify(users.data[1]).length);
  console.log("PATCHSIZE: "+JSON.stringify(deltaSize));
  // fs.writeFile('./old-'+size+'-P'+probability+'-A'+algorithm+'.json', JSON.stringify(users[0], null, 1), function(err){
  //     if(err) throw err;
  // });
  // fs.writeFile('./new-'+size+'-P'+probability+'-A'+algorithm+'.json', JSON.stringify(users[1], null, 1), function(err){
  //     if(err) throw err;
  // });
  res.send(users);
}

exports.updateUser = function(req, res){
  console.log("----------------------------");

  var receiveTime = Date.now();

  var applyStartTime = req.body.applyStartTime;
  var applyEndTime = req.body.applyEndTime;
  var sendTime = req.body.sendTime;
  var copyTime = req.body.copyTime;

  console.log("Diff time: "+ (diffEndTime - diffStartTime));
  console.log("Apply time: "+ (applyEndTime - applyStartTime));

  writeCSV();
  res.send("ok");

  function writeCSV () {

    var totalTime = (diffEndTime - diffStartTime) + (receiveTime - sendTime) + (applyEndTime - applyStartTime);

    if(algorithm == "0") {
      var result = '0,' +deltaSize +',0,'+rate +','+JSON.stringify(users.data[0]).length+'\n';
    } else {
      var result = (diffEndTime - diffStartTime)+',' + deltaSize +',' +(applyEndTime - applyStartTime - copyTime)+','+rate
      +','+JSON.stringify(users.data[0]).length+ '\n';
    }

    fs.writeFile('./result/StackexAPI' +'-P'+probability+'-A'+algorithm+'.csv', result, {flag: 'a'}, function(err){
      if(err) throw err;
      console.log("success");
    });
  }

}
