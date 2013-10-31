/*! frontend_ci - v0.0.0 - 2013-10-26
* Copyright (c) 2013 ; Licensed  */
(function() {
  var App = App || {};
  App.bar = (function () {
    function init() {
      return false; 
    }
    return {
      init: init
    }
  })();
})();

(function () {
  var App = App || {};
  App.foo =(function () {
    function init() {
      return true; 
    }
    return {
      init: init  
    }
  })();
})();
