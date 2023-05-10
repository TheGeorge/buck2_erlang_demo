-module(fail_SUITE).
-export([all/0, failing_test/1]).

-include_lib("stdlib/include/assert.hrl").

all() ->
    [failing_test].

failing_test(_Config) ->
    ?assertEqual({ok, 42}, application:get_env(beam_sto, some_variable)).
