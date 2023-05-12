

ancestor1(X,Y) :- parent(X,Y).
ancestor1(X,Y) :- parent(Z,Y),ancestor1(X,Z).
ancestor2(X,Y) :- parent(Z,Y),ancestor2(X,Z).
ancestor2(X,Y) :- parent(X,Y).

ancestor3(X,Y) :- ancestor3(X,Z),parent(Z,Y).
ancestor3(X,Y) :- parent(X,Y).
ancestor4(X,Y) :- parent(X,Y).
ancestor4(X,Y) :- ancestor4(X,Z),parent(Z,Y).



parent(yeye,baba).
parent(baba,wo).
parent(wo,erzi).
parent(erzi,sunzi).