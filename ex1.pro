predicates

parent(symbol,symbol)
female(symbol)
male(symbol)
ancestor(symbol,symbol)
child(symbol,symbol)
brother(symbol,symbol)
sister(symbol,symbol)
grandfather(symbol,symbol)
grandmother (symbol,symbol)

clauses

parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
parent(a,c).
parent(c,b).
parent(d,a).
parent(d,b).
female(pam).
female(liz).
female(ann).
female(pat).
male(a).
male(tom).
male(bob).
male(jim).
child(Y,X):-
parent(X,Y).
ancestor(X,Z):-
parent(X,Z).
ancestor(X,Z):-
parent(X,Y),ancestor(Y,Z).
brother(X, Y):- parent (X,Z),parent (Y,Z),male (Y).
sister(X, Y):- parent (X,Z),parent (Y,Z),female (Y).
grandfather(X, Y):- parent (Z,X),parent (Y,Z),male (X).
grandmother(X, Y):- parent (Z,X),parent (Y,Z),female (X).

goal

grandfather(a,b).
