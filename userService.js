angular.module('userService', [])
	.factory('User',function($resource){
		return $resource('/benchmark', null, {
			'update': { method:'PUT' },
			'query': { method: 'GET', isArray: false}
		});
	});
