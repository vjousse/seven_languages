-module(error).
-export([match_error/1]).
-import(string, [concat/2]).

match_error({error, Message}) -> concat("error: ", Message);
match_error({success, Message}) -> concat("success: ", Message).
