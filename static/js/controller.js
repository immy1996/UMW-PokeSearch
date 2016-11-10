var poke = angular.module('pokesearch', []);

poke.controller('searchController', function($scope){
   var socket = io.connect('https://' + document.domain + ':' 
   + location.port + '/pokemonsearch') 
    
    
    $scope.results = [{"name": "Clara", "weight": "50.0", "height": "48.1", "male" : "n", "female": "y"}];
    $scope.termToSearch = '';
    
    socket.on('results', function(res){
        console.log(res);
        console.log($scope.results);
        $scope.results.push(res);
        $scope.$apply();
    });
    
    $scope.send = function send(){
        console.log('test  ', $scope.termToSearch);
        socket.emit('send', $scope.termToSearch);
        $scope.termToSearch = '';
    };
    
    $scope.setSearchTerm = function setSearchTerm(){
      socket.emit('identify', $scope.termToSearch);  
        
    };
    
    socket.on('connect', function(){
       console.log('connected'); 
        
    });
});