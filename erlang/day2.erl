-module(day2).
-export([value/2, value2/2, shop/1]).

value(L, Key) -> [Message || {Lang, Message} <- L, Lang == Key].

value2([], Key) -> "unknown language";
value2(L, Key) -> 
    [Head | _] = [Message || {Lang, Message} <- L, Lang == Key], Head.

shop(L) -> [{Item, Price * Quantity} || {Item, Price, Quantity} <- L].
