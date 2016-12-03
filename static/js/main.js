(function(document) {
  var _charts = [].slice.call(document.querySelectorAll('.charts__chart'));
  _charts.map(function(charts, index) {
    setTimeout(function() {
    	charts.style.width = charts.dataset.percent;
    }, 0);
    
  });
})(document)