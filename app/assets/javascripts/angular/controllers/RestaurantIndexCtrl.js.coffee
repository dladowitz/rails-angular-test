# app/assets/javascripts/angular/controllers/RestaurantIndexCtrl.js.coffee

@restauranteur.controller 'RestaurantIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->

# Function Definitions

  # calls the rails json api and loads returned data into restaurants array
  $http.get('./restaurants.json').success((data) ->
    $scope.restaurants = data
  )

  $scope.viewRestaurant = (id)->
    restaurant = $scope.restaurants[id]
    $location.url "/restaurants/#{id}"

  $scope.deleteFromDB = (id) ->
    $http.delete("./restaurants/#{id}.json").success( () ->  console.log "Deleted item from Database" )
    $scope.deleteFromCtrl(id)

  $scope.deleteFromCtrl = (id) ->
    $scope.restaurants = $scope.restaurants.filter( (el) -> el.id != id )

  $scope.say_hello = () ->
    console.log "hello"

# Run on load
  console.log("I'm the Restaurant Index Ctrl")
  $scope.restaurants = []
  $scope.say_hello()
]
