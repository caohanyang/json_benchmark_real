angular.module('userCtrl', [])
.controller('userController', function($scope, User){
  $scope.sendPara = function(){

    var parameter = {
      "size": $scope.size,
      "probability": $scope.probability,
      "loopTimes": $scope.loopTimes,
      "algorithm": $scope.algorithm
    };

    var clear = function(){
      $scope.size=null;
      $scope.probability=null;
      $scope.loopTimes=null;
      $scope.algorithm=null;
    };

    //clear the mark
    $scope.mark=null;

    var rate;

    $scope.users = User.query(parameter, function() {

      var times = 1000;
      var oldData = $scope.users.data[0];
      var newData = $scope.users.data[1];
      var delta = $scope.users.data[2];
      console.log(delta);
      var comparedData;
      console.log(JSON.stringify(oldData).length);
      console.log(JSON.stringify(newData).length);
      console.log(JSON.stringify(delta).length);
      console.log($scope.algorithm);

      var applyStartTime = Date.now();

      switch ($scope.algorithm) {
        case "0":
        comparedData = JSON.parse(JSON.stringify(newData));
        break;

        case "1":
        for (var i=0; i<times;i++) {
          comparedData = JSON.parse(JSON.stringify(oldData));
          jsondiffpatch.patch(comparedData, delta);
        }
        console.log("1: "+JSON.stringify(comparedData).length);
        break;

        case "2":
        for (var i=0; i<times;i++) {
          comparedData = JSON.parse(JSON.stringify(oldData));
          jsonpatch.apply(comparedData, delta);
        }
        console.log("2: " + JSON.stringify(comparedData).length);
        break;

        case "3":
        for (var i=0; i<times;i++) {
          comparedData = JSON.parse(JSON.stringify(oldData));
          comparedData = jiff.patch(delta, comparedData, {invertible: false});
        }
        console.log("3: " + JSON.stringify(comparedData).length);
        break;

        case "4":
        for (var i=0; i<times;i++) {
          comparedData = JSON.parse(JSON.stringify(oldData));
          jdr.apply(comparedData, delta);
        }
        console.log("4: " + JSON.stringify(comparedData).length);
        break;

        case "5":
        // var changeset = require('changeset');
        // for (var i=0; i<times;i++) {
        //   comparedData = JSON.parse(JSON.stringify(oldData));
        //   changeSet.apply(delta, comparedData);
        // }
        break;
      }
      var applyEndTime = Date.now();

      if(delta == undefined) {
        //if there is no modification
        console.log("patch = 0");
      } else {
        console.log("patch = " + JSON.stringify(delta).length);
      }

      console.log("old data = " + JSON.stringify(oldData).length);
      // console.log(JSON.stringify($scope.users[0]));
      console.log("new data = " + JSON.stringify(newData).length);
      // console.log(JSON.stringify($scope.users[1]));
      // console.log("comparedData = " + JSON.stringify(comparedData).length);
      // console.log(comparedData);

      // TEST
      unitjs.assert.equal(comparedData.length, newData.length);

      var copyStartTime = Date.now();
      for(var i =0;i<times;i++) {
        comparedData = JSON.parse(JSON.stringify(oldData));
      }
      var copyEndTime = Date.now();
      var copyTime = copyEndTime - copyStartTime;

      var sendTime = Date.now();
      var transmit = {
        "applyStartTime": applyStartTime,
        "applyEndTime": applyEndTime,
        "sendTime": sendTime,
        "copyTime": copyTime,
      };

      User.update(transmit, function(res) {
        console.log(res);
        $scope.mark = res[0]+res[1];
        // clear the data
        clear();
      });
    });
  };
});
