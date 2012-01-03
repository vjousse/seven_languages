-module(count).
-import(string, [tokens/2]).
-export([count/1]).
-export([do_count/2]).
-export([count_to/1]).
-export([do_count_to/2]).

count(L) -> do_count(tokens(L, " "), 0).

do_count([H|T], Sum) -> do_count(T, Sum+1);
do_count([], Sum)    -> Sum.

count_to(Nb) -> do_count_to(Nb, 0).

do_count_to(0, Sum)  -> Sum;
do_count_to(Nb, Sum) -> do_count_to(Nb-1, Sum+1).
