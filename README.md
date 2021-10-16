# Result

Result is a D library which provides the type `Result`, which wraps the return value of a function or an `Error`.

The type `Result` mimics `Either` from Scala or `Result` from Rust.

`Result(T)` is just an alias for `SumType!(T, Error)`, so it can be used with any function from `std.sumtype`.

## Usage example
```
Result!int result = 5;
  result.match!(
    (int i) => i == 5,
    (Error e) => exit(1),
  ));
```
