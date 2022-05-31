# Auto-deref

This implements a syntax sugar for the Nim programming language. With this module imported, `ptr` and `ref` variables will be dereferenced automatically. What it does is very similar to the effect of `{.experimental: "implicitDeref".}`.

## Example

```nim
import autoderef

type Foo = object
  a: int

proc get(self: var Foo): int =
  inc(self.a)
  return self.a

var f: ref Foo = new Foo
echo f.get()
```

## Note

* Please ensure that the variable to be auto-dereferenced does not point to `nil`.
