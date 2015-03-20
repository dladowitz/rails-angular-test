# app/assets/javascripts/angular/controllers/RestaurantIndexCtrl.js.coffee

@restauranteur.controller 'RestaurantIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  console.log("I'm the Restaurant Index Ctrl")
  $scope.restaurants = []

  # calls the rails json api and loads returned data into restaurants array
  $http.get('./restaurants.json').success((data) ->
    $scope.restaurants = data
  )

  $scope.viewRestaurant = (id)->
    restaurant = $scope.restaurants[id]
    alert "Welcome to " + restaurant.name + ": " + restaurant.id

  $scope.removeLastRestaurant = () ->
    $scope.restaurants.pop()
    console.log "Removing Last Restaurant"
    console.log $scope.restaurants.length + " Restaurants now in controller"

#   Could use the json api here to remove restaurant from database
#   Seems like you can make a delete call with json instead of html
#   DELETE /restaurants/1.json
]
