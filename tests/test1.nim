import autoderef

type Foo = object
  a: int

proc get(self: var Foo): int =
  inc(self.a)
  return self.a

var f: ref Foo = new Foo
echo f.get()
echo f
