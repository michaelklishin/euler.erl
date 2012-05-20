-module(problem3).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.

-define(N, 600851475143).


%%
%% Fn
%%

is_factor(A, B) ->
    (A rem B) =:= 0.

greatest_factor(X, Current) when X =:= Current ->
    X;
greatest_factor(X, Current) ->
    case is_factor(X, Current) of
        true ->
            greatest_factor(X div Current, Current);
        false ->
            greatest_factor(X, Current + 1)
    end.


%%
%% Tests
%%

-ifdef(TEST).

problem1_test() ->
    Result = greatest_factor(?N, 2),
    ?assert(6857 == Result).

-endif.
