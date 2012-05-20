-module(problem1).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.


%%
%% Fn
%%


%%
%% Tests
%%

-ifdef(TEST).

problem1_test() ->
    DivisibleByThree = lists:seq(0, 999, 3),
    DivisibleByFive = lists:seq(0, 999, 5),
    DivisibleByFifteen = lists:seq(0, 999, 15),
    Result = (lists:sum(DivisibleByThree) +
             lists:sum(DivisibleByFive) -
             lists:sum(DivisibleByFifteen)),
    ?assert(233168 == Result).

-endif.

