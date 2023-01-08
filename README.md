## Racket-compund-interest-macro

##### Grammar:

- (ci 20000 8 10) => (list of (period-no amount)) 
- (ci 20000 8) => (ci 20000 8 10)
- (ci 20000) => (ci 20000 8 10)

##### Future additions:

If I write three different functions for each of them, it is useless. And syntactic abs can be
applied. How? It can be done using a case wise stuff. but how do you discern between (ci 1000 8) wh
en 8 can be in for both rate or years. One of the things that you can use is to use the percent sign
With the sign, you may get the pattern variable in there. 

