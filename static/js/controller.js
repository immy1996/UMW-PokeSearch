var poke = angular.module('pokesearch', []);

poke.controller('searchController', function($scope){
   var socket = io.connect('https://' + document.domain + ':' 
   + location.port + '/pokemonsearch') 
    
    
    $scope.results = [{"name": "Clara", "weight": "50.0", "height": "48.1", "male" : "n", "female": "y"}];
    $scope.termToSearch = '';
    $scope.messages = []; 
                
            
    socket.on('message', function(msg) {
        $scope.messages.push(msg);
        $scope.$apply();
        var elem = document.getElementById('msgpane');
        elem.scrollTop = elem.scrollHeight;
    });
            
    $scope.sendmsg = function sendmsg() {
        console.log('Sending message: ', $scope.text)
        socket.emit('message', $scope.text)
        $scope.text = '';
                
    }
    
    socket.on('results', function(res){
        console.log(res);
        console.log($scope.results);
        $scope.results.push(res);
        $scope.$apply();
    });
    
    socket.on('updatemessage', function(msgs){
        console.log(msgs);
        $scope.messages.push(res);
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