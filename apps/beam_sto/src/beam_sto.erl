-module(beam_sto).

-export([some_function/0]).

-spec some_function() -> module().
some_function() ->
	?MODULE.
