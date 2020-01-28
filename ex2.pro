predicates
can_buy(symbol, symbol)
person(symbol)
food(symbol)
likes(symbol, symbol)
for_sale(symbol)

clauses

person(judy).
food (apple).
food (lemon).
likes(judy, apple).
for_sale(apple).
for_sale(lemon).
person(judy).
food (pizza).
food (lemon).
likes(judy, pizza).
can_buy(X, Y) :-
person(X),
food(Y),
likes(X, Y),
for_sale(Y).

goal

can_buy(judy, pizza).
