@restauranteur.controller 'HomeCtrl', ['$scope', ($scope) ->

# Method definitions
  $scope.changePlace = () ->
    console.log "Flying somewhere new: "
    $scope.setLocation()

  $scope.setLocation = () ->
    console.log "Setting Location"

    places = ['Belize', 'Virgin Islands', 'Hawaii', 'Cozumel']
    random_num = Math.floor(Math.random() * 3) + 1
    $scope.location = places[random_num]

# Run on load
  console.log("I'm the HomeCtrl")
  $scope.setLocation()
]
