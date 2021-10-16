module asperan.result;

import std.sumtype : SumType;

alias Result(T) = SumType!(T, Error);

