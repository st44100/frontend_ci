  var Foo = Foo || {};
/**
 * foo.js
 */
(function () {

  Foo =(function () {
    function check() {
      return true; 
    }
    
    return {
      check: check  
    }
  })();

})();
