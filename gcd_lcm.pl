% find gcd of two numbers

gcd(A,0,A):- A>0.

gcd(A,B,G):-
    B>0,
    R is A mod B,
    gcd(B,R,G).

lcm(A,B,L):-
    gcd(A,B,G),
    L is (A * B ) // G.



