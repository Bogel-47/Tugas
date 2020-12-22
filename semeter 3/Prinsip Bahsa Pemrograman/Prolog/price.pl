price(1,1000,0.08).
price(1001,10000,0.04).
price(1001,20000,0.02).
price(2001,99999999,0.0).

exes(0,0).
exes(X, Price):-
    price(Min,Max,Y),
    X>=Min,
    X=<Max,
    Z is Min-1,
    exes(Z, I),
    Price is (X-Z)*Y+I.
