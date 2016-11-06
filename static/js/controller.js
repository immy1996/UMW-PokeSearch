var poke = angular.module('pokesearch', []);

poke.controller('searchController', function($scope){
   var socket = io.connect('https://' + document.domain + ':' 
   + location.port + '/pokemonsearch') 
    
    
    $scope.results = [];
    $scope.name = '';
    $scope.termToSearch = '';
    
    socket.on('results', function(res){
        console.log(res);
        $scope.results.push(res);
        $scope.$apply();
        var elem = document.getElementById('searchPane');
        elem.scrollTop = elem.scrollHeight;
    });
    
    $scope.send = function send(){
        console.log('test  ', $scope.termToSearch);
        socket.emit('send', $scope.termToSearch);
        $scope.termToSearch = '';
    };
    
    $scope.setName = function setName(){
      socket.emit('identify', $scope.name);  
        
    };
    
    socket.on('connect', function(){
       console.log('connected'); 
        
    });
});