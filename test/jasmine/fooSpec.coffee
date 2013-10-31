describe 'Test foo.js', ->

  it 'Check Foo', ->
    res = Foo.check()
    expect(res).toBe(true)

  it 'Check Foo Fail', ->
    res = Foo.check()
    expect(res).toBe(true)

