@restauranteur = angular.module('restauranteur', [])



#This seems to be simliar to $stateProvider
#Maps URL to template and controllers

@restauranteur.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/restaurants', {
      templateUrl: '../templates/restaurants/index.html',
      controller: 'RestaurantIndexCtrl'
  }).

#  This looks like tis used as a catchall route
  otherwise({
    templateUrl: '../templates/home.html',
    controller: 'HomeCtrl'
  })
])
