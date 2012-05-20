-module(problem2).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.

-define(UPPER_BOUND, 4000000).


%%
%% Fn
%%

fib_seq(A, B) ->
    fib_seq(A, B, []).
fib_seq(A, B, Acc) when B =< ?UPPER_BOUND ->
    fib_seq(B, A + B, [A|Acc]);
fib_seq(A, B, Acc) when B > ?UPPER_BOUND ->
    [A|Acc].


is_even(X) ->
    (X rem 2) =:= 0.


%%
%% Tests
%%

-ifdef(TEST).

problem1_test() ->
    List = fib_seq(1, 2),
    Even = lists:filter(fun is_even/1, List),
    Result = lists:sum(Even),
    ?assert(4613732 == Result).

-endif.

