-module(pass_SUITE).
-export([all/0, passing_test/1]).

-include_lib("stdlib/include/assert.hrl").

all() ->
    [passing_test].

passing_test(_Config) ->
    ?assertEqual(ok, application:load(beam_sto)),
    ?assertEqual({ok, 42}, application:get_env(beam_sto, some_variable)).
