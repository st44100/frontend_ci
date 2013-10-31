var Bar = Bar || {};
/**
 * bar.js
 */
(function() {

  Bar = (function () {
    function check() {
      return true; 
    }
    
    return {
      check: check
    }
  })();
})();
