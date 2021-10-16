module result_test;

import asperan.result;
import std.sumtype;
import core.stdc.stdlib : exit;

unittest {
  Result!int result = 5;
  assert(result.match!(
    (int i) => i == 5,
    (Error e) => exit(1),
  ));
}

unittest {
  Result!string result = new Error("Error");
  assert(result.match!(
    (string s) => exit(1),
    (Error e) => e.msg) == "Error");
}
