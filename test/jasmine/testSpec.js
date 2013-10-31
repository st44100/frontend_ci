(function() {
  describe('Test Bar.js', function() {
    return it('Check Bar', function() {
      var res;
      res = Bar.check();
      return expect(res).toBe(true);
    });
  });

}).call(this);

(function() {
  describe('Test foo.js', function() {
    it('Check Foo', function() {
      var res;
      res = Foo.check();
      return expect(res).toBe(true);
    });
    return it('Check Foo Fail', function() {
      var res;
      res = Foo.check();
      return expect(res).toBe(true);
    });
  });

}).call(this);
