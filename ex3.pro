predicates

person (symbol)
city (symbol)
from (symbol, symbol)
fromcapital (symbol)

clauses

person (a).
person (b).

city (washingtondc).
city (sanjose).
from (a, washingtondc).
from (b, sanjose).
fromcapital (X):- person(X), from(X, washingtondc).

goal

fromcapital (a).
