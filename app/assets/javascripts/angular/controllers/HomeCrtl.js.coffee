@restauranteur.controller 'HomeCtrl', ['$scope', ($scope) ->
  console.log("I'm the HomeCtrl")

#  Not sure how to call setLocation to run when controller loads. In JS we'd use this.setLocation
  $scope.setLocation

  places = ['Belize', 'Virgin Islands', 'Hawaii', 'Cozumel']
  random_num = Math.floor(Math.random() * 3) + 1
  $scope.location = places[random_num]



  $scope.changePlace = () ->
    console.log "Flying somewhere new: "
    random_num = Math.floor(Math.random() * 3) + 1
    $scope.location = places[random_num]

  $scope.setLocation = () ->
    random_num = Math.floor(Math.random() * 3) + 1
    $scope.location = places[random_num]
]
