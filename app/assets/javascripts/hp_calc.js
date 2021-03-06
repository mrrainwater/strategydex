var pokeCalc = angular.module('pokeTools');

pokeCalc.controller('hpController', ['$scope', function($scope){
	$scope.stat_mapping = {
		hp: {iv: 29, val: 1},
		att: {iv: 19, val: 2},
		def: {iv: 18, val: 4},
		spd: {iv: 28, val: 8},
		satt: {iv: 22, val: 16},
		sdef: {iv: 15, val: 32}
	};

	$scope.stat_list = ["hp", "att", "def", "spd", "satt", "sdef"];

	$scope.type_mappings = {
		0: "fighting",
		1: "flying",
		2: "poison",
		3: "ground",
		4: "rock",
		5: "bug",
		6: "ghost",
		7: "steel",
		8: "fire",
		9: "water",
		10: "grass",
		11: "electric",
		12: "psychic",
		13: "ice",
		14: "dragon",
		15: "dark"
	};

	$scope.calcType = function(){
		var secret_values = [0,0,0,0,0,0], sum=0, stat;

		for(var i = 0; i<secret_values.length; i++) {
			stat = $scope.stat_list[i];
			if($scope.stat_mapping[stat].iv%2 !== 0) {
				secret_values[i] = $scope.stat_mapping[stat].val;
			}
			sum += secret_values[i];
		}

		sum = (sum*15)/63;

		$scope.hp_type = $scope.type_mappings[Math.floor(sum)];
	};
  
  $scope.calcType();
}]);