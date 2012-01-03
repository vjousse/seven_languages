-module(tictactoe).
-export([launch/0]).

win(o,o,o) -> o;
win(x,x,x) -> x;
win(e,_,_) -> no_winner;
win(_,e,_) -> no_winner;
win(_,_,e) -> no_winner;
win(_,_,_) -> cat.

play(L) -> 
    [S11, S12, S13,
     S21, S22, S23,
     S31, S32, S33] = L,

    WinCases = [
        {S11, S12, S13}, 
        {S21, S22, S23},
        {S31, S32, S33},
        {S11, S21, S31},
        {S12, S22, S32},
        {S13, S23, S33},
        {S11, S22, S33},
        {S13, S22, S31}
    ],

    result([win(S1, S2, S3) || {S1, S2, S3} <- WinCases], false).

result([o|_], _)         -> o;
result([x|_], _)         -> x;
result([no_winner|T], _) -> result(T, true);
result([], NoWinner)     -> no_winner(NoWinner);
result([_|T], NoWinner)  -> result(T, NoWinner).

no_winner(true)  -> no_winner;
no_winner(false) -> cat.

launch() -> Game = 
    [o, x, o,
     x, o, x,
     x, o, o ],
    play(Game).
