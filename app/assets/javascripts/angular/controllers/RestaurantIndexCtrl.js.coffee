# app/assets/javascripts/angular/controllers/RestaurantIndexCtrl.js.coffee

@restauranteur.controller 'RestaurantIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  console.log("I'm the Restaurant Index Ctrl")
  $scope.restaurants = []

#  used to create a json api
  $http.get('./restaurants.json').success((data) ->
    $scope.restaurants = data
  )

  $scope.viewRestaurant = (id)->
    restaurant = $scope.restaurants[id]
    alert "Welcome to " + restaurant.name + ": " + restaurant.id
]
